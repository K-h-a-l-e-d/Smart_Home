/* 
 * File:   std_macros.h
 * Author: Khaled
 *
 * Created on October 21, 2024, 10:15 AM
 */
#define REGISTER_SIZE 8

#define SET_BIT(reg,bit)    reg|=(1<<bit)
#define CLR_BIT(reg,bit)    reg&=(~(1<<bit))
#define TOG_BIT(reg,bit)    reg^=(1<<bit)
#define Read_bIT(reg,bit)    (reg&(1<<bit))>>bit
#define IS_BIT_SET(reg,bit)  (reg&(1<<bit))>>bit
#define IS_BIT_CLR(reg,bit)  !((reg&(1<<bit))>>bit)
#define Bit_Is_Set(reg,bit)   (reg & (1<<bit))
#define Bit_Is_Clear(reg,bit) (!(reg & (1<<bit)))

#define ROR(reg,num)         reg=(reg<<(REGISTER_SIZE-num))|(reg>>(num))
#define ROL(reg,num)        reg= (reg>>(REGISTER_SIZE-num))|(reg<<(num))
