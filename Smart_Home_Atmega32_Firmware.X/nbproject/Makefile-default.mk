#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Smart_Home_Atmega32_Firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Smart_Home_Atmega32_Firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=HAL/LCD.c HAL/LED.c MCAL/DIO.c MCAL/timer_driver.c MCAL/uart.c main.c MCAL/ADC_driver.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/HAL/LCD.o ${OBJECTDIR}/HAL/LED.o ${OBJECTDIR}/MCAL/DIO.o ${OBJECTDIR}/MCAL/timer_driver.o ${OBJECTDIR}/MCAL/uart.o ${OBJECTDIR}/main.o ${OBJECTDIR}/MCAL/ADC_driver.o
POSSIBLE_DEPFILES=${OBJECTDIR}/HAL/LCD.o.d ${OBJECTDIR}/HAL/LED.o.d ${OBJECTDIR}/MCAL/DIO.o.d ${OBJECTDIR}/MCAL/timer_driver.o.d ${OBJECTDIR}/MCAL/uart.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/MCAL/ADC_driver.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/HAL/LCD.o ${OBJECTDIR}/HAL/LED.o ${OBJECTDIR}/MCAL/DIO.o ${OBJECTDIR}/MCAL/timer_driver.o ${OBJECTDIR}/MCAL/uart.o ${OBJECTDIR}/main.o ${OBJECTDIR}/MCAL/ADC_driver.o

# Source Files
SOURCEFILES=HAL/LCD.c HAL/LED.c MCAL/DIO.c MCAL/timer_driver.c MCAL/uart.c main.c MCAL/ADC_driver.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Smart_Home_Atmega32_Firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega32
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/HAL/LCD.o: HAL/LCD.c  .generated_files/flags/default/63734c02d773d3d908ec9057b1a8660468df6f45 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/HAL" 
	@${RM} ${OBJECTDIR}/HAL/LCD.o.d 
	@${RM} ${OBJECTDIR}/HAL/LCD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/HAL/LCD.o.d" -MT "${OBJECTDIR}/HAL/LCD.o.d" -MT ${OBJECTDIR}/HAL/LCD.o -o ${OBJECTDIR}/HAL/LCD.o HAL/LCD.c 
	
${OBJECTDIR}/HAL/LED.o: HAL/LED.c  .generated_files/flags/default/c9c86fc943b81bf53a2aa51bb3946862bc6a03e4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/HAL" 
	@${RM} ${OBJECTDIR}/HAL/LED.o.d 
	@${RM} ${OBJECTDIR}/HAL/LED.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/HAL/LED.o.d" -MT "${OBJECTDIR}/HAL/LED.o.d" -MT ${OBJECTDIR}/HAL/LED.o -o ${OBJECTDIR}/HAL/LED.o HAL/LED.c 
	
${OBJECTDIR}/MCAL/DIO.o: MCAL/DIO.c  .generated_files/flags/default/9bbcdc81d2ca90b2bb1646215567d86938b65f3e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL" 
	@${RM} ${OBJECTDIR}/MCAL/DIO.o.d 
	@${RM} ${OBJECTDIR}/MCAL/DIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL/DIO.o.d" -MT "${OBJECTDIR}/MCAL/DIO.o.d" -MT ${OBJECTDIR}/MCAL/DIO.o -o ${OBJECTDIR}/MCAL/DIO.o MCAL/DIO.c 
	
${OBJECTDIR}/MCAL/timer_driver.o: MCAL/timer_driver.c  .generated_files/flags/default/d23b23f982705ddf4c4385d342941685683a338a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL" 
	@${RM} ${OBJECTDIR}/MCAL/timer_driver.o.d 
	@${RM} ${OBJECTDIR}/MCAL/timer_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL/timer_driver.o.d" -MT "${OBJECTDIR}/MCAL/timer_driver.o.d" -MT ${OBJECTDIR}/MCAL/timer_driver.o -o ${OBJECTDIR}/MCAL/timer_driver.o MCAL/timer_driver.c 
	
${OBJECTDIR}/MCAL/uart.o: MCAL/uart.c  .generated_files/flags/default/de81b0ff6a68c0aedcdce09cee50c2d31ca84131 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL" 
	@${RM} ${OBJECTDIR}/MCAL/uart.o.d 
	@${RM} ${OBJECTDIR}/MCAL/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL/uart.o.d" -MT "${OBJECTDIR}/MCAL/uart.o.d" -MT ${OBJECTDIR}/MCAL/uart.o -o ${OBJECTDIR}/MCAL/uart.o MCAL/uart.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/941781274f7964dc74b0387744a935031512c27a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/MCAL/ADC_driver.o: MCAL/ADC_driver.c  .generated_files/flags/default/7363cf05c5f2ee9868fa788bd0b64065e87dc58f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL" 
	@${RM} ${OBJECTDIR}/MCAL/ADC_driver.o.d 
	@${RM} ${OBJECTDIR}/MCAL/ADC_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL/ADC_driver.o.d" -MT "${OBJECTDIR}/MCAL/ADC_driver.o.d" -MT ${OBJECTDIR}/MCAL/ADC_driver.o -o ${OBJECTDIR}/MCAL/ADC_driver.o MCAL/ADC_driver.c 
	
