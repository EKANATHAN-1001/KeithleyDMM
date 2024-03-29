s��   	     )�   _ ��  8�   �   ����                                IviSpecAn                       IviSpecAn Class Driver                      _VI_FUNC                                                  � � ��ViInt16  �  � ��ViInt32  � � ��ViReal64     � ��ViRsrc     	� 	��ViBoolean     	� 	��ViSession     � ��ViStatus     �  ViChar[]     � ��ViChar     � ��ViString     	�  ViInt16[]     	�  ViInt32[]     
�  	ViReal64[]     � 	 
ViBoolean[]     � ��ViConstString     � ��ViAttr   �    This instrument driver contains programming support for the IviSpecAn class driver.  This driver has all the functions that IVI and VXIplug&play require.  

Note:  This driver requires the VISA and IVI libraries.       �    This class contains functions and sub-classes that configure the instrument.  The class includes high-level functions that configure multiple instrument settings as well as low-level functions that set, get, and check individual attribute values.
     �    The IviSpecAnMultitrace extension group defines extensions for analyzers capable of performing simple mathematical functions on one or more traces.    �    Most analyzers utilize markers.  The marker extension group defines extensions for analyzers capable of performing various functions on one or more traces that involve using markers.  Markers can be used for things as simple as getting amplitude value at a specific point to complex functions such as signal tracking.  The marker extension group defines additional attributes such Active Marker and Marker Amplitude.         This extension group specifies the source of the trigger signal that causes the analyzer to leave the Wait-For-Trigger state.    /    Many spectrum analyzers have outputs and inputs that allow external equipment to use the IF or mixer signal that the spectrum analyzer uses.  In this case, external equipment can be used to mix signals to convert them to measurable frequencies.  This allows the use of an analyzer to measure values that are outside of the normal frequency range of the equipment.  When using an external mixer, many of the settings of the analyzer have to be carefully converted to allow the user to know what is meant by the values read.  Specifically, the frequency, the harmonic number, mixer configuration, and conversion loss must be configured carefully to be able to use the external mixing successfully.

The frequency of the input signal can be expressed as a function of the Local Oscillator (LO) frequency and the selected harmonic of the 1st LO is as follows:

        fin = n * fLO +/- fIF
        where:  fin   frequency of input signal
            n     order of harmonic used for conversion
            fLO    frequency of 1st LO
            fIF      intermediate frequency

The Harmonic number defines the order n of the harmonic used for conversion. Both even and odd harmonics can be used.  The selected harmonic, together with the setting range of the 1st LO, determines the limits of the settable frequency range.  The following applies:

Lower frequency limit:  fmin. = n * fLO,min. - fIF
Upper frequency limit:  fmax. = n * fLO,max. + fIF
        Where:
            fLO,min   lower frequency limit of LO
            fLO,max  upper frequency limit of LO        


The following sections describe the mixer configuration and the conversion loss table configuration.

13.1.1  Mixer Configuration

The external mixers are configured either as two-port or three port mixers.  Single-diode mixers generally require a DC voltage which is applied via the LO line. This DC voltage is to be tuned to the minimum conversion loss versus frequency.  Some instruments can define a limit for the BIAS current.
The two-port mixer connects the 'LO OUT / IF IN' output of the analyzer to the LO/IF port of the external mixer.  The diplexer is contained in the analyzer and the IF signal can be tapped from the line which is used to feed the LO signal to the mixer.  The signal to be measured is fed to the RF input of the external mixer.

On the other hand, the three-port mixer connects the 'LO OUT / IF IN' output of the analyzer to the LO port of the external mixer.  The 'IF IN' input of the analyzer is connected to the IF port of the external mixer.  The signal to be measured is fed to the RF input of the external mixer.

13.1.2  Conversion Loss

The maximum settable reference level depends on the external mixer's conversion loss which is defined by average conversion loss or by using the conversion loss table.  For example, if an IF signal with a level of -20 dBm is applied to the LO OUT / IF IN or IF IN input of the spectrum analyzer, full screen level is attained. Consequently, the maximum settable reference level is -20 dBm at a set conversion loss of 0 dB.  If a conversion loss > 0 dB is entered, the maximum settable reference level increases in the same proportion. If the maximum possible reference level is set on the analyzer, this level is reduced if a smaller conversion loss is entered.  

In addition to the dynamic range of the spectrum analyzer the 1 dB compression point of the mixer has to be taken into account. The levels of the input signals lie well below this value to avoid generation of harmonics of these signals in the mixer. These are converted by the LO signals harmonics of higher order and appear in the displayed spectrum.

Some instruments allow to define conversion loss tables. The Conversion loss table allows the conversion loss of the mixer in the selected band to be taken into account as a function of frequency.  Correction values for frequencies between the individual reference values are obtained by interpolation (Linear interpolation). Outside the frequency range covered by the table the conversion loss is assumed to be the same as that for the reference value marking the table limit.

     T    This class contains sub-classes for the set, get, and check attribute functions.       �    This class contains functions that set an attribute to a new value.  There are typesafe functions for each attribute data type.     �    This class contains functions that obtain the current value of an attribute.  There are typesafe functions for each attribute data type.     �    This class contains functions that obtain the current value of an attribute.  There are typesafe functions for each attribute data type.    �    This class contains functions and sub-classes that initiate and retrieve measurements using the current configuration.  The class contains high-level read functions that initiate a measurement and fetch the data in one operation.  The class also contains low-level functions that initiate the measurement process, send a software trigger, and fetch measurement values in separate operations.
     O    This class contains functions that transfer data to and from the instrument.
    _    This class contains functions and sub-classes that control common instrument operations.  These functions include many of functions that VXIplug&play require, such as reset, self-test, revision query, error query, and error message.  This class also contains functions that access IVI error infomation, lock the session, and perform instrument I/O.
     R    This class contains functions that retrieve and clear the IVI error information.     J    This class contains functions that retrieve interchangeability warnings.     k    This class contains functions that lock and unlock IVI instrument driver sessions for multithread safefy.    G    This function performs the following initialization actions:

- Creates a new IVI instrument driver session.

- Opens a session to the specified device using the interface and address you specify for the Resource Name parameter.

- If the ID Query parameter is set to VI_TRUE, this function queries the instrument ID and checks that it is valid for this instrument driver.

- If the Reset parameter is set to VI_TRUE, this function resets the instrument to a known state.

- Sends initialization commands to set the instrument to the state necessary for the operation of the instrument driver.

- Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Note:  This function creates a new session each time you invoke it. Although you can open more than one IVI session for the same resource, it is best not to do so.  You can use the same session in multiple program threads.  You can use the IviSpecAn_LockSession and IviSpecAn_UnlockSession functions to protect sections of code that require exclusive access to the resource.

Content from the IVI specifications reproduced with permission from the IVI Foundation. 
 
The IVI Foundation and its member companies make no warranty of any kind with regard to this material, including, but not limited to, the implied warranties of merchantability and fitness for a particular purpose. The IVI Foundation and its member companies shall not be liable for errors contained herein or for incidental or consequential damages in connection with the furnishing, performance, or use of this material.    �    Pass the logical name that identifies the particular driver session to use.  The driver session, in turn, identifies a specific driver and device and specifies the initial settings for the session.  You configure the logical name, driver session, specific driver, and device with the IVI Configuration utility. 

If you want to use your program with a different physical instrument, you change the configuration of the logical name to use the driver session for the new physical instrument. You can change the initial settings for the session by changing the configuration of the driver session.

Default Value:  "SampleSpecAn"

Warning: 
All IVI names, such as logical names or virtual names, are case-sensitive.  If you use logical names, driver session names, or virtual names in your program, you must make sure that the name you use matches the name in the IVI Configuration Store file exactly, without any variations in the case of the characters in the name.        Specify whether you want the instrument driver to perform an ID Query.

Valid Range:
VI_TRUE  (1) - Perform ID Query (Default Value)
VI_FALSE (0) - Skip ID Query

When you set this parameter to VI_TRUE, the driver verifies that the instrument you initialize is a type that this driver supports.  

Circumstances can arise where it is undesirable to send an ID Query command string to the instrument.  When you set this parameter to VI_FALSE, the function initializes the instrument without performing an ID Query.     �    Specify whether you want the to reset the instrument during the initialization procedure.

Valid Range:
VI_TRUE  (1) - Reset Device (Default Value)
VI_FALSE (0) - Don't Reset

    �    Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Notes:

(1) This function creates a new session each time you invoke it.  This is useful if you have multiple physical instances of the same type of instrument.  

(2) Avoid creating multiple concurrent sessions to the same physical instrument.  Although you can create more than one IVI session for the same resource, it is best not to do so.  A better approach is to use the same IVI session in multiple execution threads.  You can use functions IviSpecAn_LockSession and IviSpecAn_UnlockSession to protect sections of code that require exclusive access to the resource.

    �    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call IviSpecAn_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0054  Bad channel name in Channel List.

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
    #� 9   �  �    Logical Name                      '� 9 �       ID Query                          )� 9� �       Reset Device                      *S �� �  �    Instrument Handle                 -#����  �    Status                          ���� 
 ���                                            "SampleSpecAn"   Yes VI_TRUE No VI_FALSE   Yes VI_TRUE No VI_FALSE    	           	           :(c) 2003-2017 National Instruments.  All Rights Reserved.   V    This function performs the following initialization actions:

- Creates a new IVI instrument driver and optionally sets the initial state of the following session attributes:

    IVISPECAN_ATTR_RANGE_CHECK         
    IVISPECAN_ATTR_QUERY_INSTRUMENT_STATUS  
    IVISPECAN_ATTR_CACHE               
    IVISPECAN_ATTR_SIMULATE            
    IVISPECAN_ATTR_RECORD_COERCIONS   

- Opens a session to the specified device using the interface and address you specify for the Resource Name parameter.

- If the ID Query parameter is set to VI_TRUE, this function queries the instrument ID and checks that it is valid for this instrument driver.

- If the Reset parameter is set to VI_TRUE, this function resets the instrument to a known state.

- Sends initialization commands to set the instrument to the state necessary for the operation of the instrument driver.

- Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Note:  This function creates a new session each time you invoke it. Although you can open more than one IVI session for the same resource, it is best not to do so.  You can use the same session in multiple program threads.  You can use the IviSpecAn_LockSession and IviSpecAn_UnlockSession functions to protect sections of code that require exclusive access to the resource.

Content from the IVI specifications reproduced with permission from the IVI Foundation. 
 
The IVI Foundation and its member companies make no warranty of any kind with regard to this material, including, but not limited to, the implied warranties of merchantability and fitness for a particular purpose. The IVI Foundation and its member companies shall not be liable for errors contained herein or for incidental or consequential damages in connection with the furnishing, performance, or use of this material.    �    Pass the logical name that identifies the particular driver session to use.  The driver session, in turn, identifies a specific driver and device and specifies the initial settings for the session.  You configure the logical name, driver session, specific driver, and device with the IVI Configuration utility. 

If you want to use your program with a different physical instrument, you change the configuration of the logical name to use the driver session for the new physical instrument. You can change the initial settings for the session by changing the configuration of the driver session.

Default Value:  "SampleSpecAn"

Warning: 
All IVI names, such as logical names or virtual names, are case-sensitive.  If you use logical names, driver session names, or virtual names in your program, you must make sure that the name you use matches the name in the IVI Configuration Store file exactly, without any variations in the case of the characters in the name.        Specify whether you want the instrument driver to perform an ID Query.

Valid Range:
VI_TRUE  (1) - Perform ID Query (Default Value)
VI_FALSE (0) - Skip ID Query

When you set this parameter to VI_TRUE, the driver verifies that the instrument you initialize is a type that this driver supports.  

Circumstances can arise where it is undesirable to send an ID Query command string to the instrument.  When you set this parameter to VI_FALSE, the function initializes the instrument without performing an ID Query.     �    Specify whether you want the to reset the instrument during the initialization procedure.

Valid Range:
VI_TRUE  (1) - Reset Device (Default Value)
VI_FALSE (0) - Don't Reset

    �    Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Notes:

(1) This function creates a new session each time you invoke it.  This is useful if you have multiple physical instances of the same type of instrument.  

(2) Avoid creating multiple concurrent sessions to the same physical instrument.  Although you can create more than one IVI session for the same resource, it is best not to do so.  A better approach is to use the same IVI session in multiple execution threads.  You can use functions IviSpecAn_LockSession and IviSpecAn_UnlockSession to protect sections of code that require exclusive access to the resource.

    	�    Reports the status of this operation.

To obtain a text description of the status code, or if the status code is not listed below, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

Status Codes:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

3FFC0101  ID Query not supported.
3FFC0102  Reset not supported.

3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.

BFFA0000  Cannot load IVI engine.
BFFA0001  Instrument error. Call IviSpecAn_error_query.
BFFA000C  Invalid attribute.
BFFA000D  Attribute is not writable.
BFFA000E  Attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA0054  Bad channel name in Channel List

BFFC0011  Instrument returned invalid response to ID Query.

BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF005F  A "no listeners" condition was detected.
BFFF0060  This interface is not the controller-in-charge.
BFFF0067  Operation is not supported on this session.
    x    You can use this control to set the initial value of certain attributes for the session.  The following table lists the attributes and the name you use in this parameter to identify the attribute.

Name              Attribute Defined Constant   
--------------------------------------------
RangeCheck        IVISPECAN_ATTR_RANGE_CHECK
QueryInstrStatus  IVISPECAN_ATTR_QUERY_INSTRUMENT_STATUS   
Cache             IVISPECAN_ATTR_CACHE   
Simulate          IVISPECAN_ATTR_SIMULATE  
RecordCoercions   IVISPECAN_ATTR_RECORD_COERCIONS

The format of this string is, "AttributeName=Value" where AttributeName is the name of the attribute and Value is the value to which the attribute will be set.  To set multiple attributes, separate their assignments with a comma.  

