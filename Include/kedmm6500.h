/******************************************************************************
 *                                                                         
 * Copyright 2017 Keithley Instruments. All rights reserved.
 *
 *****************************************************************************/

#ifndef __KEDMM6500_HEADER
#define __KEDMM6500_HEADER

#include <ivivisatype.h>

#if defined(__cplusplus) || defined(__cplusplus__)
extern "C" {
#endif

/**************************************************************************** 
 *---------------------------- Attribute Defines ---------------------------* 
 ****************************************************************************/
#ifndef IVI_ATTR_BASE
#define IVI_ATTR_BASE                 1000000
#endif

#ifndef IVI_INHERENT_ATTR_BASE		        
#define IVI_INHERENT_ATTR_BASE        (IVI_ATTR_BASE +  50000)   /* base for inherent capability attributes */
#endif

#ifndef IVI_CLASS_ATTR_BASE           
#define IVI_CLASS_ATTR_BASE           (IVI_ATTR_BASE + 250000)   /* base for IVI-defined class attributes */
#endif

#ifndef IVI_LXISYNC_ATTR_BASE         
#define IVI_LXISYNC_ATTR_BASE         (IVI_ATTR_BASE + 950000)   /* base for IviLxiSync attributes */
#endif

#ifndef IVI_SPECIFIC_ATTR_BASE        
#define IVI_SPECIFIC_ATTR_BASE        (IVI_ATTR_BASE + 150000)   /* base for attributes of specific drivers */
#endif


/*===== IVI Inherent Instrument Attributes ==============================*/    

/*- Driver Identification */

#define KEDMM6500_ATTR_SPECIFIC_DRIVER_DESCRIPTION              (IVI_INHERENT_ATTR_BASE + 514L)  /* ViString, read-only */
#define KEDMM6500_ATTR_SPECIFIC_DRIVER_PREFIX                   (IVI_INHERENT_ATTR_BASE + 302L)  /* ViString, read-only */
#define KEDMM6500_ATTR_SPECIFIC_DRIVER_VENDOR                   (IVI_INHERENT_ATTR_BASE + 513L)  /* ViString, read-only */
#define KEDMM6500_ATTR_SPECIFIC_DRIVER_REVISION                 (IVI_INHERENT_ATTR_BASE + 551L)  /* ViString, read-only */
#define KEDMM6500_ATTR_SPECIFIC_DRIVER_CLASS_SPEC_MAJOR_VERSION (IVI_INHERENT_ATTR_BASE + 515L)  /* ViInt32, read-only */
#define KEDMM6500_ATTR_SPECIFIC_DRIVER_CLASS_SPEC_MINOR_VERSION (IVI_INHERENT_ATTR_BASE + 516L)  /* ViInt32, read-only */

/*- User Options */

#define KEDMM6500_ATTR_RANGE_CHECK                          (IVI_INHERENT_ATTR_BASE + 2L)  /* ViBoolean, read-write */
#define KEDMM6500_ATTR_QUERY_INSTRUMENT_STATUS              (IVI_INHERENT_ATTR_BASE + 3L)  /* ViBoolean, read-write */
#define KEDMM6500_ATTR_CACHE                                (IVI_INHERENT_ATTR_BASE + 4L)  /* ViBoolean, read-write */
#define KEDMM6500_ATTR_SIMULATE                             (IVI_INHERENT_ATTR_BASE + 5L)  /* ViBoolean, read-write */
#define KEDMM6500_ATTR_RECORD_COERCIONS                     (IVI_INHERENT_ATTR_BASE + 6L)  /* ViBoolean, read-write */
#define KEDMM6500_ATTR_INTERCHANGE_CHECK                    (IVI_INHERENT_ATTR_BASE + 21L)  /* ViBoolean, read-write */

/*- Advanced Session Information */

#define KEDMM6500_ATTR_LOGICAL_NAME                         (IVI_INHERENT_ATTR_BASE + 305L)  /* ViString, read-only */
#define KEDMM6500_ATTR_IO_RESOURCE_DESCRIPTOR               (IVI_INHERENT_ATTR_BASE + 304L)  /* ViString, read-only */
#define KEDMM6500_ATTR_DRIVER_SETUP                         (IVI_INHERENT_ATTR_BASE + 7L)  /* ViString, read-only */

/*- Driver Capabilities */

#define KEDMM6500_ATTR_GROUP_CAPABILITIES                   (IVI_INHERENT_ATTR_BASE + 401L)  /* ViString, read-only */
#define KEDMM6500_ATTR_SUPPORTED_INSTRUMENT_MODELS          (IVI_INHERENT_ATTR_BASE + 327L)  /* ViString, read-only */

/*- Instrument Identification */

#define KEDMM6500_ATTR_INSTRUMENT_FIRMWARE_REVISION         (IVI_INHERENT_ATTR_BASE + 510L)  /* ViString, read-only */
#define KEDMM6500_ATTR_INSTRUMENT_MANUFACTURER              (IVI_INHERENT_ATTR_BASE + 511L)  /* ViString, read-only */
#define KEDMM6500_ATTR_INSTRUMENT_MODEL                     (IVI_INHERENT_ATTR_BASE + 512L)  /* ViString, read-only */


/*===== Instrument-Specific Attributes =====================================*/

/*- Basic Operation */

#define KEDMM6500_ATTR_FUNCTION                             (IVI_CLASS_ATTR_BASE + 1L)  /* ViInt32, read-write */
#define KEDMM6500_ATTR_RANGE                                (IVI_CLASS_ATTR_BASE + 2L)  /* ViReal64, read-write */
#define KEDMM6500_ATTR_RESOLUTION_ABSOLUTE                  (IVI_CLASS_ATTR_BASE + 8L)  /* ViReal64, read-write */

/*- AC Measurements */

#define KEDMM6500_ATTR_AC_MAX_FREQ                          (IVI_CLASS_ATTR_BASE + 7L)  /* ViReal64, read-write */
#define KEDMM6500_ATTR_AC_MIN_FREQ                          (IVI_CLASS_ATTR_BASE + 6L)  /* ViReal64, read-write */

/*- Configuration Information */

#define KEDMM6500_ATTR_AUTO_RANGE_VALUE                     (IVI_CLASS_ATTR_BASE + 331L)  /* ViReal64, read-only */
#define KEDMM6500_ATTR_APERTURE_TIME                        (IVI_CLASS_ATTR_BASE + 321L)  /* ViReal64, read-only */
#define KEDMM6500_ATTR_APERTURE_TIME_UNITS                  (IVI_CLASS_ATTR_BASE + 322L)  /* ViInt32, read-only */

/*- Measurement Operation Options */

#define KEDMM6500_ATTR_AUTO_ZERO                            (IVI_CLASS_ATTR_BASE + 332L)  /* ViInt32, read-write */
#define KEDMM6500_ATTR_POWERLINE_FREQ                       (IVI_CLASS_ATTR_BASE + 333L)  /* ViReal64, read-write */

/*- Frequency Measurements */

#define KEDMM6500_ATTR_FREQ_VOLTAGE_RANGE                   (IVI_CLASS_ATTR_BASE + 101L)  /* ViReal64, read-write */

/*- Multi-Point Acquisition */

#define KEDMM6500_ATTR_TRIGGER_COUNT                        (IVI_CLASS_ATTR_BASE + 304L)  /* ViInt32, read-write */
#define KEDMM6500_ATTR_MEAS_COMPLETE_DEST                   (IVI_CLASS_ATTR_BASE + 305L)  /* ViInt32, read-write */
#define KEDMM6500_ATTR_SAMPLE_COUNT                         (IVI_CLASS_ATTR_BASE + 301L)  /* ViInt32, read-write */
#define KEDMM6500_ATTR_SAMPLE_INTERVAL                      (IVI_CLASS_ATTR_BASE + 303L)  /* ViReal64, read-write */
#define KEDMM6500_ATTR_SAMPLE_TRIGGER                       (IVI_CLASS_ATTR_BASE + 302L)  /* ViInt32, read-write */

/*- Temperature Measurements */

#define KEDMM6500_ATTR_TEMP_TRANSDUCER_TYPE                 (IVI_CLASS_ATTR_BASE + 201L)  /* ViInt32, read-write */

/*- Resistance Temperature Device */

#define KEDMM6500_ATTR_TEMP_RTD_ALPHA                       (IVI_CLASS_ATTR_BASE + 241L)  /* ViReal64, read-write */
#define KEDMM6500_ATTR_TEMP_RTD_RES                         (IVI_CLASS_ATTR_BASE + 242L)  /* ViReal64, read-write */

/*- Thermistor */

#define KEDMM6500_ATTR_TEMP_THERMISTOR_RES                  (IVI_CLASS_ATTR_BASE + 251L)  /* ViReal64, read-write */

/*- Thermocouple */

#define KEDMM6500_ATTR_TEMP_TC_FIXED_REF_JUNC               (IVI_CLASS_ATTR_BASE + 233L)  /* ViReal64, read-write */
#define KEDMM6500_ATTR_TEMP_TC_REF_JUNC_TYPE                (IVI_CLASS_ATTR_BASE + 232L)  /* ViInt32, read-write */
#define KEDMM6500_ATTR_TEMP_TC_TYPE                         (IVI_CLASS_ATTR_BASE + 231L)  /* ViInt32, read-write */

/*- Trigger */

#define KEDMM6500_ATTR_TRIGGER_DELAY                        (IVI_CLASS_ATTR_BASE + 5L)  /* ViReal64, read-write */
#define KEDMM6500_ATTR_TRIGGER_SLOPE                        (IVI_CLASS_ATTR_BASE + 334L)  /* ViInt32, read-write */
#define KEDMM6500_ATTR_TRIGGER_SOURCE                       (IVI_CLASS_ATTR_BASE + 4L)  /* ViInt32, read-write */

/*- System */

#define KEDMM6500_ATTR_SYSTEM_IO_SESSION                    (IVI_SPECIFIC_ATTR_BASE + 1L)  /* ViSession, read-only */
#define KEDMM6500_ATTR_SYSTEM_IO_TIMEOUT                    (IVI_SPECIFIC_ATTR_BASE + 2L)  /* ViInt32, read-write */
#define KEDMM6500_ATTR_MEASUREMENT_FUNCTION                 (IVI_SPECIFIC_ATTR_BASE + 27L)  /* ViInt32, read-write */
#define KEDMM6500_ATTR_FAN_LEVEL                            (IVI_SPECIFIC_ATTR_BASE + 42L)  /* ViInt32, read-write */

/*- System */

#define KEDMM6500_ATTR_PROGRAMMING_LANGUAGE                 (IVI_SPECIFIC_ATTR_BASE + 3L)  /* ViInt32, read-write */
#define KEDMM6500_ATTR_ACCESS                               (IVI_SPECIFIC_ATTR_BASE + 4L)  /* ViInt32, read-write */
#define KEDMM6500_ATTR_ERROR_COUNT                          (IVI_SPECIFIC_ATTR_BASE + 5L)  /* ViInt32, read-only */
#define KEDMM6500_ATTR_GPIB_ADDRESS                         (IVI_SPECIFIC_ATTR_BASE + 6L)  /* ViInt32, read-write */
#define KEDMM6500_ATTR_MAC_ADDRESS                          (IVI_SPECIFIC_ATTR_BASE + 7L)  /* ViString, read-only */
#define KEDMM6500_ATTR_PASSWORD                             (IVI_SPECIFIC_ATTR_BASE + 8L)  /* ViString, write-only */
#define KEDMM6500_ATTR_POWER_LINE_FREQUENCY                 (IVI_SPECIFIC_ATTR_BASE + 9L)  /* ViInt32, read-only */
#define KEDMM6500_ATTR_POWER_ON_SETUP                       (IVI_SPECIFIC_ATTR_BASE + 10L)  /* ViInt32, read-write */
#define KEDMM6500_ATTR_SCPI_VERSION                         (IVI_SPECIFIC_ATTR_BASE + 11L)  /* ViString, read-only */
#define KEDMM6500_ATTR_TERMINAL                             (IVI_SPECIFIC_ATTR_BASE + 12L)  /* ViInt32, read-only */
#define KEDMM6500_ATTR_TIME                                 (IVI_SPECIFIC_ATTR_BASE + 13L)  /* ViString, read-write */
#define KEDMM6500_ATTR_TIME_IN_SECONDS                      (IVI_SPECIFIC_ATTR_BASE + 14L)  /* ViReal64, read-only */

/*- Configuration */

#define KEDMM6500_ATTR_COUNT                                (IVI_SPECIFIC_ATTR_BASE + 21L)  /* ViInt32, read-write */
#define KEDMM6500_ATTR_DC_VOLTAGE_RATIO_SENSE_RANGE         (IVI_SPECIFIC_ATTR_BASE + 24L)  /* ViReal64, read-only */
#define KEDMM6500_ATTR_DC_VOLT_INPUT_IMPEDANCE              (IVI_SPECIFIC_ATTR_BASE + 25L)  /* ViInt32, read-write */

/*- List */

#define KEDMM6500_ATTR_CATALOG                              (IVI_SPECIFIC_ATTR_BASE + 15L)  /* ViString, read-only */

/*- Temperature */

#define KEDMM6500_ATTR_TEMP_TC_SIMULATED_REF_JUNC           (IVI_SPECIFIC_ATTR_BASE + 16L)  /* ViReal64, read-write */
#define KEDMM6500_ATTR_TEMP_TC_TYPE2                        (IVI_SPECIFIC_ATTR_BASE + 17L)  /* ViInt32, read-write */
#define KEDMM6500_ATTR_TEMP_TRANSDUCER_TYPE2                (IVI_SPECIFIC_ATTR_BASE + 18L)  /* ViInt32, read-write */
#define KEDMM6500_ATTR_TEMP_THERMISTOR_RES2                 (IVI_SPECIFIC_ATTR_BASE + 19L)  /* ViReal64, read-write */
#define KEDMM6500_ATTR_UNITS                                (IVI_SPECIFIC_ATTR_BASE + 20L)  /* ViInt32, read-write */
#define KEDMM6500_ATTR_THERMOCOUPLE_REF_JUNCTION_TYPE       (IVI_SPECIFIC_ATTR_BASE + 68L)  /* ViInt32, read-write */

/*- Relative */

#define KEDMM6500_ATTR_DC_VOLT_RATIO_METHOD                 (IVI_SPECIFIC_ATTR_BASE + 67L)  /* ViInt32, read-write */

/*- DataTransfer */

#define KEDMM6500_ATTR_ASCII_PRECISION                      (IVI_SPECIFIC_ATTR_BASE + 28L)  /* ViInt32, read-write */
#define KEDMM6500_ATTR_BYTE_ORDER                           (IVI_SPECIFIC_ATTR_BASE + 29L)  /* ViInt32, read-write */
#define KEDMM6500_ATTR_DATA_FORMAT                          (IVI_SPECIFIC_ATTR_BASE + 30L)  /* ViInt32, read-write */

/*- Status */

#define KEDMM6500_ATTR_ENABLE_QUESTIONABLE_EVENT_REGISTER   (IVI_SPECIFIC_ATTR_BASE + 31L)  /* ViInt32, read-write */
#define KEDMM6500_ATTR_ENABLE_OPERATION_EVENT_REGISTER      (IVI_SPECIFIC_ATTR_BASE + 32L)  /* ViInt32, read-write */

/*- Model */

#define KEDMM6500_ATTR_TRIGGER_MODEL_STATE                  (IVI_SPECIFIC_ATTR_BASE + 34L)  /* ViString, read-only */

/*- Block */

#define KEDMM6500_ATTR_TRIGGER_MODEL_BLOCK_QUERY_LIST       (IVI_SPECIFIC_ATTR_BASE + 33L)  /* ViString, read-only */

/*- Display */

#define KEDMM6500_ATTR_BRIGHTNESS                           (IVI_SPECIFIC_ATTR_BASE + 35L)  /* ViInt32, write-only */
#define KEDMM6500_ATTR_READING_FORMAT                       (IVI_SPECIFIC_ATTR_BASE + 36L)  /* ViInt32, read-write */
#define KEDMM6500_ATTR_SCREEN_NAME                          (IVI_SPECIFIC_ATTR_BASE + 37L)  /* ViInt32, write-only */

/*- Digitizer */

#define KEDMM6500_ATTR_DIGITIZER_FUNCTION                   (IVI_SPECIFIC_ATTR_BASE + 41L)  /* ViInt32, read-write */

/*- Configuration */

#define KEDMM6500_ATTR_DIGITIZER_DC_VOLT_INPUT_IMPEDANCE    (IVI_SPECIFIC_ATTR_BASE + 38L)  /* ViInt32, read-write */
#define KEDMM6500_ATTR_DIGITIZER_COUNT                      (IVI_SPECIFIC_ATTR_BASE + 39L)  /* ViInt32, read-write */

/*- CardSlot */

#define KEDMM6500_ATTR_CARDSLOT_COUNT                           (IVI_SPECIFIC_ATTR_BASE + 43L)  /* ViInt32, read-only */
#define KEDMM6500_ATTR_ISCS4_WIRE_OHM_CHANNELS_SUPPORTED        (IVI_SPECIFIC_ATTR_BASE + 44L)  /* ViBoolean, read-only */
#define KEDMM6500_ATTR_IDENTITY                                 (IVI_SPECIFIC_ATTR_BASE + 45L)  /* ViString, read-only */
#define KEDMM6500_ATTR_IS_TEMPERATURE_SENSOR_CHANNELS_SUPPORTED (IVI_SPECIFIC_ATTR_BASE + 46L)  /* ViBoolean, read-only */
#define KEDMM6500_ATTR_VOLTAGE_MAX                              (IVI_SPECIFIC_ATTR_BASE + 47L)  /* ViReal64, read-only */

/*- Route */

#define KEDMM6500_ATTR_TERMINAL2                            (IVI_SPECIFIC_ATTR_BASE + 48L)  /* ViInt32, read-only */

/*- ChannelConfiguration */

#define KEDMM6500_ATTR_CLOSE_COUNT_INTERVAL                 (IVI_SPECIFIC_ATTR_BASE + 49L)  /* ViInt32, read-write */
#define KEDMM6500_ATTR_MULTIPLE_CLOSED                      (IVI_SPECIFIC_ATTR_BASE + 51L)  /* ViString, read-write */

/*- Scan */

#define KEDMM6500_ATTR_BUFFER                               (IVI_SPECIFIC_ATTR_BASE + 52L)  /* ViString, read-write */
#define KEDMM6500_ATTR_BYPASS                               (IVI_SPECIFIC_ATTR_BASE + 53L)  /* ViBoolean, read-write */
#define KEDMM6500_ATTR_CHANNEL_STIMULUS                     (IVI_SPECIFIC_ATTR_BASE + 54L)  /* ViString, read-write */
#define KEDMM6500_ATTR_SCAN_COUNT                           (IVI_SPECIFIC_ATTR_BASE + 55L)  /* ViInt64, read-write */
#define KEDMM6500_ATTR_STEP_COUNT                           (IVI_SPECIFIC_ATTR_BASE + 56L)  /* ViInt64, read-only */
#define KEDMM6500_ATTR_INTERVAL                             (IVI_SPECIFIC_ATTR_BASE + 57L)  /* ViReal64, read-write */
#define KEDMM6500_ATTR_MEASURE_STIMULUS                     (IVI_SPECIFIC_ATTR_BASE + 58L)  /* ViString, read-write */
#define KEDMM6500_ATTR_MEASURE_INTERVAL                     (IVI_SPECIFIC_ATTR_BASE + 59L)  /* ViReal64, read-write */
#define KEDMM6500_ATTR_MODE                                 (IVI_SPECIFIC_ATTR_BASE + 60L)  /* ViInt32, read-write */
#define KEDMM6500_ATTR_RESTART                              (IVI_SPECIFIC_ATTR_BASE + 61L)  /* ViBoolean, read-write */
#define KEDMM6500_ATTR_START_STIMULUS                       (IVI_SPECIFIC_ATTR_BASE + 62L)  /* ViString, read-write */

/*- Monitor */

#define KEDMM6500_ATTR_CHANNEL                              (IVI_SPECIFIC_ATTR_BASE + 63L)  /* ViString, read-write */
#define KEDMM6500_ATTR_LOWER_LIMIT                          (IVI_SPECIFIC_ATTR_BASE + 64L)  /* ViReal64, read-write */
#define KEDMM6500_ATTR_UPPER_LIMIT                          (IVI_SPECIFIC_ATTR_BASE + 65L)  /* ViReal64, read-write */
#define KEDMM6500_ATTR_MODE2                                (IVI_SPECIFIC_ATTR_BASE + 66L)  /* ViInt32, read-write */


/**************************************************************************** 
 *------------------------ Attribute Value Defines -------------------------* 
 ****************************************************************************/

/*- Defined values for 
	attribute KEDMM6500_ATTR_FUNCTION
	parameter Function in function kedmm6500_ConfigureMeasurement */

#define KEDMM6500_VAL_DC_VOLTS                              1
#define KEDMM6500_VAL_AC_VOLTS                              2
#define KEDMM6500_VAL_DC_CURRENT                            3
#define KEDMM6500_VAL_AC_CURRENT                            4
#define KEDMM6500_VAL_2_WIRE_RES                            5
#define KEDMM6500_VAL_4_WIRE_RES                            101
#define KEDMM6500_VAL_FREQ                                  104
#define KEDMM6500_VAL_PERIOD                                105
#define KEDMM6500_VAL_AC_PLUS_DC_VOLTS                      106
#define KEDMM6500_VAL_AC_PLUS_DC_CURRENT                    107
#define KEDMM6500_VAL_TEMPERATURE                           108

/*- Defined values for 
	attribute KEDMM6500_ATTR_APERTURE_TIME_UNITS
	parameter ApertureTimeUnits in function kedmm6500_GetApertureTimeInfo */

#define KEDMM6500_VAL_SECONDS                               0
#define KEDMM6500_VAL_POWER_LINE_CYCLES                     1

/*- Defined values for 
	attribute KEDMM6500_ATTR_AUTO_ZERO
	parameter AutoZeroMode in function kedmm6500_ConfigureAutoZeroMode */

#define KEDMM6500_VAL_AUTO_ZERO_OFF                         0
#define KEDMM6500_VAL_AUTO_ZERO_ON                          1
#define KEDMM6500_VAL_AUTO_ZERO_ONCE                        2

/*- Defined values for 
	attribute KEDMM6500_ATTR_TEMP_TRANSDUCER_TYPE
	parameter TransducerType in function kedmm6500_ConfigureTransducerType */

#define KEDMM6500_VAL_THERMOCOUPLE                          1
#define KEDMM6500_VAL_THERMISTOR                            2
#define KEDMM6500_VAL_2_WIRE_RTD                            3
#define KEDMM6500_VAL_4_WIRE_RTD                            4

/*- Defined values for 
	attribute KEDMM6500_ATTR_TEMP_TC_TYPE
	parameter ThermocoupleType in function kedmm6500_ConfigureThermocouple */

#define KEDMM6500_VAL_TEMP_TC_B                             1
#define KEDMM6500_VAL_TEMP_TC_C                             2
#define KEDMM6500_VAL_TEMP_TC_D                             3
#define KEDMM6500_VAL_TEMP_TC_E                             4
#define KEDMM6500_VAL_TEMP_TC_G                             5
#define KEDMM6500_VAL_TEMP_TC_J                             6
#define KEDMM6500_VAL_TEMP_TC_K                             7
#define KEDMM6500_VAL_TEMP_TC_N                             8
#define KEDMM6500_VAL_TEMP_TC_R                             9
#define KEDMM6500_VAL_TEMP_TC_S                             10
#define KEDMM6500_VAL_TEMP_TC_T                             11
#define KEDMM6500_VAL_TEMP_TC_U                             12
#define KEDMM6500_VAL_TEMP_TC_V                             13

/*- Defined values for 
	attribute KEDMM6500_ATTR_TEMP_TC_REF_JUNC_TYPE
	parameter RefJunctionType in function kedmm6500_ConfigureThermocouple */

#define KEDMM6500_VAL_TEMP_REF_JUNC_INTERNAL                1
#define KEDMM6500_VAL_TEMP_REF_JUNC_FIXED                   2

/*- Defined values for 
	attribute KEDMM6500_ATTR_TRIGGER_SOURCE
	parameter TriggerSource in function kedmm6500_ConfigureTrigger */

#define KEDMM6500_VAL_IMMEDIATE                             1
#define KEDMM6500_VAL_EXTERNAL                              2
#define KEDMM6500_VAL_SOFTWARE_TRIG                         3
#define KEDMM6500_VAL_TTL0                                  111
#define KEDMM6500_VAL_TTL1                                  112
#define KEDMM6500_VAL_TTL2                                  113
#define KEDMM6500_VAL_TTL3                                  114
#define KEDMM6500_VAL_TTL4                                  115
#define KEDMM6500_VAL_TTL5                                  116
#define KEDMM6500_VAL_TTL6                                  117
#define KEDMM6500_VAL_TTL7                                  118
#define KEDMM6500_VAL_ECL0                                  119
#define KEDMM6500_VAL_ECL1                                  120
#define KEDMM6500_VAL_PXI_STAR                              131
#define KEDMM6500_VAL_RTSI_0                                140
#define KEDMM6500_VAL_RTSI_1                                141
#define KEDMM6500_VAL_RTSI_2                                142
#define KEDMM6500_VAL_RTSI_3                                143
#define KEDMM6500_VAL_RTSI_4                                144
#define KEDMM6500_VAL_RTSI_5                                145
#define KEDMM6500_VAL_RTSI_6                                146

/*- Defined values for 
	attribute KEDMM6500_ATTR_TRIGGER_SLOPE
	parameter Polarity in function kedmm6500_ConfigureTriggerSlope */

#define KEDMM6500_VAL_POSITIVE                              0
#define KEDMM6500_VAL_NEGATIVE                              1

/*- Defined values for 
	attribute KEDMM6500_ATTR_SAMPLE_TRIGGER
	parameter SampleTrigger in function kedmm6500_ConfigureMultiPoint */

#define KEDMM6500_VAL_IMMEDIATE                             1
#define KEDMM6500_VAL_EXTERNAL                              2
#define KEDMM6500_VAL_SOFTWARE_TRIG                         3
#define KEDMM6500_VAL_INTERVAL                              10
#define KEDMM6500_VAL_TTL0                                  111
#define KEDMM6500_VAL_TTL1                                  112
#define KEDMM6500_VAL_TTL2                                  113
#define KEDMM6500_VAL_TTL3                                  114
#define KEDMM6500_VAL_TTL4                                  115
#define KEDMM6500_VAL_TTL5                                  116
#define KEDMM6500_VAL_TTL6                                  117
#define KEDMM6500_VAL_TTL7                                  118
#define KEDMM6500_VAL_ECL0                                  119
#define KEDMM6500_VAL_ECL1                                  120
#define KEDMM6500_VAL_PXI_STAR                              131
#define KEDMM6500_VAL_RTSI_0                                140
#define KEDMM6500_VAL_RTSI_1                                141
#define KEDMM6500_VAL_RTSI_2                                142
#define KEDMM6500_VAL_RTSI_3                                143
#define KEDMM6500_VAL_RTSI_4                                144
#define KEDMM6500_VAL_RTSI_5                                145
#define KEDMM6500_VAL_RTSI_6                                146

/*- Defined values for 
	attribute KEDMM6500_ATTR_MEAS_COMPLETE_DEST
	parameter MeasCompleteDest in function kedmm6500_ConfigureMeasCompleteDest */

#define KEDMM6500_VAL_EXTERNAL                              2
#define KEDMM6500_VAL_TTL0                                  111
#define KEDMM6500_VAL_TTL1                                  112
#define KEDMM6500_VAL_TTL2                                  113
#define KEDMM6500_VAL_TTL3                                  114
#define KEDMM6500_VAL_TTL4                                  115
#define KEDMM6500_VAL_TTL5                                  116
#define KEDMM6500_VAL_TTL6                                  117
#define KEDMM6500_VAL_TTL7                                  118
#define KEDMM6500_VAL_ECL0                                  119
#define KEDMM6500_VAL_ECL1                                  120
#define KEDMM6500_VAL_PXI_STAR                              131
#define KEDMM6500_VAL_RTSI_0                                140
#define KEDMM6500_VAL_RTSI_1                                141
#define KEDMM6500_VAL_RTSI_2                                142
#define KEDMM6500_VAL_RTSI_3                                143
#define KEDMM6500_VAL_RTSI_4                                144
#define KEDMM6500_VAL_RTSI_5                                145
#define KEDMM6500_VAL_RTSI_6                                146
#define KEDMM6500_VAL_NONE                                  -1

/*- Defined values for */

#define KEDMM6500_VAL_AUTO_RANGE_ONCE                       -3
#define KEDMM6500_VAL_AUTO_RANGE_OFF                        -2
#define KEDMM6500_VAL_AUTO_RANGE_ON                         -1

/*- Defined values for */

#define KEDMM6500_VAL_AUTO_RANGE_OFF                        -2
#define KEDMM6500_VAL_AUTO_RANGE_ON                         -1

/*- Defined values for */

#define KEDMM6500_VAL_MAX_TIME_IMMEDIATE                    0
#define KEDMM6500_VAL_MAX_TIME_INFINITE                     -1

/*- Defined values for */

#define KEDMM6500_VAL_AUTO_DELAY_OFF                        -2
#define KEDMM6500_VAL_AUTO_DELAY_ON                         -1

/*- Defined values for 
	attribute KEDMM6500_ATTR_PROGRAMMING_LANGUAGE */

#define KEDMM6500_VAL_PROGRAMMING_LANGUAGETSP2              0
#define KEDMM6500_VAL_PROGRAMMING_LANGUAGESCPI2             1

/*- Defined values for 
	parameter Function in function kedmm6500_GetAutoRange
	parameter Function in function kedmm6500_SetAutoRange
	parameter Function in function kedmm6500_GetRange
	parameter Function in function kedmm6500_SetRange
	parameter Function in function kedmm6500_GetChannelAutoRange
	parameter Function in function kedmm6500_SetChannelAutoRange
	parameter Function in function kedmm6500_GetChannelRange
	parameter Function in function kedmm6500_SetChannelRange
	parameter Function in function kedmm6500_GetAnalogTriggerRange
	parameter Function in function kedmm6500_SetAnalogTriggerRange
	parameter Function in function kedmm6500_GetAnalogTriggerAutoRange
	parameter Function in function kedmm6500_SetAnalogTriggerAutoRange */

#define KEDMM6500_VAL_FUNCTIONS_WITH_RANGE2_WIRE_RESISTANCE2 2
#define KEDMM6500_VAL_FUNCTIONS_WITH_RANGE4_WIRE_RESISTANCE2 3
#define KEDMM6500_VAL_FUNCTIONS_WITH_RANGE_CAPACITANCE2      10
#define KEDMM6500_VAL_FUNCTIONS_WITH_RANGE_CURRENTAC2        4
#define KEDMM6500_VAL_FUNCTIONS_WITH_RANGE_CURRENTDC2        0
#define KEDMM6500_VAL_FUNCTIONS_WITH_RANGE_VOLTAGEAC2        5
#define KEDMM6500_VAL_FUNCTIONS_WITH_RANGE_VOLTAGEDC2        1
#define KEDMM6500_VAL_FUNCTIONS_WITH_RANGE_VOLTAGEDC_RATIO2  14

/*- Defined values for 
	attribute KEDMM6500_ATTR_MEASUREMENT_FUNCTION
	parameter Function2 in function kedmm6500_GetMeasurementFunction
	parameter Function2 in function kedmm6500_SetMeasurementFunction
	parameter Function in function kedmm6500_Measure
	parameter Function in function kedmm6500_GetAutoZeroEnabled
	parameter Function in function kedmm6500_SetAutoZeroEnabled
	parameter Function in function kedmm6500_GetAperture
	parameter Function in function kedmm6500_SetAperture
	parameter Function in function kedmm6500_GetChannelAperture
	parameter Function in function kedmm6500_SetChannelAperture
	parameter Function in function kedmm6500_SetChannelAutoZeroEnabled
	parameter Function in function kedmm6500_GetChannelAutoZeroEnabled */

#define KEDMM6500_VAL_FUNCTION_CURRENT3                     0
#define KEDMM6500_VAL_FUNCTION_RESISTANCE3                  2
#define KEDMM6500_VAL_FUNCTION_VOLTAGE3                     1
#define KEDMM6500_VAL_FUNCTION4_WIRE_RESISTANCE2            3
#define KEDMM6500_VAL_FUNCTION_CURRENTAC2                   4
#define KEDMM6500_VAL_FUNCTION_VOLTAGEAC2                   5
#define KEDMM6500_VAL_FUNCTION_TEMPERATURE2                 6
#define KEDMM6500_VAL_FUNCTION_FREQUENCY2                   7
#define KEDMM6500_VAL_FUNCTION_PERIOD2                      8
#define KEDMM6500_VAL_FUNCTION_CONTINUITY2                  9
#define KEDMM6500_VAL_FUNCTION_CAPACITANCE2                 10
#define KEDMM6500_VAL_FUNCTION_DIODE2                       11
#define KEDMM6500_VAL_FUNCTION_NONE2                        15
#define KEDMM6500_VAL_FUNCTION_VOLTAGEDC_RATIO2             14

/*- Defined values for 
	attribute KEDMM6500_ATTR_ACCESS */

#define KEDMM6500_VAL_SYSTEM_ACCESS_TYPE_FULL3              0
#define KEDMM6500_VAL_SYSTEM_ACCESS_TYPE_EXCLUSIVE3         1
#define KEDMM6500_VAL_SYSTEM_ACCESS_TYPE_PROTECTED3         2
#define KEDMM6500_VAL_SYSTEM_ACCESS_TYPE_LOCKOUT3           3

/*- Defined values for 
	parameter Mask in function kedmm6500_GetEventLogCount
	parameter Mask in function kedmm6500_GetReadNextEventLog */

#define KEDMM6500_VAL_SYSTEM_EVENT_LOG_MASK_ERROR3          0
#define KEDMM6500_VAL_SYSTEM_EVENT_LOG_MASK_WARNING3        1
#define KEDMM6500_VAL_SYSTEM_EVENT_LOG_MASK_INFORMATIONAL3  2
#define KEDMM6500_VAL_SYSTEM_EVENT_LOG_MASK_ALL3            3

/*- Defined values for 
	parameter SeverityType in function kedmm6500_PostEventLog
	parameter EventType in function kedmm6500_SaveEventLog */

#define KEDMM6500_VAL_SYSTEM_EVENT_LOG_SEVERITY_TYPE_INFORMATIONAL3 0
#define KEDMM6500_VAL_SYSTEM_EVENT_LOG_SEVERITY_TYPE_ERROR3         1
#define KEDMM6500_VAL_SYSTEM_EVENT_LOG_SEVERITY_TYPE_WARNING3       2

/*- Defined values for 
	attribute KEDMM6500_ATTR_POWER_LINE_FREQUENCY */

#define KEDMM6500_VAL_SYSTEM_POWER_LINE_FREQUENCY5022       0
#define KEDMM6500_VAL_SYSTEM_POWER_LINE_FREQUENCY6022       1

/*- Defined values for 
	attribute KEDMM6500_ATTR_POWER_ON_SETUP */

#define KEDMM6500_VAL_SYSTEM_POWER_ONRST3                   0
#define KEDMM6500_VAL_SYSTEM_POWER_ONSAV10                  1
#define KEDMM6500_VAL_SYSTEM_POWER_ONSAV11                  2
#define KEDMM6500_VAL_SYSTEM_POWER_ONSAV12                  3
#define KEDMM6500_VAL_SYSTEM_POWER_ONSAV13                  4
#define KEDMM6500_VAL_SYSTEM_POWER_ONSAV14                  5

/*- Defined values for 
	attribute KEDMM6500_ATTR_TERMINAL
	attribute KEDMM6500_ATTR_TERMINAL2 */

#define KEDMM6500_VAL_SYSTEM_TERMINAL_FRONT3                0
#define KEDMM6500_VAL_SYSTEM_TERMINAL_REAR3                 1

/*- Defined values for 
	parameter Function in function kedmm6500_GetFunctionnplc
	parameter Function in function kedmm6500_SetFunctionnplc
	parameter Function in function kedmm6500_GetNPLC
	parameter Function in function kedmm6500_SetChannelNPLC
	parameter Function in function kedmm6500_GetATrigFunctionnplc
	parameter Function in function kedmm6500_SetATrigFunctionnplc */

#define KEDMM6500_VAL_NPLC_FUNCTIONS2_WIRE_RESISTANCE2      2
#define KEDMM6500_VAL_NPLC_FUNCTIONS4_WIRE_RESISTANCE2      3
#define KEDMM6500_VAL_NPLC_FUNCTIONS_CURRENTAC2             4
#define KEDMM6500_VAL_NPLC_FUNCTIONS_CURRENTDC2             0
#define KEDMM6500_VAL_NPLC_FUNCTIONS_DIODE2                 11
#define KEDMM6500_VAL_NPLC_FUNCTIONS_TEMPERATURE2           6
#define KEDMM6500_VAL_NPLC_FUNCTIONS_VOLTAGEAC2             5
#define KEDMM6500_VAL_NPLC_FUNCTIONS_VOLTAGEDC2             1
#define KEDMM6500_VAL_NPLC_FUNCTIONS_VOLTAGEDC_RATIO2       14

/*- Defined values for 
	parameter Function in function kedmm6500_GetUserDelay
	parameter Function in function kedmm6500_SetUserDelay
	parameter Function in function kedmm6500_GetAutoDelay
	parameter Function in function kedmm6500_SetAutoDelay
	parameter Function in function kedmm6500_GetChannelUserDelay
	parameter Function in function kedmm6500_SetChannelUserDelay
	parameter Function in function kedmm6500_GetChannelAutoDelay
	parameter Function in function kedmm6500_SetChannelAutoDelay
	parameter Function in function kedmm6500_GetMathOperation
	parameter Function in function kedmm6500_SetMathOperation
	parameter Function in function kedmm6500_GetMathOffsetFactor
	parameter Function in function kedmm6500_SetMathOffsetFactor
	parameter Function in function kedmm6500_GetMathScaleFactor
	parameter Function in function kedmm6500_SetMathScaleFactor
	parameter Function in function kedmm6500_GetMathPercent
	parameter Function in function kedmm6500_SetMathPercent
	parameter Function in function kedmm6500_GetMathOperationState
	parameter Function in function kedmm6500_SetMathOperationState
	parameter Function in function kedmm6500_GetChannelOffsetFactor
	parameter Function in function kedmm6500_SetChannelOffsetFactor
	parameter Function in function kedmm6500_GetChannelOperation
	parameter Function in function kedmm6500_SetChannelOperation
	parameter Function in function kedmm6500_GetChannelOperationState
	parameter Function in function kedmm6500_SetChannelOperationState
	parameter Function in function kedmm6500_GetChannelPercentage
	parameter Function in function kedmm6500_SetChannelPercentage
	parameter Function in function kedmm6500_GetChannelScaleFactor
	parameter Function in function kedmm6500_SetChannelScaleFactor
	parameter Function in function kedmm6500_ReadTestResult
	parameter Function in function kedmm6500_LimitClear
	parameter Function in function kedmm6500_GetLimitTestEnabled
	parameter Function in function kedmm6500_SetLimitTestEnabled
	parameter Function in function kedmm6500_GetLimitAutoClearState
	parameter Function in function kedmm6500_SetLimitAutoClearState
	parameter Function in function kedmm6500_GetHigh
	parameter Function in function kedmm6500_SetHigh
	parameter Function in function kedmm6500_GetLow
	parameter Function in function kedmm6500_SetLow
	parameter Function in function kedmm6500_GetLimitAudible
	parameter Function in function kedmm6500_SetLimitAudible
	parameter Function in function kedmm6500_GetAudible
	parameter Function in function kedmm6500_SetAudible
	parameter Function in function kedmm6500_GetAutoClearState
	parameter Function in function kedmm6500_SetAutoClearState
	parameter Function in function kedmm6500_GetEnabled
	parameter Function in function kedmm6500_SetEnabled
	parameter Function in function kedmm6500_GetChannelHigh
	parameter Function in function kedmm6500_SetChannelHigh
	parameter Function in function kedmm6500_GetChannelLow
	parameter Function in function kedmm6500_SetChannelLow
	parameter Function in function kedmm6500_GetFilterCount
	parameter Function in function kedmm6500_SetFilterCount
	parameter Function in function kedmm6500_GetFilterState
	parameter Function in function kedmm6500_SetFilterState
	parameter Function in function kedmm6500_GetFilterType
	parameter Function in function kedmm6500_SetFilterType
	parameter Function in function kedmm6500_GetFilterWindow
	parameter Function in function kedmm6500_SetFilterWindow
	parameter Function in function kedmm6500_GetChannelFilterCount
	parameter Function in function kedmm6500_SetChannelFilterCount
	parameter Function in function kedmm6500_GetChannelFilterState
	parameter Function in function kedmm6500_SetChannelFilterState
	parameter Function in function kedmm6500_GetChannelFilterType
	parameter Function in function kedmm6500_SetChannelFilterType
	parameter Function in function kedmm6500_GetChannelFilterWindow
	parameter Function in function kedmm6500_SetChannelFilterWindow
	parameter Function in function kedmm6500_RelativeAcquire
	parameter Function in function kedmm6500_GetRelativeOffset
	parameter Function in function kedmm6500_SetRelativeOffset
	parameter Function in function kedmm6500_GetRelativeOffsetState
	parameter Function in function kedmm6500_SetRelativeOffsetState
	parameter Function in function kedmm6500_GetChannelOffset
	parameter Function in function kedmm6500_SetChannelOffset
	parameter Function in function kedmm6500_GetChannelOffsetState
	parameter Function in function kedmm6500_SetChannelOffsetState */

#define KEDMM6500_VAL_FUNCTION22_WIRE_RESISTANCE2           2
#define KEDMM6500_VAL_FUNCTION24_WIRE_RESISTANCE2           3
#define KEDMM6500_VAL_FUNCTION2_CAPACITANCE2                10
#define KEDMM6500_VAL_FUNCTION2_CONTINUITY2                 9
#define KEDMM6500_VAL_FUNCTION2_CURRENTAC2                  4
#define KEDMM6500_VAL_FUNCTION2_CURRENTDC2                  0
#define KEDMM6500_VAL_FUNCTION2_DIODE2                      11
#define KEDMM6500_VAL_FUNCTION2_FREQUENCY2                  7
#define KEDMM6500_VAL_FUNCTION2_PERIOD2                     8
#define KEDMM6500_VAL_FUNCTION2_TEMPERATURE2                6
#define KEDMM6500_VAL_FUNCTION2_VOLTAGEAC2                  5
#define KEDMM6500_VAL_FUNCTION2_VOLTAGEDC2                  1
#define KEDMM6500_VAL_FUNCTION2_VOLTAGEDC_RATIO2            14

/*- Defined values for 
	parameter MathOperation in function kedmm6500_GetMathOperation
	parameter MathOperation in function kedmm6500_SetMathOperation
	parameter Operation2 in function kedmm6500_GetChannelOperation
	parameter Operation2 in function kedmm6500_SetChannelOperation
	parameter MathOperation in function kedmm6500_GetDigitizerMathOperation
	parameter MathOperation in function kedmm6500_SetDigitizerMathOperation
	parameter MathOperation in function kedmm6500_GetDigitizerChannelMathOperation
	parameter MathOperation in function kedmm6500_SetDigitizerChannelMathOperation */

#define KEDMM6500_VAL_MATH_OPERATIONMXB3                    0
#define KEDMM6500_VAL_MATH_OPERATION_PERCENT3               1
#define KEDMM6500_VAL_MATH_OPERATION_RECIPROCAL3            2

/*- Defined values for 
	parameter LimitTest in function kedmm6500_ReadTestResult
	parameter LimitTest in function kedmm6500_LimitClear
	parameter LimitTest in function kedmm6500_GetLimitTestEnabled
	parameter LimitTest in function kedmm6500_SetLimitTestEnabled
	parameter LimitTest in function kedmm6500_GetLimitAutoClearState
	parameter LimitTest in function kedmm6500_SetLimitAutoClearState
	parameter LimitTest in function kedmm6500_GetHigh
	parameter LimitTest in function kedmm6500_SetHigh
	parameter LimitTest in function kedmm6500_GetLow
	parameter LimitTest in function kedmm6500_SetLow
	parameter LimitTest in function kedmm6500_GetLimitAudible
	parameter LimitTest in function kedmm6500_SetLimitAudible
	parameter LimitTest in function kedmm6500_GetAudible
	parameter LimitTest in function kedmm6500_SetAudible
	parameter LimitTest in function kedmm6500_GetAutoClearState
	parameter LimitTest in function kedmm6500_SetAutoClearState
	parameter LimitTest in function kedmm6500_GetEnabled
	parameter LimitTest in function kedmm6500_SetEnabled
	parameter LimitTest in function kedmm6500_GetChannelHigh
	parameter LimitTest in function kedmm6500_SetChannelHigh
	parameter LimitTest in function kedmm6500_GetChannelLow
	parameter LimitTest in function kedmm6500_SetChannelLow
	parameter LimitTest in function kedmm6500_IsDigitizerLimitTestFailed
	parameter LimitTest in function kedmm6500_DigitizerConfigurationLimitClear
	parameter LimitTest in function kedmm6500_GetDigitizerLimitTestEnabled
	parameter LimitTest in function kedmm6500_SetDigitizerLimitTestEnabled
	parameter LimitTest in function kedmm6500_GetDigitizerLimitAutoClearState
	parameter LimitTest in function kedmm6500_SetDigitizerLimitAutoClearState
	parameter LimitTest in function kedmm6500_GetDigitizerUpperLimit
	parameter LimitTest in function kedmm6500_SetDigitizerUpperLimit
	parameter LimitTest in function kedmm6500_GetDigitizerLowerLimit
	parameter LimitTest in function kedmm6500_SetDigitizerLowerLimit
	parameter LimitTest in function kedmm6500_GetDigitizerLimitAudible
	parameter LimitTest in function kedmm6500_SetDigitizerLimitAudible
	parameter LimitTest in function kedmm6500_GetDigitizerChannelLimitAudible
	parameter LimitTest in function kedmm6500_SetDigitizerChannelLimitAudible
	parameter LimitTest in function kedmm6500_GetDigitizerChannelAutoClearState
	parameter LimitTest in function kedmm6500_SetDigitizerChannelAutoClearState
	parameter LimitTest in function kedmm6500_GetDigitizerChannelEnabled
	parameter LimitTest in function kedmm6500_SetDigitizerChannelEnabled
	parameter LimitTest in function kedmm6500_GetDigitizerChannelHigh
	parameter LimitTest in function kedmm6500_SetDigitizerChannelHigh
	parameter LimitTest in function kedmm6500_GetDigitizerChannelLow
	parameter LimitTest in function kedmm6500_SetDigitizerChannelLow */

#define KEDMM6500_VAL_MEASUREMENT_MATH_LIMIT_TEST5          0
#define KEDMM6500_VAL_MEASUREMENT_MATH_LIMIT_TEST6          1

/*- Defined values for 
	parameter Audible in function kedmm6500_GetLimitAudible
	parameter Audible in function kedmm6500_SetLimitAudible
	parameter Audible2 in function kedmm6500_GetAudible
	parameter Audible2 in function kedmm6500_SetAudible
	parameter Audible in function kedmm6500_GetDigitizerLimitAudible
	parameter Audible in function kedmm6500_SetDigitizerLimitAudible
	parameter Audible in function kedmm6500_GetDigitizerChannelLimitAudible
	parameter Audible in function kedmm6500_SetDigitizerChannelLimitAudible */

#define KEDMM6500_VAL_AUDIBLE_STATE_NONE2                   0
#define KEDMM6500_VAL_AUDIBLE_STATE_PASS2                   1
#define KEDMM6500_VAL_AUDIBLE_STATE_FAIL2                   2

/*- Defined values for 
	parameter Val in function kedmm6500_ReadTestResult
	parameter Val in function kedmm6500_IsDigitizerLimitTestFailed */

#define KEDMM6500_VAL_MEASUREMENT_LIMIT_FAILED_NONE3        0
#define KEDMM6500_VAL_MEASUREMENT_LIMIT_FAILED_HIGH3        1
#define KEDMM6500_VAL_MEASUREMENT_LIMIT_FAILED_LOW3         2
#define KEDMM6500_VAL_MEASUREMENT_LIMIT_FAILED_BOTH3        3

/*- Defined values for 
	attribute KEDMM6500_ATTR_TEMP_TC_TYPE2
	parameter ThermocoupleType2 in function kedmm6500_GetChannelThermocoupleType
	parameter ThermocoupleType2 in function kedmm6500_SetChannelThermocoupleType */

#define KEDMM6500_VAL_TEMP_TC_B3                            1
#define KEDMM6500_VAL_TEMP_TC_E3                            4
#define KEDMM6500_VAL_TEMP_TC_J3                            6
#define KEDMM6500_VAL_TEMP_TC_K3                            7
#define KEDMM6500_VAL_TEMP_TC_N3                            8
#define KEDMM6500_VAL_TEMP_TC_R3                            9
#define KEDMM6500_VAL_TEMP_TC_S3                            10
#define KEDMM6500_VAL_TEMP_TC_T3                            11

/*- Defined values for 
	attribute KEDMM6500_ATTR_TEMP_TRANSDUCER_TYPE2
	parameter TransducerType in function kedmm6500_ConfigureTransducerType2
	parameter TransducerType2 in function kedmm6500_GetChannelTransducerType
	parameter TransducerType2 in function kedmm6500_SetChannelTransducerType */

#define KEDMM6500_VAL_THERMOCOUPLE3                         1
#define KEDMM6500_VAL_THERMISTOR3                           2
#define KEDMM6500_VAL_2_WIRE_RTD3                           3
#define KEDMM6500_VAL_4_WIRE_RTD3                           4

/*- Defined values for 
	attribute KEDMM6500_ATTR_UNITS
	parameter Unit2 in function kedmm6500_GetChannelUnits
	parameter Unit2 in function kedmm6500_SetChannelUnits */

#define KEDMM6500_VAL_TEMPERATURE_UNIT_KELVIN2              0
#define KEDMM6500_VAL_TEMPERATURE_UNIT_CELSIUS2             1
#define KEDMM6500_VAL_TEMPERATURE_UNIT_FAHRENHET2           2

/*- Defined values for 
	parameter Type in function kedmm6500_ConfigureUserDefinedType
	parameter Type in function kedmm6500_GetRtdType
	parameter Type in function kedmm6500_SetRtdType
	parameter Type in function kedmm6500_ConfigureChannelUserDefinedType
	parameter Type in function kedmm6500_GetChannelType
	parameter Type in function kedmm6500_SetChannelType */

#define KEDMM6500_VAL_TEMPERATURERTD_TYPE2_FOUR2            0
#define KEDMM6500_VAL_TEMPERATURERTD_TYPE2_THREE2           1
#define KEDMM6500_VAL_TEMPERATURERTD_TYPE2_TWO              2

/*- Defined values for 
	parameter RTDType in function kedmm6500_GetRtdType
	parameter RTDType in function kedmm6500_SetRtdType
	parameter RTDType2 in function kedmm6500_GetChannelType
	parameter RTDType2 in function kedmm6500_SetChannelType */

#define KEDMM6500_VAL_TEMPERATURERTD_TYPEPT1002             0
#define KEDMM6500_VAL_TEMPERATURERTD_TYPED1002              1
#define KEDMM6500_VAL_TEMPERATURERTD_TYPEF1002              2
#define KEDMM6500_VAL_TEMPERATURERTD_TYPEPT3852             3
#define KEDMM6500_VAL_TEMPERATURERTD_TYPEPT39162            4
#define KEDMM6500_VAL_TEMPERATURERTD_TYPEUSER2              5

/*- Defined values for 
	parameter Constant in function kedmm6500_ConfigureUserDefinedType
	parameter Constant in function kedmm6500_ReadConstants
	parameter Constant in function kedmm6500_ConfigureChannelUserDefinedType
	parameter Constant in function kedmm6500_ReadChannelConstants */

#define KEDMM6500_VAL_TEMPERATURERTD_CONSTANTSR_ZERO2       0
#define KEDMM6500_VAL_TEMPERATURERTD_CONSTANTS_ALPHA2       1
#define KEDMM6500_VAL_TEMPERATURERTD_CONSTANTS_BETA2        2
#define KEDMM6500_VAL_TEMPERATURERTD_CONSTANTS_DELTA2       3

/*- Defined values for 
	parameter UserDelayIndex in function kedmm6500_GetUserDelay
	parameter UserDelayIndex in function kedmm6500_SetUserDelay
	parameter UserDelayIndex in function kedmm6500_GetChannelUserDelay
	parameter UserDelayIndex in function kedmm6500_SetChannelUserDelay
	parameter UserDelayIndex in function kedmm6500_GetDigitizerUserDelay
	parameter UserDelayIndex in function kedmm6500_SetDigitizerUserDelay
	parameter UserDelayIndex in function kedmm6500_GetDigitizerChannelUserDelay
	parameter UserDelayIndex in function kedmm6500_SetDigitizerChannelUserDelay */

#define KEDMM6500_VAL_USER_DELAY_INDEX6                     1
#define KEDMM6500_VAL_USER_DELAY_INDEX7                     2
#define KEDMM6500_VAL_USER_DELAY_INDEX8                     3
#define KEDMM6500_VAL_USER_DELAY_INDEX9                     4
#define KEDMM6500_VAL_USER_DELAY_INDEX10                    5

/*- Defined values for 
	parameter Function in function kedmm6500_GetVoltageUnits
	parameter Function in function kedmm6500_SetVoltageUnits
	parameter Function in function kedmm6500_GetDbReference
	parameter Function in function kedmm6500_SetDbReference
	parameter Function in function kedmm6500_GetChannelDBReference
	parameter Function in function kedmm6500_SetChannelDBReference
	parameter Function in function kedmm6500_GetChannelVoltageUnits
	parameter Function in function kedmm6500_SetChannelVoltageUnits */

#define KEDMM6500_VAL_VOLT_FUNCTION_VOLTAGEDC2              0
#define KEDMM6500_VAL_VOLT_FUNCTION_VOLTAGEAC2              1

/*- Defined values for 
	parameter VoltageUnits in function kedmm6500_GetVoltageUnits
	parameter VoltageUnits in function kedmm6500_SetVoltageUnits
	parameter VoltageUnits2 in function kedmm6500_GetChannelVoltageUnits
	parameter VoltageUnits2 in function kedmm6500_SetChannelVoltageUnits */

#define KEDMM6500_VAL_VOLTAGE_UNITS_VOLT2                   0
#define KEDMM6500_VAL_VOLTAGE_UNITSDB2                      1

/*- Defined values for 
	parameter AutoDelay in function kedmm6500_GetAutoDelay
	parameter AutoDelay in function kedmm6500_SetAutoDelay
	parameter AutoDelay2 in function kedmm6500_GetChannelAutoDelay
	parameter AutoDelay2 in function kedmm6500_SetChannelAutoDelay */

#define KEDMM6500_VAL_MEASUREMENT_AUTO_DELAY_ON2            0
#define KEDMM6500_VAL_MEASUREMENT_AUTO_DELAY_OFF2           1

/*- Defined values for 
	parameter Function in function kedmm6500_GetBiasLevel
	parameter Function in function kedmm6500_SetBiasLevel
	parameter Function in function kedmm6500_GetChannelBiasLevel
	parameter Function in function kedmm6500_SetChannelBiasLevel */

#define KEDMM6500_VAL_FUNCTION4_DIODE2                      3

/*- Defined values for 
	parameter Function in function kedmm6500_GetDetectorBandwidth
	parameter Function in function kedmm6500_SetDetectorBandwidth
	parameter Function in function kedmm6500_GetChannelDetectorBandwidth
	parameter Function in function kedmm6500_SetChannelDetectorBandwidth */

#define KEDMM6500_VAL_AC_FUNCTION_CURRENTAC2                0
#define KEDMM6500_VAL_AC_FUNCTION_VOLTAGEAC2                1

/*- Defined values for 
	parameter DetectorBandwidth in function kedmm6500_GetDetectorBandwidth
	parameter DetectorBandwidth in function kedmm6500_SetDetectorBandwidth
	parameter DetectorBandwidth2 in function kedmm6500_GetChannelDetectorBandwidth
	parameter DetectorBandwidth2 in function kedmm6500_SetChannelDetectorBandwidth */

#define KEDMM6500_VAL_DETECTOR_BANDWIDTH4                   0
#define KEDMM6500_VAL_DETECTOR_BANDWIDTH302                 1
#define KEDMM6500_VAL_DETECTOR_BANDWIDTH3002                2

/*- Defined values for 
	parameter Function in function kedmm6500_GetLineSync
	parameter Function in function kedmm6500_SetLineSync
	parameter Function in function kedmm6500_GetChannelLineSync
	parameter Function in function kedmm6500_SetChannelLineSync */

#define KEDMM6500_VAL_FUNCTION3_CURRENTDC2                  0
#define KEDMM6500_VAL_FUNCTION3_VOLTAGEDC2                  1
#define KEDMM6500_VAL_FUNCTION32_WIRE_RESISTANCE2           2
#define KEDMM6500_VAL_FUNCTION34_WIRE_RESISTANCE2           3
#define KEDMM6500_VAL_FUNCTION3_TEMPERATURE2                6
#define KEDMM6500_VAL_FUNCTION3_CONTINUITY2                 9
#define KEDMM6500_VAL_FUNCTION3_VOLTAGEDC_RATIO2            14

/*- Defined values for 
	parameter Function in function kedmm6500_GetOffsetCompensationEnabled
	parameter Function in function kedmm6500_SetOffsetCompensationEnabled
	parameter Function in function kedmm6500_GetChannelOffsetCompensationEnabled
	parameter Function in function kedmm6500_SetChannelOffsetCompensationEnabled
	parameter Function in function kedmm6500_GetAnalogTriggerOffsetCompensationEnabled
	parameter Function in function kedmm6500_SetAnalogTriggerOffsetCompensationEnabled */

#define KEDMM6500_VAL_FUNCTION54_WIRE_RESISTANCE2           3
#define KEDMM6500_VAL_FUNCTION5_TEMPERATURE2                6

/*- Defined values for 
	parameter FreqPeriod in function kedmm6500_GetFreqPeriodThresholdVoltageRange
	parameter FreqPeriod in function kedmm6500_SetFreqPeriodThresholdVoltageRange
	parameter FreqPeriod in function kedmm6500_GetFreqPeriodThresholdVoltageRangeAutoState
	parameter FreqPeriod in function kedmm6500_SetFreqPeriodThresholdVoltageRangeAutoState */

#define KEDMM6500_VAL_FREQ_PERIOD_FREQUENCY2                0
#define KEDMM6500_VAL_FREQ_PERIOD_PERIOD2                   1

/*- Defined values for 
	parameter Function in function kedmm6500_GetOpenDetector
	parameter Function in function kedmm6500_SetOpenDetector
	parameter Function in function kedmm6500_GetChannelOpenDetector
	parameter Function in function kedmm6500_SetChannelOpenDetector
	parameter Function in function kedmm6500_GetAnalogTriggerOpenDetector
	parameter Function in function kedmm6500_SetAnalogTriggerOpenDetector */

#define KEDMM6500_VAL_OPEN_DETECTOR_FUNCTIONS4_WIRE_RESISTANCE2 0
#define KEDMM6500_VAL_OPEN_DETECTOR_FUNCTIONS_TEMPERATURE2      1

/*- Defined values for 
	parameter Function in function kedmm6500_GetATrigEdgeLevel
	parameter Function in function kedmm6500_SetATrigEdgeLevel
	parameter Function in function kedmm6500_GetATrigEdgeSlope
	parameter Function in function kedmm6500_SetATrigEdgeSlope
	parameter Function in function kedmm6500_GetATrigMode
	parameter Function in function kedmm6500_SetATrigMode
	parameter Function in function kedmm6500_GetATrigWindowDirection
	parameter Function in function kedmm6500_SetATrigWindowDirection
	parameter Function in function kedmm6500_GetATrigWindowLevelHigh
	parameter Function in function kedmm6500_SetATrigWindowLevelHigh
	parameter Function in function kedmm6500_GetATrigWindowLevelLow
	parameter Function in function kedmm6500_SetATrigWindowLevelLow */

#define KEDMM6500_VAL_DC_FUNCTION_VOLTAGE2                  0
#define KEDMM6500_VAL_DC_FUNCTION_CURRENT2                  1

/*- Defined values for 
	parameter EdgeSlope in function kedmm6500_GetATrigEdgeSlope
	parameter EdgeSlope in function kedmm6500_SetATrigEdgeSlope
	parameter EdgeSlope in function kedmm6500_GetDigitizerATrigEdgeSlope
	parameter EdgeSlope in function kedmm6500_SetDigitizerATrigEdgeSlope */

#define KEDMM6500_VAL_EDGE_SLOPE_RISING2                    0
#define KEDMM6500_VAL_EDGE_SLOPE_FALLING2                   1

/*- Defined values for 
	parameter Mode in function kedmm6500_GetATrigMode
	parameter Mode in function kedmm6500_SetATrigMode
	parameter Mode in function kedmm6500_GetDigitizerATrigMode
	parameter Mode in function kedmm6500_SetDigitizerATrigMode */

#define KEDMM6500_VAL_TRIGGER_LEVEL_MODE_EDGE2              0
#define KEDMM6500_VAL_TRIGGER_LEVEL_MODE_PULSE2             1
#define KEDMM6500_VAL_TRIGGER_LEVEL_MODE_WINDOW2            2
#define KEDMM6500_VAL_TRIGGER_LEVEL_MODE_OFF2               3

/*- Defined values for */

#define KEDMM6500_VAL_GREATER_LESSER_GREATER2               0
#define KEDMM6500_VAL_GREATER_LESSER_LESS2                  1

/*- Defined values for 
	parameter WindowDirection in function kedmm6500_GetATrigWindowDirection
	parameter WindowDirection in function kedmm6500_SetATrigWindowDirection
	parameter WindowDirection in function kedmm6500_GetDigitizerATrigWindowDirection
	parameter WindowDirection in function kedmm6500_SetDigitizerATrigWindowDirection */

#define KEDMM6500_VAL_WINDOW_DIRECTION_ENTER2               0
#define KEDMM6500_VAL_WINDOW_DIRECTION_LEAVE2               1

/*- Defined values for 
	attribute KEDMM6500_ATTR_DC_VOLT_INPUT_IMPEDANCE
	attribute KEDMM6500_ATTR_DIGITIZER_DC_VOLT_INPUT_IMPEDANCE
	parameter DCVoltInputImpedance2 in function kedmm6500_GetChannelDCVoltInputImpedance
	parameter DCVoltInputImpedance2 in function kedmm6500_SetChannelDCVoltInputImpedance
	parameter DCVoltInputImpedance2 in function kedmm6500_GetDigitizerChannelDcVoltInputImpedance
	parameter DCVoltInputImpedance2 in function kedmm6500_SetDigitizerChannelDcVoltInputImpedance */

#define KEDMM6500_VAL_INPUT_IMPEDANCE_TEN_MEGA_OHMS2        0
#define KEDMM6500_VAL_INPUT_IMPEDANCE_AUTO2                 1

/*- Defined values for 
	parameter AveragingFilterType in function kedmm6500_GetFilterType
	parameter AveragingFilterType in function kedmm6500_SetFilterType
	parameter Type2 in function kedmm6500_GetChannelFilterType
	parameter Type2 in function kedmm6500_SetChannelFilterType */

#define KEDMM6500_VAL_MEASUR_CONFIG_AVERAGING_FILTER_TYPE_REPEAT3 0
#define KEDMM6500_VAL_MEASUR_CONFIG_AVERAGING_FILTER_TYPE_MOVING3 1

/*- Defined values for 
	attribute KEDMM6500_ATTR_BYTE_ORDER */

#define KEDMM6500_VAL_BYTE_ORDER_TYPE_NORMAL3               0
#define KEDMM6500_VAL_BYTE_ORDER_TYPE_SWAPPED3              1

/*- Defined values for 
	attribute KEDMM6500_ATTR_DATA_FORMAT */

#define KEDMM6500_VAL_DATA_FORMAT_TYPE_ASCII3               0
#define KEDMM6500_VAL_DATA_FORMAT_TYPE_REAL3                1
#define KEDMM6500_VAL_DATA_FORMAT_TYPE_SREAL3               2

/*- Defined values for 
	parameter BufferFillMode in function kedmm6500_GetBufferFillMode
	parameter BufferFillMode in function kedmm6500_SetBufferFillMode */

#define KEDMM6500_VAL_MEASUREMENT_TRACE_BUFFER_FILL_TYPE_CONTINUOUS3 0
#define KEDMM6500_VAL_MEASUREMENT_TRACE_BUFFER_FILL_TYPE_ONCE3       1

/*- Defined values for 
	parameter TimeFormat in function kedmm6500_AppendBufferDataToFile
	parameter TimeFormat in function kedmm6500_SaveBufferDataToFile */

#define KEDMM6500_VAL_MEASUREMENT_TRACE_TIME_FORMAT_TYPE_FORMAT3   0
#define KEDMM6500_VAL_MEASUREMENT_TRACE_TIME_FORMAT_TYPE_RELATIVE3 1
#define KEDMM6500_VAL_MEASUREMENT_TRACE_TIME_FORMAT_TYPE_RAW3      2
#define KEDMM6500_VAL_MEASUREMENT_TRACE_TIME_FORMAT_TYPE_STAMP3    3

/*- Defined values for 
	parameter BufferElement in function kedmm6500_GetBufferDoubleData
	parameter BufferElement in function kedmm6500_FetchStringData */

#define KEDMM6500_VAL_BUFFER_FORMAT_ELEMENT_DATE2           0
#define KEDMM6500_VAL_BUFFER_FORMAT_ELEMENT_FORMATED2       1
#define KEDMM6500_VAL_BUFFER_FORMAT_ELEMENT_FRACTIONAL2     2
#define KEDMM6500_VAL_BUFFER_FORMAT_ELEMENT_READING2        3
#define KEDMM6500_VAL_BUFFER_FORMAT_ELEMENT_RELATIVE2       4
#define KEDMM6500_VAL_BUFFER_FORMAT_ELEMENT_SECONDS2        5
#define KEDMM6500_VAL_BUFFER_FORMAT_ELEMENT_STATUS2         6
#define KEDMM6500_VAL_BUFFER_FORMAT_ELEMENT_TIME2           7
#define KEDMM6500_VAL_BUFFER_FORMAT_ELEMENT_TIME_STAMP2     8
#define KEDMM6500_VAL_BUFFER_FORMAT_ELEMENT_UNIT2           9
#define KEDMM6500_VAL_BUFFER_FORMAT_ELEMENT_EXTRA2          10

/*- Defined values for 
	parameter Mode in function kedmm6500_GetDigitalTriggerMode
	parameter Mode in function kedmm6500_SetDigitalTriggerMode
	parameter Mode in function kedmm6500_GetLANTriggerMode
	parameter Mode in function kedmm6500_SetLANTriggerMode
	parameter Mode in function kedmm6500_GetExternalTriggerMode
	parameter Mode in function kedmm6500_SetExternalTriggerMode */

#define KEDMM6500_VAL_TRIGGER_MODE_FALLING3                 0
#define KEDMM6500_VAL_TRIGGER_MODE_RISING3                  1
#define KEDMM6500_VAL_TRIGGER_MODE_EITHER3                  2

/*- Defined values for 
	parameter OutputLogic in function kedmm6500_GetDigitalTriggerOutputLogic
	parameter OutputLogic in function kedmm6500_SetDigitalTriggerOutputLogic
	parameter OutLogic in function kedmm6500_GetLANTriggerOutLogic
	parameter OutLogic in function kedmm6500_SetLANTriggerOutLogic
	parameter OutputLogic in function kedmm6500_GetExternalTriggerOutputLogic
	parameter OutputLogic in function kedmm6500_SetExternalTriggerOutputLogic */

#define KEDMM6500_VAL_TRIGGER_OUTPUT_LOGIC_TYPE_POSITIVE3   0
#define KEDMM6500_VAL_TRIGGER_OUTPUT_LOGIC_TYPE_NEGATIVE3   1

/*- Defined values for 
	parameter OutProtocol in function kedmm6500_GetLANTriggerOutProtocol
	parameter OutProtocol in function kedmm6500_SetLANTriggerOutProtocol */

#define KEDMM6500_VAL_TRIGGERLAN_PROTOCOLTCP3               0
#define KEDMM6500_VAL_TRIGGERLAN_PROTOCOLUDP3               1
#define KEDMM6500_VAL_TRIGGERLAN_PROTOCOL_MULTICAST3        2

/*- Defined values for 
	parameter BlenderMode in function kedmm6500_GetBlenderTriggerMode
	parameter BlenderMode in function kedmm6500_SetBlenderTriggerMode */

#define KEDMM6500_VAL_TRIGGER_BLENDER_MODEOR3               0
#define KEDMM6500_VAL_TRIGGER_BLENDER_MODEAND3              1

/*- Defined values for 
	parameter LimitType in function kedmm6500_TriggerModelBlockBranchLimitConstant
	parameter LimitType in function kedmm6500_TriggerModelBlockBranchLimitDynamic */

#define KEDMM6500_VAL_BRANCH_LIMIT_TYPE_ABOVE3              0
#define KEDMM6500_VAL_BRANCH_LIMIT_TYPE_BELOW3              1
#define KEDMM6500_VAL_BRANCH_LIMIT_TYPE_INSIDE3             2
#define KEDMM6500_VAL_BRANCH_LIMIT_TYPE_OUTSIDE3            3

/*- Defined values for 
	parameter UserDelayType in function kedmm6500_TriggerModelBlockDelayDynamic */

#define KEDMM6500_VAL_SOURCE_MEASURE_DELAY_MEASURE3         1

/*- Defined values for 
	parameter StimulusAction in function kedmm6500_TriggerModelBlockWait */

#define KEDMM6500_VAL_STIMULUS_ACTION_ENTER2                0
#define KEDMM6500_VAL_STIMULUS_ACTION_NEVER2                1

/*- Defined values for 
	parameter Logic in function kedmm6500_TriggerModelBlockWait */

#define KEDMM6500_VAL_TRIGGER_BLOCK_LOGICAND3               0
#define KEDMM6500_VAL_TRIGGER_BLOCK_LOGICOR3                1

/*- Defined values for 
	parameter ReadingBlock in function kedmm6500_LoadTriggerModelExternal
	parameter ReadingBlock in function kedmm6500_LoadTriggerModelList
	parameter ReadingBlock in function kedmm6500_LoadTriggerModelLoopDuration
	parameter ReadingBlock in function kedmm6500_LoadTriggerModelLoopSimple
	parameter ReadingBlock in function kedmm6500_LoadTriggerModelLoopUntilEvent
	parameter ReadingBlock in function kedmm6500_LoadLogicTrigger */

#define KEDMM6500_VAL_TRIGGER_READING_BLOCK_ACTIVE2         0
#define KEDMM6500_VAL_TRIGGER_READING_BLOCK_MEASURE2        1
#define KEDMM6500_VAL_TRIGGER_READING_BLOCK_DIGITIZE2       2

/*- Defined values for 
	parameter StartInLine in function kedmm6500_LoadTriggerModelGradeBinning
	parameter StartInLine in function kedmm6500_LoadTriggerModelSortBinning */

#define KEDMM6500_VAL_BINNING_START_IN_LINE_DIGITAL7        0
#define KEDMM6500_VAL_BINNING_START_IN_LINE_DIGITAL8        1
#define KEDMM6500_VAL_BINNING_START_IN_LINE_EXTERNAL2       2

/*- Defined values for 
	parameter TriggerType in function kedmm6500_ConfigureDigitalLineMode
	parameter TriggerType in function kedmm6500_ReadDigitalLineMode */

#define KEDMM6500_VAL_DIGITAL_TRIGGER_TYPE_DIGITAL3         0
#define KEDMM6500_VAL_DIGITAL_TRIGGER_TYPE_TRIGGER3         1
#define KEDMM6500_VAL_DIGITAL_TRIGGER_TYPE_SYNCHRONOUS3     2

/*- Defined values for 
	parameter LineState in function kedmm6500_ConfigureDigitalLineMode
	parameter LineState in function kedmm6500_ReadDigitalLineMode */

#define KEDMM6500_VAL_DIGITAL_LINE_STATE_IN3                0
#define KEDMM6500_VAL_DIGITAL_LINE_STATE_OUT3               1
#define KEDMM6500_VAL_DIGITAL_LINE_STATE_OPENDRAIN3         2
#define KEDMM6500_VAL_DIGITAL_LINE_STATE_ACCEPTOR3          3
#define KEDMM6500_VAL_DIGITAL_LINE_STATE_MASTER3            4

/*- Defined values for 
	parameter Function in function kedmm6500_GetDisplayResolution
	parameter Function in function kedmm6500_SetDisplayResolution */

#define KEDMM6500_VAL_DISPLAY_RESOLUTION_FUNCTION_VOLTAGEDC_RATIO2   14
#define KEDMM6500_VAL_DISPLAY_RESOLUTION_FUNCTION_VOLTAGEDC2         1
#define KEDMM6500_VAL_DISPLAY_RESOLUTION_FUNCTION_VOLTAGEAC2         5
#define KEDMM6500_VAL_DISPLAY_RESOLUTION_FUNCTION_DIODE2             11
#define KEDMM6500_VAL_DISPLAY_RESOLUTION_FUNCTION_CURRENTDC2         0
#define KEDMM6500_VAL_DISPLAY_RESOLUTION_FUNCTION_CURRENTAC2         4
#define KEDMM6500_VAL_DISPLAY_RESOLUTION_FUNCTION4_WIRE_RESISTANCE2  3
#define KEDMM6500_VAL_DISPLAY_RESOLUTION_FUNCTION2_WIRE_RESISTANCE2  2
#define KEDMM6500_VAL_DISPLAY_RESOLUTION_FUNCTION_DIGITIZER_CURRENT2 16
#define KEDMM6500_VAL_DISPLAY_RESOLUTION_FUNCTION_DIGITIZER_VOLTAGE2 17

/*- Defined values for 
	parameter Resolution in function kedmm6500_GetDisplayResolution
	parameter Resolution in function kedmm6500_SetDisplayResolution */

#define KEDMM6500_VAL_DISPLAY_RESOLUTION_3AND_HALF_DIGITS3  0
#define KEDMM6500_VAL_DISPLAY_RESOLUTION_4AND_HALF_DIGITS3  1
#define KEDMM6500_VAL_DISPLAY_RESOLUTION_5AND_HALF_DIGITS3  2
#define KEDMM6500_VAL_DISPLAY_RESOLUTION_6AND_HALF_DIGITS3  3

/*- Defined values for 
	attribute KEDMM6500_ATTR_BRIGHTNESS */

#define KEDMM6500_VAL_DISPLAY_BRIGHTNESS10_0PERCENT3        0
#define KEDMM6500_VAL_DISPLAY_BRIGHTNESS7_5PERCENT3         1
#define KEDMM6500_VAL_DISPLAY_BRIGHTNESS5_0PERCENT3         2
#define KEDMM6500_VAL_DISPLAY_BRIGHTNESS2_5PERCENT3         3
#define KEDMM6500_VAL_DISPLAY_BRIGHTNESS_OFF3               4
#define KEDMM6500_VAL_DISPLAY_BRIGHTNESS_BLACK_OUT3         5

/*- Defined values for 
	attribute KEDMM6500_ATTR_READING_FORMAT */

#define KEDMM6500_VAL_DISPLAY_READING_FORMAT_EXPONENT3      0
#define KEDMM6500_VAL_DISPLAY_READING_FORMAT_PREFIX3        1

/*- Defined values for 
	attribute KEDMM6500_ATTR_SCREEN_NAME */

#define KEDMM6500_VAL_DISPLAY_SCREEN_NAME_HOME3               0
#define KEDMM6500_VAL_DISPLAY_SCREEN_NAME_USER3               3
#define KEDMM6500_VAL_DISPLAY_SCREEN_NAME_STATISTICS3         4
#define KEDMM6500_VAL_DISPLAY_SCREEN_NAME_SETTINGS3           5
#define KEDMM6500_VAL_DISPLAY_SCREEN_NAME_GRAPH3              6
#define KEDMM6500_VAL_DISPLAY_SCREEN_NAME_HOME_LARGE_READING2 1
#define KEDMM6500_VAL_DISPLAY_SCREEN_NAME_READING_TABLE2      2
#define KEDMM6500_VAL_DISPLAY_SCREEN_NAME_HISTOGRAM2          7
#define KEDMM6500_VAL_DISPLAY_SCREEN_NAME_SWIPE_FUNCTIONS2    8
#define KEDMM6500_VAL_DISPLAY_SCREEN_NAME_SWIPE_GRAPH2        9
#define KEDMM6500_VAL_DISPLAY_SCREEN_NAME_SWIPE_SECONDARY2    10

/*- Defined values for 
	parameter Function in function kedmm6500_GetDigitizerDisplayResolution
	parameter Function in function kedmm6500_SetDigitizerDisplayResolution
	parameter Function in function kedmm6500_DigitizerMeasure
	parameter Function in function kedmm6500_GetDigitizerRange
	parameter Function in function kedmm6500_SetDigitizerRange
	parameter Function in function kedmm6500_GetDigitizerUserDelay
	parameter Function in function kedmm6500_SetDigitizerUserDelay
	parameter Function in function kedmm6500_GetDigitizerAperture
	parameter Function in function kedmm6500_SetDigitizerAperture
	parameter Function in function kedmm6500_GetDigitizerSampleRate
	parameter Function in function kedmm6500_SetDigitizerSampleRate
	parameter Function in function kedmm6500_GetDigitizerChannelAperture
	parameter Function in function kedmm6500_SetDigitizerChannelAperture
	parameter Function in function kedmm6500_GetDigitizerChannelSampleRate
	parameter Function in function kedmm6500_SetDigitizerChannelSampleRate
	parameter Function in function kedmm6500_GetDigitizerChannelUserDelay
	parameter Function in function kedmm6500_SetDigitizerChannelUserDelay
	parameter Function in function kedmm6500_GetDigitizerMathOperation
	parameter Function in function kedmm6500_SetDigitizerMathOperation
	parameter Function in function kedmm6500_GetDigitizerMathOffsetFactor
	parameter Function in function kedmm6500_SetDigitizerMathOffsetFactor
	parameter Function in function kedmm6500_GetDigitizerMathScaleFactor
	parameter Function in function kedmm6500_SetDigitizerMathScaleFactor
	parameter Function in function kedmm6500_GetDigitizerMathPercent
	parameter Function in function kedmm6500_SetDigitizerMathPercent
	parameter Function in function kedmm6500_GetDigitizerMathOperationState
	parameter Function in function kedmm6500_SetDigitizerMathOperationState
	parameter Function in function kedmm6500_GetDigitizerChannelMathOffsetFactor
	parameter Function in function kedmm6500_SetDigitizerChannelMathOffsetFactor
	parameter Function in function kedmm6500_GetDigitizerChannelMathOperation
	parameter Function in function kedmm6500_SetDigitizerChannelMathOperation
	parameter Function in function kedmm6500_GetDigitizerChannelMathOperationState
	parameter Function in function kedmm6500_SetDigitizerChannelMathOperationState
	parameter Function in function kedmm6500_GetDigitizerChannelMathPercent
	parameter Function in function kedmm6500_SetDigitizerChannelMathPercent
	parameter Function in function kedmm6500_GetDigitizerChannelMathScaleFactor
	parameter Function in function kedmm6500_SetDigitizerChannelMathScaleFactor
	parameter Function in function kedmm6500_IsDigitizerLimitTestFailed
	parameter Function in function kedmm6500_DigitizerConfigurationLimitClear
	parameter Function in function kedmm6500_GetDigitizerLimitTestEnabled
	parameter Function in function kedmm6500_SetDigitizerLimitTestEnabled
	parameter Function in function kedmm6500_GetDigitizerLimitAutoClearState
	parameter Function in function kedmm6500_SetDigitizerLimitAutoClearState
	parameter Function in function kedmm6500_GetDigitizerUpperLimit
	parameter Function in function kedmm6500_SetDigitizerUpperLimit
	parameter Function in function kedmm6500_GetDigitizerLowerLimit
	parameter Function in function kedmm6500_SetDigitizerLowerLimit
	parameter Function in function kedmm6500_GetDigitizerLimitAudible
	parameter Function in function kedmm6500_SetDigitizerLimitAudible
	parameter Function in function kedmm6500_GetDigitizerChannelLimitAudible
	parameter Function in function kedmm6500_SetDigitizerChannelLimitAudible
	parameter Function in function kedmm6500_GetDigitizerChannelAutoClearState
	parameter Function in function kedmm6500_SetDigitizerChannelAutoClearState
	parameter Function in function kedmm6500_GetDigitizerChannelEnabled
	parameter Function in function kedmm6500_SetDigitizerChannelEnabled
	parameter Function in function kedmm6500_GetDigitizerChannelHigh
	parameter Function in function kedmm6500_SetDigitizerChannelHigh
	parameter Function in function kedmm6500_GetDigitizerChannelLow
	parameter Function in function kedmm6500_SetDigitizerChannelLow
	parameter Function in function kedmm6500_GetDigitizerATrigEdgeLevel
	parameter Function in function kedmm6500_SetDigitizerATrigEdgeLevel
	parameter Function in function kedmm6500_GetDigitizerATrigEdgeSlope
	parameter Function in function kedmm6500_SetDigitizerATrigEdgeSlope
	parameter Function in function kedmm6500_GetDigitizerATrigMode
	parameter Function in function kedmm6500_SetDigitizerATrigMode
	parameter Function in function kedmm6500_GetDigitizerATrigWindowDirection
	parameter Function in function kedmm6500_SetDigitizerATrigWindowDirection
	parameter Function in function kedmm6500_GetDigitizerATrigWindowLevelHigh
	parameter Function in function kedmm6500_SetDigitizerATrigWindowLevelHigh
	parameter Function in function kedmm6500_GetDigitizerATrigWindowLevelLow
	parameter Function in function kedmm6500_SetDigitizerATrigWindowLevelLow
	parameter Function in function kedmm6500_DigitizerRelativeAcquire
	parameter Function in function kedmm6500_GetDigitizerRelativeOffset
	parameter Function in function kedmm6500_SetDigitizerRelativeOffset
	parameter Function in function kedmm6500_GetDigitizerRelativeOffsetState
	parameter Function in function kedmm6500_SetDigitizerRelativeOffsetState
	parameter Function in function kedmm6500_GetDigitizerChannelRelativeOffset
	parameter Function in function kedmm6500_SetDigitizerChannelRelativeOffset
	parameter Function in function kedmm6500_GetDigitizerChannelRelativeOffsetState
	parameter Function in function kedmm6500_SetDigitizerChannelRelativeOffsetState */

#define KEDMM6500_VAL_DIGITIZER_FUNCTION_CURRENTDC2         0
#define KEDMM6500_VAL_DIGITIZER_FUNCTION_VOLTAGEDC2         1

/*- Defined values for 
	parameter DigitizerResolution in function kedmm6500_GetDigitizerDisplayResolution
	parameter DigitizerResolution in function kedmm6500_SetDigitizerDisplayResolution */

#define KEDMM6500_VAL_DIGITIZER_DISPLAY_RESOLUTION3_AND_HALF_DIGITS2 0
#define KEDMM6500_VAL_DIGITIZER_DISPLAY_RESOLUTION4_AND_HALF_DIGITS2 1
#define KEDMM6500_VAL_DIGITIZER_DISPLAY_RESOLUTION5_AND_HALF_DIGITS2 2
#define KEDMM6500_VAL_DIGITIZER_DISPLAY_RESOLUTION6_AND_HALF_DIGITS2 3

/*- Defined values for 
	parameter LineNumber in function kedmm6500_DisplayMessage */

#define KEDMM6500_VAL_DISPLAY_LINE_TOP3                     0
#define KEDMM6500_VAL_DISPLAY_LINE_BOTTOM3                  1

/*- Defined values for 
	attribute KEDMM6500_ATTR_DIGITIZER_FUNCTION
	parameter Function2 in function kedmm6500_GetDigitizerChannelFunction
	parameter Function2 in function kedmm6500_SetDigitizerChannelFunction */

#define KEDMM6500_VAL_DIGITIZER_FUNCTION1_CURRENTDC2        0
#define KEDMM6500_VAL_DIGITIZER_FUNCTION1_NONE2             2
#define KEDMM6500_VAL_DIGITIZER_FUNCTION1_VOLTAGEDC2        1

/*- Defined values for 
	attribute KEDMM6500_ATTR_FAN_LEVEL */

#define KEDMM6500_VAL_FAN_LEVEL_NORMAL                      0
#define KEDMM6500_VAL_FAN_LEVEL_QUIET                       1

/*- Defined values for 
	parameter Type in function kedmm6500_ReadFirstSupportedChannel
	parameter Type in function kedmm6500_ReadLastSupportedChannel */

#define KEDMM6500_VAL_CARD_SUPPORT_TYPE_AMPS_MEASUREMENT                0
#define KEDMM6500_VAL_CARD_SUPPORT_TYPE_DIGITALIO                       1
#define KEDMM6500_VAL_CARD_SUPPORT_TYPE_ANALOG_OUTPUTS                  2
#define KEDMM6500_VAL_CARD_SUPPORT_TYPE_ISOLATED_CHANNELS               3
#define KEDMM6500_VAL_CARD_SUPPORT_TYPE_TOTALIZER                       4
#define KEDMM6500_VAL_CARD_SUPPORT_TYPE_VOLTAGE_OR_TWO_WIRE_MEASUREMENT 5

/*- Defined values for 
	parameter RowsOrColumns in function kedmm6500_ReadMatrixCount */

#define KEDMM6500_VAL_ROWS_OR_COLUMNS_COLUMNS               0
#define KEDMM6500_VAL_ROWS_OR_COLUMNS_ROWS                  1

/*- Defined values for */

#define KEDMM6500_VAL_SCAN_BYPASS_DISABLED                  0
#define KEDMM6500_VAL_SCAN_BYPASS_ENABLED                   1

/*- Defined values for 
	parameter When in function kedmm6500_Export */

#define KEDMM6500_VAL_WHEN_TO_EXPORT_END_OF_SCAN            0
#define KEDMM6500_VAL_WHEN_TO_EXPORT_END_OF_STEP            1
#define KEDMM6500_VAL_WHEN_TO_EXPORT_END_OF_EVERYTHING      2
#define KEDMM6500_VAL_WHEN_TO_EXPORT_NEVER                  3

/*- Defined values for */

#define KEDMM6500_VAL_COLUMN_MASK_ALL                       0
#define KEDMM6500_VAL_COLUMN_MASK_STANDARD                  1
#define KEDMM6500_VAL_COLUMN_MASK_BRIEF                     2

/*- Defined values for 
	attribute KEDMM6500_ATTR_MODE */

#define KEDMM6500_VAL_SCAN_MODE_ALL                         0
#define KEDMM6500_VAL_SCAN_MODE_FIXEDABR                    1
#define KEDMM6500_VAL_SCAN_MODE_OPEN_SELECTIVE              2

/*- Defined values for */

#define KEDMM6500_VAL_MONITOR_MODE_OFF                      0
#define KEDMM6500_VAL_MONITOR_MODE_LOWER                    1
#define KEDMM6500_VAL_MONITOR_MODE_UPPER                    2
#define KEDMM6500_VAL_MONITOR_MODE_WINDOW                   3

/*- Defined values for 
	attribute KEDMM6500_ATTR_CLOSE_COUNT_INTERVAL */

#define KEDMM6500_VAL_CHANNEL_CLOSE_COUNT_INTERVAL1_MINUTE   0
#define KEDMM6500_VAL_CHANNEL_CLOSE_COUNT_INTERVAL5_MINUTES  1
#define KEDMM6500_VAL_CHANNEL_CLOSE_COUNT_INTERVAL10_MINUTES 2
#define KEDMM6500_VAL_CHANNEL_CLOSE_COUNT_INTERVAL15_MINUTES 3
#define KEDMM6500_VAL_CHANNEL_CLOSE_COUNT_INTERVAL30_MINUTES 4
#define KEDMM6500_VAL_CHANNEL_CLOSE_COUNT_INTERVAL60_MINUTES 5
#define KEDMM6500_VAL_CHANNEL_CLOSE_COUNT_INTERVAL24_HOURS   6

/*- Defined values for 
	parameter MatchType in function kedmm6500_GetMatchType
	parameter MatchType in function kedmm6500_SetMatchType */

#define KEDMM6500_VAL_CHANNEL_MATCH_TYPE_EXACT              0
#define KEDMM6500_VAL_CHANNEL_MATCH_TYPE_ANY                1
#define KEDMM6500_VAL_CHANNEL_MATCH_TYPE_NOT_EXACT          2
#define KEDMM6500_VAL_CHANNEL_MATCH_TYPE_NONE               3

/*- Defined values for 
	parameter Mode in function kedmm6500_GetMode
	parameter Mode in function kedmm6500_SetMode */

#define KEDMM6500_VAL_CHANNEL_MODE_INPUT                    0
#define KEDMM6500_VAL_CHANNEL_MODE_OUTPUT                   1
#define KEDMM6500_VAL_CHANNEL_MODE_RISING                   2
#define KEDMM6500_VAL_CHANNEL_MODE_FALLING                  3
#define KEDMM6500_VAL_CHANNEL_MODE_RISING_RESET             4
#define KEDMM6500_VAL_CHANNEL_MODE_FALLING_RESET            5

/*- Defined values for 
	parameter Val in function kedmm6500_ReadState
	parameter Val in function kedmm6500_ReadChannelState */

#define KEDMM6500_VAL_CHANNEL_STATE_OPEN                    0
#define KEDMM6500_VAL_CHANNEL_STATE_CLOSED                  1
#define KEDMM6500_VAL_CHANNEL_STATE_MATCH                   2
#define KEDMM6500_VAL_CHANNEL_STATE_OVERFLOW                3

/*- Defined values for 
	parameter Val in function kedmm6500_ReadChannelType */

#define KEDMM6500_VAL_CHANNEL_TYPE_BACKPLANE                0
#define KEDMM6500_VAL_CHANNEL_TYPE_SWITCH                   1
#define KEDMM6500_VAL_CHANNEL_TYPE_DIGITAL_ANALOG_CONVERTER 2
#define KEDMM6500_VAL_CHANNEL_TYPE_DIGITAL                  3
#define KEDMM6500_VAL_CHANNEL_TYPE_DIGITALIO                4
#define KEDMM6500_VAL_CHANNEL_TYPE_TOTALIZER                5
#define KEDMM6500_VAL_CHANNEL_TYPE_POLE                     6

/*- Defined values for 
	attribute KEDMM6500_ATTR_MODE2 */

#define KEDMM6500_VAL_SCAN_MONITOR_MODE_OFF                 0
#define KEDMM6500_VAL_SCAN_MONITOR_MODE_LOWER               1
#define KEDMM6500_VAL_SCAN_MONITOR_MODE_UPPER               2
#define KEDMM6500_VAL_SCAN_MONITOR_MODE_WINDOW              3

/*- Defined values for 
	attribute KEDMM6500_ATTR_DC_VOLT_RATIO_METHOD
	parameter DCVoltRatioMethod2 in function kedmm6500_GetChannelDcVoltRatioMethod
	parameter DCVoltRatioMethod2 in function kedmm6500_SetChannelDcVoltRatioMethod */

#define KEDMM6500_VAL_RELATIVE_OFFSET_METHOD_AFTER_CALCULATION  0
#define KEDMM6500_VAL_RELATIVE_OFFSET_METHOD_BEFORE_CALCULATION 1

/*- Defined values for */

#define KEDMM6500_VAL_FUNCTION4_DIODE3                      4
#define KEDMM6500_VAL_FUNCTION62_WIRE_RESISTANCE            2
#define KEDMM6500_VAL_FUNCTION64_WIRE_RESISTANCE            3

/*- Defined values for 
	parameter Clear in function kedmm6500_LoadLogicTrigger */

#define KEDMM6500_VAL_TRIGGER_MODEL_CLEAR_TYPE_ENTER        0
#define KEDMM6500_VAL_TRIGGER_MODEL_CLEAR_TYPE_NEVER        1

/*- Defined values for 
	attribute KEDMM6500_ATTR_THERMOCOUPLE_REF_JUNCTION_TYPE
	parameter ThermocoupleRefJunctionType2 in function kedmm6500_GetChannelThermocoupleRefJunctionType
	parameter ThermocoupleRefJunctionType2 in function kedmm6500_SetChannelThermocoupleRefJunctionType */

#define KEDMM6500_VAL_THERMOCOUPLE_REF_JUNCTION_TYPE_SIMULATED 0
#define KEDMM6500_VAL_THERMOCOUPLE_REF_JUNCTION_TYPE_INTERNAL  1
#define KEDMM6500_VAL_THERMOCOUPLE_REF_JUNCTION_TYPE_EXTERNAL  2


/**************************************************************************** 
 *---------------- Instrument Driver Function Declarations -----------------* 
 ****************************************************************************/

/*- KeithleyDMM6500 */

ViStatus _VI_FUNC kedmm6500_init(ViRsrc ResourceName, ViBoolean IdQuery, ViBoolean Reset, ViSession* Vi);
ViStatus _VI_FUNC kedmm6500_close(ViSession Vi);
ViStatus _VI_FUNC kedmm6500_InitWithOptions(ViRsrc ResourceName, ViBoolean IdQuery, ViBoolean Reset, ViConstString OptionsString, ViSession* Vi);

/*- Utility */

ViStatus _VI_FUNC kedmm6500_revision_query(ViSession Vi, ViChar DriverRev[], ViChar InstrRev[]);
ViStatus _VI_FUNC kedmm6500_error_message(ViSession Vi, ViStatus ErrorCode, ViChar ErrorMessage[]);
ViStatus _VI_FUNC kedmm6500_GetError(ViSession Vi, ViStatus* ErrorCode, ViInt32 ErrorDescriptionBufferSize, ViChar ErrorDescription[]);
ViStatus _VI_FUNC kedmm6500_ClearError(ViSession Vi);
ViStatus _VI_FUNC kedmm6500_ClearInterchangeWarnings(ViSession Vi);
ViStatus _VI_FUNC kedmm6500_GetNextCoercionRecord(ViSession Vi, ViInt32 CoercionRecordBufferSize, ViChar CoercionRecord[]);
ViStatus _VI_FUNC kedmm6500_GetNextInterchangeWarning(ViSession Vi, ViInt32 InterchangeWarningBufferSize, ViChar InterchangeWarning[]);
ViStatus _VI_FUNC kedmm6500_InvalidateAllAttributes(ViSession Vi);
ViStatus _VI_FUNC kedmm6500_ResetInterchangeCheck(ViSession Vi);
ViStatus _VI_FUNC kedmm6500_Disable(ViSession Vi);
ViStatus _VI_FUNC kedmm6500_error_query(ViSession Vi, ViInt32* ErrorCode, ViChar ErrorMessage[]);
ViStatus _VI_FUNC kedmm6500_LockSession(ViSession Vi, ViBoolean* CallerHasLock);
ViStatus _VI_FUNC kedmm6500_reset(ViSession Vi);
ViStatus _VI_FUNC kedmm6500_ResetWithDefaults(ViSession Vi);
ViStatus _VI_FUNC kedmm6500_self_test(ViSession Vi, ViInt16* TestResult, ViChar TestMessage[]);
ViStatus _VI_FUNC kedmm6500_UnlockSession(ViSession Vi, ViBoolean* CallerHasLock);

/*- Attribute Accessors */

ViStatus _VI_FUNC kedmm6500_GetAttributeViInt32(ViSession Vi, ViConstString RepCapIdentifier, ViAttr AttributeID, ViInt32* AttributeValue);
ViStatus _VI_FUNC kedmm6500_GetAttributeViReal64(ViSession Vi, ViConstString RepCapIdentifier, ViAttr AttributeID, ViReal64* AttributeValue);
ViStatus _VI_FUNC kedmm6500_GetAttributeViBoolean(ViSession Vi, ViConstString RepCapIdentifier, ViAttr AttributeID, ViBoolean* AttributeValue);
ViStatus _VI_FUNC kedmm6500_GetAttributeViSession(ViSession Vi, ViConstString RepCapIdentifier, ViAttr AttributeID, ViSession* AttributeValue);
ViStatus _VI_FUNC kedmm6500_GetAttributeViString(ViSession Vi, ViConstString RepCapIdentifier, ViAttr AttributeID, ViInt32 AttributeValueBufferSize, ViChar AttributeValue[]);
ViStatus _VI_FUNC kedmm6500_SetAttributeViInt32(ViSession Vi, ViConstString RepCapIdentifier, ViAttr AttributeID, ViInt32 AttributeValue);
ViStatus _VI_FUNC kedmm6500_SetAttributeViReal64(ViSession Vi, ViConstString RepCapIdentifier, ViAttr AttributeID, ViReal64 AttributeValue);
ViStatus _VI_FUNC kedmm6500_SetAttributeViBoolean(ViSession Vi, ViConstString RepCapIdentifier, ViAttr AttributeID, ViBoolean AttributeValue);
ViStatus _VI_FUNC kedmm6500_SetAttributeViSession(ViSession Vi, ViConstString RepCapIdentifier, ViAttr AttributeID, ViSession AttributeValue);
ViStatus _VI_FUNC kedmm6500_SetAttributeViString(ViSession Vi, ViConstString RepCapIdentifier, ViAttr AttributeID, ViConstString AttributeValue);
ViStatus _VI_FUNC kedmm6500_GetAttributeViInt64(ViSession Vi, ViConstString RepCapIdentifier, ViInt32 AttributeID, ViInt64* AttributeValue);
ViStatus _VI_FUNC kedmm6500_SetAttributeViInt64(ViSession Vi, ViConstString RepCapIdentifier, ViInt32 AttributeID, ViInt64 AttributeValue);

/*- Configuration */

ViStatus _VI_FUNC kedmm6500_ConfigureMeasurement(ViSession Vi, ViInt32 Function, ViReal64 Range, ViReal64 Resolution);

/*- Specific Measurements */

ViStatus _VI_FUNC kedmm6500_ConfigureFrequencyVoltageRange(ViSession Vi, ViReal64 FrequencyVoltageRange);
ViStatus _VI_FUNC kedmm6500_ConfigureACBandwidth(ViSession Vi, ViReal64 MinFreq, ViReal64 MaxFreq);

/*- Temperature */

ViStatus _VI_FUNC kedmm6500_ConfigureTransducerType(ViSession Vi, ViInt32 TransducerType);
ViStatus _VI_FUNC kedmm6500_ConfigureFixedRefJunction(ViSession Vi, ViReal64 FixedRefJunction);
ViStatus _VI_FUNC kedmm6500_ConfigureThermistor(ViSession Vi, ViReal64 Resistance);
ViStatus _VI_FUNC kedmm6500_ConfigureRTD(ViSession Vi, ViReal64 Alpha, ViReal64 Resistance);
ViStatus _VI_FUNC kedmm6500_ConfigureThermocouple(ViSession Vi, ViInt32 ThermocoupleType, ViInt32 RefJunctionType);

/*- Trigger */

ViStatus _VI_FUNC kedmm6500_ConfigureTriggerSlope(ViSession Vi, ViInt32 Polarity);
ViStatus _VI_FUNC kedmm6500_ConfigureTrigger(ViSession Vi, ViInt32 TriggerSource, ViReal64 TriggerDelay);

/*- Configuration Information */

ViStatus _VI_FUNC kedmm6500_GetApertureTimeInfo(ViSession Vi, ViReal64* ApertureTime, ViInt32* ApertureTimeUnits);
ViStatus _VI_FUNC kedmm6500_GetAutoRangeValue(ViSession Vi, ViReal64* AutoRangeValue);

/*- Measurement Operation Options */

ViStatus _VI_FUNC kedmm6500_ConfigureAutoZeroMode(ViSession Vi, ViInt32 AutoZeroMode);
ViStatus _VI_FUNC kedmm6500_ConfigurePowerLineFrequency(ViSession Vi, ViReal64 PowerLineFreq);

/*- MultiPoint */

ViStatus _VI_FUNC kedmm6500_ConfigureMeasCompleteDest(ViSession Vi, ViInt32 MeasCompleteDest);
ViStatus _VI_FUNC kedmm6500_ConfigureMultiPoint(ViSession Vi, ViInt32 TriggerCount, ViInt32 SampleCount, ViInt32 SampleTrigger, ViReal64 SampleInterval);

/*- Measurement */

ViStatus _VI_FUNC kedmm6500_Read(ViSession Vi, ViInt32 MaxTimeMilliseconds, ViReal64* Reading);
ViStatus _VI_FUNC kedmm6500_ReadMultiPoint(ViSession Vi, ViInt32 MaxTimeMilliseconds, ViInt32 ArraySize, ViReal64 ReadingArray[], ViInt32* ActualPts);

/*- Low Level Measurement */

ViStatus _VI_FUNC kedmm6500_Abort(ViSession Vi);
ViStatus _VI_FUNC kedmm6500_Fetch(ViSession Vi, ViInt32 MaxTimeMilliseconds, ViReal64* Reading);
ViStatus _VI_FUNC kedmm6500_FetchMultiPoint(ViSession Vi, ViInt32 MaxTimeMilliseconds, ViInt32 ArraySize, ViReal64 ReadingArray[], ViInt32* ActualPts);
ViStatus _VI_FUNC kedmm6500_Initiate(ViSession Vi);
ViStatus _VI_FUNC kedmm6500_IsOverRange(ViSession Vi, ViReal64 MeasurementValue, ViBoolean* IsOverRange);
ViStatus _VI_FUNC kedmm6500_SendSoftwareTrigger(ViSession Vi);

/*- System */

ViStatus _VI_FUNC kedmm6500_viRead(ViSession Vi, ViInt64 BufferSize, ViByte Buffer[], ViInt64* ReturnCount);
ViStatus _VI_FUNC kedmm6500_viWrite(ViSession Vi, ViInt64 Count, ViByte Buffer[], ViInt64* ReturnCount);
ViStatus _VI_FUNC kedmm6500_RunScript(ViSession Vi, ViConstString ScriptName);
ViStatus _VI_FUNC kedmm6500_GetMeasurementFunction(ViSession Vi, ViInt32 ChannelListBufferSize, ViConstString ChannelList, ViInt32* Function2);
ViStatus _VI_FUNC kedmm6500_SetMeasurementFunction(ViSession Vi, ViInt32 ChannelListBufferSize, ViConstString ChannelList, ViInt32 Function2);

/*- System */

ViStatus _VI_FUNC kedmm6500_Beep(ViSession Vi, ViReal64 Frequency, ViReal64 Time);
ViStatus _VI_FUNC kedmm6500_Clear(ViSession Vi);
ViStatus _VI_FUNC kedmm6500_LANAutoConfiguration(ViSession Vi);
ViStatus _VI_FUNC kedmm6500_LANConfiguration(ViSession Vi, ViInt32 IPAddressBufferSize, ViConstString IPAddress, ViInt32 SubnetMaskBufferSize, ViConstString SubnetMask, ViInt32 GatewayBufferSize, ViConstString Gateway);
ViStatus _VI_FUNC kedmm6500_PostEventLog(ViSession Vi, ViInt32 MessageBufferSize, ViConstString Message, ViInt32 SeverityType);
ViStatus _VI_FUNC kedmm6500_QueryLANConfiguration(ViSession Vi, ViInt32 IPAddressBufferSize, ViChar IPAddress[], ViInt32 SubnetMaskBufferSize, ViChar SubnetMask[], ViInt32 GatewayBufferSize, ViChar Gateway[], ViInt32 ValBufferSize, ViChar Val[]);
ViStatus _VI_FUNC kedmm6500_ReadNextError(ViSession Vi, ViInt32 ValBufferSize, ViChar Val[]);
ViStatus _VI_FUNC kedmm6500_ReadNextErrorCode(ViSession Vi, ViInt32* Val);
ViStatus _VI_FUNC kedmm6500_RecallSetup(ViSession Vi, ViInt32 SetupNumber);
ViStatus _VI_FUNC kedmm6500_SaveAllEventLogs(ViSession Vi, ViInt32 FilenameBufferSize, ViConstString Filename);
ViStatus _VI_FUNC kedmm6500_SaveEventLog(ViSession Vi, ViInt32 FilenameBufferSize, ViConstString Filename, ViInt32 EventType);
ViStatus _VI_FUNC kedmm6500_SaveSetup(ViSession Vi, ViInt32 SetupNumber);
ViStatus _VI_FUNC kedmm6500_GetEventLogCount(ViSession Vi, ViInt32 Mask, ViInt32* EventLogCount);
ViStatus _VI_FUNC kedmm6500_GetReadNextEventLog(ViSession Vi, ViInt32 Mask, ViInt32 ReadNextEventLogBufferSize, ViChar ReadNextEventLog[]);

/*- Measurement */

ViStatus _VI_FUNC kedmm6500_Read2(ViSession Vi, ViConstString BufferName, ViInt32 BufferElementsBufferSize, ViConstString BufferElements, ViInt32 ValBufferSize, ViChar Val[]);
ViStatus _VI_FUNC kedmm6500_Measure(ViSession Vi, ViInt32 Function, ViConstString BufferName, ViInt32 BufferElementsBufferSize, ViConstString BufferElements, ViInt32 ValBufferSize, ViChar Val[]);

/*- Configuration */

ViStatus _VI_FUNC kedmm6500_AutoZeroOnce(ViSession Vi);
ViStatus _VI_FUNC kedmm6500_GetFunctionnplc(ViSession Vi, ViInt32 Function, ViReal64* FunctionNPLC);
ViStatus _VI_FUNC kedmm6500_SetFunctionnplc(ViSession Vi, ViInt32 Function, ViReal64 FunctionNPLC);
ViStatus _VI_FUNC kedmm6500_GetAutoRange(ViSession Vi, ViInt32 Function, ViBoolean* AutoRange);
ViStatus _VI_FUNC kedmm6500_SetAutoRange(ViSession Vi, ViInt32 Function, ViBoolean AutoRange);
ViStatus _VI_FUNC kedmm6500_GetRange(ViSession Vi, ViInt32 Function, ViReal64* Range);
ViStatus _VI_FUNC kedmm6500_SetRange(ViSession Vi, ViInt32 Function, ViReal64 Range);
ViStatus _VI_FUNC kedmm6500_GetUserDelay(ViSession Vi, ViInt32 Function, ViInt32 UserDelayIndex, ViReal64* UserDelay);
ViStatus _VI_FUNC kedmm6500_SetUserDelay(ViSession Vi, ViInt32 Function, ViInt32 UserDelayIndex, ViReal64 UserDelay);
ViStatus _VI_FUNC kedmm6500_GetVoltageUnits(ViSession Vi, ViInt32 Function, ViInt32* VoltageUnits);
ViStatus _VI_FUNC kedmm6500_SetVoltageUnits(ViSession Vi, ViInt32 Function, ViInt32 VoltageUnits);
ViStatus _VI_FUNC kedmm6500_GetAutoDelay(ViSession Vi, ViInt32 Function, ViInt32* AutoDelay);
ViStatus _VI_FUNC kedmm6500_SetAutoDelay(ViSession Vi, ViInt32 Function, ViInt32 AutoDelay);
ViStatus _VI_FUNC kedmm6500_GetBiasLevel(ViSession Vi, ViInt32 Function, ViReal64* Level);
ViStatus _VI_FUNC kedmm6500_SetBiasLevel(ViSession Vi, ViInt32 Function, ViReal64 Level);
ViStatus _VI_FUNC kedmm6500_GetDetectorBandwidth(ViSession Vi, ViInt32 Function, ViInt32* DetectorBandwidth);
ViStatus _VI_FUNC kedmm6500_SetDetectorBandwidth(ViSession Vi, ViInt32 Function, ViInt32 DetectorBandwidth);
ViStatus _VI_FUNC kedmm6500_GetDbReference(ViSession Vi, ViInt32 Function, ViReal64* DBReference);
ViStatus _VI_FUNC kedmm6500_SetDbReference(ViSession Vi, ViInt32 Function, ViReal64 DBReference);
ViStatus _VI_FUNC kedmm6500_GetAutoZeroEnabled(ViSession Vi, ViInt32 Function, ViBoolean* AutoZeroEnabled);
ViStatus _VI_FUNC kedmm6500_SetAutoZeroEnabled(ViSession Vi, ViInt32 Function, ViBoolean AutoZeroEnabled);
ViStatus _VI_FUNC kedmm6500_GetLineSync(ViSession Vi, ViInt32 Function, ViBoolean* LineSync);
ViStatus _VI_FUNC kedmm6500_SetLineSync(ViSession Vi, ViInt32 Function, ViBoolean LineSync);
ViStatus _VI_FUNC kedmm6500_GetAperture(ViSession Vi, ViInt32 Function, ViReal64* Aperture);
ViStatus _VI_FUNC kedmm6500_SetAperture(ViSession Vi, ViInt32 Function, ViReal64 Aperture);
ViStatus _VI_FUNC kedmm6500_GetOffsetCompensationEnabled(ViSession Vi, ViInt32 Function, ViBoolean* OffsetCompensationEnabled);
ViStatus _VI_FUNC kedmm6500_SetOffsetCompensationEnabled(ViSession Vi, ViInt32 Function, ViBoolean OffsetCompensationEnabled);
ViStatus _VI_FUNC kedmm6500_GetFreqPeriodThresholdVoltageRange(ViSession Vi, ViInt32 FreqPeriod, ViReal64* FreqPeriodThresholdVoltageRange);
ViStatus _VI_FUNC kedmm6500_SetFreqPeriodThresholdVoltageRange(ViSession Vi, ViInt32 FreqPeriod, ViReal64 FreqPeriodThresholdVoltageRange);
ViStatus _VI_FUNC kedmm6500_GetFreqPeriodThresholdVoltageRangeAutoState(ViSession Vi, ViInt32 FreqPeriod, ViBoolean* FreqPeriodThresholdVoltageRangeAutoState);
ViStatus _VI_FUNC kedmm6500_SetFreqPeriodThresholdVoltageRangeAutoState(ViSession Vi, ViInt32 FreqPeriod, ViBoolean FreqPeriodThresholdVoltageRangeAutoState);
ViStatus _VI_FUNC kedmm6500_GetOpenDetector(ViSession Vi, ViInt32 Function, ViBoolean* OpenDetector);
ViStatus _VI_FUNC kedmm6500_SetOpenDetector(ViSession Vi, ViInt32 Function, ViBoolean OpenDetector);
ViStatus _VI_FUNC kedmm6500_GetChannelAperture(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64* Aperture);
ViStatus _VI_FUNC kedmm6500_SetChannelAperture(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64 Aperture);
ViStatus _VI_FUNC kedmm6500_GetChannelBiasLevel(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64* BiasLevel2);
ViStatus _VI_FUNC kedmm6500_SetChannelBiasLevel(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64 BiasLevel2);
ViStatus _VI_FUNC kedmm6500_GetChannelDetectorBandwidth(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViInt32* DetectorBandwidth2);
ViStatus _VI_FUNC kedmm6500_SetChannelDetectorBandwidth(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViInt32 DetectorBandwidth2);
ViStatus _VI_FUNC kedmm6500_GetChannelDCVoltInputImpedance(ViSession Vi, ViConstString ChannelList, ViInt32* DCVoltInputImpedance2);
ViStatus _VI_FUNC kedmm6500_SetChannelDCVoltInputImpedance(ViSession Vi, ViConstString ChannelList, ViInt32 DCVoltInputImpedance2);
ViStatus _VI_FUNC kedmm6500_GetChannelDCVoltageRatioSenseRange(ViSession Vi, ViConstString ChannelList, ViReal64* DCVoltageRatioSenseRange2);
ViStatus _VI_FUNC kedmm6500_SetChannelDCVoltageRatioSenseRange(ViSession Vi, ViConstString ChannelList, ViReal64 DCVoltageRatioSenseRange2);
ViStatus _VI_FUNC kedmm6500_GetChannelDBReference(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64* DBReference2);
ViStatus _VI_FUNC kedmm6500_SetChannelDBReference(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64 DBReference2);
ViStatus _VI_FUNC kedmm6500_GetChannelUserDelay(ViSession Vi, ViInt32 Function, ViInt32 UserDelayIndex, ViConstString ChannelList, ViReal64* UserDelay2);
ViStatus _VI_FUNC kedmm6500_SetChannelUserDelay(ViSession Vi, ViInt32 Function, ViInt32 UserDelayIndex, ViConstString ChannelList, ViReal64 UserDelay2);
ViStatus _VI_FUNC kedmm6500_GetChannelAutoDelay(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViInt32* AutoDelay2);
ViStatus _VI_FUNC kedmm6500_SetChannelAutoDelay(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViInt32 AutoDelay2);
ViStatus _VI_FUNC kedmm6500_GetChannelLineSync(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViBoolean* LineSync2);
ViStatus _VI_FUNC kedmm6500_SetChannelLineSync(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViBoolean LineSync2);
ViStatus _VI_FUNC kedmm6500_GetChannelAutoRange(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViBoolean* AutoRange2);
ViStatus _VI_FUNC kedmm6500_SetChannelAutoRange(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViBoolean AutoRange2);
ViStatus _VI_FUNC kedmm6500_GetNPLC(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64* NPLC2);
ViStatus _VI_FUNC kedmm6500_SetChannelNPLC(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64 NPLC2);
ViStatus _VI_FUNC kedmm6500_GetChannelOffsetCompensationEnabled(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViBoolean* OffsetCompensationEnabled2);
ViStatus _VI_FUNC kedmm6500_SetChannelOffsetCompensationEnabled(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViBoolean OffsetCompensationEnabled2);
ViStatus _VI_FUNC kedmm6500_GetChannelOpenDetector(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViBoolean* OpenDetector2);
ViStatus _VI_FUNC kedmm6500_SetChannelOpenDetector(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViBoolean OpenDetector2);
ViStatus _VI_FUNC kedmm6500_GetChannelRange(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64* Range2);
ViStatus _VI_FUNC kedmm6500_SetChannelRange(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64 Range2);
ViStatus _VI_FUNC kedmm6500_GetChannelVoltageUnits(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViInt32* VoltageUnits2);
ViStatus _VI_FUNC kedmm6500_SetChannelVoltageUnits(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViInt32 VoltageUnits2);
ViStatus _VI_FUNC kedmm6500_SetChannelAutoZeroEnabled(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViBoolean AutoZeroEnabled2);
ViStatus _VI_FUNC kedmm6500_GetChannelAutoZeroEnabled(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViBoolean* AutoZeroEnabled2);

/*- Math */

ViStatus _VI_FUNC kedmm6500_GetMathOperation(ViSession Vi, ViInt32 Function, ViInt32* MathOperation);
ViStatus _VI_FUNC kedmm6500_SetMathOperation(ViSession Vi, ViInt32 Function, ViInt32 MathOperation);
ViStatus _VI_FUNC kedmm6500_GetMathOffsetFactor(ViSession Vi, ViInt32 Function, ViReal64* MathOffsetFactor);
ViStatus _VI_FUNC kedmm6500_SetMathOffsetFactor(ViSession Vi, ViInt32 Function, ViReal64 MathOffsetFactor);
ViStatus _VI_FUNC kedmm6500_GetMathScaleFactor(ViSession Vi, ViInt32 Function, ViReal64* MathScaleFactor);
ViStatus _VI_FUNC kedmm6500_SetMathScaleFactor(ViSession Vi, ViInt32 Function, ViReal64 MathScaleFactor);
ViStatus _VI_FUNC kedmm6500_GetMathPercent(ViSession Vi, ViInt32 Function, ViReal64* MathPercent);
ViStatus _VI_FUNC kedmm6500_SetMathPercent(ViSession Vi, ViInt32 Function, ViReal64 MathPercent);
ViStatus _VI_FUNC kedmm6500_GetMathOperationState(ViSession Vi, ViInt32 Function, ViBoolean* MathOperationState);
ViStatus _VI_FUNC kedmm6500_SetMathOperationState(ViSession Vi, ViInt32 Function, ViBoolean MathOperationState);
ViStatus _VI_FUNC kedmm6500_GetChannelOffsetFactor(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64* OffsetFactor2);
ViStatus _VI_FUNC kedmm6500_SetChannelOffsetFactor(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64 OffsetFactor2);
ViStatus _VI_FUNC kedmm6500_GetChannelOperation(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViInt32* Operation2);
ViStatus _VI_FUNC kedmm6500_SetChannelOperation(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViInt32 Operation2);
ViStatus _VI_FUNC kedmm6500_GetChannelOperationState(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViBoolean* OperationState2);
ViStatus _VI_FUNC kedmm6500_SetChannelOperationState(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViBoolean OperationState2);
ViStatus _VI_FUNC kedmm6500_GetChannelPercentage(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64* Percentage2);
ViStatus _VI_FUNC kedmm6500_SetChannelPercentage(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64 Percentage2);
ViStatus _VI_FUNC kedmm6500_GetChannelScaleFactor(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64* ScaleFactor2);
ViStatus _VI_FUNC kedmm6500_SetChannelScaleFactor(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64 ScaleFactor2);

/*- Limit */

ViStatus _VI_FUNC kedmm6500_ReadTestResult(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViInt32* Val);
ViStatus _VI_FUNC kedmm6500_LimitClear(ViSession Vi, ViInt32 Function, ViInt32 LimitTest);
ViStatus _VI_FUNC kedmm6500_GetLimitTestEnabled(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViBoolean* Enabled);
ViStatus _VI_FUNC kedmm6500_SetLimitTestEnabled(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViBoolean Enabled);
ViStatus _VI_FUNC kedmm6500_GetLimitAutoClearState(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViBoolean* AutoClearState);
ViStatus _VI_FUNC kedmm6500_SetLimitAutoClearState(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViBoolean AutoClearState);
ViStatus _VI_FUNC kedmm6500_GetHigh(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViReal64* UpperLimitTest);
ViStatus _VI_FUNC kedmm6500_SetHigh(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViReal64 UpperLimitTest);
ViStatus _VI_FUNC kedmm6500_GetLow(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViReal64* LowerLimit);
ViStatus _VI_FUNC kedmm6500_SetLow(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViReal64 LowerLimit);
ViStatus _VI_FUNC kedmm6500_GetLimitAudible(ViSession Vi, ViInt32 LimitTest, ViInt32 Function, ViInt32* Audible);
ViStatus _VI_FUNC kedmm6500_SetLimitAudible(ViSession Vi, ViInt32 LimitTest, ViInt32 Function, ViInt32 Audible);
ViStatus _VI_FUNC kedmm6500_GetAudible(ViSession Vi, ViInt32 LimitTest, ViInt32 Function, ViConstString ChannelList, ViInt32* Audible2);
ViStatus _VI_FUNC kedmm6500_SetAudible(ViSession Vi, ViInt32 LimitTest, ViInt32 Function, ViConstString ChannelList, ViInt32 Audible2);
ViStatus _VI_FUNC kedmm6500_GetAutoClearState(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViConstString ChannelList, ViBoolean* AutoClearState2);
ViStatus _VI_FUNC kedmm6500_SetAutoClearState(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViConstString ChannelList, ViBoolean AutoClearState2);
ViStatus _VI_FUNC kedmm6500_GetEnabled(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViConstString ChannelList, ViBoolean* Enabled2);
ViStatus _VI_FUNC kedmm6500_SetEnabled(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViConstString ChannelList, ViBoolean Enabled2);
ViStatus _VI_FUNC kedmm6500_GetChannelHigh(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViConstString ChannelList, ViReal64* High2);
ViStatus _VI_FUNC kedmm6500_SetChannelHigh(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViConstString ChannelList, ViReal64 High2);
ViStatus _VI_FUNC kedmm6500_GetChannelLow(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViConstString ChannelList, ViReal64* Low2);
ViStatus _VI_FUNC kedmm6500_SetChannelLow(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViConstString ChannelList, ViReal64 Low2);

/*- List */

ViStatus _VI_FUNC kedmm6500_ListCreate(ViSession Vi, ViConstString Name);
ViStatus _VI_FUNC kedmm6500_Delete(ViSession Vi, ViConstString Name);
ViStatus _VI_FUNC kedmm6500_DeleteIndexData(ViSession Vi, ViConstString Name, ViInt32 Point);
ViStatus _VI_FUNC kedmm6500_ListRead(ViSession Vi, ViConstString Name, ViInt32 Point, ViInt32 ValBufferSize, ViChar Val[]);
ViStatus _VI_FUNC kedmm6500_RecallConfigurationListPoint(ViSession Vi, ViConstString Name, ViInt32 Point);
ViStatus _VI_FUNC kedmm6500_Append(ViSession Vi, ViConstString Name);
ViStatus _VI_FUNC kedmm6500_Store(ViSession Vi, ViConstString Name, ViInt32 Point);
ViStatus _VI_FUNC kedmm6500_GetSize(ViSession Vi, ViConstString Name, ViInt32* ConfigurationListSize);

/*- Temperature */

ViStatus _VI_FUNC kedmm6500_ConfigureUserDefinedType(ViSession Vi, ViInt32 Constant, ViReal64 Value, ViInt32 Type);
ViStatus _VI_FUNC kedmm6500_ReadConstants(ViSession Vi, ViInt32 Constant, ViReal64* Val);
ViStatus _VI_FUNC kedmm6500_ConfigureSimulatedRefJunction(ViSession Vi, ViReal64 FixedRefJunction);
ViStatus _VI_FUNC kedmm6500_ConfigureTransducerType2(ViSession Vi, ViInt32 TransducerType);
ViStatus _VI_FUNC kedmm6500_ConfigureThermistor2(ViSession Vi, ViReal64 Resistance);
ViStatus _VI_FUNC kedmm6500_GetRtdType(ViSession Vi, ViInt32 Type, ViInt32* RTDType);
ViStatus _VI_FUNC kedmm6500_SetRtdType(ViSession Vi, ViInt32 Type, ViInt32 RTDType);
ViStatus _VI_FUNC kedmm6500_ConfigureChannelUserDefinedType(ViSession Vi, ViInt32 Constant, ViReal64 Value, ViInt32 Type, ViConstString ChannelList);
ViStatus _VI_FUNC kedmm6500_ReadChannelConstants(ViSession Vi, ViInt32 Constant, ViConstString ChannelList, ViReal64* Val);
ViStatus _VI_FUNC kedmm6500_GetChannelThermistorResistance(ViSession Vi, ViConstString ChannelList, ViReal64* ThermistorResistance2);
ViStatus _VI_FUNC kedmm6500_SetChannelThermistorResistance(ViSession Vi, ViConstString ChannelList, ViReal64 ThermistorResistance2);
ViStatus _VI_FUNC kedmm6500_GetChannelThermocoupleSimulatedRefJunction(ViSession Vi, ViConstString ChannelList, ViReal64* ThermocoupleSimulatedRefJunction2);
ViStatus _VI_FUNC kedmm6500_SetChannelThermocoupleSimulatedRefJunction(ViSession Vi, ViConstString ChannelList, ViReal64 ThermocoupleSimulatedRefJunction2);
ViStatus _VI_FUNC kedmm6500_GetChannelThermocoupleType(ViSession Vi, ViConstString ChannelList, ViInt32* ThermocoupleType2);
ViStatus _VI_FUNC kedmm6500_SetChannelThermocoupleType(ViSession Vi, ViConstString ChannelList, ViInt32 ThermocoupleType2);
ViStatus _VI_FUNC kedmm6500_GetChannelTransducerType(ViSession Vi, ViConstString ChannelList, ViInt32* TransducerType2);
ViStatus _VI_FUNC kedmm6500_SetChannelTransducerType(ViSession Vi, ViConstString ChannelList, ViInt32 TransducerType2);
ViStatus _VI_FUNC kedmm6500_GetChannelUnits(ViSession Vi, ViConstString ChannelList, ViInt32* Unit2);
ViStatus _VI_FUNC kedmm6500_SetChannelUnits(ViSession Vi, ViConstString ChannelList, ViInt32 Unit2);
ViStatus _VI_FUNC kedmm6500_GetChannelType(ViSession Vi, ViInt32 Type, ViConstString ChannelList, ViInt32* RTDType2);
ViStatus _VI_FUNC kedmm6500_SetChannelType(ViSession Vi, ViInt32 Type, ViConstString ChannelList, ViInt32 RTDType2);
ViStatus _VI_FUNC kedmm6500_GetChannelThermocoupleRefJunctionType(ViSession Vi, ViConstString ChannelList, ViInt32* ThermocoupleRefJunctionType2);
ViStatus _VI_FUNC kedmm6500_SetChannelThermocoupleRefJunctionType(ViSession Vi, ViConstString ChannelList, ViInt32 ThermocoupleRefJunctionType2);

/*- AnalogTrigger */

ViStatus _VI_FUNC kedmm6500_GetATrigEdgeLevel(ViSession Vi, ViInt32 Function, ViReal64* EdgeLevel);
ViStatus _VI_FUNC kedmm6500_SetATrigEdgeLevel(ViSession Vi, ViInt32 Function, ViReal64 EdgeLevel);
ViStatus _VI_FUNC kedmm6500_GetATrigEdgeSlope(ViSession Vi, ViInt32 Function, ViInt32* EdgeSlope);
ViStatus _VI_FUNC kedmm6500_SetATrigEdgeSlope(ViSession Vi, ViInt32 Function, ViInt32 EdgeSlope);
ViStatus _VI_FUNC kedmm6500_GetATrigMode(ViSession Vi, ViInt32 Function, ViInt32* Mode);
ViStatus _VI_FUNC kedmm6500_SetATrigMode(ViSession Vi, ViInt32 Function, ViInt32 Mode);
ViStatus _VI_FUNC kedmm6500_GetATrigWindowDirection(ViSession Vi, ViInt32 Function, ViInt32* WindowDirection);
ViStatus _VI_FUNC kedmm6500_SetATrigWindowDirection(ViSession Vi, ViInt32 Function, ViInt32 WindowDirection);
ViStatus _VI_FUNC kedmm6500_GetATrigWindowLevelHigh(ViSession Vi, ViInt32 Function, ViReal64* WindowLevelHigh);
ViStatus _VI_FUNC kedmm6500_SetATrigWindowLevelHigh(ViSession Vi, ViInt32 Function, ViReal64 WindowLevelHigh);
ViStatus _VI_FUNC kedmm6500_GetATrigWindowLevelLow(ViSession Vi, ViInt32 Function, ViReal64* WindowLevelLow);
ViStatus _VI_FUNC kedmm6500_SetATrigWindowLevelLow(ViSession Vi, ViInt32 Function, ViReal64 WindowLevelLow);
ViStatus _VI_FUNC kedmm6500_GetATrigFunctionnplc(ViSession Vi, ViInt32 Function, ViReal64* FunctionNPLC);
ViStatus _VI_FUNC kedmm6500_SetATrigFunctionnplc(ViSession Vi, ViInt32 Function, ViReal64 FunctionNPLC);
ViStatus _VI_FUNC kedmm6500_GetAnalogTriggerOffsetCompensationEnabled(ViSession Vi, ViInt32 Function, ViBoolean* OffsetCompensationEnabled);
ViStatus _VI_FUNC kedmm6500_SetAnalogTriggerOffsetCompensationEnabled(ViSession Vi, ViInt32 Function, ViBoolean OffsetCompensationEnabled);
ViStatus _VI_FUNC kedmm6500_GetAnalogTriggerOpenDetector(ViSession Vi, ViInt32 Function, ViBoolean* OpenDetector);
ViStatus _VI_FUNC kedmm6500_SetAnalogTriggerOpenDetector(ViSession Vi, ViInt32 Function, ViBoolean OpenDetector);
ViStatus _VI_FUNC kedmm6500_GetAnalogTriggerRange(ViSession Vi, ViInt32 Function, ViReal64* Range);
ViStatus _VI_FUNC kedmm6500_SetAnalogTriggerRange(ViSession Vi, ViInt32 Function, ViReal64 Range);
ViStatus _VI_FUNC kedmm6500_GetAnalogTriggerAutoRange(ViSession Vi, ViInt32 Function, ViBoolean* AutoRange);
ViStatus _VI_FUNC kedmm6500_SetAnalogTriggerAutoRange(ViSession Vi, ViInt32 Function, ViBoolean AutoRange);

/*- Filter */

ViStatus _VI_FUNC kedmm6500_GetFilterCount(ViSession Vi, ViInt32 Function, ViInt32* AveragingFilterCount);
ViStatus _VI_FUNC kedmm6500_SetFilterCount(ViSession Vi, ViInt32 Function, ViInt32 AveragingFilterCount);
ViStatus _VI_FUNC kedmm6500_GetFilterState(ViSession Vi, ViInt32 Function, ViBoolean* AveragingFilterState);
ViStatus _VI_FUNC kedmm6500_SetFilterState(ViSession Vi, ViInt32 Function, ViBoolean AveragingFilterState);
ViStatus _VI_FUNC kedmm6500_GetFilterType(ViSession Vi, ViInt32 Function, ViInt32* AveragingFilterType);
ViStatus _VI_FUNC kedmm6500_SetFilterType(ViSession Vi, ViInt32 Function, ViInt32 AveragingFilterType);
ViStatus _VI_FUNC kedmm6500_GetFilterWindow(ViSession Vi, ViInt32 Function, ViReal64* FilterWindow);
ViStatus _VI_FUNC kedmm6500_SetFilterWindow(ViSession Vi, ViInt32 Function, ViReal64 FilterWindow);
ViStatus _VI_FUNC kedmm6500_GetChannelFilterCount(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViInt32* Count2);
ViStatus _VI_FUNC kedmm6500_SetChannelFilterCount(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViInt32 Count2);
ViStatus _VI_FUNC kedmm6500_GetChannelFilterState(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViBoolean* State2);
ViStatus _VI_FUNC kedmm6500_SetChannelFilterState(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViBoolean State2);
ViStatus _VI_FUNC kedmm6500_GetChannelFilterType(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViInt32* Type2);
ViStatus _VI_FUNC kedmm6500_SetChannelFilterType(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViInt32 Type2);
ViStatus _VI_FUNC kedmm6500_GetChannelFilterWindow(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64* Window2);
ViStatus _VI_FUNC kedmm6500_SetChannelFilterWindow(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64 Window2);

/*- Relative */

ViStatus _VI_FUNC kedmm6500_RelativeAcquire(ViSession Vi, ViInt32 Function);
ViStatus _VI_FUNC kedmm6500_GetRelativeOffset(ViSession Vi, ViInt32 Function, ViReal64* RelativeOffset);
ViStatus _VI_FUNC kedmm6500_SetRelativeOffset(ViSession Vi, ViInt32 Function, ViReal64 RelativeOffset);
ViStatus _VI_FUNC kedmm6500_GetRelativeOffsetState(ViSession Vi, ViInt32 Function, ViBoolean* RelativeOffsetState);
ViStatus _VI_FUNC kedmm6500_SetRelativeOffsetState(ViSession Vi, ViInt32 Function, ViBoolean RelativeOffsetState);
ViStatus _VI_FUNC kedmm6500_GetChannelDcVoltRatioMethod(ViSession Vi, ViConstString ChannelList, ViInt32* DCVoltRatioMethod2);
ViStatus _VI_FUNC kedmm6500_SetChannelDcVoltRatioMethod(ViSession Vi, ViConstString ChannelList, ViInt32 DCVoltRatioMethod2);
ViStatus _VI_FUNC kedmm6500_GetChannelOffset(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64* Offset2);
ViStatus _VI_FUNC kedmm6500_SetChannelOffset(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64 Offset2);
ViStatus _VI_FUNC kedmm6500_GetChannelOffsetState(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViBoolean* OffsetState2);
ViStatus _VI_FUNC kedmm6500_SetChannelOffsetState(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViBoolean OffsetState2);

/*- Buffer */

ViStatus _VI_FUNC kedmm6500_AppendBufferDataToFile(ViSession Vi, ViConstString FileName, ViConstString BufferName, ViInt32 TimeFormat, ViInt32 Start, ViInt32 End);
ViStatus _VI_FUNC kedmm6500_TraceBufferClear(ViSession Vi, ViConstString BufferName);
ViStatus _VI_FUNC kedmm6500_ClearBufferStatistics(ViSession Vi, ViConstString BufferName);
ViStatus _VI_FUNC kedmm6500_CreateBuffer(ViSession Vi, ViConstString BufferName, ViInt32 BufferSize);
ViStatus _VI_FUNC kedmm6500_DeleteBuffer(ViSession Vi, ViConstString BufferName);
ViStatus _VI_FUNC kedmm6500_BufferFetch(ViSession Vi, ViConstString BufferName, ViInt32 BufferElementsBufferSize, ViConstString BufferElements, ViInt32 ValBufferSize, ViChar Val[]);
ViStatus _VI_FUNC kedmm6500_GetBufferDoubleData(ViSession Vi, ViInt32 StartIndex, ViInt32 EndIndex, ViConstString BufferName, ViInt32 BufferElement, ViInt32 ValBufferSize, ViReal64 Val[], ViInt32* ValActualSize);
ViStatus _VI_FUNC kedmm6500_FetchStringData(ViSession Vi, ViInt32 StartIndex, ViInt32 EndIndex, ViConstString BufferName, ViInt32 BufferElement, ViInt32 ValBufferSize, ViChar Val[]);
ViStatus _VI_FUNC kedmm6500_SaveBufferDataToFile(ViSession Vi, ViConstString FileName, ViConstString BufferName, ViInt32 TimeFormat, ViInt32 Start, ViInt32 Stop);
ViStatus _VI_FUNC kedmm6500_TraceBufferTrigger(ViSession Vi, ViConstString BufferName);
ViStatus _VI_FUNC kedmm6500_TraceBufferDigitizerTrigger(ViSession Vi, ViConstString BufferName);
ViStatus _VI_FUNC kedmm6500_GetActualBufferReadings(ViSession Vi, ViConstString BufferName, ViInt32* Actual);
ViStatus _VI_FUNC kedmm6500_GetBufferFillMode(ViSession Vi, ViConstString BufferName, ViInt32* BufferFillMode);
ViStatus _VI_FUNC kedmm6500_SetBufferFillMode(ViSession Vi, ViConstString BufferName, ViInt32 BufferFillMode);
ViStatus _VI_FUNC kedmm6500_GetBufferSize(ViSession Vi, ViConstString BufferName, ViInt32* BufferSize);
ViStatus _VI_FUNC kedmm6500_SetBufferSize(ViSession Vi, ViConstString BufferName, ViInt32 BufferSize);
ViStatus _VI_FUNC kedmm6500_GetAverageBufferReading(ViSession Vi, ViConstString BufferName, ViReal64* GetAverageReading);
ViStatus _VI_FUNC kedmm6500_GetBufferMaximumReading(ViSession Vi, ViConstString BufferName, ViReal64* GetMaximumReading);
ViStatus _VI_FUNC kedmm6500_GetBufferMinimumReading(ViSession Vi, ViConstString BufferName, ViReal64* GetMinimumReading);
ViStatus _VI_FUNC kedmm6500_GetBufferPeak2PeakReading(ViSession Vi, ViConstString BufferName, ViReal64* GetPeak2PeakReading);
ViStatus _VI_FUNC kedmm6500_GetStandardDeviationOfBufferBufferReadings(ViSession Vi, ViConstString BufferName, ViReal64* GetStandardDeviationOfReadings);
ViStatus _VI_FUNC kedmm6500_GetBufferLogStateEnable(ViSession Vi, ViConstString BufferName, ViBoolean* LogStateEnable);
ViStatus _VI_FUNC kedmm6500_SetBufferLogStateEnable(ViSession Vi, ViConstString BufferName, ViBoolean LogStateEnable);
ViStatus _VI_FUNC kedmm6500_FetchData(ViSession Vi, ViInt32 StartIndex, ViInt32 EndIndex, ViConstString BufferName, ViInt32 BufferElementBufferSize, ViConstString BufferElement, ViInt32 ValBufferSize, ViChar Val[]);

/*- Status */

ViStatus _VI_FUNC kedmm6500_ReadOperationCondition(ViSession Vi, ViInt32* Val);
ViStatus _VI_FUNC kedmm6500_MapEventIDToBitNumberInOERegister(ViSession Vi, ViInt32 BitNumber, ViInt32 SetEvent, ViInt32 ClearEvent);
ViStatus _VI_FUNC kedmm6500_ReadOperationEventRegisterMap(ViSession Vi, ViInt32 BitNumber, ViInt32* SetEvent, ViInt32* ClearEvent);
ViStatus _VI_FUNC kedmm6500_Preset(ViSession Vi);
ViStatus _VI_FUNC kedmm6500_ReadQuestionableCondition(ViSession Vi, ViInt32* Val);
ViStatus _VI_FUNC kedmm6500_MapEventIDToBitNumberInQERegister(ViSession Vi, ViInt32 BitNumber, ViInt32 SetEvent, ViInt32 ClearEvent);
ViStatus _VI_FUNC kedmm6500_ReadQuestionableEventRegisterMap(ViSession Vi, ViInt32 BitNumber, ViInt32* SetEvent, ViInt32* ClearEvent);
ViStatus _VI_FUNC kedmm6500_ReadOperationEventRegister(ViSession Vi, ViInt32* Val);
ViStatus _VI_FUNC kedmm6500_ReadQuestionableEventRegister(ViSession Vi, ViInt32* Val);
ViStatus _VI_FUNC kedmm6500_StatusClear(ViSession Vi);

/*- Trigger */

ViStatus _VI_FUNC kedmm6500_TriggerAbort(ViSession Vi);
ViStatus _VI_FUNC kedmm6500_InitiateTrigger(ViSession Vi);
ViStatus _VI_FUNC kedmm6500_SendSoftwareTrigger2(ViSession Vi);
ViStatus _VI_FUNC kedmm6500_Wait(ViSession Vi);

/*- Timer */

ViStatus _VI_FUNC kedmm6500_ClearTimerTrigger(ViSession Vi, ViInt32 TimerNumber);
ViStatus _VI_FUNC kedmm6500_GetTimerTriggerEventCount(ViSession Vi, ViInt32 TimerNumber, ViInt32* EventCount);
ViStatus _VI_FUNC kedmm6500_SetTimerTriggerEventCount(ViSession Vi, ViInt32 TimerNumber, ViInt32 EventCount);
ViStatus _VI_FUNC kedmm6500_GetTimerTriggerDelay(ViSession Vi, ViInt32 TimerNumber, ViReal64* Delay);
ViStatus _VI_FUNC kedmm6500_SetTimerTriggerDelay(ViSession Vi, ViInt32 TimerNumber, ViReal64 Delay);
ViStatus _VI_FUNC kedmm6500_IsTimerTriggerOverRun(ViSession Vi, ViInt32 TimerNumber, ViBoolean* IsTimerOverRun);
ViStatus _VI_FUNC kedmm6500_GetTimerTriggerGenerateEventidState(ViSession Vi, ViInt32 TimerNumber, ViBoolean* GenerateEventIDState);
ViStatus _VI_FUNC kedmm6500_SetTimerTriggerGenerateEventidState(ViSession Vi, ViInt32 TimerNumber, ViBoolean GenerateEventIDState);
ViStatus _VI_FUNC kedmm6500_GetTimerTriggerState(ViSession Vi, ViInt32 TimerNumber, ViBoolean* State);
ViStatus _VI_FUNC kedmm6500_SetTimerTriggerState(ViSession Vi, ViInt32 TimerNumber, ViBoolean State);
ViStatus _VI_FUNC kedmm6500_GetTimerTriggerStartByEventid(ViSession Vi, ViInt32 TimerNumber, ViInt32 StartByEventIDBufferSize, ViChar StartByEventID[]);
ViStatus _VI_FUNC kedmm6500_SetTimerTriggerStartByEventid(ViSession Vi, ViInt32 TimerNumber, ViConstString StartByEventID);
ViStatus _VI_FUNC kedmm6500_GetTimerTriggerStartFractional(ViSession Vi, ViInt32 TimerNumber, ViReal64* StartFractional);
ViStatus _VI_FUNC kedmm6500_SetTimerTriggerStartFractional(ViSession Vi, ViInt32 TimerNumber, ViReal64 StartFractional);
ViStatus _VI_FUNC kedmm6500_GetTimerTriggerStartSeconds(ViSession Vi, ViInt32 TimerNumber, ViReal64* StartSeconds);
ViStatus _VI_FUNC kedmm6500_SetTimerTriggerStartSeconds(ViSession Vi, ViInt32 TimerNumber, ViReal64 StartSeconds);

/*- Digital */

ViStatus _VI_FUNC kedmm6500_ClearDigtalTrigger(ViSession Vi, ViInt32 InputLine);
ViStatus _VI_FUNC kedmm6500_GetDigitalTriggerMode(ViSession Vi, ViReal64 InputLine, ViInt32* Mode);
ViStatus _VI_FUNC kedmm6500_SetDigitalTriggerMode(ViSession Vi, ViReal64 InputLine, ViInt32 Mode);
ViStatus _VI_FUNC kedmm6500_GetDigitalTriggerOverRunStatus(ViSession Vi, ViInt32 InputLine, ViBoolean* OverRunStatus);
ViStatus _VI_FUNC kedmm6500_GetDigitalTriggerOutputLogic(ViSession Vi, ViInt32 InputLine, ViInt32* OutputLogic);
ViStatus _VI_FUNC kedmm6500_SetDigitalTriggerOutputLogic(ViSession Vi, ViInt32 InputLine, ViInt32 OutputLogic);
ViStatus _VI_FUNC kedmm6500_GetDigitalTriggerOutputPulsewidth(ViSession Vi, ViInt32 InputLine, ViReal64* OutputPulsewidth);
ViStatus _VI_FUNC kedmm6500_SetDigitalTriggerOutputPulsewidth(ViSession Vi, ViInt32 InputLine, ViReal64 OutputPulsewidth);
ViStatus _VI_FUNC kedmm6500_GetDigitalTriggerOutputStimulus(ViSession Vi, ViInt32 InputLine, ViInt32 OutputStimulusBufferSize, ViChar OutputStimulus[]);
ViStatus _VI_FUNC kedmm6500_SetDigitalTriggerOutputStimulus(ViSession Vi, ViInt32 InputLine, ViConstString OutputStimulus);

/*- LAN */

ViStatus _VI_FUNC kedmm6500_ClearLANTrigger(ViSession Vi, ViInt32 EventNumber);
ViStatus _VI_FUNC kedmm6500_GetLANTriggerMode(ViSession Vi, ViInt32 EventNumber, ViInt32* Mode);
ViStatus _VI_FUNC kedmm6500_SetLANTriggerMode(ViSession Vi, ViInt32 EventNumber, ViInt32 Mode);
ViStatus _VI_FUNC kedmm6500_GetLANTriggerOverRunStatus(ViSession Vi, ViInt32 EventNumber, ViBoolean* OverRunStatus);
ViStatus _VI_FUNC kedmm6500_GetLANTriggerEventGeneratorState(ViSession Vi, ViInt32 EventNumber, ViBoolean* EventGeneratorState);
ViStatus _VI_FUNC kedmm6500_SetLANTriggerEventGeneratorState(ViSession Vi, ViInt32 EventNumber, ViBoolean EventGeneratorState);
ViStatus _VI_FUNC kedmm6500_GetLANTriggerIpAddress(ViSession Vi, ViInt32 EventNumber, ViInt32 IPAddressBufferSize, ViChar IPAddress[]);
ViStatus _VI_FUNC kedmm6500_SetLANTriggerIpAddress(ViSession Vi, ViInt32 EventNumber, ViConstString IPAddress);
ViStatus _VI_FUNC kedmm6500_GetLANTriggerOutLogic(ViSession Vi, ViInt32 EventNumber, ViInt32* OutLogic);
ViStatus _VI_FUNC kedmm6500_SetLANTriggerOutLogic(ViSession Vi, ViInt32 EventNumber, ViInt32 OutLogic);
ViStatus _VI_FUNC kedmm6500_GetLANTriggerOutProtocol(ViSession Vi, ViInt32 EventNumber, ViInt32* OutProtocol);
ViStatus _VI_FUNC kedmm6500_SetLANTriggerOutProtocol(ViSession Vi, ViInt32 EventNumber, ViInt32 OutProtocol);
ViStatus _VI_FUNC kedmm6500_GetLANTriggerOutStimulus(ViSession Vi, ViInt32 EventNumber, ViInt32 OutStimulusBufferSize, ViChar OutStimulus[]);
ViStatus _VI_FUNC kedmm6500_SetLANTriggerOutStimulus(ViSession Vi, ViInt32 EventNumber, ViConstString OutStimulus);

/*- Blender */

ViStatus _VI_FUNC kedmm6500_ClearBlenderTrigger(ViSession Vi, ViInt32 BlenderNumber);
ViStatus _VI_FUNC kedmm6500_GetBlenderTriggerMode(ViSession Vi, ViInt32 BlenderNumber, ViInt32* BlenderMode);
ViStatus _VI_FUNC kedmm6500_SetBlenderTriggerMode(ViSession Vi, ViInt32 BlenderNumber, ViInt32 BlenderMode);
ViStatus _VI_FUNC kedmm6500_GetBlenderTriggerOverRun(ViSession Vi, ViInt32 BlenderNumber, ViBoolean* BlenderOverRun);
ViStatus _VI_FUNC kedmm6500_GetBlenderTriggerStimulus(ViSession Vi, ViInt32 BlenderNumber, ViInt32 StimulusNumber, ViInt32 BlenderStimulusBufferSize, ViChar BlenderStimulus[]);
ViStatus _VI_FUNC kedmm6500_SetBlenderTriggerStimulus(ViSession Vi, ViInt32 BlenderNumber, ViInt32 StimulusNumber, ViConstString BlenderStimulus);

/*- Model */

ViStatus _VI_FUNC kedmm6500_LoadTriggerModelExternal(ViSession Vi, ViInt32 DigitalInLine, ViInt32 DigitalOutLine, ViInt32 Count, ViReal64 Delay, ViInt32 ReadingBufferBufferSize, ViConstString ReadingBuffer, ViInt32 ReadingBlock);
ViStatus _VI_FUNC kedmm6500_LoadTriggerModelList(ViSession Vi, ViInt32 MeasureConfigListBufferSize, ViConstString MeasureConfigList, ViReal64 Delay, ViInt32 ReadingBufferBufferSize, ViConstString ReadingBuffer, ViInt32 ReadingBlock);
ViStatus _VI_FUNC kedmm6500_LoadTriggerModelLoopDuration(ViSession Vi, ViReal64 Duration, ViReal64 Delay, ViInt32 ReadingBufferBufferSize, ViConstString ReadingBuffer, ViInt32 ReadingBlock);
ViStatus _VI_FUNC kedmm6500_LoadTriggerModelLoopSimple(ViSession Vi, ViInt32 Count, ViReal64 Delay, ViInt32 ReadingBufferBufferSize, ViConstString ReadingBuffer, ViInt32 ReadingBlock);
ViStatus _VI_FUNC kedmm6500_ResetTriggerModel(ViSession Vi);
ViStatus _VI_FUNC kedmm6500_LoadTriggerModelGradeBinning(ViSession Vi, ViInt32 Components, ViInt32 StartInLine, ViReal64 StartDelay, ViReal64 EndDelay, ViConstString BufferName, ViInt16 AllPassBitPattern, ViInt32 LimitHighBufferSize, ViReal64 LimitHigh[], ViInt32 LimitLowBufferSize, ViReal64 LimitLow[], ViInt32 FailBitPatternBufferSize, ViInt16 FailBitPattern[]);
ViStatus _VI_FUNC kedmm6500_LoadTriggerModelLoopUntilEvent(ViSession Vi, ViConstString EventSource, ViInt32 Position, ViReal64 Delay, ViConstString BufferName, ViInt32 ReadingBlock);
ViStatus _VI_FUNC kedmm6500_LoadTriggerModelSortBinning(ViSession Vi, ViInt32 Components, ViInt32 StartInLine, ViReal64 StartDelay, ViReal64 EndDelay, ViConstString BufferName, ViInt16 AllPassBitPattern, ViInt32 LimitHighBufferSize, ViReal64 LimitHigh[], ViInt32 LimitLowBufferSize, ViReal64 LimitLow[], ViInt32 FailBitPatternBufferSize, ViInt16 FailBitPattern[]);
ViStatus _VI_FUNC kedmm6500_LoadLogicTrigger(ViSession Vi, ViInt32 DigitalInLine, ViInt32 DigitalOutLine, ViInt32 Count, ViInt32 Clear, ViReal64 Delay, ViConstString ReadingBuffer, ViInt32 ReadingBlock);

/*- Block */

ViStatus _VI_FUNC kedmm6500_TriggerModelBlockBranchAlways(ViSession Vi, ViInt32 BlockNumber, ViInt32 BranchPath);
ViStatus _VI_FUNC kedmm6500_TriggerModelBlockBranchCounter(ViSession Vi, ViInt32 BlockNumber, ViInt32 TargetCount, ViReal64 BranchPath);
ViStatus _VI_FUNC kedmm6500_ReadTriggerModelBlockBranchCounter(ViSession Vi, ViInt32 BlockNumber, ViInt32* Val);
ViStatus _VI_FUNC kedmm6500_TriggerModelBlockBranchDelta(ViSession Vi, ViInt32 BlockNumber, ViReal64 TargetDifference, ViInt32 BranchPath, ViInt32 MeasureBlock);
ViStatus _VI_FUNC kedmm6500_TriggerModelBlockBranchEvent(ViSession Vi, ViInt32 BlockNumber, ViInt32 EventIDBufferSize, ViConstString EventID, ViInt32 BranchPath);
ViStatus _VI_FUNC kedmm6500_TriggerModelBlockBranchLimitConstant(ViSession Vi, ViInt32 BlockNumber, ViInt32 LimitType, ViReal64 LimitA, ViReal64 LimitB, ViInt32 BranchPath, ViInt32 MeasureBlock);
ViStatus _VI_FUNC kedmm6500_TriggerModelBlockBranchLimitDynamic(ViSession Vi, ViInt32 BlockNumber, ViInt32 LimitType, ViInt32 LimitNumuber, ViInt32 BranchPath, ViInt32 MeasureBlock);
ViStatus _VI_FUNC kedmm6500_TriggerModelBlockBranchOnce(ViSession Vi, ViInt32 BlockNumber, ViInt32 BranchPath);
ViStatus _VI_FUNC kedmm6500_TriggerModelBlockBranchOnceExcluded(ViSession Vi, ViInt32 BlockNumber, ViInt32 BranchPath);
ViStatus _VI_FUNC kedmm6500_TriggerModelBlockBufferClear(ViSession Vi, ViInt32 BlockNumber, ViConstString BufferName);
ViStatus _VI_FUNC kedmm6500_RecallTriggerModelBlockNextConfiguration(ViSession Vi, ViInt32 BlockNumber, ViInt32 ConfigurationListBufferSize, ViConstString ConfigurationList);
ViStatus _VI_FUNC kedmm6500_RecallTriggerModelBlockPreviousConfiguration(ViSession Vi, ViInt32 BlockNumber, ViInt32 ConfigurationListBufferSize, ViConstString ConfigurationList);
ViStatus _VI_FUNC kedmm6500_RecallTriggerModelBlockConfiguration(ViSession Vi, ViInt32 BlockNumber, ViInt32 ConfigurationListBufferSize, ViConstString ConfigurationList, ViInt32 Point);
ViStatus _VI_FUNC kedmm6500_TriggerModelBlockConstantDelay(ViSession Vi, ViInt32 BlockNumber, ViReal64 Time);
ViStatus _VI_FUNC kedmm6500_TriggerModelBlockDelayDynamic(ViSession Vi, ViInt32 BlockNumber, ViInt32 UserDelayType, ViInt32 UserDelayNumber);
ViStatus _VI_FUNC kedmm6500_TriggerModelBlockConfigureDigitalIO(ViSession Vi, ViInt32 BlockNumber, ViInt32 BitPattern, ViInt32 BitMask);
ViStatus _VI_FUNC kedmm6500_TriggerModelBlockMeasure(ViSession Vi, ViInt32 BlockNumber, ViConstString BufferName);
ViStatus _VI_FUNC kedmm6500_TriggerModelBlockNotify(ViSession Vi, ViInt32 BlockNumber, ViInt32 NotifyID);
ViStatus _VI_FUNC kedmm6500_TriggerModelBlockWait(ViSession Vi, ViInt32 BlockNumber, ViInt32 Event1BufferSize, ViConstString Event1, ViInt32 StimulusAction, ViInt32 Logic, ViInt32 Event2BufferSize, ViConstString Event2, ViInt32 Event3BufferSize, ViConstString Event3);
ViStatus _VI_FUNC kedmm6500_TriggerModelBlockLogEvent(ViSession Vi, ViInt32 BlockNumber, ViInt32 EventBufferSize, ViConstString Event, ViInt32 MessageBufferSize, ViConstString Message);
ViStatus _VI_FUNC kedmm6500_TriggerModelBlockNoOperation(ViSession Vi, ViInt32 BlockNumber);
ViStatus _VI_FUNC kedmm6500_ResetTriggerModelBlockBranchCounter(ViSession Vi, ViInt32 BlockNumber, ViInt32 Counter);

/*- External */

ViStatus _VI_FUNC kedmm6500_ClearExternalTrigger(ViSession Vi);
ViStatus _VI_FUNC kedmm6500_GetExternalTriggerMode(ViSession Vi, ViInt32* Mode);
ViStatus _VI_FUNC kedmm6500_SetExternalTriggerMode(ViSession Vi, ViInt32 Mode);
ViStatus _VI_FUNC kedmm6500_GetExternalTriggerOutputLogic(ViSession Vi, ViInt32* OutputLogic);
ViStatus _VI_FUNC kedmm6500_SetExternalTriggerOutputLogic(ViSession Vi, ViInt32 OutputLogic);
ViStatus _VI_FUNC kedmm6500_GetExternalTriggerOutputStimulus(ViSession Vi, ViInt32 OutputStimulusBufferSize, ViChar OutputStimulus[]);
ViStatus _VI_FUNC kedmm6500_SetExternalTriggerOutputStimulus(ViSession Vi, ViConstString OutputStimulus);
ViStatus _VI_FUNC kedmm6500_GetExternalTriggerOverRunStatus(ViSession Vi, ViBoolean* OverRunStatus);

/*- Digital */

ViStatus _VI_FUNC kedmm6500_ConfigureDigitalLineMode(ViSession Vi, ViInt32 LineNumber, ViInt32 TriggerType, ViInt32 LineState);
ViStatus _VI_FUNC kedmm6500_DigitalRead(ViSession Vi, ViInt32* Val);
ViStatus _VI_FUNC kedmm6500_DigitalWrite(ViSession Vi, ViInt32 Value);
ViStatus _VI_FUNC kedmm6500_ReadDigitalLineMode(ViSession Vi, ViInt32 LineNumber, ViInt32* TriggerType, ViInt32* LineState);
ViStatus _VI_FUNC kedmm6500_GetDigitalLineState(ViSession Vi, ViInt32 LineNumber, ViBoolean* LineState);
ViStatus _VI_FUNC kedmm6500_SetDigitalLineState(ViSession Vi, ViInt32 LineNumber, ViBoolean LineState);

/*- Display */

ViStatus _VI_FUNC kedmm6500_DisplayClear(ViSession Vi);
ViStatus _VI_FUNC kedmm6500_DisplayMessage(ViSession Vi, ViInt32 LineNumber, ViInt32 TextMessageBufferSize, ViConstString TextMessage);
ViStatus _VI_FUNC kedmm6500_GetDisplayResolution(ViSession Vi, ViInt32 Function, ViInt32* Resolution);
ViStatus _VI_FUNC kedmm6500_SetDisplayResolution(ViSession Vi, ViInt32 Function, ViInt32 Resolution);
ViStatus _VI_FUNC kedmm6500_GetDigitizerDisplayResolution(ViSession Vi, ViInt32 Function, ViInt32* DigitizerResolution);
ViStatus _VI_FUNC kedmm6500_SetDigitizerDisplayResolution(ViSession Vi, ViInt32 Function, ViInt32 DigitizerResolution);

/*- Digitizer */

ViStatus _VI_FUNC kedmm6500_DigitizerMeasure(ViSession Vi, ViInt32 Function, ViConstString BufferName, ViInt32 BufferElementsBufferSize, ViConstString BufferElements, ViInt32 ValBufferSize, ViChar Val[]);
ViStatus _VI_FUNC kedmm6500_DigitizerRead(ViSession Vi, ViConstString BufferName, ViInt32 BufferElementsBufferSize, ViConstString BufferElements, ViInt32 ValBufferSize, ViChar Val[]);
ViStatus _VI_FUNC kedmm6500_GetDigitizerChannelFunction(ViSession Vi, ViConstString ChannelList, ViInt32* Function2);
ViStatus _VI_FUNC kedmm6500_SetDigitizerChannelFunction(ViSession Vi, ViConstString ChannelList, ViInt32 Function2);

/*- Configuration */

ViStatus _VI_FUNC kedmm6500_GetDigitizerRange(ViSession Vi, ViInt32 Function, ViReal64* Range);
ViStatus _VI_FUNC kedmm6500_SetDigitizerRange(ViSession Vi, ViInt32 Function, ViReal64 Range);
ViStatus _VI_FUNC kedmm6500_GetDigitizerUserDelay(ViSession Vi, ViInt32 Function, ViInt32 UserDelayIndex, ViReal64* UserDelay);
ViStatus _VI_FUNC kedmm6500_SetDigitizerUserDelay(ViSession Vi, ViInt32 Function, ViInt32 UserDelayIndex, ViReal64 UserDelay);
ViStatus _VI_FUNC kedmm6500_GetDigitizerAperture(ViSession Vi, ViInt32 Function, ViReal64* Aperture);
ViStatus _VI_FUNC kedmm6500_SetDigitizerAperture(ViSession Vi, ViInt32 Function, ViReal64 Aperture);
ViStatus _VI_FUNC kedmm6500_GetDigitizerSampleRate(ViSession Vi, ViInt32 Function, ViReal64* SampleRate);
ViStatus _VI_FUNC kedmm6500_SetDigitizerSampleRate(ViSession Vi, ViInt32 Function, ViReal64 SampleRate);
ViStatus _VI_FUNC kedmm6500_GetDigitizerChannelAperture(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64* Aperture);
ViStatus _VI_FUNC kedmm6500_SetDigitizerChannelAperture(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64 Aperture);
ViStatus _VI_FUNC kedmm6500_GetDigitizerChannelSampleRate(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64* SampleRate);
ViStatus _VI_FUNC kedmm6500_SetDigitizerChannelSampleRate(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64 SampleRate);
ViStatus _VI_FUNC kedmm6500_GetDigitizerChannelUserDelay(ViSession Vi, ViInt32 Function, ViInt32 UserDelayIndex, ViConstString ChannelList, ViReal64* UserDelay);
ViStatus _VI_FUNC kedmm6500_SetDigitizerChannelUserDelay(ViSession Vi, ViInt32 Function, ViInt32 UserDelayIndex, ViConstString ChannelList, ViReal64 UserDelay);
ViStatus _VI_FUNC kedmm6500_GetDigitizerChannelDcVoltInputImpedance(ViSession Vi, ViConstString ChannelList, ViInt32* DCVoltInputImpedance2);
ViStatus _VI_FUNC kedmm6500_SetDigitizerChannelDcVoltInputImpedance(ViSession Vi, ViConstString ChannelList, ViInt32 DCVoltInputImpedance2);

/*- Math */

ViStatus _VI_FUNC kedmm6500_GetDigitizerMathOperation(ViSession Vi, ViInt32 Function, ViInt32* MathOperation);
ViStatus _VI_FUNC kedmm6500_SetDigitizerMathOperation(ViSession Vi, ViInt32 Function, ViInt32 MathOperation);
ViStatus _VI_FUNC kedmm6500_GetDigitizerMathOffsetFactor(ViSession Vi, ViInt32 Function, ViReal64* MathOffsetFactor);
ViStatus _VI_FUNC kedmm6500_SetDigitizerMathOffsetFactor(ViSession Vi, ViInt32 Function, ViReal64 MathOffsetFactor);
ViStatus _VI_FUNC kedmm6500_GetDigitizerMathScaleFactor(ViSession Vi, ViInt32 Function, ViReal64* MathScaleFactor);
ViStatus _VI_FUNC kedmm6500_SetDigitizerMathScaleFactor(ViSession Vi, ViInt32 Function, ViReal64 MathScaleFactor);
ViStatus _VI_FUNC kedmm6500_GetDigitizerMathPercent(ViSession Vi, ViInt32 Function, ViReal64* MathPercent);
ViStatus _VI_FUNC kedmm6500_SetDigitizerMathPercent(ViSession Vi, ViInt32 Function, ViReal64 MathPercent);
ViStatus _VI_FUNC kedmm6500_GetDigitizerMathOperationState(ViSession Vi, ViInt32 Function, ViBoolean* MathOperationState);
ViStatus _VI_FUNC kedmm6500_SetDigitizerMathOperationState(ViSession Vi, ViInt32 Function, ViBoolean MathOperationState);
ViStatus _VI_FUNC kedmm6500_GetDigitizerChannelMathOffsetFactor(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64* MathOffsetFactor);
ViStatus _VI_FUNC kedmm6500_SetDigitizerChannelMathOffsetFactor(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64 MathOffsetFactor);
ViStatus _VI_FUNC kedmm6500_GetDigitizerChannelMathOperation(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViInt32* MathOperation);
ViStatus _VI_FUNC kedmm6500_SetDigitizerChannelMathOperation(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViInt32 MathOperation);
ViStatus _VI_FUNC kedmm6500_GetDigitizerChannelMathOperationState(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViBoolean* MathOperationState);
ViStatus _VI_FUNC kedmm6500_SetDigitizerChannelMathOperationState(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViBoolean MathOperationState);
ViStatus _VI_FUNC kedmm6500_GetDigitizerChannelMathPercent(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64* MathPercent);
ViStatus _VI_FUNC kedmm6500_SetDigitizerChannelMathPercent(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64 MathPercent);
ViStatus _VI_FUNC kedmm6500_GetDigitizerChannelMathScaleFactor(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64* MathScaleFactor);
ViStatus _VI_FUNC kedmm6500_SetDigitizerChannelMathScaleFactor(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64 MathScaleFactor);

/*- Limit */

ViStatus _VI_FUNC kedmm6500_IsDigitizerLimitTestFailed(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViInt32* Val);
ViStatus _VI_FUNC kedmm6500_DigitizerConfigurationLimitClear(ViSession Vi, ViInt32 Function, ViInt32 LimitTest);
ViStatus _VI_FUNC kedmm6500_GetDigitizerLimitTestEnabled(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViBoolean* Enabled);
ViStatus _VI_FUNC kedmm6500_SetDigitizerLimitTestEnabled(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViBoolean Enabled);
ViStatus _VI_FUNC kedmm6500_GetDigitizerLimitAutoClearState(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViBoolean* AutoClearState);
ViStatus _VI_FUNC kedmm6500_SetDigitizerLimitAutoClearState(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViBoolean AutoClearState);
ViStatus _VI_FUNC kedmm6500_GetDigitizerUpperLimit(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViReal64* UpperLimitTest);
ViStatus _VI_FUNC kedmm6500_SetDigitizerUpperLimit(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViReal64 UpperLimitTest);
ViStatus _VI_FUNC kedmm6500_GetDigitizerLowerLimit(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViReal64* LowerLimit);
ViStatus _VI_FUNC kedmm6500_SetDigitizerLowerLimit(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViReal64 LowerLimit);
ViStatus _VI_FUNC kedmm6500_GetDigitizerLimitAudible(ViSession Vi, ViInt32 LimitTest, ViInt32 Function, ViInt32* Audible);
ViStatus _VI_FUNC kedmm6500_SetDigitizerLimitAudible(ViSession Vi, ViInt32 LimitTest, ViInt32 Function, ViInt32 Audible);
ViStatus _VI_FUNC kedmm6500_GetDigitizerChannelLimitAudible(ViSession Vi, ViInt32 LimitTest, ViInt32 Function, ViConstString ChannelList, ViInt32* Audible);
ViStatus _VI_FUNC kedmm6500_SetDigitizerChannelLimitAudible(ViSession Vi, ViInt32 LimitTest, ViInt32 Function, ViConstString ChannelList, ViInt32 Audible);
ViStatus _VI_FUNC kedmm6500_GetDigitizerChannelAutoClearState(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViConstString ChannelList, ViBoolean* AutoClearState2);
ViStatus _VI_FUNC kedmm6500_SetDigitizerChannelAutoClearState(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViConstString ChannelList, ViBoolean AutoClearState2);
ViStatus _VI_FUNC kedmm6500_GetDigitizerChannelEnabled(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViConstString ChannelList, ViBoolean* Enabled2);
ViStatus _VI_FUNC kedmm6500_SetDigitizerChannelEnabled(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViConstString ChannelList, ViBoolean Enabled2);
ViStatus _VI_FUNC kedmm6500_GetDigitizerChannelHigh(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViConstString ChannelList, ViReal64* High2);
ViStatus _VI_FUNC kedmm6500_SetDigitizerChannelHigh(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViConstString ChannelList, ViReal64 High2);
ViStatus _VI_FUNC kedmm6500_GetDigitizerChannelLow(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViConstString ChannelList, ViReal64* Low2);
ViStatus _VI_FUNC kedmm6500_SetDigitizerChannelLow(ViSession Vi, ViInt32 Function, ViInt32 LimitTest, ViConstString ChannelList, ViReal64 Low2);

/*- AnalogTrigger */

ViStatus _VI_FUNC kedmm6500_GetDigitizerATrigEdgeLevel(ViSession Vi, ViInt32 Function, ViReal64* EdgeLevel);
ViStatus _VI_FUNC kedmm6500_SetDigitizerATrigEdgeLevel(ViSession Vi, ViInt32 Function, ViReal64 EdgeLevel);
ViStatus _VI_FUNC kedmm6500_GetDigitizerATrigEdgeSlope(ViSession Vi, ViInt32 Function, ViInt32* EdgeSlope);
ViStatus _VI_FUNC kedmm6500_SetDigitizerATrigEdgeSlope(ViSession Vi, ViInt32 Function, ViInt32 EdgeSlope);
ViStatus _VI_FUNC kedmm6500_GetDigitizerATrigMode(ViSession Vi, ViInt32 Function, ViInt32* Mode);
ViStatus _VI_FUNC kedmm6500_SetDigitizerATrigMode(ViSession Vi, ViInt32 Function, ViInt32 Mode);
ViStatus _VI_FUNC kedmm6500_GetDigitizerATrigWindowDirection(ViSession Vi, ViInt32 Function, ViInt32* WindowDirection);
ViStatus _VI_FUNC kedmm6500_SetDigitizerATrigWindowDirection(ViSession Vi, ViInt32 Function, ViInt32 WindowDirection);
ViStatus _VI_FUNC kedmm6500_GetDigitizerATrigWindowLevelHigh(ViSession Vi, ViInt32 Function, ViReal64* WindowLevelHigh);
ViStatus _VI_FUNC kedmm6500_SetDigitizerATrigWindowLevelHigh(ViSession Vi, ViInt32 Function, ViReal64 WindowLevelHigh);
ViStatus _VI_FUNC kedmm6500_GetDigitizerATrigWindowLevelLow(ViSession Vi, ViInt32 Function, ViReal64* WindowLevelLow);
ViStatus _VI_FUNC kedmm6500_SetDigitizerATrigWindowLevelLow(ViSession Vi, ViInt32 Function, ViReal64 WindowLevelLow);

/*- Relative */

ViStatus _VI_FUNC kedmm6500_DigitizerRelativeAcquire(ViSession Vi, ViInt32 Function);
ViStatus _VI_FUNC kedmm6500_GetDigitizerRelativeOffset(ViSession Vi, ViInt32 Function, ViReal64* RelativeOffset);
ViStatus _VI_FUNC kedmm6500_SetDigitizerRelativeOffset(ViSession Vi, ViInt32 Function, ViReal64 RelativeOffset);
ViStatus _VI_FUNC kedmm6500_GetDigitizerRelativeOffsetState(ViSession Vi, ViInt32 Function, ViBoolean* RelativeOffsetState);
ViStatus _VI_FUNC kedmm6500_SetDigitizerRelativeOffsetState(ViSession Vi, ViInt32 Function, ViBoolean RelativeOffsetState);
ViStatus _VI_FUNC kedmm6500_GetDigitizerChannelRelativeOffset(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64* RelativeOffset);
ViStatus _VI_FUNC kedmm6500_SetDigitizerChannelRelativeOffset(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViReal64 RelativeOffset);
ViStatus _VI_FUNC kedmm6500_GetDigitizerChannelRelativeOffsetState(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViBoolean* RelativeOffsetState);
ViStatus _VI_FUNC kedmm6500_SetDigitizerChannelRelativeOffsetState(ViSession Vi, ViInt32 Function, ViConstString ChannelList, ViBoolean RelativeOffsetState);

/*- CardSlot */

ViStatus _VI_FUNC kedmm6500_GetCardSlotName(ViSession Vi, ViInt32 Index, ViInt32 NameBufferSize, ViChar Name[]);
ViStatus _VI_FUNC kedmm6500_ReadFirstSupportedChannel(ViSession Vi, ViConstString CardSlot, ViInt32 Type, ViInt32 ValBufferSize, ViChar Val[]);
ViStatus _VI_FUNC kedmm6500_ReadLastSupportedChannel(ViSession Vi, ViConstString CardSlot, ViInt32 Type, ViInt32 ValBufferSize, ViChar Val[]);
ViStatus _VI_FUNC kedmm6500_ReadMatrixCount(ViSession Vi, ViConstString CardSlot, ViInt32 RowsOrColumns, ViInt32* Val);
ViStatus _VI_FUNC kedmm6500_InstallPseudoCard(ViSession Vi, ViConstString CardSlot, ViConstString CardNumber);

/*- ChannelConfiguration */

ViStatus _VI_FUNC kedmm6500_CloseChannel(ViSession Vi, ViConstString ChannelList);
ViStatus _VI_FUNC kedmm6500_ReadCloseCount(ViSession Vi, ViConstString Channel, ViInt32* Val);
ViStatus _VI_FUNC kedmm6500_GetDelay(ViSession Vi, ViConstString ChannelList, ViReal64* Delay);
ViStatus _VI_FUNC kedmm6500_SetDelay(ViSession Vi, ViConstString ChannelList, ViReal64 Delay);
ViStatus _VI_FUNC kedmm6500_GetLabel(ViSession Vi, ViConstString ChannelList, ViInt32 LabelBufferSize, ViChar Label[]);
ViStatus _VI_FUNC kedmm6500_SetLabel(ViSession Vi, ViConstString ChannelList, ViConstString Label);
ViStatus _VI_FUNC kedmm6500_ConfigureMatch(ViSession Vi, ViInt32 Value, ViConstString ChannelList);
ViStatus _VI_FUNC kedmm6500_ConfigureMatchMask(ViSession Vi, ViInt32 Value, ViConstString ChannelList, ViInt32 Mask);
ViStatus _VI_FUNC kedmm6500_ReadMatch(ViSession Vi, ViConstString ChannelList, ViInt32* Val);
ViStatus _VI_FUNC kedmm6500_GetMatchType(ViSession Vi, ViConstString ChannelList, ViInt32* MatchType);
ViStatus _VI_FUNC kedmm6500_SetMatchType(ViSession Vi, ViConstString ChannelList, ViInt32 MatchType);
ViStatus _VI_FUNC kedmm6500_GetMode(ViSession Vi, ViConstString ChannelList, ViInt32* Mode);
ViStatus _VI_FUNC kedmm6500_SetMode(ViSession Vi, ViConstString ChannelList, ViInt32 Mode);
ViStatus _VI_FUNC kedmm6500_OpenMultiple(ViSession Vi, ViConstString ChannelList);
ViStatus _VI_FUNC kedmm6500_Open(ViSession Vi, ViConstString ChannelList);
ViStatus _VI_FUNC kedmm6500_OpenAll(ViSession Vi);
ViStatus _VI_FUNC kedmm6500_ReadChannel(ViSession Vi, ViConstString ChannelList, ViInt32 ValBufferSize, ViChar Val[]);
ViStatus _VI_FUNC kedmm6500_SaveAndReadChannel(ViSession Vi, ViConstString ChannelList, ViConstString BufferName, ViInt32 ValBufferSize, ViChar Val[]);
ViStatus _VI_FUNC kedmm6500_GetWidth(ViSession Vi, ViConstString ChannelList, ViReal64* Width);
ViStatus _VI_FUNC kedmm6500_SetWidth(ViSession Vi, ViConstString ChannelList, ViReal64 Width);
ViStatus _VI_FUNC kedmm6500_Write(ViSession Vi, ViConstString ChannelList, ViReal64 Value);
ViStatus _VI_FUNC kedmm6500_ReadState(ViSession Vi, ViInt32 ValBufferSize, ViInt32 Val[], ViInt32* ValActualSize);
ViStatus _VI_FUNC kedmm6500_ReadChannelState(ViSession Vi, ViConstString ChannelList, ViInt32* Val);
ViStatus _VI_FUNC kedmm6500_ReadChannelType(ViSession Vi, ViConstString ChannelList, ViInt32* Val);

/*- Scan */

ViStatus _VI_FUNC kedmm6500_Add(ViSession Vi, ViConstString ChannelList);
ViStatus _VI_FUNC kedmm6500_Add2(ViSession Vi, ViConstString ChannelList, ViConstString ConfigurationList, ViInt32 Index);
ViStatus _VI_FUNC kedmm6500_AddSingle(ViSession Vi, ViConstString ChannelList);
ViStatus _VI_FUNC kedmm6500_AddSingle2(ViSession Vi, ViConstString ChannelList, ViConstString ConfigurationList, ViInt32 Index);
ViStatus _VI_FUNC kedmm6500_AddWrite(ViSession Vi, ViConstString ChannelList, ViReal64 Value);
ViStatus _VI_FUNC kedmm6500_Create(ViSession Vi, ViConstString ChannelList);
ViStatus _VI_FUNC kedmm6500_Create2(ViSession Vi, ViConstString ChannelList, ViConstString ConfigurationList, ViInt32 Index);
ViStatus _VI_FUNC kedmm6500_ReadScan(ViSession Vi, ViInt32 ValBufferSize, ViChar Val[]);
ViStatus _VI_FUNC kedmm6500_Export(ViSession Vi, ViConstString Filename, ViInt32 When, ViConstString What);
ViStatus _VI_FUNC kedmm6500_LearnLimits(ViSession Vi, ViReal64 Window, ViInt32 Interations);
ViStatus _VI_FUNC kedmm6500_FindLimits(ViSession Vi, ViReal64 Window, ViInt32 Interations);
ViStatus _VI_FUNC kedmm6500_ReadScanState(ViSession Vi, ViInt32 ValBufferSize, ViChar Val[]);


/**************************************************************************** 
 *----------------- Instrument Error And Completion Codes ------------------* 
 ****************************************************************************/
#ifndef _IVIC_ERROR_BASE_DEFINES_
#define _IVIC_ERROR_BASE_DEFINES_

#define IVIC_WARN_BASE                           (0x3FFA0000L)
#define IVIC_CROSS_CLASS_WARN_BASE               (IVIC_WARN_BASE + 0x1000)
#define IVIC_CLASS_WARN_BASE                     (IVIC_WARN_BASE + 0x2000)
#define IVIC_SPECIFIC_WARN_BASE                  (IVIC_WARN_BASE + 0x4000)

#define IVIC_ERROR_BASE                          (0xBFFA0000L)
#define IVIC_CROSS_CLASS_ERROR_BASE              (IVIC_ERROR_BASE + 0x1000)
#define IVIC_CLASS_ERROR_BASE                    (IVIC_ERROR_BASE + 0x2000)
#define IVIC_SPECIFIC_ERROR_BASE                 (IVIC_ERROR_BASE + 0x4000)
#define IVIC_LXISYNC_ERROR_BASE                  (IVIC_ERROR_BASE + 0x2000)

#endif


#define KEDMM6500_ERROR_CANNOT_RECOVER                       (IVIC_ERROR_BASE + 0x0000)
#define KEDMM6500_ERROR_INSTRUMENT_STATUS                    (IVIC_ERROR_BASE + 0x0001)
#define KEDMM6500_ERROR_CANNOT_OPEN_FILE                     (IVIC_ERROR_BASE + 0x0002)
#define KEDMM6500_ERROR_READING_FILE                         (IVIC_ERROR_BASE + 0x0003)
#define KEDMM6500_ERROR_WRITING_FILE                         (IVIC_ERROR_BASE + 0x0004)
#define KEDMM6500_ERROR_INVALID_PATHNAME                     (IVIC_ERROR_BASE + 0x000B)
#define KEDMM6500_ERROR_INVALID_ATTRIBUTE                    (IVIC_ERROR_BASE + 0x000C)
#define KEDMM6500_ERROR_IVI_ATTR_NOT_WRITABLE                (IVIC_ERROR_BASE + 0x000D)
#define KEDMM6500_ERROR_IVI_ATTR_NOT_READABLE                (IVIC_ERROR_BASE + 0x000E)
#define KEDMM6500_ERROR_INVALID_VALUE                        (IVIC_ERROR_BASE + 0x0010)
#define KEDMM6500_ERROR_FUNCTION_NOT_SUPPORTED               (IVIC_ERROR_BASE + 0x0011)
#define KEDMM6500_ERROR_ATTRIBUTE_NOT_SUPPORTED              (IVIC_ERROR_BASE + 0x0012)
#define KEDMM6500_ERROR_VALUE_NOT_SUPPORTED                  (IVIC_ERROR_BASE + 0x0013)
#define KEDMM6500_ERROR_TYPES_DO_NOT_MATCH                   (IVIC_ERROR_BASE + 0x0015)
#define KEDMM6500_ERROR_NOT_INITIALIZED                      (IVIC_ERROR_BASE + 0x001D)
#define KEDMM6500_ERROR_UNKNOWN_CHANNEL_NAME                 (IVIC_ERROR_BASE + 0x0020)
#define KEDMM6500_ERROR_TOO_MANY_OPEN_FILES                  (IVIC_ERROR_BASE + 0x0023)
#define KEDMM6500_ERROR_CHANNEL_NAME_REQUIRED                (IVIC_ERROR_BASE + 0x0044)
#define KEDMM6500_ERROR_MISSING_OPTION_NAME                  (IVIC_ERROR_BASE + 0x0049)
#define KEDMM6500_ERROR_MISSING_OPTION_VALUE                 (IVIC_ERROR_BASE + 0x004A)
#define KEDMM6500_ERROR_BAD_OPTION_NAME                      (IVIC_ERROR_BASE + 0x004B)
#define KEDMM6500_ERROR_BAD_OPTION_VALUE                     (IVIC_ERROR_BASE + 0x004C)
#define KEDMM6500_ERROR_OUT_OF_MEMORY                        (IVIC_ERROR_BASE + 0x0056)
#define KEDMM6500_ERROR_OPERATION_PENDING                    (IVIC_ERROR_BASE + 0x0057)
#define KEDMM6500_ERROR_NULL_POINTER                         (IVIC_ERROR_BASE + 0x0058)
#define KEDMM6500_ERROR_UNEXPECTED_RESPONSE                  (IVIC_ERROR_BASE + 0x0059)
#define KEDMM6500_ERROR_FILE_NOT_FOUND                       (IVIC_ERROR_BASE + 0x005B)
#define KEDMM6500_ERROR_INVALID_FILE_FORMAT                  (IVIC_ERROR_BASE + 0x005C)
#define KEDMM6500_ERROR_STATUS_NOT_AVAILABLE                 (IVIC_ERROR_BASE + 0x005D)
#define KEDMM6500_ERROR_ID_QUERY_FAILED                      (IVIC_ERROR_BASE + 0x005E)
#define KEDMM6500_ERROR_RESET_FAILED                         (IVIC_ERROR_BASE + 0x005F)
#define KEDMM6500_ERROR_RESOURCE_UNKNOWN                     (IVIC_ERROR_BASE + 0x0060)
#define KEDMM6500_ERROR_ALREADY_INITIALIZED                  (IVIC_ERROR_BASE + 0x0061)
#define KEDMM6500_ERROR_CANNOT_CHANGE_SIMULATION_STATE       (IVIC_ERROR_BASE + 0x0062)
#define KEDMM6500_ERROR_INVALID_NUMBER_OF_LEVELS_IN_SELECTOR (IVIC_ERROR_BASE + 0x0063)
#define KEDMM6500_ERROR_INVALID_RANGE_IN_SELECTOR            (IVIC_ERROR_BASE + 0x0064)
#define KEDMM6500_ERROR_UNKOWN_NAME_IN_SELECTOR              (IVIC_ERROR_BASE + 0x0065)
#define KEDMM6500_ERROR_BADLY_FORMED_SELECTOR                (IVIC_ERROR_BASE + 0x0066)
#define KEDMM6500_ERROR_UNKNOWN_PHYSICAL_IDENTIFIER          (IVIC_ERROR_BASE + 0x0067)
#define KEDMM6500_ERROR_INVALID_SESSION_HANDLE               (IVIC_ERROR_BASE + 0x1190)



#define KEDMM6500_SUCCESS                                   0
#define KEDMM6500_WARN_NSUP_ID_QUERY                        (IVIC_WARN_BASE + 0x0065)
#define KEDMM6500_WARN_NSUP_RESET                           (IVIC_WARN_BASE + 0x0066)
#define KEDMM6500_WARN_NSUP_SELF_TEST                       (IVIC_WARN_BASE + 0x0067)
#define KEDMM6500_WARN_NSUP_ERROR_QUERY                     (IVIC_WARN_BASE + 0x0068)
#define KEDMM6500_WARN_NSUP_REV_QUERY                       (IVIC_WARN_BASE + 0x0069)



#define KEDMM6500_ERROR_IO_GENERAL                          (IVIC_SPECIFIC_ERROR_BASE + 0x0214)
#define KEDMM6500_ERROR_IO_TIMEOUT                          (IVIC_SPECIFIC_ERROR_BASE + 0x0215)
#define KEDMM6500_ERROR_MODEL_NOT_SUPPORTED                 (IVIC_SPECIFIC_ERROR_BASE + 0x0216)
#define KEDMM6500_ERROR_MAX_TIME_EXCEEDED                   (IVIC_CLASS_ERROR_BASE + 0x0003)
#define KEDMM6500_ERROR_TRIGGER_NOT_SOFTWARE                (IVIC_CLASS_ERROR_BASE + 0x0001)



#define KEDMM6500_WARN_OVER_RANGE                           (IVIC_CLASS_WARN_BASE + 0x0001)


/**************************************************************************** 
 *---------------------------- End Include File ----------------------------* 
 ****************************************************************************/
#if defined(__cplusplus) || defined(__cplusplus__)
}
#endif
#endif // __KEDMM6500_HEADER