else
${OBJECTDIR}/HAL/LCD.o: HAL/LCD.c  .generated_files/flags/default/ba7e130f525f19ba171d280ae0f189521b8c5148 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/HAL" 
	@${RM} ${OBJECTDIR}/HAL/LCD.o.d 
	@${RM} ${OBJECTDIR}/HAL/LCD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/HAL/LCD.o.d" -MT "${OBJECTDIR}/HAL/LCD.o.d" -MT ${OBJECTDIR}/HAL/LCD.o -o ${OBJECTDIR}/HAL/LCD.o HAL/LCD.c 
	
${OBJECTDIR}/HAL/LED.o: HAL/LED.c  .generated_files/flags/default/ea87a7269972e3102fd1a6787bd506923af31d65 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/HAL" 
	@${RM} ${OBJECTDIR}/HAL/LED.o.d 
	@${RM} ${OBJECTDIR}/HAL/LED.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/HAL/LED.o.d" -MT "${OBJECTDIR}/HAL/LED.o.d" -MT ${OBJECTDIR}/HAL/LED.o -o ${OBJECTDIR}/HAL/LED.o HAL/LED.c 
	
${OBJECTDIR}/MCAL/DIO.o: MCAL/DIO.c  .generated_files/flags/default/c2c7d886a9250487d2fa50403fd18c3adf6a839a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL" 
	@${RM} ${OBJECTDIR}/MCAL/DIO.o.d 
	@${RM} ${OBJECTDIR}/MCAL/DIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL/DIO.o.d" -MT "${OBJECTDIR}/MCAL/DIO.o.d" -MT ${OBJECTDIR}/MCAL/DIO.o -o ${OBJECTDIR}/MCAL/DIO.o MCAL/DIO.c 
	
${OBJECTDIR}/MCAL/timer_driver.o: MCAL/timer_driver.c  .generated_files/flags/default/273bcc1279588ecd7c3bec6ec54c7c12a3544a11 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL" 
	@${RM} ${OBJECTDIR}/MCAL/timer_driver.o.d 
	@${RM} ${OBJECTDIR}/MCAL/timer_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL/timer_driver.o.d" -MT "${OBJECTDIR}/MCAL/timer_driver.o.d" -MT ${OBJECTDIR}/MCAL/timer_driver.o -o ${OBJECTDIR}/MCAL/timer_driver.o MCAL/timer_driver.c 
	
${OBJECTDIR}/MCAL/uart.o: MCAL/uart.c  .generated_files/flags/default/ffc9f444115ed04179a8ce76b131823b59d6ba72 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL" 
	@${RM} ${OBJECTDIR}/MCAL/uart.o.d 
	@${RM} ${OBJECTDIR}/MCAL/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL/uart.o.d" -MT "${OBJECTDIR}/MCAL/uart.o.d" -MT ${OBJECTDIR}/MCAL/uart.o -o ${OBJECTDIR}/MCAL/uart.o MCAL/uart.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/4d2bdaeba61ce357edb409a6ba9729e0edab142c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/MCAL/ADC_driver.o: MCAL/ADC_driver.c  .generated_files/flags/default/361f8ab0cba744c3ab2a4fbe900dfab049e0e3df .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL" 
	@${RM} ${OBJECTDIR}/MCAL/ADC_driver.o.d 
	@${RM} ${OBJECTDIR}/MCAL/ADC_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL/ADC_driver.o.d" -MT "${OBJECTDIR}/MCAL/ADC_driver.o.d" -MT ${OBJECTDIR}/MCAL/ADC_driver.o -o ${OBJECTDIR}/MCAL/ADC_driver.o MCAL/ADC_driver.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Smart_Home_Atmega32_Firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/Smart_Home_Atmega32_Firmware.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mno-const-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/Smart_Home_Atmega32_Firmware.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/Smart_Home_Atmega32_Firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/Smart_Home_Atmega32_Firmware.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/Smart_Home_Atmega32_Firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/Smart_Home_Atmega32_Firmware.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mno-const-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/Smart_Home_Atmega32_Firmware.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/Smart_Home_Atmega32_Firmware.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/Smart_Home_Atmega32_Firmware.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/Smart_Home_Atmega32_Firmware.X.${IMAGE_TYPE}.hex"
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