If you pass NULL or an empty string for this parameter, the session uses the default values for the attributes.   You can override the default values by assigning a value explicitly in a string you pass for this parameter.  You do not have to specify all of the attributes and may leave any of them out.  If you do not specify one of the attributes, its default value will be used.  

The default values for the attributes are shown below:

    Attribute Name     Default Value
    ----------------   -------------
    RangeCheck         VI_TRUE
    QueryInstrStatus   VI_FALSE
    Cache              VI_TRUE
    Simulate           VI_FALSE
    RecordCoercions    VI_FALSE
    

The following are the valid values for ViBoolean attributes:

    True:     1, True, or VI_TRUE
    False:    0, False, or VI_FALSE


Default Value:
       "Simulate=0,RangeCheck=1,QueryInstrStatus=0,Cache=1"
    ?I 9   �  �    Logical Name                      C 9 �       ID Query                          E# 9� �       Reset Device                      E� �� �  �    Instrument Handle                 H�#����  �    Status                            R@ �  � �    Option String                   ����  ���                                            "SampleSpecAn"   Yes VI_TRUE No VI_FALSE   Yes VI_TRUE No VI_FALSE    	           	           5"Simulate=0,RangeCheck=1,QueryInstrStatus=0,Cache=1"    :(c) 2003-2017 National Instruments.  All Rights Reserved.   �    This function configures the frequency range defining its start frequency and its stop frequency.  If the start frequency is equal to the stop frequency, then the spectrum analyzer operates in the time-domain mode.  Otherwise, the spectrum analyzer operates in frequency-domain mode.

Notes:

(1) In auto-coupled mode, resolution bandwidth (RBW), video bandwidth (VBW), and sweep time may be affected by this function.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    The start frequency of the frequency sweep. The driver uses this value to set the IVISPECAN_ATTR_FREQUENCY_START attribute. 

Units: Hertz

Default Value: 1.0 MHz     �    The stop frequency of the frequency sweep. The driver uses this value to set the IVISPECAN_ATTR_FREQUENCY_STOP attribute.

Units: Hertz

Default Value: 10.0 MHz    \�-   �  �    Instrument Handle                 ]p#����  �    Status                            d� 9  �  �    Start Frequency                   e� 9� �  �    Stop Frequency                         	           1.0e6    10.0e6   p    This function configures the frequency range of the spectrum analyzer using the center frequency and the frequency span.  If span corresponds to zero Hertz, then the spectrum analyzer operates in time-domain mode.  Otherwise, spectrum analyzer operates in frequency-domain mode.

This function modifies the IVISPECAN_ATTR_FREQUENCY_START and IVISPECAN_ATTR_FREQUENCY_STOP attributes as follows:

    Frequency Start = Center Frequency - Span/2
    Frequency Stop  = Center Frequency + Span/2

Note:

In auto-coupled mode, resolution bandwidth (RBW), video bandwidth (VBW), and sweep time may be affected by this function.
     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     T    The center frequency of the frequency sweep.

Units: Hertz

Default Value: 5.0 MHz     R    The frequency span of the frequency sweep.

Units: Hertz

Default Value: 1.0 MHz    i�-   �  �    Instrument Handle                 jo#����  �    Status                            q� 9  �  �    Center Frequency                  rI 9� �  �    Span                                   	           5.0e6    1.0e6   '    This function configures the frequency offset of the spectrum analyzer. This affects the setting of the spectrum analyzer's absolute frequencies, such as start, stop, center, and marker.  This function does not modify the settings for differences of frequencies, such as span and delta marker.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
        Specifies an offset value that is added to the frequency readout.  The offset is used to compensate for external frequency conversion. The driver uses this value to set the IVISPECAN_ATTR_FREQUENCY_OFFSET attribute.

Units: Hertz

Default Value: 1.0e12 Hz    t�-   �  �    Instrument Handle                 u�#����  �    Status                            } 9 � �  �    Frequency Offset                       	           1.0e12    Y    This function configures the coupling and sweeping attributes of the spectrum analyzer.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    G    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors


This instrument driver returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types         File
---------------------------------------------------------------
3FFA5000 to 3FFA7FFF    IviSpecAn Warnings           IviSpecAn.h
3FFA2000 to 3FFA3FFF    IviSpecAn Warnings        ivispecan.h
3FFA0000 to 3FFA1FFF    IVI Warnings              ivi.h
3FFF0000 to 3FFFFFFF    VISA Warnings             visa.h
3FFC0000 to 3FFCFFFF    VXIPnP Driver Warnings    vpptype.h

BFFA5000 to BFFA7FFF    IviSpecAn Errors             IviSpecAn.h
BFFA2000 to BFFA3FFF    IviSpecAn Errors          ivispecan.h
BFFA0000 to BFFA1FFF    IVI Errors                ivi.h
BFFF0000 to BFFFFFFF    VISA Errors               visa.h
BFFC0000 to BFFCFFFF    VXIPnP Driver Errors      vpptype.h
Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    !    Enables resolution bandwidth auto coupling. The driver uses this value to set the IVISPECAN_ATTR_RESOLUTION_BANDWIDTH_AUTO attribute.

Valid Values: 

VI_TRUE - Resolution bandwidth is automatically selected.
VI_FALSE - Resolution bandwidth is manually selected.

Default Value: VI_FALSE    9    Specifies the measurement resolution bandwidth. The driver uses this value to set the IVISPECAN_ATTR_RESOLUTION_BANDWIDTH attribute.

Units: Hertz

Default Value: 1.0 MHz

Note:

This value is ignored when the Resolution Bandwidth Auto parameter or the IVISPECAN_ATTR_RESOLUTION_BANDWIDTH_AUTO is set to VI_TRUE        Enables video bandwidth auto coupling. The driver uses this value to set the IVISPECAN_ATTR_VIDEO_BANDWIDTH_AUTO attribute.

Valid Values: 

VI_TRUE - Video bandwidth is automatically selected
VI_FALSE - Video bandwidth is manually selected

Default Value: VI_FALSE
    7    Specifies the video bandwidth of the post-detection filter. The driver uses this value to set the IVISPECAN_ATTR_VIDEO_BANDWIDTH attribute.

Units: Hertz

Default Value: 1.0 MHz

Note:

This value is ignored when the Video Bandwidth Auto parameter or the IVISPECAN_ATTR_VIDEO_BANDWIDTH_AUTO is set to VI_TRUE.     �    Enables sweep time auto. The driver uses this value to set the IVISPECAN_ATTR_SWEEP_TIME_AUTO attribute.

Valid Values: 
VI_TRUE - Sweep time is automatically selected
VI_FALSE - Sweep time is manually selected

Default Value: VI_FALSE
        The length of time to complete one sweep. The driver uses this value to set the IVISPECAN_ATTR_SWEEP_TIME attribute.

Units: seconds

Default Value: 1.0

Note:

This value is ignored when the Sweep Time Auto parameter or the IVISPECAN_ATTR_SWEEP_TIME_AUTO is set to VI_TRUE.    %-   �  �    Instrument Handle                 �#����  �    Status                            �0 9 P �       Resolution Bandwidth Auto         �Y �  �  �    Resolution Bandwidth              �� 9 �       Video Bandwidth Auto              �� � � �  �    Video Bandwidth                   �� 9� �       Sweep Time Auto                   �� �� �  �    Sweep Time                             	           True VI_TRUE False VI_FALSE    1.0e6    True VI_TRUE False VI_FALSE    1.0e6    True VI_TRUE False VI_FALSE    1.0    O    This function configures the acquisition attributes of the spectrum analyzer.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    Turns on/off continuous sweeping. The driver uses this value to set the IVISPECAN_ATTR_SWEEP_MODE_CONTINUOUS attribute.

Valid Values: 

VI_TRUE - Sweep mode is continuous.
VI_FALSE - Sweep mode is not continuous.

Default Value: VI_FALSE         The number of sweeps to take. The driver sets the IVISPECAN_ATTR_NUMBER_OF_SWEEPS attribute to this value. 

Default Value: 1    �    Enables the auto detector. The driver uses this value to set the IVISPECAN_ATTR_DETECTOR_TYPE_AUTO attribute.

Note: 
When the IVISPECAN_ATTR_DETECTOR_TYPE_AUTO attribute is set to True,the relationship between the IVISPECAN_ATTR_TRACE_TYPE attribute and the IVISPECAN_ATTR_DETECTOR_TYPE attributeis is not defined.

Valid Values: 

VI_TRUE - Detector type is automatically selected.
VI_FALSE - Detector type is manually selected.

Default Value: VI_FALSE    �    Pass the vertical scale of the measurement hardware that you want the spectrum analyzer to use (use of log amplifiers or linear amplifiers). The driver sets the 
IVISPECAN_ATTR_VERTICAL_SCALE attribute to this value.

Defined Values:

  IVISPECAN_VAL_VERTICAL_SCALE_LINEAR - Linear
  IVISPECAN_VAL_VERTICAL_SCALE_LOGARITHMIC - Logarithmic

Default Value:
IVISPECAN_VAL_VERTICAL_SCALE_LOGARITHMIC    �    Specifies the method of capturing and processing
signal data. The driver uses this value to set the
IVISPECAN_ATTR_DETECTOR_TYPE attribute.

Valid Values: 
- IVISPECAN_VAL_DETECTOR_TYPE_AUTO_PEAK - Allows the detector to capture better readings by using both positive and negative peak values when noise is present.

- IVISPECAN_VAL_DETECTOR_TYPE_AVERAGE - Average value of samples taken within the bin for a dedicated point on the display.

- IVISPECAN_VAL_DETECTOR_TYPE_MAX_PEAK - Obtains the maximum video signal between the last display point and the present display point.

- IVISPECAN_VAL_DETECTOR_TYPE_MIN_PEAK - Obtains the minimum video signal between the last display point and the present display point.

- IVISPECAN_VAL_DETECTOR_TYPE_SAMPLE - Pick one point within a bin.

- IVISPECAN_VAL_DETECTOR_TYPE_RMS - RMS value of samples taken within the bin for a dedicated point on the display.

Default Values: IVISPECAN_VAL_DETECTOR_TYPE_AVERAGE
    ��-   �  �    Instrument Handle                 �@#����  �    Status                            �� 9 P �       Sweep Mode Continuous             �� 9 � �  �    Number Of Sweeps                  �= 9� �       Detector Type Auto                � �  � �    Vertical Scale                    �� �� � �    Detector Type                          	           True VI_TRUE False VI_FALSE    1    True VI_TRUE False VI_FALSE              `Linear IVISPECAN_VAL_VERTICAL_SCALE_LINEAR Logarithmic IVISPECAN_VAL_VERTICAL_SCALE_LOGARITHMIC              Auto Peak IVISPECAN_VAL_DETECTOR_TYPE_AUTO_PEAK Average IVISPECAN_VAL_DETECTOR_TYPE_AVERAGE Maximum Peak IVISPECAN_VAL_DETECTOR_TYPE_MAX_PEAK Minimum Peak IVISPECAN_VAL_DETECTOR_TYPE_MIN_PEAK Sample IVISPECAN_VAL_DETECTOR_TYPE_SAMPLE RMS IVISPECAN_VAL_DETECTOR_TYPE_RMS    �    This function configures the vertical settings of the spectrum analyzer.  This corresponds to settings like amplitude units, input attenuation, input impedance, reference level, and reference level offset.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Pass the units you want the spectrum analyzer to use for input, output, and display.  The driver sets the IVISPECAN_ATTR_AMPLITUDE_UNITS to this value. 

Valid Values:
- IVISPECAN_VAL_AMPLITUDE_UNITS_DBM - Sets the
   spectrum analyzer to measure in decibels relative to 1 
   milliwatt.

- IVISPECAN_VAL_AMPLITUDE_UNITS_DBMV - Sets the
   spectrum analyzer to measure in decibels relative to 1 
   millivolt.

- IVISPECAN_VAL_AMPLITUDE_UNITS_DBUV - Sets the
   spectrum analyzer to measure in decibels relative to 1
   microvolt.

- IVISPECAN_VAL_AMPLITUDE_UNITS_VOLT - Sets the 
   spectrum analyzer to measure in volts.

- IVISPECAN_VAL_AMPLITUDE_UNITS_WATT - Sets the
   spectrum analyzer to measure in watts.
 
Default value: IVISPECAN_VAL_AMPLITUDE_UNITS_VOLT     �    Specifies the value of input impedance, in ohms, expected at the active input port. This is typically 50 ohms or 75 ohms.  The driver uses this value to set the IVISPECAN_ATTR_INPUT_IMPEDANCE attribute.

Units: Ohms

Default Value: 50.00 ohms    �    The calibrated vertical position of the captured data used as a reference for amplitude measurements. This is typically set to a value slightly higher than the highest expected signal level. The driver uses this value to set the IVISPECAN_ATTR_REFERENCE_LEVEL attribute. 

Units: The units are determined by setting the Amplitude Units parameter of this function or by setting IVISPECAN_ATTR_AMPLITUDE_UNITS attribute.

Default Value: 0.0    D    Specifies the offset value to the reference level. This adjusts the reference level for external signal gain or loss.  A positive value corresponds to a gain while a negative number corresponds to a loss. The driver uses this value to set the IVISPECAN_ATTR_REFERENCE_LEVEL_OFFSET attribute.

Units: dB

Default Value: 0.0    �    Specifies whether the spectrum analyzer is enabled for auto attenuation. When you set this value to VI_TRUE, the attenuation is automatically selected.  When you set this value to VI_FALSE, the attenuation is set to manual selection. The driver uses this value to set the IVISPECAN_ATTR_ATTENUATION_AUTO attribute.

Valid Values: 

VI_TRUE - Attenuation is automatically selected
VI_FALSE - Attenuation is manually selected

