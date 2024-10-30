/* 
 * File:   uart.h
 * Author: Khaled
 *
 * Created on October 24, 2024, 3:37 PM
 */

#include "uart.h"


void USART_Init(unsigned long baud)
{
    unsigned short UBRR ;
	UBRR=(F_CPU/(16*baud))-1 ;
	UCSRB |= (1<<RXEN) | (1<<TXEN);
	UCSRC |= (1<<URSEL) | (1<<UCSZ0) | (1<<UCSZ1);
	UBRRH = (unsigned char)(UBRR>>8);
	UBRRL = (unsigned char)UBRR;
}

void USART_SendByte(uint8 data)
{
	while(Bit_Is_Clear(UCSRA,UDRE));
	UDR = data;
}

uint8 USART_ReceiveByte()
{
	while(Bit_Is_Clear(UCSRA,RXC));
	return UDR;
}

void USART_SendString(uint8 *str)
{
	while(*str != '\0')
	{
		USART_SendByte(*str);
		str++;
	}
}

void USART_ReceiveString(uint8 *Str)       //receive until 'enter'
{
	uint8 i = 0;
	Str[i] = USART_ReceiveByte();
	while(Str[i] != '\n')
	{
		i++;
		Str[i] = USART_ReceiveByte();
	}
	Str[i] = '\0';
}

