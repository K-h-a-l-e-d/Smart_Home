/*
 * File:   timer_driver.c
 * Author: Khaled
 *
 * Created on October 21, 2024, 9:50 AM
 */


#ifndef ADC_DRIVER_H_
#define ADC_DRIVER_H_
#include "../STD_Types.h"

/*
	Function Name        : ADC_vinit
	Function Returns     : void
	Function Arguments   : void
	Function Description : Initialize the ADC.
*/
void ADC_vinit(void);

/*
	Function Name        : ADC_u16Read
	Function Returns     : uint16
	Function Arguments   : void
	Function Description : Read the value which converted by the ADC.
*/
uint16 ADC_u16Read(void);

#endif /* ADC_DRIVER_H_ */