Default Value: VI_FALSE    <    Specifies the input attenuation (in positive dB). This means that if 10dB is selected, the result is a reduction in the signal level of 10 dB. The driver uses this value to set the IVISPECAN_ATTR_ATTENUATION attribute.

Units: dB

Default Value: 0.0

Note:

If auto attenuation is turned on, this value is ignored.    ��-   �  �    Instrument Handle                 �L#����  �    Status                            �� 9  � �    Amplitude Units                   �� 9 � �  �    Input Impedance                   �� 9� �  �    Reference Level                   �� �  �  �    Reference Level Offset            �� � �       Attenuation Auto                  �� �� �  �    Attenuation                            	                     �dBm IVISPECAN_VAL_AMPLITUDE_UNITS_DBM dBmV IVISPECAN_VAL_AMPLITUDE_UNITS_DBMV dBuV IVISPECAN_VAL_AMPLITUDE_UNITS_DBUV Volt IVISPECAN_VAL_AMPLITUDE_UNITS_VOLT Watt IVISPECAN_VAL_AMPLITUDE_UNITS_WATT    50.00    0.0    0.0    True VI_TRUE False VI_FALSE    0.0    8    This function configures the type of trace to acquire.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    S    Pass the name of the trace you are configuring.

This control accepts either a virtual repeated capability name or an instrument-specific trace name.

Users who want to achieve interchangeability should use a virtual trace name. The virtual trace name should be sufficiently specific to the test system such that it is unlikely to conflict with a physical trace name.

Virtual repeated capability names are aliases for instrument-specific trace strings.  The instrument-specific trace strings can differ from one instrument to another.  Virtual repeated capability names allow you to use and swap instruments without having to change the trace names in your source code. You specify virtual repeated capability names in MAX.  


Default Value: ""

Note:

You can specify the trace name as a string variable or as a literal enclosed in double quotes.    �    The type of trace to acquire. The driver sets the
IVISPECAN_ATTR_TRACE_TYPE attribute to this value.

Valid Values:
  IVISPECAN_VAL_TRACE_TYPE_CLEAR_WRITE
   - Sets the spectrum analyzer to clear previous sweep data
     off the display before performing a sweep. Subsequent
     sweeps may or may not clear the display first, but the
     data array at the end of the sweep is entirely new.

  IVISPECAN_VAL_TRACE_TYPE_MAX_HOLD
   - Sets the spectrum analyzer to keep the data from either
     the previous data or the new sweep data, which ever is 
     higher.

  IVISPECAN_VAL_TRACE_TYPE_MIN_HOLD
   - Sets the spectrum analyzer to keep the data from either
     the previous data or the new sweep data, which ever is
     lower.

  IVISPECAN_VAL_TRACE_TYPE_VIDEO_AVERAGE
   - Sets the spectrum analyzer to maintain a running average
     of the swept data.

  IVISPECAN_VAL_TRACE_TYPE_VIEW
   - Disables acquisition into this trace but displays the
     existing trace data.

  IVISPECAN_VAL_TRACE_TYPE_STORE
   - Disables acquisition and disables the display of the
     existing trace data.

Default Value:  IVISPECAN_VAL_TRACE_TYPE_CLEAR_WRITE    ��-   �  �    Instrument Handle                 ­#����  �    Status                            �+ 9  � ,    Trace Name                        ͆ 9� � �    Trace Type                             	           ""              Clear Write IVISPECAN_VAL_TRACE_TYPE_CLEAR_WRITE Maximum Hold IVISPECAN_VAL_TRACE_TYPE_MAX_HOLD Minimum Hold IVISPECAN_VAL_TRACE_TYPE_MIN_HOLD Video Average IVISPECAN_VAL_TRACE_TYPE_VIDEO_AVERAGE View IVISPECAN_VAL_TRACE_TYPE_VIEW Store IVISPECAN_VAL_TRACE_TYPE_STORE       This function returns the specific driver defined trace name that corresponds to the one-based index specified by the Index parameter.  If you pass in a value for the Index parameter that is less than one or greater than the value of the IVISPECAN_ATTR_TRACE_COUNT attribute, the function returns an empty string in the Name parameter and returns the Invalid Value error (0xBFFA1010).

Note:  
For an instrument with only one Trace, i.e. the IVISPECAN_ATTR_TRACE_COUNT attribute is one, the driver may return an empty string.
     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    	0    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the attribute, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     D    Specifies the index of the Trace Name to return.

Default Value: 0     C    Specify the buffer size for the Name parameter.

Default Value: 0     �    The trace name that corresponds to the Index.  

The Name buffer must contain at least as many elements as the value you specify with the Name Buffer Size parameter.
    �,-   �  �    Instrument Handle                 ��#����  �    Status or Required Size           �  9  �  �    Index                             �l 9 � �  �    Name Buffer Size                  � 9� �  �    Name                                   	           0    0    	            J    This function queries the read-only IVISPECAN_ATTR_TRACE_SIZE attribute.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     u    Returns the number of points in the trace array. This value corresponds to the IVISPECAN_ATTR_TRACE_SIZE attribute.    b    Pass the name of the trace which you request the trace size.  

This control accepts either a virtual repeated capability name or an instrument-specific trace name.

Users who want to achieve interchangeability should use a virtual trace name. The virtual trace name should be sufficiently specific to the test system such that it is unlikely to conflict with a physical trace name.

Virtual repeated capability names are aliases for instrument-specific trace strings.  The instrument-specific trace strings can differ from one instrument to another.  Virtual repeated capability names allow you to use and swap instruments without having to change the trace names in your source code. You specify virtual repeated capability names in MAX.  


Default Value: ""

Note:

You can specify the trace name as a string variable or as a literal enclosed in double quotes.    ��-   �  �    Instrument Handle                 �#����  �    Status                            �" 9� �  �    Trace Size                        � 9  �  �    Trace Name                             	           	            ""    �    This function adjusts the preselector to obtain the maximum readings for the current start and stop frequency. This function may affect the marker configuration.      �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �-   �  �    Instrument Handle                 �g#����  �    Status                                 	           �    This function adds trace 1 and trace 2, point by point, and stores the results in the destination trace.  Any data in the destination trace is deleted.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Pass the trace name into which the added traces are stored. Any data in the destination trace is overwritten.

This control accepts either a virtual repeated capability name or an instrument-specific trace name.

Users who want to achieve interchangeability should use a virtual trace name. The virtual trace name should be sufficiently specific to the test system such that it is unlikely to conflict with a physical trace name.

Virtual repeated capability names are aliases for instrument-specific trace strings.  The instrument-specific trace strings can differ from one instrument to another.  Virtual repeated capability names allow you to use and swap instruments without having to change the trace names in your source code. You specify virtual repeated capability names in MAX.  


Default Value: ""

Note:

You can specify the trace name as a string variable or as a literal enclosed in double quotes.    ]    Pass the trace name of one of the two traces to be added.

This control accepts either a virtual repeated capability name or an instrument-specific trace name.

Users who want to achieve interchangeability should use a virtual trace name. The virtual trace name should be sufficiently specific to the test system such that it is unlikely to conflict with a physical trace name.

Virtual repeated capability names are aliases for instrument-specific trace strings.  The instrument-specific trace strings can differ from one instrument to another.  Virtual repeated capability names allow you to use and swap instruments without having to change the trace names in your source code. You specify virtual repeated capability names in MAX.  


Default Value: ""

Note:

You can specify the trace name as a string variable or as a literal enclosed in double quotes.    X    Pass the trace name of the second trace to be added.

This control accepts either a virtual repeated capability name or an instrument-specific trace name.

Users who want to achieve interchangeability should use a virtual trace name. The virtual trace name should be sufficiently specific to the test system such that it is unlikely to conflict with a physical trace name.

Virtual repeated capability names are aliases for instrument-specific trace strings.  The instrument-specific trace strings can differ from one instrument to another.  Virtual repeated capability names allow you to use and swap instruments without having to change the trace names in your source code. You specify virtual repeated capability names in MAX.  


Default Value: ""

Note:

You can specify the trace name as a string variable or as a literal enclosed in double quotes.    � -   �  �    Instrument Handle                 ��#����  �    Status                           : 9 � �  �    Destination Trace                � �  �  �    Trace 1                          	8 �Y �  �    Trace 2                                	           ""    ""    ""    9    This function exchanges the data arrays of two traces.      �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    a    Pass the trace name of one of the two traces to be exchanged.

This control accepts either a virtual repeated capability name or an instrument-specific trace name.

Users who want to achieve interchangeability should use a virtual trace name. The virtual trace name should be sufficiently specific to the test system such that it is unlikely to conflict with a physical trace name.

Virtual repeated capability names are aliases for instrument-specific trace strings.  The instrument-specific trace strings can differ from one instrument to another.  Virtual repeated capability names allow you to use and swap instruments without having to change the trace names in your source code. You specify virtual repeated capability names in MAX.  


Default Value: ""

Note:

You can specify the trace name as a string variable or as a literal enclosed in double quotes.    h    Pass the trace name of the second of the two traces to be exchanged.

This control accepts either a virtual repeated capability name or an instrument-specific trace name.

Users who want to achieve interchangeability should use a virtual trace name. The virtual trace name should be sufficiently specific to the test system such that it is unlikely to conflict with a physical trace name.

Virtual repeated capability names are aliases for instrument-specific trace strings.  The instrument-specific trace strings can differ from one instrument to another.  Virtual repeated capability names allow you to use and swap instruments without having to change the trace names in your source code. You specify virtual repeated capability names in MAX.  


Default Value: ""

Note:

You can specify the trace name as a string variable or as a literal enclosed in double quotes.   -   �  �    Instrument Handle                �#����  �    Status                           > 9  �  �    Trace 1                          � 9Y �  �    Trace 2                                	           ""    ""    s    This function copies one trace array to another trace array.  Any data in the destination trace is over written.      �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    W    Pass the trace name into which the array is stored.

This control accepts either a virtual repeated capability name or an instrument-specific trace name.

Users who want to achieve interchangeability should use a virtual trace name. The virtual trace name should be sufficiently specific to the test system such that it is unlikely to conflict with a physical trace name.

Virtual repeated capability names are aliases for instrument-specific trace strings.  The instrument-specific trace strings can differ from one instrument to another.  Virtual repeated capability names allow you to use and swap instruments without having to change the trace names in your source code. You specify virtual repeated capability names in MAX.  


Default Value: ""

Note:

You can specify the trace name as a string variable or as a literal enclosed in double quotes.    R    Pass the trace name of the source trace array.

This control accepts either a virtual repeated capability name or an instrument-specific trace name.

Users who want to achieve interchangeability should use a virtual trace name. The virtual trace name should be sufficiently specific to the test system such that it is unlikely to conflict with a physical trace name.

Virtual repeated capability names are aliases for instrument-specific trace strings.  The instrument-specific trace strings can differ from one instrument to another.  Virtual repeated capability names allow you to use and swap instruments without having to change the trace names in your source code. You specify virtual repeated capability names in MAX.  


Default Value: ""

Note:

You can specify the trace name as a string variable or as a literal enclosed in double quotes.   �-   �  �    Instrument Handle                >#����  �    Status                           &� 9  �  �    Destination Trace                * 9Y �  �    Source Trace                           	           ""    ""    �    This function subtracts the array elements of Trace 2 from Trace 1 and stores the result in the Destination Trace.

Destination Trace = Trace 1 - Trace 2     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Pass the trace name into which the subtracted traces are stored.

Destination Trace = Trace1 - Trace2.

Any data in the destination trace is overwritten.

This control accepts either a virtual repeated capability name or an instrument-specific trace name.

Users who want to achieve interchangeability should use a virtual trace name. The virtual trace name should be sufficiently specific to the test system such that it is unlikely to conflict with a physical trace name.

Virtual repeated capability names are aliases for instrument-specific trace strings.  The instrument-specific trace strings can differ from one instrument to another.  Virtual repeated capability names allow you to use and swap instruments without having to change the trace names in your source code. You specify virtual repeated capability names in MAX.  


Default Value: ""

Note:

You can specify the trace name as a string variable or as a literal enclosed in double quotes.    b    Pass the trace name of one of the two traces to be subtracted.

This control accepts either a virtual repeated capability name or an instrument-specific trace name.

Users who want to achieve interchangeability should use a virtual trace name. The virtual trace name should be sufficiently specific to the test system such that it is unlikely to conflict with a physical trace name.

Virtual repeated capability names are aliases for instrument-specific trace strings.  The instrument-specific trace strings can differ from one instrument to another.  Virtual repeated capability names allow you to use and swap instruments without having to change the trace names in your source code. You specify virtual repeated capability names in MAX.  


Default Value: ""

Note:

You can specify the trace name as a string variable or as a literal enclosed in double quotes.    ]    Pass the trace name of the second trace to be subtracted.

This control accepts either a virtual repeated capability name or an instrument-specific trace name.

Users who want to achieve interchangeability should use a virtual trace name. The virtual trace name should be sufficiently specific to the test system such that it is unlikely to conflict with a physical trace name.

Virtual repeated capability names are aliases for instrument-specific trace strings.  The instrument-specific trace strings can differ from one instrument to another.  Virtual repeated capability names allow you to use and swap instruments without having to change the trace names in your source code. You specify virtual repeated capability names in MAX.  


Default Value: ""

Note:

You can specify the trace name as a string variable or as a literal enclosed in double quotes.   /-   �  �    Instrument Handle                /�#����  �    Status                           7B 9 � �  �    Destination Trace                ; �  �  �    Trace 1                          >q �Y �  �    Trace 2                                	           ""    ""    ""    A    This function enables the active marker on the specified trace.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    Specifies whether the specified marker is enabled. The driver uses this value to set the IVISPECAN_ATTR_MARKER_ENABLED attribute.

Valid Values: VI_TRUE; VI_FALSE

Default Value: VI_FALSE    p    Pass the name of the trace you for which you are enabling the active marker.

