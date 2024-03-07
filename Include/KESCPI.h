/****************************************************************************
 *                       Keithley SCPI IVI Driver                           
 *---------------------------------------------------------------------------
 *   Copyright (c) Keithley Instruments 2004.  All Rights Reserved.         
 *---------------------------------------------------------------------------
 *                                                                          
 * Title:    KESCPI.h                                        
 * Purpose:  Keithley SCPI IVI Driver                                       
 *           instrument driver declarations.                                
 *                                                                          
 ****************************************************************************/

#ifndef __KESCPI_HEADER
#define __KESCPI_HEADER

#include "ivi.h"

#if defined(__cplusplus) || defined(__cplusplus__)
extern "C" {
#endif

/****************************************************************************
 *----------------- Instrument Driver Revision Information -----------------*
 ****************************************************************************/
#define KESCPI_MAJOR_VERSION                1     /* Instrument driver major version   */
#define KESCPI_MINOR_VERSION                0     /* Instrument driver minor version   */
                                                                
#define KESCPI_CLASS_SPEC_MAJOR_VERSION     2     /* Class specification major version */
#define KESCPI_CLASS_SPEC_MINOR_VERSION     0     /* Class specification minor version */


#define KESCPI_SUPPORTED_INSTRUMENT_MODELS  "ANY"
#define KESCPI_DRIVER_VENDOR                "Keithley Instruments, Inc."
#define KESCPI_DRIVER_DESCRIPTION           "Keithley SCPI Command IVI Driver"
                    



/**************************************************************************** 
 *------------------------------ Useful Macros -----------------------------* 
 ****************************************************************************/



/**************************************************************************** 
 *---------------------------- Attribute Defines ---------------------------* 
 ****************************************************************************/

    /*- IVI Inherent Instrument Attributes ---------------------------------*/    

        /* User Options */
#define KESCPI_ATTR_RANGE_CHECK                   IVI_ATTR_RANGE_CHECK                    /* ViBoolean */
#define KESCPI_ATTR_CACHE                         IVI_ATTR_CACHE                          /* ViBoolean */
#define KESCPI_ATTR_SIMULATE                      IVI_ATTR_SIMULATE                       /* ViBoolean */
#define KESCPI_ATTR_RECORD_COERCIONS              IVI_ATTR_RECORD_COERCIONS               /* ViBoolean */
#define KESCPI_ATTR_QUERY_INSTRUMENT_STATUS       IVI_ATTR_QUERY_INSTR_STATUS             /* ViBoolean */
#define KESCPI_ATTR_DRIVER_SETUP                  IVI_ATTR_DRIVER_SETUP                   /* ViString,  "" */
#define KESCPI_ATTR_INTERCHANGE_CHECK             IVI_ATTR_INTERCHANGE_CHECK              /* ViBoolean, VI_TRUE */


        /* Instrument Capabilities */
#define KESCPI_ATTR_NUM_CHANNELS                  IVI_ATTR_NUM_CHANNELS                   /* ViInt32,  read-only  */

        /* Driver Information  */
#define KESCPI_ATTR_SPECIFIC_DRIVER_PREFIX        IVI_ATTR_SPECIFIC_DRIVER_PREFIX         /* ViString, read-only  */
#define KESCPI_ATTR_SUPPORTED_INSTRUMENT_MODELS   IVI_ATTR_SUPPORTED_INSTRUMENT_MODELS    /* ViString, read-only  */
#define KESCPI_ATTR_GROUP_CAPABILITIES            IVI_ATTR_GROUP_CAPABILITIES             /* ViString, read-only  */
#define KESCPI_ATTR_INSTRUMENT_MANUFACTURER       IVI_ATTR_INSTRUMENT_MANUFACTURER        /* ViString, read-only  */
#define KESCPI_ATTR_INSTRUMENT_MODEL              IVI_ATTR_INSTRUMENT_MODEL               /* ViString, read-only  */
#define KESCPI_ATTR_INSTRUMENT_FIRMWARE_REVISION  IVI_ATTR_INSTRUMENT_FIRMWARE_REVISION              /* ViString, read-only  */
#define KESCPI_ATTR_SPECIFIC_DRIVER_MAJOR_VERSION IVI_ATTR_SPECIFIC_DRIVER_MAJOR_VERSION  /* ViInt32,  read-only  */
#define KESCPI_ATTR_SPECIFIC_DRIVER_MINOR_VERSION IVI_ATTR_SPECIFIC_DRIVER_MINOR_VERSION  /* ViInt32,  read-only  */
#define KESCPI_ATTR_SPECIFIC_DRIVER_REVISION      IVI_ATTR_SPECIFIC_DRIVER_REVISION       /* ViString, read-only  */
#define KESCPI_ATTR_SPECIFIC_DRIVER_VENDOR        IVI_ATTR_SPECIFIC_DRIVER_VENDOR         /* ViString, read-only  */
#define KESCPI_ATTR_SPECIFIC_DRIVER_DESCRIPTION   IVI_ATTR_SPECIFIC_DRIVER_DESCRIPTION    /* ViString, read-only  */
#define KESCPI_ATTR_SPECIFIC_DRIVER_CLASS_SPEC_MAJOR_VERSION IVI_ATTR_SPECIFIC_DRIVER_CLASS_SPEC_MAJOR_VERSION /* ViInt32, read-only */
#define KESCPI_ATTR_SPECIFIC_DRIVER_CLASS_SPEC_MINOR_VERSION IVI_ATTR_SPECIFIC_DRIVER_CLASS_SPEC_MINOR_VERSION /* ViInt32, read-only */

        /* Error Info */
#define KESCPI_ATTR_PRIMARY_ERROR                 IVI_ATTR_PRIMARY_ERROR                  /* ViInt32   */
#define KESCPI_ATTR_SECONDARY_ERROR               IVI_ATTR_SECONDARY_ERROR                /* ViInt32   */
#define KESCPI_ATTR_ERROR_ELABORATION             IVI_ATTR_ERROR_ELABORATION              /* ViString  */

        /* Advanced Session Information */
#define KESCPI_ATTR_LOGICAL_NAME                  IVI_ATTR_LOGICAL_NAME                   /* ViString, read-only  */
#define KESCPI_ATTR_IO_RESOURCE_DESCRIPTOR        IVI_ATTR_RESOURCE_DESCRIPTOR            /* ViString, read-only  */
#define KESCPI_ATTR_IO_SESSION_TYPE               IVI_ATTR_IO_SESSION_TYPE                /* ViString, read-only  */
#define KESCPI_ATTR_IO_SESSION                    IVI_ATTR_IO_SESSION                     /* ViSession, read-only */
#define KESCPI_ATTR_ERROR_QUERY_COMMAND     (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 2L)
#define KESCPI_ATTR_RS232_TERMINATION_CHAR  (IVI_SPECIFIC_PUBLIC_ATTR_BASE + 7L)
    

    /*- Instrument-Specific Attributes -------------------------------------*/


    
/**************************************************************************** 
 *------------------------ Attribute Value Defines -------------------------* 
 ****************************************************************************/

        /* Instrument specific attribute value definitions */


/**************************************************************************** 
 *---------------- Instrument Driver Function Declarations -----------------* 
 ****************************************************************************/

    /*- Init and Close Functions -------------------------------------------*/
ViStatus _VI_FUNC  KESCPI_init (ViRsrc resourceName, ViBoolean IDQuery,
                                  ViBoolean resetDevice, ViSession *vi);
ViStatus _VI_FUNC  KESCPI_InitWithOptions (ViRsrc resourceName, ViBoolean IDQuery,
                                             ViBoolean resetDevice, ViConstString optionString, 
                                             ViSession *newVi);
ViStatus _VI_FUNC  KESCPI_close (ViSession vi);   

ViStatus _VI_FUNC KESCPI_GetError (ViSession instrumentHandle, ViStatus *code,
                                   ViInt32 bufferSize, ViChar description[]);

ViStatus _VI_FUNC KESCPI_ClearError (ViSession instrumentHandle);

    /*- Coercion Info Functions --------------------------------------------*/
ViStatus _VI_FUNC  KESCPI_GetNextCoercionRecord (ViSession vi,
                                                   ViInt32 bufferSize,
                                                   ViChar record[]);
ViStatus _VI_FUNC  KESCPI_GetNextInterchangeWarning (ViSession instrumentHandle,
                                                    ViInt32 bufferSize,
                                                    ViChar interchangeWarning[]);

ViStatus _VI_FUNC  KESCPI_ClearInterchangeWarnings (ViSession instrumentHandle);

ViStatus _VI_FUNC  KESCPI_ResetInterchangeCheck (ViSession instrumentHandle);
                                                   

    /*- Locking Functions --------------------------------------------------*/
ViStatus _VI_FUNC  KESCPI_LockSession (ViSession vi, ViBoolean *callerHasLock);   
ViStatus _VI_FUNC  KESCPI_UnlockSession (ViSession vi, ViBoolean *callerHasLock);

    
    /*- Error Functions ----------------------------------------------------*/
ViStatus _VI_FUNC KESCPI_InvalidateAllAttributes (ViSession instrumentHandle);

ViStatus _VI_FUNC  KESCPI_error_query (ViSession vi, ViInt32 *errorCode,
                                         ViChar errorMessage[]);
/*@-fixedformalarray@*/ 
// errorElaboration is assumed to be a buffer of 256 characters 
ViStatus _VI_FUNC  KESCPI_GetErrorInfo (ViSession vi, ViStatus *primaryError, 
                                          ViStatus *secondaryError, 
                                          ViChar errorElaboration[256]);
ViStatus _VI_FUNC  KESCPI_ClearErrorInfo (ViSession vi);
// errorMessage is assumed to be a buffer of 256 characters 
ViStatus _VI_FUNC  KESCPI_error_message (ViSession vi, ViStatus errorCode,
                                           ViChar errorMessage[256]);
/*@=fixedformalarray@*/
    
    /*- Utility Functions --------------------------------------------------*/
ViStatus _VI_FUNC  KESCPI_reset (ViSession vi);
ViStatus _VI_FUNC  KESCPI_ResetWithDefaults (ViSession instrumentHandle);

ViStatus _VI_FUNC  KESCPI_Disable (ViSession instrumentHandle);

ViStatus _VI_FUNC  KESCPI_revision_query(ViSession vi,
                                            ViChar instrumentDriverRevision[],
                                            ViChar firmwareRevision[]);

ViStatus _VI_FUNC  KESCPI_self_test (ViSession vi, ViInt16 *selfTestResult,
                                       ViChar selfTestMessage[]);
ViStatus _VI_FUNC  KESCPI_revision_query (ViSession vi, 
                                            ViChar instrumentDriverRevision[],
                                            ViChar firmwareRevision[]);
ViStatus _VI_FUNC  KESCPI_WriteInstrData (ViSession vi, ViConstString writeBuffer); 
ViStatus _VI_FUNC  KESCPI_ReadInstrData  (ViSession vi, ViInt32 numBytes, 
                                            ViChar rdBuf[], ViInt32 *bytesRead);

    /*- Set, Get, and Check Attribute Functions ----------------------------*/
ViStatus _VI_FUNC  KESCPI_GetAttributeViInt32 (ViSession vi, ViConstString channelName, ViAttr attribute, ViInt32 *value);
ViStatus _VI_FUNC  KESCPI_GetAttributeViReal64 (ViSession vi, ViConstString channelName, ViAttr attribute, ViReal64 *value);
ViStatus _VI_FUNC  KESCPI_GetAttributeViString (ViSession vi, ViConstString channelName, ViAttr attribute, ViInt32 bufSize, ViChar value[]); 
ViStatus _VI_FUNC  KESCPI_GetAttributeViSession (ViSession vi, ViConstString channelName, ViAttr attribute, ViSession *value);
ViStatus _VI_FUNC  KESCPI_GetAttributeViBoolean (ViSession vi, ViConstString channelName, ViAttr attribute, ViBoolean *value);

ViStatus _VI_FUNC  KESCPI_SetAttributeViInt32 (ViSession vi, ViConstString channelName, ViAttr attribute, ViInt32 value);
ViStatus _VI_FUNC  KESCPI_SetAttributeViReal64 (ViSession vi, ViConstString channelName, ViAttr attribute, ViReal64 value);
ViStatus _VI_FUNC  KESCPI_SetAttributeViString (ViSession vi, ViConstString channelName, ViAttr attribute, ViConstString value); 
ViStatus _VI_FUNC  KESCPI_SetAttributeViSession (ViSession vi, ViConstString channelName, ViAttr attribute, ViSession value);
ViStatus _VI_FUNC  KESCPI_SetAttributeViBoolean (ViSession vi, ViConstString channelName, ViAttr attribute, ViBoolean value);

ViStatus _VI_FUNC  KESCPI_CheckAttributeViInt32 (ViSession vi, ViConstString channelName, ViAttr attribute, ViInt32 value);
ViStatus _VI_FUNC  KESCPI_CheckAttributeViReal64 (ViSession vi, ViConstString channelName, ViAttr attribute, ViReal64 value);
ViStatus _VI_FUNC  KESCPI_CheckAttributeViString (ViSession vi, ViConstString channelName, ViAttr attribute, ViConstString value); 
ViStatus _VI_FUNC  KESCPI_CheckAttributeViSession (ViSession vi, ViConstString channelName, ViAttr attribute, ViSession value);
ViStatus _VI_FUNC  KESCPI_CheckAttributeViBoolean (ViSession vi, ViConstString channelName, ViAttr attribute, ViBoolean value);

    /*********************************************************
        Functions reserved for class driver use only.
        End-users should not call these functions.  
     *********************************************************/
ViStatus _VI_FUNC  KESCPI_IviInit (ViRsrc resourceName, ViBoolean IDQuery, 
                                     ViBoolean reset, ViSession vi);
ViStatus _VI_FUNC  KESCPI_IviClose (ViSession vi);   

/****************************************************************************
 *------------------------ Error And Completion Codes ----------------------*
 ****************************************************************************/

#define KESCPI_VAL_TERMCHAR_AUTO                                    0
#define KESCPI_VAL_TERMCHAR_CR                                      13
#define KESCPI_VAL_TERMCHAR_LFCR                                    14
#define KESCPI_VAL_TERMCHAR_LF                                      10
#define KESCPI_VAL_TERMCHAR_CRLF                                    11

/**************************************************************************** 
 *---------------------------- End Include File ----------------------------* 
 ****************************************************************************/

#if defined(__cplusplus) || defined(__cplusplus__)
}
#endif
#endif /* __KESCPI_HEADER */




