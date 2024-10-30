/* 
 * File:   uart.h
 * Author: Khaled
 *
 * Created on October 24, 2024, 3:37 PM
 */

#ifndef UART_H
#define	UART_H

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include "../std_macros.h"
#include "../Std_Types.h"

#define F_CPU 8000000UL
	

void USART_Init(unsigned long baud);
void USART_SendByte(uint8 data);
uint8 USART_ReceiveByte();
void USART_SendString(uint8 *str);
void USART_ReceiveString(uint8 *Str);

#endif	/* UART_H */

