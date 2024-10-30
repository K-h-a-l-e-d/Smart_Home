/*
 * File:   main.c
 * Author: Khaled
 *
 * Created on October 21, 2024, 9:50 AM
 */


#include "main_config.h"
#include "HAL/LCD.h"
#include "MCAL/timer_driver.h"
#include "HAL/LED.h"
#include <avr/io.h>
#include "MCAL/uart.h"
#include "MCAL/ADC_driver.h"
#include <stdlib.h>

#define F_CPU 8000000UL

    volatile uint16 required_temperature=24; // the required temperature which stores data sent from flutter with initial value 24
    volatile uint16 temp_sensor_reading=0; // the temperature of the room 
    volatile uint8 counter=0; // the counter which determine the periodic time of implementing ISR
    volatile uint8 last_air_conditioning_value=AIR_CONDTIONING_OFF; // last air conditioning value which will help in hysteresis

int main(void)
{
	
	uint8 receivedTemperature[2];  
    uint8 receivedControlCommand;

	/*****************  INITIALIZATION  ***********************/
	LED_vInit(ROOM1_LED_PORT,ROOM1_LED_PIN);//initializes the led of Room 1
	LED_vInit(ROOM2_LED_PORT,ROOM2_LED_PIN);//initializes the led of Room 2
	LED_vInit(ROOM3_LED_PORT,ROOM3_LED_PIN);//initializes the led of Room 3
    LED_vInit(TV_LED_PORT,TV_LED_PIN);//initializes TV Pin
    LED_vInit(AC_LED_PORT,AC_LED_PIN);//initializes AC Pin
	LCD_vInit();//initializes the LCD screen
    ADC_vinit();//initialize the ADC of the micro controller
    timer0_initializeCTC();//Initializes timer0  module of the micro controller
    USART_Init(9600);
	/********************************* Program Starting **********************************************/
	/* Printing Welcome screen */
	LCD_vSend_string("Welcome to smart");
	LCD_movecursor(2,1);
	LCD_vSend_string("home system");
	_delay_ms(1000);//Halt the system for the given time in (ms)
	LCD_clearscreen();//remove all previously printed characters on the LCD and move the cursor to the first column of the first row
    /******************************************************/
    while(1){

        receivedControlCommand = USART_ReceiveByte();
        switch(receivedControlCommand){
            case '1':
                LED_vToggle(ROOM1_LED_PORT, ROOM1_LED_PIN);
                if( LED_u8ReadStatus(ROOM1_LED_PORT, ROOM1_LED_PIN) )
                { 
                    LCD_vSend_string("ROOM1 Lights ON");
                    _delay_ms(1000);
                    LCD_clearscreen();
                } else {
                    LCD_vSend_string("ROOM1 Lights OFF");
                    _delay_ms(1000);
                    LCD_clearscreen();
                }
            break;
            
            case '2':
                LED_vToggle(ROOM2_LED_PORT, ROOM2_LED_PIN);
                _delay_ms(100);
                if( LED_u8ReadStatus(ROOM2_LED_PORT, ROOM2_LED_PIN) )
                { 
                    LCD_vSend_string("ROOM2 Lights ON");
                    _delay_ms(1000);
                    LCD_clearscreen();
                } else {
                    LCD_vSend_string("ROOM2 Lights OFF");
                    _delay_ms(1000);
                    LCD_clearscreen();
                }
            break;
            
            case '3':
                LED_vToggle(ROOM3_LED_PORT, ROOM3_LED_PIN);
                if( LED_u8ReadStatus(ROOM3_LED_PORT, ROOM3_LED_PIN) )
                { 
                    LCD_vSend_string("ROOM3 Lights ON");
                    _delay_ms(1000);
                    LCD_clearscreen();
                } else {
                    LCD_vSend_string("ROOM3 Lights OFF");
                    _delay_ms(1000);
                    LCD_clearscreen();
                }
            break;
            
            case '4':
                LED_vToggle(TV_LED_PORT, TV_LED_PIN);
                if( LED_u8ReadStatus(TV_LED_PORT, TV_LED_PIN) )
                { 
                    LCD_vSend_string("TV ON");
                    _delay_ms(1000);
                    LCD_clearscreen();
                } else {
                    LCD_vSend_string("TV OFF");
                    _delay_ms(1000);
                    LCD_clearscreen();
                }
            break;
            
            case '5':
                timer0_stop();
                LED_vToggle(AC_LED_PORT, AC_LED_PIN);
                if( LED_u8ReadStatus(AC_LED_PORT, AC_LED_PIN) )
                { 
                    LCD_vSend_string("AC ON");
                    _delay_ms(1000);
                    LCD_clearscreen();
                } else {
                    LCD_vSend_string("AC OFF");
                    _delay_ms(1000);
                    LCD_clearscreen();
                }
            break;
            
            case 'T':
                timer0_initializeCTC();
                USART_ReceiveString(receivedTemperature);
                required_temperature = atoi(receivedTemperature);
                if(required_temperature > 15 && required_temperature < 35){
                    LCD_vSend_string("AC Temperature");
                    LCD_movecursor(2, 1);
                    LCD_vSend_string("Set: ");
                    LCD_vSend_string(receivedTemperature);
                    LCD_vSend_string(" C");
                    _delay_ms(1000);
                    LCD_clearscreen();
                } else {
                    LCD_vSend_string("Temperature Out");
                    LCD_movecursor(2, 1);
                    LCD_vSend_string("of Range");
                    _delay_ms(1000);
                    LCD_clearscreen();
                }
            break;

            default:
            break;
                
        }
    }

}//end of main function

ISR(TIMER0_COMP_vect)
{
	counter++;//count the ticks of the timer zero
	if(counter>=10)//do that code every 10 ticks 
	{
		counter=0;//clear the counter of ticks
		temp_sensor_reading=(0.25*ADC_u16Read());//read the temperature from the temperature sensor connected to the ADC of the micro controller
		if (temp_sensor_reading>=(required_temperature+1))//do that code if the read temperature if greater than required temperature by one or more
		{
			LED_vTurnOn(AC_LED_PORT,AC_LED_PIN);//turn on the led of the air conditioning
			last_air_conditioning_value=AIR_CONDTIONING_ON;//save the value of the state of the air conditioning
		}
		else if (temp_sensor_reading<=(required_temperature-1))//do that code if the read temperature if lesser than required temperature by one or more
		{
			LED_vTurnOff(AC_LED_PORT,AC_LED_PIN);//turn off the led of the air conditioning
			last_air_conditioning_value=AIR_CONDTIONING_OFF;//save the value of the state of the air conditioning
		}
		else if (required_temperature==temp_sensor_reading)//do that code if the read temperature is equal to the required temperature
		{
			if (last_air_conditioning_value==AIR_CONDTIONING_ON)//in the case of the last saved status of the air conditioning was on 
			{
				LED_vTurnOn(AC_LED_PORT,AC_LED_PIN);//turn on the led of the air conditioning
			}
			else if (last_air_conditioning_value==AIR_CONDTIONING_OFF)//in the case of the last saved status of the air conditioning was off 
			{
				LED_vTurnOff(AC_LED_PORT,AC_LED_PIN);//turn off the led of the air conditioning
			}
		}
	}
}