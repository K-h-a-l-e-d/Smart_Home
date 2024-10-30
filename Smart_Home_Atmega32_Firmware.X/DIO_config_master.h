/* 
 * File:   DIO_config_master.h
 * Author: Khaled
 *
 * Created on October 21, 2024, 10:39 AM
 */

#ifndef DIO_CONFIG_MASTER_H
#define	DIO_CONFIG_MASTER_H

/*****************************  Ports and pins of input and output pins ******************/
#define ROOM1_LED_PORT (uint8)'D'
#define ROOM2_LED_PORT (uint8)'D'
#define ROOM3_LED_PORT (uint8)'D'
#define TV_LED_PORT (uint8)'B'
#define AC_LED_PORT (uint8)'B'

#define AIR_CONDTIONING_ON          (uint8)0x01
#define AIR_CONDTIONING_OFF			(uint8)0x00

#define ROOM1_LED_PIN  (uint8)5
#define ROOM2_LED_PIN  (uint8)6
#define ROOM3_LED_PIN  (uint8)7
#define TV_LED_PIN  (uint8)7
#define AC_LED_PIN  (uint8)6
/*****************************************************************************************/

/* LCD Macros */
#define LCD_PORT			(uint8)'C'
#define LCD_FIRST_PIN		(uint8)0
#define LCD_SECOND_PIN		(uint8)1
#define LCD_THIRD_PIN		(uint8)2
#define LCD_FOURTH_PIN		(uint8)3
#define LCD_FIFTH_PIN		(uint8)4
#define LCD_SIXTH_PIN		(uint8)5
#define LCD_SEVENTH_PIN		(uint8)6
#define LCD_EIGHTH_PIN		(uint8)7
#define LCD_CONTROL_PORT	(uint8)'B'
#define LCD_EN_PIN			(uint8)0
#define LCD_RS_PIN			(uint8)1
#define LCD_RW_PIN			(uint8)2

#endif	/* DIO_CONFIG_MASTER_H */