This control accepts either a virtual repeated capability name or an instrument-specific trace name.

Users who want to achieve interchangeability should use a virtual trace name. The virtual trace name should be sufficiently specific to the test system such that it is unlikely to conflict with a physical trace name.

Virtual repeated capability names are aliases for instrument-specific trace strings.  The instrument-specific trace strings can differ from one instrument to another.  Virtual repeated capability names allow you to use and swap instruments without having to change the trace names in your source code. You specify virtual repeated capability names in MAX.  


Default Value: ""

Note:

You can specify the trace name as a string variable or as a literal enclosed in double quotes.   CJ-   �  �    Instrument Handle                D#����  �    Status                           K� 9 P �       Marker Enabled                   LI 9 � �  �    Marker Trace Name                      	           True VI_TRUE False VI_FALSE    ""    k    This function sets the marker frequency counter resolution and turns the marker frequency counter on/off.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    Specifies whether the frequency counter is enabled. The driver uses this value to set the IVISPECAN_ATTR_MARKER_FREQUENCY_COUNTER_ENABLED attribute.

Valid Values: VI_TRUE; VI_FALSE

Default Value: VI_FALSE    b    Specifies the frequency counter resolution. The measurement gate time is the reciprocal of the specified resolution. The driver uses this value to set the IVISPECAN_ATTR_MARKER_FREQUENCY_COUNTER_RESOLUTION attribute.


Units: Hertz

Default Value: 1.0 KHz

Note:

This value is ignored when the IVISPECAN_ATTR_MARKER_FREQUENCY_COUNTER_ENABLED is False.   Q=-   �  �    Instrument Handle                Q�#����  �    Status                           Yw 9 P �       Marker Frequency Counter         ZO 9� �  �    Frequency Counter Resolution           	           True VI_TRUE False VI_FALSE    1.0e3        This function configures the marker peak excursion and marker threshold values.  The marker peak excursion specifies the minimum amplitude variation that can be recognized as a peak or minimum by the marker.  The marker threshold specifies a lower bound for ALL marker search functions.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    Specifies the lower limit of the search domain vertical range for the IviSpecAn_MarkerSearch function.  The driver uses this value to set the IVISPECAN_ATTR_MARKER_THRESHOLD attribute.

Units: Amplitude Units

Default Value: 0.0     �    Specifies the minimum amplitude variation of the signal in dB that the IviSpecAn_MarkerSearch function identifies as a peak.  The driver uses this value to set the IVISPECAN_ATTR_PEAK_EXCURSION attribute.

Units: dB

Default Value: 10.0 dB   ]�-   �  �    Instrument Handle                ^�#����  �    Status                           f' >J �  �    Marker Threshold                 g > M �  �    Peak Excursion                         	           0.0    10.0   _    This function enables signal-tracking. When signal tracking is turned on, the spectrum analyzer centers the signal on which the active marker resides after each sweep.  There are two prevalent methods of signal tracking in the industry. 

1.  A search for the largest signal on screen is made, and the spectrum analyzer center frequency is tuned to this signal.

2.  The marker is placed on a signal (anywhere on screen) and when marker track is enabled, the frequency of the peak of the selected signal is used for tuning the spectrum analyzer.  This does not need to be the largest signal on screen, and this method tracks the specified signal in the presence of a larger signal.

This function implements the first method of signal tracking.  This INVALIDATES the IVISPECAN_ATTR_FREQUENCY_START and IVISPECAN_ATTR_FREQUENCY_STOP attribute values. 

Note: Signal track can only be enabled on one marker at a time. The driver shall check all other markers to see if this function is already enabled on any marker other than the active and turn this off on the other marker before enabling this on the active marker.
     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    Specifies whether signal tracking is enabled. The driver uses this value to set the IVISPECAN_ATTR_SIGNAL_TRACK_ENABLED attribute.

Valid Values: VI_TRUE; VI_FALSE

Default Value: VI_FALSE   mh-   �  �    Instrument Handle                n$#����  �    Status                           u� 9 �       Signal Track Enabled                   	           True VI_TRUE False VI_FALSE    (    This function disables all of markers.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
   wf-   �  �    Instrument Handle                x"#����  �    Status                                 	           �    This function specifies the type of marker search and performs the search. 

This function returns the Marker Not Enabled error (0x0xBFFA2001) if the IVISPECAN_ATTR_MARKER_ENABLED attribute is set to VI_FALSE.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Specifies the type of marker search to perform.

Valid Values:
  IVISPECAN_VAL_MARKER_SEARCH_HIGHEST
          - Sets marker search for the highest amplitude.

  IVISPECAN_VAL_MARKER_SEARCH_NEXT_PEAK
          - Sets marker search for the next highest peak.

  IVISPECAN_VAL_MARKER_SEARCH_NEXT_PEAK_LEFT
          - Sets marker search for the next peak left of the peak amplitude.

  IVISPECAN_VAL_MARKER_SEARCH_NEXT_PEAK_RIGHT
          - Sets marker search for the next peak right of the peak amplitude.

  IVISPECAN_VAL_MARKER_SEARCH_MINIMUM
          - Sets marker search for the minimum amplitude.
  
Default Value:  IVISPECAN_VAL_MARKER_SEARCH_MINIMUM   ��-   �  �    Instrument Handle                ��#����  �    Status                           �/ 9 � � �    Marker Search                          	                     �Highest IVISPECAN_VAL_MARKER_SEARCH_HIGHEST Next Peak IVISPECAN_VAL_MARKER_SEARCH_NEXT_PEAK Next Peak Left IVISPECAN_VAL_MARKER_SEARCH_NEXT_PEAK_LEFT Next Peak Right IVISPECAN_VAL_MARKER_SEARCH_NEXT_PEAK_RIGHT Minimum IVISPECAN_VAL_MARKER_SEARCH_MINIMUM    M    This function moves the active marker to the specified horizontal position.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    Specifies the frequency or time position of the active marker.  The driver uses this value to set the IVISPECAN_ATTR_MARKER_POSITION attribute.

Units: Hertz or Seconds

Default Value: 0.0   ��-   �  �    Instrument Handle                ��#����  �    Status                           � 9 � �  �    Marker Position                        	           0.0    d    This function returns the horizontal position and the marker amplitude level of the active marker.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     i    Returns the horizontal position of the active marker from the IVISPECAN_ATTR_MARKER_POSITION attribute.    B    Returns the amplitude value of the active marker from the IVISPECAN_ATTR_MARKER_AMPLITUDE attribute.

Units: The units are specified by the IVISPECAN_ATTR_AMPLITUDE_UNITS attribute, except when the IVISPECAN_ATTR_MARKER_TYPE attribute is set to Delta.  When IVISPECAN_ATTR_MARKER_TYPE is set to Delta the units are dB.     ��-   �  �    Instrument Handle                ��#����  �    Status                           �7 9  �  �    Marker Position                  �� 9� �  �    Marker Amplitude                       	           	           	           �    This function selects one of the available markers, and makes it the active marker. The active marker must be enabled using the IviSpecAn_ConfigureMarkerEnabled function before it can be used for most marker operations.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Pass the name of the marker to be selected. The driver uses this value to set the IVISPECAN_ATTR_ACTIVE_MARKER attribute.

This control accepts either a virtual repeated capability name or an instrument-specific marker name.

Users who want to achieve interchangeability should use a virtual trace name. The virtual trace name should be sufficiently specific to the test system such that it is unlikely to conflict with a physical trace name.

Virtual repeated capability names are aliases for instrument-specific marker strings.  The instrument-specific marker strings can differ from one instrument to another.  Virtual repeated capability names allow you to use and swap instruments without having to change the trace names in your source code. You specify virtual repeated capability names in MAX.  


Default Value: ""

Note:

You can specify the marker name as a string variable or as a literal enclosed in double quotes.   ��-   �  �    Instrument Handle                ��#����  �    Status                           � 9 � �  �    Active Marker                          	           ""       This function uses the IVISPECAN_ATTR_MARKER_POSITION or IVISPECAN_ATTR_MARKER_AMPLITUDE attribute to configure the spectrum analyzer according to value of the InstrumentSetting parameter.  For example, setting the Instrument Setting parameter to Frequency Center sets the center frequency to the value of the IVISPECAN_ATTR_MARKER_POSITION attribute.
  
This function may set the IVISPECAN_ATTR_FREQUENCY_START, IVISPECAN_ATTR_FREQUENCY_STOP, or IVISPECAN_ATTR_REFERENCE_LEVEL attributes.

If the IVISPECAN_ATTR_MARKER_ENABLED attribute is set to VI_FALSE, this function returns the Marker Not Enabled error (0xBFFA2001).  If the IVISPECAN_ATTR_MARKER_TYPE attribute is not Delta and the InstrumentSetting parameter is Frequency Span, the function returns the Not Delta Marker error (0xBFFA2002).     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Specifies the instrument setting to be set from the marker position.

Defined Values:
Frequency Center - IVISPECAN_VAL_INSTRUMENT_SETTING_FREQUENCY_CENTER

Frequency Span - IVISPECAN_VAL_INSTRUMENT_SETTING_FREQUENCY_SPAN

Frequency Start - IVISPECAN_VAL_INSTRUMENT_SETTING_FREQUENCY_START

Frequency Stop - IVISPECAN_VAL_INSTRUMENT_SETTING_FREQUENCY_STOP

Reference Level - IVISPECAN_VAL_INSTRUMENT_SETTING_REFERENCE_LEVEL

Default Value:
Frequency Center - IVISPECAN_VAL_INSTRUMENT_SETTING_FREQUENCY_CENTER
   ��-   �  �    Instrument Handle                �N#����  �    Status                           �� 9 � � �    Instrument Setting                     	                     CFrequency Center IVISPECAN_VAL_INSTRUMENT_SETTING_FREQUENCY_CENTER Frequency Span IVISPECAN_VAL_INSTRUMENT_SETTING_FREQUENCY_SPAN Frequency Start IVISPECAN_VAL_INSTRUMENT_SETTING_FREQUENCY_START Frequency Stop IVISPECAN_VAL_INSTRUMENT_SETTING_FREQUENCY_STOP Reference Level IVISPECAN_VAL_INSTRUMENT_SETTING_REFERENCE_LEVEL    K    This function queries the read-only IVISPECAN_ATTR_MARKER_TYPE attribute.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    O    Returns the marker type. This value corresponds to the IVISPECAN_ATTR_MARKER_TYPE attribute.

Valid Values:

IVISPECAN_VAL_MARKER_TYPE_NORMAL (1) - Regular marker 
   used to make absolute measurements.

IVISPECAN_VAL_MARKER_TYPE_DELTA (2) - Marker used in 
   conjunction with the reference marker to make relative
   measurements.
   �&-   �  �    Instrument Handle                ��#����  �    Status                           �` 9 � �  �    Marker Type                            	           	           �    This function specifies whether the active marker is a delta marker. 

When this function is called with DeltaMarker true, the current active marker is changed to a delta marker and the associated reference marker is moved to the current position of the active marker. The current position becomes the reference point for marker values. The marker readout indicates the relative frequency (or time) separation and amplitude difference between the reference and active marker.

When this Delta Marker is set to false, the current marker is changed to a normal marker. The reference marker is determined by calling the IviSpecAn_QueryReferenceMarker function.

Notes:

(1) If the current active marker is not enabled then this function enables the active marker.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
        Specifies whether marker Delta is True or False. Depending on this value, the driver will set the marker to IVISPECAN_VAL_MARKER_TYPE_NORMAL or IVISPECAN_VAL_MARKER_TYPE_DELTA (see the function help for more details).

Valid Values: VI_TRUE; VI_FALSE

Default Value: VI_FALSE   �t-   �  �    Instrument Handle                �0#����  �    Status                           ծ 9 �       Delta Marker                           	           True VI_TRUE False VI_FALSE    �    This function returns the amplitude and position of the reference marker.

If the IVISPECAN_ATTR_MARKER_TYPE attribute is not Delta, this function returns the Not Delta Marker error (0xBFFA2002).     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    Returns the reference marker when the active marker is a delta marker.  This returns the value of the IVISPECAN_ATTR_REFERENCE_MARKER_AMPLITUDE attribute.

Default Value: None     �    Returns the reference marker position when the active marker is a delta marker. This returns the value of the IVISPECAN_ATTR_REFERENCE_MARKER_POSITION attribute.

Default Value: None   �f-   �  �    Instrument Handle                �"#����  �    Status                           � 9  �  �    Reference Marker Amplitude       �Y 9� �  �    Reference Marker Position              	           	           	              This function returns the specific driver defined trace name that corresponds to the one-based index specified by the Index parameter.  If you pass in a value for the Index parameter that is less than one or greater than the value of the IVISPECAN_ATTR_MARKER_COUNT attribute, the function returns an empty string in the Name parameter and returns the Invalid Value error.

Note:  For an instrument with only one Marker, i.e. the IVISPECAN_ATTR_MARKER_COUNT attribute is one, the driver may return an empty string.
     E    Specifies the index of the Marker Name to return.

Default Value: 0     C    Specify the buffer size for the Name parameter.

Default Value: 0     �    The marker name that corresponds to the Index.

The Name buffer must contain at least as many elements as the value you specify with the Name Buffer Size parameter.
     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
   �" 9  �  �    Index                            �o 9 � �  �    Name Buffer Size                 � 9� �  �    Name                             �i-   �  �    Instrument Handle                �%#����  �    Status                             0    0    	                	           u    This function specifies the trigger source that causes the spectrum analyzer to leave the Wait-for-Trigger state.       �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    Y    Specifies the source of the trigger signal that causes the analyzer to leave the Wait-For-Trigger state. The driver uses this value to set the IVISPECAN_ATTR_TRIGGER_SOURCE attribute.

Valid Values:
- IVISPECAN_VAL_TRIGGER_SOURCE_EXTERNAL - The
   spectrum analyzer waits until it receives a trigger on the
   external trigger connector.

- IVISPECAN_VAL_TRIGGER_SOURCE_IMMEDIATE - The
   spectrum analyzer does not wait for a trigger of any kind.

- IVISPECAN_VAL_TRIGGER_SOURCE_SOFTWARE - The spectrum analyzer  
   waits until the Send Software Trigger function executes.  

- IVISPECAN_VAL_TRIGGER_SOURCE_AC_LINE - The
   spectrum analyzer waits until it receives a trigger on the
   AC line.

- IVISPECAN_VAL_TRIGGER_SOURCE_VIDEO - The spectrum
   analyzer waits until it receives a video level.
 
Default value: IVISPECAN_VAL_TRIGGER_SOURCE_EXTERNAL   �O-   �  �    Instrument Handle                �#����  �    Status                           �� 9 � � �    Trigger Source                         	                      �External IVISPECAN_VAL_TRIGGER_SOURCE_EXTERNAL Immediate IVISPECAN_VAL_TRIGGER_SOURCE_IMMEDIATE Software IVISPECAN_VAL_TRIGGER_SOURCE_SOFTWARE AC Line IVISPECAN_VAL_TRIGGER_SOURCE_AC_LINE Video IVISPECAN_VAL_TRIGGER_SOURCE_VIDEO    �    This function specifies the external level and polarity for triggering.  This is applicable when the trigger source is set to external.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    Specifies the level of the external trigger signal to trigger an acquisition.  The driver uses this value to set the IVISPECAN_ATTR_EXTERNAL_TRIGGER_LEVEL attribute.

Units: Volts

Default Value: 1.0 V    �    Specifies the slope of the external trigger signal to trigger an acquisition.  The driver uses this value to set the IVISPECAN_ATTR_EXTERNAL_TRIGGER_SLOPE attribute.

Valid Values:
- IVISPECAN_VAL_EXTERNAL_TRIGGER_SLOPE_POSITIVE - 
   Sets positive slope.

- IVISPECAN_VAL_EXTERNAL_TRIGGER_SLOPE_NEGATIVE - 
   Sets positive slope.

Default value: IVISPECAN_VAL_EXTERNAL_TRIGGER_SLOPE_POSITIVE   �-   �  �    Instrument Handle                ��#����  �    Status                           X 9  �  �    External Trigger Level           + 9� � �    External Trigger Polarity              	           1.0               nPositive IVISPECAN_VAL_EXTERNAL_TRIGGER_SLOPE_POSITIVE Negative IVISPECAN_VAL_EXTERNAL_TRIGGER_SLOPE_NEGATIVE    �    This function specifies the video level and polarity for video triggering.  This is applicable when the trigger source is set to video.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    Specifies the level of the video signal to trigger an acquisition.   The driver uses this value to set the IVISPECAN_ATTR_VIDEO_TRIGGER_LEVEL attribute.

Units: The units are specified by the IVISPECAN_ATTR_AMPLITUDE_UNITS attribute.

Default Value: 0.0    s    Specifies the slope of the video signal to trigger an acquisition. The driver uses this value to set the IVISPECAN_ATTR_VIDEO_TRIGGER_SLOPE attribute.

Valid Values:
- IVISPECAN_VAL_VIDEO_TRIGGER_SLOPE_POSITIVE - 
   Sets positive slope.

- IVISPECAN_VAL_VIDEO_TRIGGER_SLOPE_NEGATIVE - 
   Sets positive slope.

Default value: IVISPECAN_VAL_VIDEO_TRIGGER_SLOPE_POSITIVE   
�-   �  �    Instrument Handle                s#����  �    Status                           � 9  �  �    Video Trigger Level              � 9� � �    Video Trigger Slope                    	           0.0               hPositive IVISPECAN_VAL_VIDEO_TRIGGER_SLOPE_POSITIVE Negative IVISPECAN_VAL_VIDEO_TRIGGER_SLOPE_NEGATIVE    (    This function enables external mixing.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    Specifies whether external mixing is enabled. The driver uses this value to set the IVISPECAN_ATTR_EXTERNAL_MIXER_ENABLED attribute.

Valid Values: VI_TRUE; VI_FALSE

Default Value: VI_FALSE   -   �  �    Instrument Handle                �#����  �    Status                           ? 9 �       External Mixing Enabled                	           True VI_TRUE False VI_FALSE    =    This function specifies the number of external mixer ports.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    Specify the number of mixer ports. The driver sets the IVISPECAN_ATTR_EXTERNAL_MIXER_NUMBER_OF_PORTS attribute to this value.

Default Value: 2 
   !-   �  �    Instrument Handle                !�#����  �    Status                           )T 9 � �  �    Number of Ports                        	           2    I    This function specifies the mixer harmonic and average conversion loss.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    Specifies the order n of the harmonic used for conversion. The driver sets the IVISPECAN_ATTR_EXTERNAL_MIXER_HARMONIC attribute to this value.

Default Value: 0     �    Specifies the average conversion loss. The driver sets the IVISPECAN_ATTR_EXTERNAL_MIXER_AVERAGE_CONVERSION_LOSS to this value.

Default Value: 0.0   *�-   �  �    Instrument Handle                +�#����  �    Status                           3. 9  �  �    Harmonic                         3� 9� �  �    Average Conversion Loss                	           0    0.0    1    This function enables the external mixing bias.     �    Specifies whether external mixer bias is enabled. The driver uses this value to set the IVISPECAN_ATTR_EXTERNAL_MIXER_BIAS_ENABLED attribute.

Valid Values: VI_TRUE; VI_FALSE

Default Value: VI_FALSE     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
   5� 9 �       Bias Enabled                     6o-   �  �    Instrument Handle                7+#����  �    Status                             True VI_TRUE False VI_FALSE        	           U    This function configures the external mixer bias and the external mixer bias limit.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    Specifies the bias current. The driver uses this value to set the IVISPECAN_ATTR_EXTERNAL_MIXER_BIAS attribute.

Units: Amps

Default Value: 0.0     �    Specifies the bias current limit. The driver uses this value to set the IVISPECAN_ATTR_EXTERNAL_MIXER_BIAS_LIMIT attribute.

Units: Amps

Default Value: 0.0   ?�-   �  �    Instrument Handle                @�#����  �    Status                           H 9  �  �    Bias                             H� 9� �  �    Bias Limit                             	           0.0    0.0    2    This function enables the conversion loss table.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    Specify whether the conversion loss table is enabled. The driver uses this value to set the IVISPECAN_ATTR_EXTERNAL_MIXER_CONVERSION_LOSS_TABLE_ENABLED attribute.

Valid Values: VI_TRUE; VI_FALSE

Default Value: VI_FALSE   Jz-   �  �    Instrument Handle                K6#����  �    Status                           R� 9 �       Conversion Loss Table Enabled          	           True VI_TRUE False VI_FALSE    p    This function configures the conversion loss table by specifying a series of frequency and a power loss pairs.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     S    Specify the number of frequency and conversion loss pairs.

Default Value: None

     �    An array of frequency values for the frequency and power loss pairs.  The array must have at least as many elements as the value you specify in the Count parameter.

Default Value: None     �    An array of conversion loss values for the frequency and power loss pairs. The array must have at least as many elements as the value you specify in the Count parameter.

Default Value: None   T�-   �  �    Instrument Handle                U�#����  �    Status                           ] 9  �  �    Count                            ]u 9 � �  �    Frequency                        ^8 9� �  �    Conversion Loss                        	                      �    This function sets the value of a ViInt32 attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
        Pass the value to which you want to set the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    C    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Attributes 
  whose value cannot be set are dim.  Help text is shown for 
  each attribute.  Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box.  If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViInt32 type.   
  If you choose to see all IVI attributes, the data types appear
  to the right of the attribute names in the list box. 
  Attributes with data types other than ViInt32 are dim.  If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
    �    If the attribute applies to a repeated capability such as a trace or channel, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not apply to a repeated capability, then pass VI_NULL or an empty string.

This control accepts either a virtual repeated capability name or an instrument-specific name. For valid repeated capability names, refer to your configuration settings in MAX.

Default Value:  ""
   d�-   �  �    Instrument Handle                e�#����  �    Status                           m2 � � �  �    Attribute Value                 ���� � ���                                          oM = � � �    Attribute ID                     t� =  �  �    Repeated Capability Name               	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViReal64 attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
        Pass the value to which you want to set the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    B    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Attributes 
  whose value cannot be set are dim.  Help text is shown for 
  each attribute.  Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box.  If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViReal64
  type.  If you choose to see all IVI attributes, the data types
  appear to the right of the attribute names in the list box.
  Attributes with data types other than ViReal64 are dim.  If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
    �    If the attribute applies to a repeated capability such as a trace or channel, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not apply to a repeated capability, then pass VI_NULL or an empty string.

This control accepts either a virtual repeated capability name or an instrument-specific name. For valid repeated capability names, refer to your configuration settings in MAX.

Default Value:  ""
   |�-   �  �    Instrument Handle                }�#����  �    Status                           �( � � �  �    Attribute Value                 ���� � ���                                          �C = � � �    Attribute ID                     �� =  �  �    Repeated Capability Name               	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViString attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
        Pass the value to which you want to set the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    A    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Attributes 
  whose value cannot be set are dim.  Help text is shown for 
  each attribute.  Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box.  If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViString
  type.  If you choose to see all IVI attributes, the data types
  appear to the right of the attribute names in the list box.
  Attributes with data types other than ViString are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
    �    If the attribute applies to a repeated capability such as a trace or channel, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not apply to a repeated capability, then pass VI_NULL or an empty string.

This control accepts either a virtual repeated capability name or an instrument-specific name. For valid repeated capability names, refer to your configuration settings in MAX.

Default Value:  ""
   ��-   �  �    Instrument Handle                ��#����  �    Status                           � � � �  �    Attribute Value                 ���� � ���                                          �8 = � � �    Attribute ID                     �� =  �  �    Repeated Capability Name               	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViBoolean attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
        Pass the value to which you want to set the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    C    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Attributes 
  whose value cannot be set are dim.  Help text is shown for 
  each attribute.  Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box.  If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViBoolean
  type.  If you choose to see all IVI attributes, the data types
  appear to the right of the attribute names in the list box.
  Attributes with data types other than ViBoolean are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
    �    If the attribute applies to a repeated capability such as a trace or channel, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not apply to a repeated capability, then pass VI_NULL or an empty string.

This control accepts either a virtual repeated capability name or an instrument-specific name. For valid repeated capability names, refer to your configuration settings in MAX.

Default Value:  ""
   ��-   �  �    Instrument Handle                ��#����  �    Status                           � � � �  �    Attribute Value                 ���� � ���                                          �- = � � �    Attribute ID                     �x =  �  �    Repeated Capability Name               	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViSession attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes.  It is best to use the high-level driver functions as much as possible.  They handle order dependencies and multithread locking for you.  In addition, they perform status checking only after setting all of the attributes.  In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change.  Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
        Pass the value to which you want to set the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    �    If the attribute applies to a repeated capability such as a trace or channel, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not apply to a repeated capability, then pass VI_NULL or an empty string.

This control accepts either a virtual repeated capability name or an instrument-specific name. For valid repeated capability names, refer to your configuration settings in MAX.

Default Value:  ""
    C    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Attributes 
  whose value cannot be set are dim.  Help text is shown for 
  each attribute.  Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box.  If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViSession
  type.  If you choose to see all IVI attributes, the data types
  appear to the right of the attribute names in the list box.
  Attributes with data types other than ViSession are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
   ��-   �  �    Instrument Handle                ŋ#����  �    Status                           �	 � � �  �    Attribute Value                  �$ =  �  �    Repeated Capability Name         � = � � �    Attribute ID                    ���� � ���                                                	               ""                0    .Press <ENTER> for a list of 
value constants.   �    This function queries the value of a ViInt32 attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Returns the current value of the attribute.  Pass the address of a ViInt32 variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control.  
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  
    �    If the attribute applies to a repeated capability such as a trace or channel, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not apply to a repeated capability, then pass VI_NULL or an empty string.

This control accepts either a virtual repeated capability name or an instrument-specific name. For valid repeated capability names, refer to your configuration settings in MAX.

Default Value:  ""
    �    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Help text is
  shown for each attribute.  Select an attribute by 
  double-clicking on it or by selecting it and then pressing
  <ENTER>.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViInt32 type. 
  If you choose to see all IVI attributes, the data types appear
  to the right of the attribute names in the list box.  
  Attributes with data types other than ViInt32 are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
   ٮ-   �  �    Instrument Handle                �j#����  �    Status                           �� � � �  �    Attribute Value                  � =  �  �    Repeated Capability Name         � = � � �    Attribute ID                           	           	            ""                0   �    This function queries the value of a ViReal64 attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Returns the current value of the attribute.  Pass the address of a ViReal64 variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control.  
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  
    �    If the attribute applies to a repeated capability such as a trace or channel, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not apply to a repeated capability, then pass VI_NULL or an empty string.

This control accepts either a virtual repeated capability name or an instrument-specific name. For valid repeated capability names, refer to your configuration settings in MAX.

Default Value:  ""

    �    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Help text is
  shown for each attribute.  Select an attribute by 
  double-clicking on it or by selecting it and then pressing
  <ENTER>.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViReal64
  type.  If you choose to see all IVI attributes, the data types
  appear to the right of the attribute names in the list box. 
  Attributes with data types other than ViReal64 are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
   �(-   �  �    Instrument Handle                ��#����  �    Status                           �b � � �  �    Attribute Value                  �! =  �  �    Repeated Capability Name         �	 = � � �    Attribute ID                           	           	           ""                0   �    This function queries the value of a ViString attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

You must provide a ViChar array to serve as a buffer for the value.  You pass the number of bytes in the buffer as the Buffer Size parameter.  If the current value of the attribute, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you want to call this function just to get the required buffer size, you can pass 0 for the Buffer Size and VI_NULL for the Attribute Value buffer.  

If you want the function to fill in the buffer regardless of the   number of bytes in the value, pass a negative number for the Buffer Size parameter.  

If state caching is available for the instrument driver and you have not disabled caching through MAX or through the optionsString parameter of the IviSpecAn_InitWithOptions function, the IVI Engine caches the string between multiple invokes of this function until the user fetches the whole string. Otherwise, this function queries the instrument to refresh the string attribute value in each function call.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    	0    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the attribute, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    &    The buffer in which the function returns the current value of the attribute.  The buffer must be of type ViChar and have at least as many bytes as indicated in the Buffer Size parameter.

If the current value of the attribute, including the terminating NUL byte, contains more bytes that you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you specify 0 for the Buffer Size parameter, you can pass VI_NULL for this parameter.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control.  
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  
    �    If the attribute applies to a repeated capability such as a trace or channel, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not apply to a repeated capability, then pass VI_NULL or an empty string.

This control accepts either a virtual repeated capability name or an instrument-specific name. For valid repeated capability names, refer to your configuration settings in MAX.

Default Value:  ""
    �    Pass the number of bytes in the ViChar array you specify for the Attribute Value parameter.  

If the current value of the attribute, including the terminating NUL byte, contains more bytes that you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Attribute Value buffer parameter.

Default Value: 512    �    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Help text is
  shown for each attribute.  Select an attribute by 
  double-clicking on it or by selecting it and then pressing
  <ENTER>.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViString
  type.  If you choose to see all IVI attributes, the data types
  appear to the right of the attribute names in the list box. 
  Attributes with data types other than ViString are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
   �-   �  �    Instrument Handle                v#����  �    Status or Required Size          � � L � �    Attribute Value                  � =  �  �    Repeated Capability Name         � =� �  �    Buffer Size                      � = � � �    Attribute ID                           	           	            ""    512                0   �    This function queries the value of a ViBoolean attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Returns the current value of the attribute.  Pass the address of a ViBoolean variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control.  
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  
    �    If the attribute applies to a repeated capability such as a trace or channel, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not apply to a repeated capability, then pass VI_NULL or an empty string.

This control accepts either a virtual repeated capability name or an instrument-specific name. For valid repeated capability names, refer to your configuration settings in MAX.

Default Value:  ""
    �    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Help text is
  shown for each attribute.  Select an attribute by 
  double-clicking on it or by selecting it and then pressing
  <ENTER>.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViBoolean
  type.  If you choose to see all IVI attributes, the data types
  appear to the right of the attribute names in the list box. 
  Attributes with data types other than ViBoolean are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
    �-   �  �    Instrument Handle                !N#����  �    Status                           (� � � �  �    Attribute Value                  *� =  �  �    Repeated Capability Name         ,s = � � �    Attribute ID                           	           	            ""                0   �    This function queries the value of a ViSession attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes.  If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    �    Returns the current value of the attribute.  Pass the address of a ViSession variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control.  
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>.  
    �    If the attribute applies to a repeated capability such as a trace or channel, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not apply to a repeated capability, then pass VI_NULL or an empty string.

This control accepts either a virtual repeated capability name or an instrument-specific name. For valid repeated capability names, refer to your configuration settings in MAX.

Default Value:  ""

    �    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Help text is
  shown for each attribute.  Select an attribute by 
  double-clicking on it or by selecting it and then pressing
  <ENTER>.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViSession
  type.  If you choose to see all IVI attributes, the data types
  appear to the right of the attribute names in the list box. 
  Attributes with data types other than ViSession are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
   4-   �  �    Instrument Handle                4�#����  �    Status                           <L � � �  �    Attribute Value                  > =  �  �    Repeated Capability Name         ?� = � � �    Attribute ID                           	           	            ""                0    S    This function checks the validity of a value you specify for a ViInt32 attribute.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    (    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    �    If the attribute applies to a repeated capability such as a trace or channel, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not apply to a repeated capability, then pass VI_NULL or an empty string.

This control accepts either a virtual repeated capability name or an instrument-specific name. For valid repeated capability names, refer to your configuration settings in MAX.

Default Value:  ""

    @    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Attributes 
  whose value cannot be set are dim.  Help text is shown for 
  each attribute.  Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box.  If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViInt32 type. 
  If you choose to see all IVI attributes, the data types appear
  to the right of the attribute names in the list box. 
  Attributes with data types other than ViInt32 are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
   F/-   �  �    Instrument Handle                F�#����  �    Status                           Ni � � �  �    Attribute Value                  P� =  �  �    Repeated Capability Name        ���� � ���                                          R� = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0    T    This function checks the validity of a value you specify for a ViReal64 attribute.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    (    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    �    If the attribute applies to a repeated capability such as a trace or channel, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not apply to a repeated capability, then pass VI_NULL or an empty string.

This control accepts either a virtual repeated capability name or an instrument-specific name. For valid repeated capability names, refer to your configuration settings in MAX.

Default Value:  ""

    B    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Attributes 
  whose value cannot be set are dim.  Help text is shown for 
  each attribute.  Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box.  If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViReal64
  type.  If you choose to see all IVI attributes, the data types
  appear to the right of the attribute names in the list box. 
  Attributes with data types other than ViReal64 are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
   Y�-   �  �    Instrument Handle                Z|#����  �    Status                           a� � � �  �    Attribute Value                  d* =  �  �    Repeated Capability Name        ���� � ���                                          f = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0    T    This function checks the validity of a value you specify for a ViString attribute.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    (    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    �    If the attribute applies to a repeated capability such as a trace or channel, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not apply to a repeated capability, then pass VI_NULL or an empty string.

This control accepts either a virtual repeated capability name or an instrument-specific name. For valid repeated capability names, refer to your configuration settings in MAX.

Default Value:  ""
    B    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Attributes 
  whose value cannot be set are dim.  Help text is shown for 
  each attribute.  Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box.  If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViString
  type.  If you choose to see all IVI attributes, the data types
  appear to the right of the attribute names in the list box. 
  Attributes with data types other than ViString are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
   mS-   �  �    Instrument Handle                n#����  �    Status                           u� � � �  �    Attribute Value                  w� =  �  �    Repeated Capability Name        ���� � ���                                          y� = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0    U    This function checks the validity of a value you specify for a ViBoolean attribute.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    (    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    �    If the attribute applies to a repeated capability such as a trace or channel, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not apply to a repeated capability, then pass VI_NULL or an empty string.

This control accepts either a virtual repeated capability name or an instrument-specific name. For valid repeated capability names, refer to your configuration settings in MAX.

Default Value:  ""
    D    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Attributes 
  whose value cannot be set are dim.  Help text is shown for 
  each attribute.  Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box.  If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViBoolean
  type.  If you choose to see all IVI attributes, the data types
  appear to the right of the attribute names in the list box. 
  Attributes with data types other than ViBoolean are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
   ��-   �  �    Instrument Handle                ��#����  �    Status                           �  � � �  �    Attribute Value                  �P =  �  �    Repeated Capability Name        ���� � ���                                          �7 = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0    U    This function checks the validity of a value you specify for a ViSession attribute.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    (    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control.  Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>.  

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    �    If the attribute applies to a repeated capability such as a trace or channel, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not apply to a repeated capability, then pass VI_NULL or an empty string.

This control accepts either a virtual repeated capability name or an instrument-specific name. For valid repeated capability names, refer to your configuration settings in MAX.

Default Value:  ""
    D    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes.  Attributes 
  whose value cannot be set are dim.  Help text is shown for 
  each attribute.  Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box.  If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViSession
  type.  If you choose to see all IVI attributes, the data types
  appear to the right of the attribute names in the list box. 
  Attributes with data types other than ViSession are dim. If
  you select an attribute data type that is dim, LabWindows/CVI
  transfers you to the function panel for the corresponding
  function that is consistent with the data type.

- If you want to enter a variable name, press <CTRL-T> to change
  this ring control to a manual input box.

- If the attribute in this ring control has named constants as  
  valid values, you can view the constants by moving to the 
  Attribute Value control and pressing <ENTER>.
   �{-   �  �    Instrument Handle                �7#����  �    Status                           �� � � �  �    Attribute Value                  �� =  �  �    Repeated Capability Name        ���� � ���                                          �� = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0   &    This function initiates a signal acquisition based on the present instrument configuration.  It then waits for the acquisition to complete, and returns the trace as an array of amplitude values. The amplitude array returns data that represent the amplitude of the signals of the sweep from the start frequency to the stop frequency (in frequency domain, in time domain the amplitude array is ordered from beginning of sweep to end). This function resets the sweep count.

Notes:

(1) If the spectrum analyzer did not complete the acquisition within the time specified in the Maximum Time parameter, this function returns the Max Time Exceeded (0xBFFA2003) error.

(2) If the data was captured in an uncalibrated spectrum analyzer mode, this function returns a Measure Uncalibrated (0x3FFA2001) warning. 
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    _    Pass the name of the trace for the desired amplitude array.

This control accepts either a virtual repeated capability name or an instrument-specific trace name.

Users who want to achieve interchangeability should use a virtual trace name. The virtual trace name should be sufficiently specific to the test system such that it is unlikely to conflict with a physical trace name.

Virtual repeated capability names are aliases for instrument-specific trace strings.  The instrument-specific trace strings can differ from one instrument to another.  Virtual repeated capability names allow you to use and swap instruments without having to change the trace names in your source code. You specify virtual repeated capability names in MAX.  


Default Value: ""

Note:

You can specify the trace name as a string variable or as a literal enclosed in double quotes.    �    Pass the maximum length of time in which to allow the read trace operation to complete.    

If the operation does not complete within this time interval, the function returns the IVISPECAN_ERROR_MAX_TIME_EXCEEDED (0xBFFA2003) error code.  When this occurs, call IviSpecAn_Abort to cancel the read trace operation and return the spectrum analyzer to the Idle state.

Units:  milliseconds.  

Defined Values:
IVISPECAN_VAL_MAX_TIME_INFINITE (-1)             IVISPECAN_VAL_MAX_TIME_IMMEDIATE (0)          

Default Value: 5000 (ms)

Notes:

(1) The Maximum Time parameter applies only to this function.  It has no effect on other timeout parameters or attributes.
     L    Pass the number of Amplitude array points requested.

Default Value: None
     L    Indicates the number of points the function places in the Amplitude array.    �    Returns the amplitude waveform that the spectrum analyzer acquires.  

Units: The units are determined by setting the Amplitude Units parameter of the IviSpecAn_ConfigureLevel function or by setting IVISPECAN_ATTR_AMPLITUDE_UNITS attribute.

Notes:

(1) The IviSpecAn_QueryTraceSize function returns the number of points the spectrum analyzer acquires. Pass a ViReal64 array with at least this many elements.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   ��#����  �    Status                           �_ 9  �  �    Trace Name                       �� 9 � �  �    Maximum Time (ms)                �f 9� �  �    Array Length                     �� �  �  �    Actual Points                    � � � �  �    Amplitude                        ��-   �  �    Instrument Handle                  	           ""    5000        	            	               :    This function returns the trace the spectrum analyzer acquires. The trace is from a previously initiated acquisition.  Call the IviSpecAn_Initiate function to start an acquisition.  Call the IviSpecAn_AcquisitionStatus function to determine when the acquisition is complete. Once the acquisition is complete, call the Fetch Y Trace function to return the trace.

You may call the IviSpecAn_ReadYTrace function instead of the IviSpecAn_Initiate function. The IviSpecAn_ReadYTrace function starts an acquisition, waits for the acquisition to complete, and returns the trace in one function call.

Use the IviSpecAn_FetchYTrace function when acquiring multiple traces.  Use a different trace name for each IviSpecAn_FetchYTrace call.  You may also call IviSpecAn_FetchYTrace after calling IviSpecAn_ReadYTrace to acquire subsequent traces.

The array returns data that represents the amplitude of the signals of the sweep from the start frequency to the stop frequency (in frequency domain, in time domain the amplitude array is ordered from beginning of sweep to end).  The IVISPECAN_ATTR_AMPLITUDE_UNITS attribute determines the units of the points in the amplitude array.

Note:

This function does not check the instrument status.   Typically, you call this function only in a sequence of calls to other low-level driver functions.  The sequence performs one operation.  You use the low-level functions to optimize one or more aspects of interaction with the instrument.  If you want to check the instrument status, call the IviSpecAn_error_query function at the conclusion of the sequence.
     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    _    Pass the name of the trace for the desired amplitude array.

This control accepts either a virtual repeated capability name or an instrument-specific trace name.

Users who want to achieve interchangeability should use a virtual trace name. The virtual trace name should be sufficiently specific to the test system such that it is unlikely to conflict with a physical trace name.

Virtual repeated capability names are aliases for instrument-specific trace strings.  The instrument-specific trace strings can differ from one instrument to another.  Virtual repeated capability names allow you to use and swap instruments without having to change the trace names in your source code. You specify virtual repeated capability names in MAX.  


Default Value: ""

Note:

You can specify the trace name as a string variable or as a literal enclosed in double quotes.     L    Pass the number of Amplitude array points requested.

Default Value: None
     L    Indicates the number of points the function places in the Amplitude array.    �    Returns the amplitude waveform that the spectrum analyzer acquires.  

Units: The units are determined by setting the Amplitude Units parameter of the IviSpecAn_ConfigureLevel function or by setting IVISPECAN_ATTR_AMPLITUDE_UNITS attribute.

Note:

The IviSpecAn_QueryTraceSize function returns the number of points the spectrum analyzer acquires. Pass a ViReal64 array with at least this many elements.

   �[-   �  �    Instrument Handle                �#����  �    Status                           ˕ 9  �  �    Trace Name                       �� 9� �  �    Array Length                     �P �  �  �    Actual Points                    Ϥ �� �  �    Amplitude                              	           ""        	            	           �    This function initiates an acquisition. After calling this function, the spectrum analyzer leaves the idle state and waits for a trigger.

Notes:

(1) This function does not check the instrument status.   Typically, you call this function only in a sequence of calls to other low-level driver functions.  The sequence performs one operation.  You use the low-level functions to optimize one or more aspects of interaction with the instrument.  If you want to check the instrument status, call the IviSpecAn_error_query function at the conclusion of the sequence.

(2) Call IviSpecAn_AcquisitionStatus to determine when the acquisition is complete.

     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
   �F-   �  �    Instrument Handle                �#����  �    Status                                 	              This function aborts a previously initiated measurement and returns the spectrum analyzer to the idle state.

Note:

This function does not check the instrument status.   Typically, you call this function only in a sequence of calls to other low-level driver functions.  The sequence performs one operation.  Use the low-level functions to optimize one or more aspects of interaction with the instrument.  If you want to check the instrument status, call the IviSpecAn_error_query function at the conclusion of the sequence.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
   �-   �  �    Instrument Handle                ��#����  �    Status                                 	           H    This function determines if an acquisition is in progress or complete.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
    |    Returns the acquisition status.

Valid Values:

IVISPECAN_VAL_ACQUISITION_STATUS_COMPLETE (1) - The 
  spectrum analyzer has completed the acquisition.

IVISPECAN_VAL_ACQUISITION_STATUS_IN_PROGRESS (0) - The 
  spectrum analyzer is still acquiring data.

IVISPECAN_VAL_ACQUISITION_STATUS_UNKNOWN (-1) - The 
  spectrum analyzer cannot determine the status of the 
  acquisition.   �-   �  �    Instrument Handle                ��#����  �    Status                           �N 9 � �  �    Acquisition Status                     	           	           _    This function sends a command to trigger the spectrum analyzer.  Call this function if you pass IVISPECAN_VAL_TRIGGER_SOURCE_SOFTWARE for the IVISPECAN_ATTR_TRIGGER_SOURCE attribute or the Trigger Source parameter of the IviSpecAn_ConfigureTriggerSource function.

Notes:

(1) If the IVISPECAN_ATTR_TRIGGER_SOURCE is not set to the IVISPECAN_VAL_TRIGGER_SOURCE_SOFTWARE value, this function returns the Trigger Not Software error (0xBFFA1001).

(2) This function does not check the instrument status.   Typically, you call this function only in a sequence of calls to other low-level driver functions.  The sequence performs one operation.  You use the low-level functions to optimize one or more aspects of interaction with the instrument.  If you want to check the instrument status, call the IviSpecAn_error_query function at the conclusion of the sequence.
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   ��#����  �    Status                           �r-   �  �    Instrument Handle                  	              &    This function resets the instrument to a known state and sends initialization commands to the instrument.  The initialization commands set instrument settings such as Headers Off, Short Command form, and Data Transfer Binary to the state necessary for the operation of the instrument driver.
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �#����  �    Status                           T-   �  �    Instrument Handle                  	               �    This function resets the instrument and applies initial user specified settings from the Logical Name which was used to initialize the session.    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   
##����  �    Status                           �-   �  �    Instrument Handle                  	               �    This function places the instrument in a quiescent state where it has minimal or no impact on the system to which it is connected.    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   c#����  �    Status                           �-   �  �    Instrument Handle                  	               Z    This function runs the instrument's self test routine and returns the test result(s). 

    &    This control contains the value returned from the instrument self test.  Zero means success.  For any other code, see the device's operator's manual.

Self-Test Code    Description
---------------------------------------
   0              Passed self test
   1              Self test failed

     �    Returns the self-test response string from the instrument. See the device's operation manual for an explanation of the string's contents.

You must pass a ViChar array with at least 256 bytes.    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   y 9  �  �    Self Test Result                 � 9 � � ,    Self-Test Message                q#����  �    Status                           %�-   �  �    Instrument Handle                  	           	            	               `    This function returns the revision numbers of the instrument driver and instrument firmware.

     �    Returns the instrument driver software revision numbers in the form of a string.

You must pass a ViChar array with at least 256 bytes.     �    Returns the instrument firmware revision numbers in the form of a string.

You must pass a ViChar array with at least 256 bytes.
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   ( 9  �  �    Instrument Driver Revision       (� 9Y �  �    Firmware Revision                )+#����  �    Status                           0�-   �  �    Instrument Handle                  	            	            	               V    This function reads an error code and a message from the instrument's error queue.

     B    Returns the error code read from the instrument's error queue.

     �    Returns the error message string read from the instrument's error message queue.

You must pass a ViChar array with at least 256 bytes.
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   2� 9  �  �    Error Code                       3	 9 � � ,    Error Message                    3�#����  �    Status                           ;-   �  �    Instrument Handle                  	           	            	               n    This function converts a status code returned by an instrument driver function into a user-readable string.      z    Pass the Status parameter that is returned from any of the instrument driver functions.

Default Value:  0  (VI_SUCCESS)     �    Returns the user-readable message string that corresponds to the status code you specify.

You must pass a ViChar array with at least 256 bytes.
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
        The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

You can pass VI_NULL for this parameter.  This is useful when one of the initialize functions fail.

Default Value:  VI_NULL
   =G 9  �  h    Error Code                       =� 9 � � �    Error Message                    >d#����  �    Status                           E�-   �  �    Instrument Handle                  0    	            	           VI_NULL    P    This function invalidates the cached values of all attributes for the session.    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   HZ#����  �    Status                           O�-   �  �    Instrument Handle                  	               h    This function returns the C session instrument handle you use to call the specific driver's functions.     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     Z    Returns the C session instrument handle you use to call the specific driver's functions.   Q~-   �  �    Instrument Handle                R:#����  �    Status                           Y� = � �  �    Specific Driver C Handle               	           	          �    This function returns the coercion information associated with the IVI session.  This function retrieves and clears the oldest instance in which the instrument driver coerced a value you specified to another value.

If you set the IVISPECAN_ATTR_RECORD_COERCIONS attribute to VI_TRUE, the instrument driver keeps a list of all coercions it makes on ViInt32 or ViReal64 values you pass to instrument driver functions.  You use this function to retrieve information from that list.

If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Coercion Record buffer parameter.

The function returns an empty string in the Coercion Record parameter if no coercion records remain for the session.

    	0    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the attribute, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    The ViSession handle that you obtain from the IviSpecAn_init function.  The handle identifies a particular instrument session.

Default Value:  None    �    Returns the next coercion record for the IVI session.  If there are no coercion records, the function returns an empty string.

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter.  If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

This parameter returns an empty string if no coercion records remain for the session.
    �    Pass the number of bytes in the ViChar array you specify for the Coercion Record parameter.

If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Coercion Record buffer parameter.

Default Value:  None

   _�#����  �    Status or Required Size          h�-   �  �    Instrument Handle                i� � Q � �    Coercion Record                  l� 9 � �  �    Buffer Size                        	               	               �    This function retrieves and then clears the IVI error information for the session or the current execution thread. One exception exists: If the BufferSize parameter is 0, the function does not clear the error information. By passing 0 for the buffer size, the caller can ascertain the buffer size required to get the entire error description string and then call the function again with a sufficiently large buffer.

If the user specifies a valid IVI session for the InstrumentHandle parameter, Get Error retrieves and then clears the error information for the session.  If the user passes VI_NULL for the InstrumentHandle parameter, this function retrieves and then clears the error information for the current execution thread.  If the InstrumentHandle parameter is an invalid session, the function does nothing and returns an error. Normally, the error information describes the first error that occurred since the user last called IviSpecAn_GetError or IviSpecAn_ClearError.
    	0    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the attribute, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Pass the number of bytes in the ViChar array you specify for the Description parameter.

If the error description, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies BufferSize - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Description buffer parameter.

Default Value:  None     �    Returns the error code for the session or execution thread.

If you pass 0 for the Buffer Size, you can pass VI_NULL for this parameter.
    �    Returns the error description for the IVI session or execution thread.  If there is no description, the function returns an empty string.

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter.  If the error description, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass 0 for the Buffer Size, you can pass VI_NULL for this parameter.   tP#����  �    Status or Required Size          }�-   �  �    Instrument Handle                ~D 9A �  �    BufferSize                       �$ 9 R �  �    Code                             �� � Q � �    Description                        	                   	           	           g    This function clears the error code and error description for the IVI session. If the user specifies a valid IVI session for the InstrumentHandle parameter, this function clears the error information for the session. If the user passes VI_NULL for the Vi parameter, this function clears the error information for the current execution thread. If the Vi parameter is an invalid session, the function does nothing and returns an error.
The function clears the error code by setting it to VI_SUCCESS.  If the error description string is non-NULL, the function de-allocates the error description string and sets the address to VI_NULL.

Maintaining the error information separately for each thread is useful if the user does not have a session handle to pass to the IviSpecAn_GetError function, which occurs when a call to IviSpecAn_init or IviSpecAn_InitWithOptions fails.    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   �W#����  �    Status                           ��-   �  �    Instrument Handle                  	              0    This function returns the interchangeability warnings associated with the IVI session. It retrieves and clears the oldest instance in which the class driver recorded an interchangeability warning.  Interchangeability warnings indicate that using your application with a different instrument might cause different behavior. You use this function to retrieve interchangeability warnings.

The driver performs interchangeability checking when the IVISPECAN_ATTR_INTERCHANGE_CHECK attribute is set to VI_TRUE.

The function returns an empty string in the Interchange Warning parameter if no interchangeability warnings remain for the session.

In general, the instrument driver generates interchangeability warnings when an attribute that affects the behavior of the instrument is in a state that you did not specify.
    	0    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

If the current value of the attribute, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    Pass the number of bytes in the ViChar array you specify for the Interchange Warning parameter.

If the next interchangeability warning string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Interchange Warning buffer parameter.

Default Value:  None
        Returns the next interchange warning for the IVI session. If there are no interchange warnings, the function returns an empty  string.

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter. If the next interchangeability warning string, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value.  For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

This parameter returns an empty string if no interchangeability
warnings remain for the session.

   �C#����  �    Status or Required Size          �{-   �  �    Instrument Handle                �7 9 � �  �    Buffer Size                      �= � Q � �    Interchange Warning                	                   	            A    This function clears the list of current interchange warnings.
     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
   ��-   �  �    Instrument Handle                �Z#����  �    Status                                 	          �    When developing a complex test system that consists of multiple test modules, it is generally a good idea to design the test modules so that they can run in any order.  To do so requires ensuring that each test module completely configures the state of each instrument it uses.  If a particular test module does not completely configure the state of an instrument, the state of the instrument depends on the configuration from a previously executed test module.  If you execute the test modules in a different order, the behavior of the instrument and therefore the entire test module is likely to change.  This change in behavior is generally instrument specific and represents an interchangeability problem.

You can use this function to test for such cases.  After you call this function, the interchangeability checking algorithms in the specific driver ignore all previous configuration operations.  By calling this function at the beginning of a test module, you can determine whether the test module has dependencies on the operation of previously executed test modules.

This function does not clear the interchangeability warnings from the list of previously recorded interchangeability warnings.  If you want to guarantee that the IviSpecAn_GetNextInterchangeWarning function only returns those interchangeability warnings that are generated after calling this function, you must clear the list of interchangeability warnings.  You can clear the interchangeability warnings list by repeatedly calling the IviSpecAn_GetNextInterchangeWarning function until no more interchangeability warnings are returned.  If you are not interested in the content of those warnings, you can call the IviSpecAn_ClearInterchangeWarnings function.
     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
   �'-   �  �    Instrument Handle                ��#����  �    Status                                 	          F    This function obtains a multithread lock on the instrument session.  Before it does so, it waits until all other execution threads have released their locks on the instrument session.

Other threads might have obtained a lock on this session in the following ways:

- The user's application called IviSpecAn_LockSession.

- A call to the instrument driver locked the session.

- A call to the IVI engine locked the session.

After your call to IviSpecAn_LockSession returns successfully, no other threads can access the instrument session until you call IviSpecAn_UnlockSession.

Use IviSpecAn_LockSession and IviSpecAn_UnlockSession around a sequence of calls to instrument driver functions if you require that the instrument retain its settings through the end of the sequence.

You can safely make nested calls to IviSpecAn_LockSession within the same thread.  To completely unlock the session, you must balance each call to IviSpecAn_LockSession with a call to IviSpecAn_UnlockSession.  If, however, you use the Caller Has Lock parameter in all calls to IviSpecAn_LockSession and IviSpecAn_UnlockSession within a function, the IVI Library locks the session only once within the function regardless of the number of calls you make to IviSpecAn_LockSession.  This allows you to call IviSpecAn_UnlockSession just once at the end of the function. 
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    This parameter serves as a convenience.  If you do not want to use this parameter, pass VI_NULL. 

Use this parameter in complex functions to keep track of whether you obtain a lock and therefore need to unlock the session.  Pass the address of a local ViBoolean variable.  In the declaration of the local variable, initialize it to VI_FALSE.  Pass the address of the same local variable to any other calls you make to IviSpecAn_LockSession or IviSpecAn_UnlockSession in the same function.

The parameter is an input/output parameter.  IviSpecAn_LockSession and IviSpecAn_UnlockSession each inspect the current value and take the following actions:

- If the value is VI_TRUE, IviSpecAn_LockSession does not lock the session again.  If the value is VI_FALSE, IviSpecAn_LockSession obtains the lock and sets the value of the parameter to VI_TRUE.

- If the value is VI_FALSE, IviSpecAn_UnlockSession does not attempt to unlock the session.  If the value is VI_TRUE, IviSpecAn_UnlockSession releases the lock and sets the value of the parameter to VI_FALSE.
 
Thus, you can, call IviSpecAn_UnlockSession at the end of your function without worrying about whether you actually have the lock.  

Example:

ViStatus TestFunc (ViSession vi, ViInt32 flags)
{
    ViStatus error = VI_SUCCESS;
    ViBoolean haveLock = VI_FALSE;

    if (flags & BIT_1)
        {
        viCheckErr( IviSpecAn_LockSession(vi, &haveLock));
        viCheckErr( TakeAction1(vi));
        if (flags & BIT_2)
            {
            viCheckErr( IviSpecAn_UnlockSession(vi, &haveLock));
            viCheckErr( TakeAction2(vi));
            viCheckErr( IviSpecAn_LockSession(vi, &haveLock);
            } 
        if (flags & BIT_3)
            viCheckErr( TakeAction3(vi));
        }

Error:
    /* 
       At this point, you cannot really be sure that 
       you have the lock.  Fortunately, the haveLock 
       variable takes care of that for you.          
    */
    IviSpecAn_UnlockSession(vi, &haveLock);
    return error;
}   �)#����  �    Status                           ˧-   �  �    Instrument Handle                �c 9 � �  �    Caller Has Lock                    	               	            �    This function releases a lock that you acquired on an instrument session using IviSpecAn_LockSession.  Refer to IviSpecAn_LockSession for additional information on session locks.
    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    �    This parameter serves as a convenience.  If you do not want to use this parameter, pass VI_NULL. 

Use this parameter in complex functions to keep track of whether you obtain a lock and therefore need to unlock the session. 
Pass the address of a local ViBoolean variable.  In the declaration of the local variable, initialize it to VI_FALSE.  Pass the address of the same local variable to any other calls you make to IviSpecAn_LockSession or IviSpecAn_UnlockSession in the same function.

The parameter is an input/output parameter.  IviSpecAn_LockSession and IviSpecAn_UnlockSession each inspect the current value and take the following actions:

- If the value is VI_TRUE, IviSpecAn_LockSession does not lock the session again.  If the value is VI_FALSE, IviSpecAn_LockSession obtains the lock and sets the value of the parameter to VI_TRUE.

- If the value is VI_FALSE, IviSpecAn_UnlockSession does not attempt to unlock the session.  If the value is VI_TRUE, IviSpecAn_UnlockSession releases the lock and sets the value of the parameter to VI_FALSE.
 
Thus, you can, call IviSpecAn_UnlockSession at the end of your function without worrying about whether you actually have the lock.  

Example:

ViStatus TestFunc (ViSession vi, ViInt32 flags)
{
    ViStatus error = VI_SUCCESS;
    ViBoolean haveLock = VI_FALSE;

    if (flags & BIT_1)
        {
        viCheckErr( IviSpecAn_LockSession(vi, &haveLock));
        viCheckErr( TakeAction1(vi));
        if (flags & BIT_2)
            {
            viCheckErr( IviSpecAn_UnlockSession(vi, &haveLock));
            viCheckErr( TakeAction2(vi));
            viCheckErr( IviSpecAn_LockSession(vi, &haveLock);
            } 
        if (flags & BIT_3)
            viCheckErr( TakeAction3(vi));
        }

Error:
    /* 
       At this point, you cannot really be sure that 
       you have the lock.  Fortunately, the haveLock 
       variable takes care of that for you.          
    */
    IviSpecAn_UnlockSession(vi, &haveLock);
    return error;
}   ո#����  �    Status                           �6-   �  �    Instrument Handle                �� 9 � �  �    Caller Has Lock                    	               	           �    This function performs the following operations:

- Closes the instrument I/O session.

- Destroys the instrument driver session and all of its attributes.

- Deallocates any memory resources the driver uses.

Notes:

(1) You must unlock the session before calling IviSpecAn_close.

(2) After calling IviSpecAn_close, you cannot use the instrument driver again until you call IviSpecAn_init or IviSpecAn_InitWithOptions.

    v    Returns the status code of this operation.  The status code  either indicates success or describes an error or warning condition.  You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, call the IviSpecAn_error_message function.  To obtain additional information about the error condition, call the IviSpecAn_GetError function.  To clear the error information from the driver, call the IviSpecAn_ClearError function.

The general meaning of the status code is as follows:

Value                  Meaning
-------------------------------
0                      Success
Positive Values        Warnings
Negative Values        Errors

This driver defines the following status codes:
          
Status    Description
-------------------------------------------------
WARNINGS:
3FFA2001  The instrument was in an uncalibrated state
          when the measurement was taken.
3FFA2002  The measurement taken was over the instrument��s
          range.
  
ERRORS:
BFFA2001  The Active Marker is not enabled.
BFFA2002  The Active Marker is not a delta marker.
BFFA2003  The maximum waiting time for this operation was
          exceeded.
          
This instrument driver also returns errors and warnings defined by other sources.  The following table defines the ranges of additional status codes that this driver can return.  The table lists the different include files that contain the defined constants for the particular status codes:
          
Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors
     �    The ViSession handle that you obtain from the IviSpecAn_init or IviSpecAn_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
   �:#����  �    Status                           �-   �  �    Instrument Handle                  	            ����         p  6             K.        init                                                                                                                                    ����         7�  X�             K.        InitWithOptions                                                                                                                         ����         [  fD             K.        ConfigureFrequencyStartStop                                                                                                             ����         g;  r�             K.        ConfigureFrequencyCenterSpan                                                                                                            ����         s�  ~             K.        ConfigureFrequencyOffset                                                                                                                ����         ~�  ��             K.        ConfigureSweepCoupling                                                                                                                  ����         �-  �g             K.        ConfigureAcquisition                                                                                                                    ����         ��  ��             K.        ConfigureLevel                                                                                                                          ����         ��  �             K.        ConfigureTraceType                                                                                                                      ����         �  �g             K.        GetTraceName                                                                                                                            ����         �  �	             K.        QueryTraceSize                                                                                                                          ����         ��  ��             K.        PeakPreselector                                                                                                                         ����         �_ �             K.        AddTraces                                                                                                                               ����        �              K.        ExchangeTraces                                                                                                                          ����         -u             K.        CopyTrace                                                                                                                               ����        .e A�             K.        SubtractTraces                                                                                                                          ����        C O�             K.        ConfigureMarkerEnabled                                                                                                                  ����        P� [�             K.        ConfigureMarkerFrequencyCounter                                                                                                         ����        \� h             K.        ConfigureMarkerSearch                                                                                                                   ����        i vh             K.        ConfigureSignalTrackEnabled                                                                                                             ����        w6 �             K.        DisableAllMarkers                                                                                                                       ����        � ��             K.        MarkerSearch                                                                                                                            ����        �� ��             K.        MoveMarker                                                                                                                              ����        �� ��             K.        QueryMarker                                                                                                                             ����        �� ��             K.        SetActiveMarker                                                                                                                         ����        �k ��             K.        SetInstrumentFromMarker                                                                                                                 ����        �� ɷ             K.        QueryMarkerType                                                                                                                         ����        �r ��             K.        MakeMarkerDelta                                                                                                                         ����        י �             K.        QueryReferenceMarker                                                                                                                    ����        � �             K.        GetMarkerName                                                                                                                           ����        �� ��             K.        ConfigureTriggerSource                                                                                                                  ����        �� �             K.        ConfigureExternalTrigger                                                                                                                ����        
& s             K.        ConfigureVideoTrigger                                                                                                                   ����        �               K.        ConfigureExternalMixerEnabled                                                                                                           ����         � )�             K.        ConfigureExternalMixerNumberOfPorts                                                                                                     ����        *� 4u             K.        ConfigureExternalMixer                                                                                                                  ����        5e >�             K.        ConfigureExternalMixerBiasEnabled                                                                                                       ����        ?w IN             K.        ConfigureExternalMixerBias                                                                                                              ����        J@ S�             K.        ConfigureConversionLossTableEnabled                                                                                                     ����        Th _              K.        ConfigureConversionLossTable                                                                                                            ����        `% v             K.        SetAttributeViInt32                                                                                                                     ����        x �t             K.        SetAttributeViReal64                                                                                                                    ����        � �h             K.        SetAttributeViString                                                                                                                    ����        � �_             K.        SetAttributeViBoolean                                                                                                                   ����        �� �V             K.        SetAttributeViSession                                                                                                                   ����        �� �-             K.        GetAttributeViInt32                                                                                                                     ����        �j ��             K.        GetAttributeViReal64                                                                                                                    ����        �� Z             K.        GetAttributeViString                                                                                                                    ����        � 1             K.        GetAttributeViBoolean                                                                                                                   ����        2S D�             K.        GetAttributeViSession                                                                                                                   ����        E� W�             K.        CheckAttributeViInt32                                                                                                                   ����        Yd k\             K.        CheckAttributeViReal64                                                                                                                  ����        l� ~�             K.        CheckAttributeViString                                                                                                                  ����        �� ��             K.        CheckAttributeViBoolean                                                                                                                 ����        � �             K.        CheckAttributeViSession                                                                                                                 ����        �� �l             K.        ReadYTrace                                                                                                                              ����        � �C             K.        FetchYTrace                                                                                                                             ����        ҳ ݀             K.        Initiate                                                                                                                                ����        �� �J             K.        Abort                                                                                                                                   ����        �� ��             K.        AcquisitionStatus                                                                                                                       ����        � �.             K.        SendSoftwareTrigger                                                                                                                     ����        �� 	             K.        reset                                                                                                                                   ����        	� ]             K.        ResetWithDefaults                                                                                                                       ����        � �             K.        Disable                                                                                                                                 ����         &�             K.        self_test                                                                                                                               ����        '� 1e             K.        revision_query                                                                                                                          ����        2a ;�             K.        error_query                                                                                                                             ����        <� G             K.        error_message                                                                                                                           ����        H P�             K.        InvalidateAllAttributes                                                                                                                 ����        Q Z             K.        GetSpecificDriverCHandle                                                                                                                ����        Z� o             K.        GetNextCoercionRecord                                                                                                                   ����        ps ��             K.        GetError                                                                                                                                ����        �� ��             K.        ClearError                                                                                                                              ����        � �a             K.        GetNextInterchangeWarning                                                                                                               ����        �U ��             K.        ClearInterchangeWarnings                                                                                                                ����        �R �a             K.        ResetInterchangeCheck                                                                                                                   ����        �� �@             K.        LockSession                                                                                                                             ����        �� ��             K.        UnlockSession                                                                                                                           ����        � �t             K.        close                                                                                                                                                                                                                              �Initialize                                                                           �Initialize With Options                                                             �Configuration Functions                                                              �Configure Frequency Start Stop                                                       �Configure Frequency Center Span                                                      �Configure Frequency Offset                                                           �Configure Sweep Coupling                                                             �Configure Acquisition                                                                �Configure Level                                                                      �Configure Trace Type                                                                 �Get Trace Name                                                                       �Query Trace Size                                                                     �Peak Preselector [PS]                                                               �Multitrace                                                                           �Add Traces [MT]                                                                      �Exchange Traces [MT]                                                                 �Copy Trace [MT]                                                                      �Subtract Traces [MT]                                                                �Marker                                                                               �Configure Marker Enabled [MKR]                                                       �Configure Marker Frequency Counter [MKR]                                             �Configure Marker Search [MKR]                                                        �Configure Signal Track Enabled [MKR]                                                 �Disable All Markers [MKR]                                                            �Marker Search [MKR]                                                                  �Move Marker [MKR]                                                                    �Query Marker [MKR]                                                                   �Set Active Marker [MKR]                                                              �Set Instrument From Marker [MKR]                                                     �Query Marker Type [MKT]                                                              �Make Marker Delta [DMK]                                                              �Query Reference Marker [DMK]                                                         �Get Marker Name [MKR]                                                               :Trigger Extension Group                                                              �Configure Trigger Source [TRG]                                                       �Configure External Trigger [EXT]                                                     �Configure Video Trigger [VT]                                                        �External Mixer Extension Group                                                       �Configure External Mixer Enabled [EM]                                                �Configure External Mixer Number of Ports [EM]                                        �Configure External Mixer [EM]                                                        �Configure External Mixer Bias Enabled [EM]                                           �Configure External Mixer Bias [EM]                                                   �Configure Conversion Loss Table Enabled [EM]                                         �Configure Conversion Loss Table [EM]                                                �Set/Get/Check Attribute                                                             TSet Attribute                                                                        �Set Attribute ViInt32                                                                �Set Attribute ViReal64                                                               �Set Attribute ViString                                                               �Set Attribute ViBoolean                                                              �Set Attribute ViSession                                                             �Get Attribute                                                                        �Get Attribute ViInt32                                                                �Get Attribute ViReal64                                                               �Get Attribute ViString                                                               �Get Attribute ViBoolean                                                              �Get Attribute ViSession                                                             oCheck Attribute                                                                      �Check Attribute ViInt32                                                              �Check Attribute ViReal64                                                             �Check Attribute ViString                                                             �Check Attribute ViBoolean                                                            �Check Attribute ViSession                                                           Measurement                                                                          �Read Y Trace                                                                         �Fetch Y Trace                                                                       �Low Level Measurement                                                                �Initiate                                                                             �Abort                                                                                �Acquisition Status                                                                   �Send Software Trigger [SWT]                                                         �Utility Functions                                                                    �Reset                                                                                �Reset With Defaults                                                                  �Disable                                                                              �Self-Test                                                                            �Revision Query                                                                       �Error-Query                                                                          �Error Message                                                                        �Invalidate All Attributes                                                            �Get Specific Driver C Handle                                                         �Get Next Coercion Record                                                            QError Info                                                                           �Get Error                                                                            �Clear Error                                                                         �Interchangeability Info                                                              �Get Next Interchange Warning                                                         �Clear Interchange Warnings                                                           �Reset Interchange Check                                                             �Locking                                                                              �Lock Session                                                                         �Unlock Session                                                                       �Close                                                                           