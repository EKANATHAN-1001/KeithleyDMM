s��   	     (5   X �  0(   �   ����                                IviDownconverter                IviDownconverter Class Driver (NI)                                                                    � � ��ViInt16  �  � ��ViInt32  � � ��ViReal64     � ��ViRsrc     	� 	��ViBoolean     	� 	��ViSession     � ��ViStatus     �  ViChar[]     � ��ViChar     � ��ViString     	�  ViInt16[]     	�  ViInt32[]     
�  	ViReal64[]     � 	 
ViBoolean[]     � ��ViConstString     � ��ViAttr   �    This instrument driver contains programming support for the IviDownconverter class driver. This driver has all the functions that IVI and VXIplug&play require. 

Note:  This driver requires the VISA and IVI libraries.      �    This class contains functions and sub-classes that configure the downconverter. The class includes high-level functions that configure multiple instrument settings as well as low-level functions that set, get, and check individual attribute values.
     N    This class contains functions that configure the RF input of the instrument.     �    The IviDownconverterFrequencySweep extension group defines extensions for downconverters capable of applying a sweep to the RF input frequency.     \    This class contains functions that configure the analog frequency sweep of the instrument.    �    The IviDownconverterFrequencyStep extension group defines extensions for downconverters capable of varying (sweeping) the frequency of the RF input signal in steps.

This extension group requires the Frequency Sweep Extension Group. Frequency stepping is enabled by setting the IVIDOWNCONVERTER_ATTR_FREQUENCY_SWEEP_MODE to IVIDOWNCONVERTER_VAL_RF_INPUT_FREQUENCY_SWEEP_MODE_STEP in the IviDownconverterFrequencySweep Extension Group.    �    The IviDownconverterFrequencySweepList extension group defines extensions for downconverters capable of setting the frequency of the RF input signal to values given as a list of values.

This extension group requires the Frequency Sweep Extension Group. List stepping is enabled by setting the IVIDOWNCONVERTER_ATTR_FREQUENCY_SWEEP_MODE to IVIDOWNCONVERTER_VAL_RF_INPUT_FREQUENCY_SWEEP_MODE_LIST in the IviDownconverterFrequencySweep Extension Group.     O    This class contains functions that configure the IF output of the instrument.     }    The IviDownconverterExternalMixer extension group defines extensions for downconverters capable of using an external mixer.     }    The IviDownconverterExternalMixer extension group defines extensions for downconverters capable of using an external mixer.     }    The IviDownconverterReferenceOscillator extension group supports downconverters capable of configuring frequency reference.     S    This class contains sub-classes for the set, get, and check attribute functions.      �    This class contains functions that set an attribute to a new value. There are typesafe functions for each attribute data type.     �    This class contains functions that obtain the current value of an attribute. There are typesafe functions for each attribute data type.     �    This class contains functions that obtain the current value of an attribute. There are typesafe functions for each attribute data type.     m    This class contains functions and sub-classes that initiate instrument operations and report their status.
    ]    This class contains functions and sub-classes that control common instrument operations. These functions include many of functions that VXIplug&play require, such as reset, self-test, revision query, error query, and error message. This class also contains functions that access IVI error infomation, lock the session, and perform instrument I/O.
     R    This class contains functions that retrieve and clear the IVI error information.     J    This class contains functions that retrieve interchangeability warnings.     ?    This class contains functions that retrieve coercion records.     k    This class contains functions that lock and unlock IVI instrument driver sessions for multithread safefy.    S    This function performs the following initialization actions:

- Creates a new IVI instrument driver session.

- Opens a session to the specified device using the interface and address you specify for the Resource Name parameter.

- If the ID Query parameter is set to VI_TRUE, this function queries the instrument ID and checks that it is valid for this instrument driver.

- If the Reset parameter is set to VI_TRUE, this function resets the instrument to a known state.

- Sends initialization commands to set the instrument to the state necessary for the operation of the instrument driver.

- Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Note:  This function creates a new session each time you invoke it. Although you can open more than one IVI session for the same resource, it is best not to do so. You can use the same session in multiple program threads. You can use the IviDownconverter_LockSession and IviDownconverter_UnlockSession functions to protect sections of code that require exclusive access to the resource.

Content from the IVI specifications reproduced with permission from the IVI Foundation. 
 
The IVI Foundation and its member companies make no warranty of any kind with regard to this material, including, but not limited to, the implied warranties of merchantability and fitness for a particular purpose. The IVI Foundation and its member companies shall not be liable for errors contained herein or for incidental or consequential damages in connection with the furnishing, performance, or use of this material.    �    Pass the logical name that identifies the particular driver session to use. The driver session, in turn, identifies a specific driver and device and specifies the initial settings for the session. You configure the logical name, driver session, specific driver, and device with the IVI Configuration utility. 

If you want to use your program with a different physical instrument, you change the configuration of the logical name to use the driver session for the new physical instrument. You can change the initial settings for the session by changing the configuration of the driver session.

Default Value:  "SampleDownconverter"

Warning: 
All IVI names, such as logical names or virtual names, are case-sensitive. If you use logical names, driver session names, or virtual names in your program, you must make sure that the name you use matches the name in the IVI Configuration Store file exactly, without any variations in the case of the characters in the name.        Specify whether you want the instrument driver to perform an ID Query.

Valid Range:
VI_TRUE  (1) - Perform ID Query (Default Value)
VI_FALSE (0) - Skip ID Query

When you set this parameter to VI_TRUE, the driver verifies that the instrument you initialize is a type that this driver supports. 

Circumstances can arise where it is undesirable to send an ID Query command string to the instrument. When you set this parameter to VI_FALSE, the function initializes the instrument without performing an ID Query.     �    Specify whether you want the to reset the instrument during the initialization procedure.

Valid Range:
VI_TRUE  (1) - Reset Device (Default Value)
VI_FALSE (0) - Don't Reset

    �    Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Note:

(1) This function creates a new session each time you invoke it. This is useful if you have multiple physical instances of the same type of instrument. 

(2) Avoid creating multiple concurrent sessions to the same physical instrument. Although you can create more than one IVI session for the same resource, it is best not to do so. A better approach is to use the same IVI session in multiple execution threads. You can use functions IviDownconverter_LockSession and IviDownconverter_UnlockSession to protect sections of code that require exclusive access to the resource.

    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    Z 9   �  �    Logical Name                      - 9 �       ID Query                          6 9� �       Reset Device                      � �� �  �    Instrument Handle                 �#����  �    Status                          ����  ���                                            "SampleDownconverter"   Yes VI_TRUE No VI_FALSE   Yes VI_TRUE No VI_FALSE    	           	           :(c) 2009-2017 National Instruments.  All Rights Reserved.   �    This function performs the following initialization actions:

- Creates a new IVI instrument driver and optionally sets the initial state of the following session attributes:

    IVIDOWNCONVERTER_ATTR_RANGE_CHECK         
    IVIDOWNCONVERTER_ATTR_QUERY_INSTRUMENT_STATUS  
    IVIDOWNCONVERTER_ATTR_CACHE               
    IVIDOWNCONVERTER_ATTR_SIMULATE            
    IVIDOWNCONVERTER_ATTR_RECORD_COERCIONS   

- Opens a session to the specified device using the interface and address you specify for the Resource Name parameter.

- If the ID Query parameter is set to VI_TRUE, this function queries the instrument ID and checks that it is valid for this instrument driver.

- If the Reset parameter is set to VI_TRUE, this function resets the instrument to a known state.

- Sends initialization commands to set the instrument to the state necessary for the operation of the instrument driver.

- Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Note:  This function creates a new session each time you invoke it. Although you can open more than one IVI session for the same resource, it is best not to do so. You can use the same session in multiple program threads. You can use the IviDownconverter_LockSession and IviDownconverter_UnlockSession functions to protect sections of code that require exclusive access to the resource.

Content from the IVI specifications reproduced with permission from the IVI Foundation. 
 
The IVI Foundation and its member companies make no warranty of any kind with regard to this material, including, but not limited to, the implied warranties of merchantability and fitness for a particular purpose. The IVI Foundation and its member companies shall not be liable for errors contained herein or for incidental or consequential damages in connection with the furnishing, performance, or use of this material.    �    Pass the logical name that identifies the particular driver session to use. The driver session, in turn, identifies a specific driver and device and specifies the initial settings for the session. You configure the logical name, driver session, specific driver, and device with the IVI Configuration utility. 

If you want to use your program with a different physical instrument, you change the configuration of the logical name to use the driver session for the new physical instrument. You can change the initial settings for the session by changing the configuration of the driver session.

Default Value:  "SampleDownconverter"

Warning: 
All IVI names, such as logical names or virtual names, are case-sensitive. If you use logical names, driver session names, or virtual names in your program, you must make sure that the name you use matches the name in the IVI Configuration Store file exactly, without any variations in the case of the characters in the name.        Specify whether you want the instrument driver to perform an ID Query.

Valid Range:
VI_TRUE  (1) - Perform ID Query (Default Value)
VI_FALSE (0) - Skip ID Query

When you set this parameter to VI_TRUE, the driver verifies that the instrument you initialize is a type that this driver supports. 

Circumstances can arise where it is undesirable to send an ID Query command string to the instrument. When you set this parameter to VI_FALSE, the function initializes the instrument without performing an ID Query.     �    Specify whether you want the to reset the instrument during the initialization procedure.

Valid Range:
VI_TRUE  (1) - Reset Device (Default Value)
VI_FALSE (0) - Don't Reset

    �    Returns a ViSession handle that you use to identify the instrument in all subsequent instrument driver function calls.

Note:

(1) This function creates a new session each time you invoke it. This is useful if you have multiple physical instances of the same type of instrument. 

(2) Avoid creating multiple concurrent sessions to the same physical instrument. Although you can create more than one IVI session for the same resource, it is best not to do so. A better approach is to use the same IVI session in multiple execution threads. You can use functions IviDownconverter_LockSession and IviDownconverter_UnlockSession to protect sections of code that require exclusive access to the resource.

    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    �    You can use this control to set the initial value of certain attributes for the session. The following table lists the attributes and the name you use in this parameter to identify the attribute.

Name              Attribute Defined Constant   
--------------------------------------------
RangeCheck        IVIDOWNCONVERTER_ATTR_RANGE_CHECK
QueryInstrStatus  IVIDOWNCONVERTER_ATTR_QUERY_INSTRUMENT_STATUS   
Cache             IVIDOWNCONVERTER_ATTR_CACHE   
Simulate          IVIDOWNCONVERTER_ATTR_SIMULATE  
RecordCoercions   IVIDOWNCONVERTER_ATTR_RECORD_COERCIONS

The format of this string is, "AttributeName=Value" where AttributeName is the name of the attribute and Value is the value to which the attribute will be set. To set multiple attributes, separate their assignments with a comma. 

If you pass NULL or an empty string for this parameter, the session uses the default values for the attributes.  You can override the default values by assigning a value explicitly in a string you pass for this parameter. You do not have to specify all of the attributes and may leave any of them out. If you do not specify one of the attributes, its default value will be used. 

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
    /� 9   �  �    Logical Name                      3� 9 �       ID Query                          5� 9� �       Reset Device                      6� �� �  �    Instrument Handle                 9W#����  �    Status                            @) �  � �    Option String                   ����  ���                                            "SampleDownconverter"   Yes VI_TRUE No VI_FALSE   Yes VI_TRUE No VI_FALSE    	           	           5"Simulate=0,RangeCheck=1,QueryInstrStatus=0,Cache=1"    :(c) 2009-2017 National Instruments.  All Rights Reserved.    ]    This function configures whether the RF input signal completely bypasses the downconverter.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    �    Enables or disables the downconverter bypass. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_BYPASS attribute.

Valid Values: 

VI_TRUE - The RF input signal completely bypasses all stages of the downconverter.
VI_FALSE - The RF input signal does not bypass the downconverter and flows through the normal signal path as dictated by other device settings.

Default Value: VI_FALSE    Iy-   �  �    Instrument Handle                 JB#����  �    Status                            Q 9 � �       Bypass                                 	           True VI_TRUE False VI_FALSE    ]    This function configures whether to bypass the preselection filter for the active RF input.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    n    Enables or disables bypassing the preselection filter for the active RF input. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_PRESELECTOR_ENABLED attribute.

Valid Values: 

VI_TRUE - The RF input signal flows into the downconverter preselector.
VI_FALSE - The RF input signal does not flow into the downconverter preselector.

Default Value: VI_FALSE    S�-   �  �    Instrument Handle                 T�#����  �    Status                            [t 9 � �       Preselector Enabled                    	           True VI_TRUE False VI_FALSE    T    This function configures the amount of attenuation applied to the active RF input.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    Specifies the amount of attenuation, or gain, to apply to the active RF input. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_RF_INPUT_ATTENUATION attribute. 

Units: dB

Default Value: 0.0 dB    ^-   �  �    Instrument Handle                 ^�#����  �    Status                            e� 9 � �  �    RF Input Attenuation (dB)              	           0.0    @    This function configures the frequency of the active RF input.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    Specifies the frequency of the active RF input. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_RF_INPUT_FREQUENCY attribute. 

Units: Hertz

Default Value: 100.0 MHz    g�-   �  �    Instrument Handle                 hL#����  �    Status                            o 9 � �  �    RF Input Frequency (Hz)                	           100.0e6   �    This function returns the specific driver defined RF input name that corresponds to the one-based index that you specify. If the driver defines a qualified RF input name, this function returns the qualified name. If the value that you pass for the index parameter is less than one or greater than the value of the IVIDOWNCONVERTER_ATTR_RF_INPUT_COUNT attribute, the function returns an empty string in the name parameter and returns the Invalid Value error.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     Q    Specifies the one-based index of the RF input name to return.

Default Value: 1     E    Specifies the buffer size for the name parameter.

Default Value: 0     �    Returns the RF input name that corresponds to the index. 

The name buffer must contain at least as many elements as the value you specify with the nameBufferSize parameter.
    rg-   �  �    Instrument Handle                 s/#����  �    Status or Required Size           z 9  �  �    Index                             zZ 9 � �  �    Name Buffer Size                  z� 9� �  �    Name                                   	           1    0    	            Y    This function selects one of the available RF inputs and set it as the active RF input.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    r    Specifies the active RF input name. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_ACTIVE_RF_INPUT attribute.

Users who want to achieve interchangeability should use a virtual RF input name. The virtual RF input name should be sufficiently specific to the test system such that it is unlikely to conflict with a physical RF input name.

Default Value: ""    |�-   �  �    Instrument Handle                 }�#����  �    Status                            �� 9 � �  �    RF Input Name                          	           ""    N    This function configures the RF input frequency as fixed, swept, or stepped.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    �    Specifies the frequency sweep mode of the RF input signal. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_FREQUENCY_SWEEP_MODE attribute.

Valid Values:
IVIDOWNCONVERTER_VAL_FREQUENCY_SWEEP_MODE_NONE - The RF input is a non-swept signal (continuous wave). The driver uses frequency settings from the base capability group.

IVIDOWNCONVERTER_VAL_FREQUENCY_SWEEP_MODE_SWEEP - Sweeps the RF input signal frequency in analog form (non-stepped). Refer to the IviDownconverterAnalogyFrequencySweep extension group.

IVIDOWNCONVERTER_VAL_FREQUENCY_SWEEP_MODE_STEP - Sweeps  the RF input signal frequency in steps. Refer to the IviDownconverterFrequencyStep extension group.

IVIDOWNCONVERTER_VAL_FREQUENCY_SWEEP_MODE_LIST - Uses a list to sweep the RF input signal frequency. Refer to the  IviDownconverterFrequencySweepList extension group.

Default value:
IVIDOWNCONVERTER_VAL_FREQUENCY_SWEEP_MODE_NONE        Specifies the trigger source used to start an LO sweep operation. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_FREQUENCY_SWEEP_TRIGGER_SOURCE attribute.

Valid Values:
IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_NONE - No trigger source.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_IMMEDIATE - Trigger immediately.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_EXTERNAL - External trigger source.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_INTERNAL - Internal trigger source.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_SOFTWARE - Software trigger.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LAN0 - LAN0 (LXI defined "LAN0" LAN message).

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LAN1 - LAN1 (LXI defined "LAN1" LAN message).

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LAN2 - LAN2 (LXI defined "LAN2" LAN message).

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LAN3 - LAN3 (LXI defined "LAN3" LAN message).

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LAN4 - LAN4 (LXI defined "LAN4" LAN message).

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LAN5 - LAN5 (LXI defined "LAN5" LAN message).

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LAN6 - LAN6 (LXI defined "LAN6" LAN message).

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LAN7 - LAN7 (LXI defined "LAN7" LAN message).

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LXI0 - LXI Trigger Bus Line 0.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LXI1 - LXI Trigger Bus Line 1.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LXI2 - LXI Trigger Bus Line 2.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LXI3 - LXI Trigger Bus Line 3.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LXI4 - LXI Trigger Bus Line 4.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LXI5 - LXI Trigger Bus Line 5.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LXI6 - LXI Trigger Bus Line 6.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LXI7 - LXI Trigger Bus Line 7.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_TTL0 - TTL Interface 0.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_TTL1 - TTL Interface 1.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_TTL2 - TTL Interface 2.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_TTL3 - TTL Interface 3.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_TTL4 - TTL Interface 4.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_TTL5 - TTL Interface 5.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_TTL6 - TTL Interface 6.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_TTL7 - TTL Interface 7.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_PXI_STAR - PXI Star Interface.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_PXI_TRIG0 - PXI Trigger Bus Line 0.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_PXI_TRIG1 - PXI Trigger Bus Line 1.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_PXI_TRIG2 - PXI Trigger Bus Line 2.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_PXI_TRIG3 - PXI Trigger Bus Line 3.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_PXI_TRIG4 - PXI Trigger Bus Line 4.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_PXI_TRIG5 - PXI Trigger Bus Line 5.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_PXI_TRIG6 - PXI Trigger Bus Line 6.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_PXI_TRIG7 - PXI Trigger Bus Line 7.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_PXIE_DSTARA - PXI Express DStar Line A.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_PXIE_DSTARB - PXI Express DStar Line B.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_PXIE_DSTARC - PXI Express DStar Line C.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_RTSI0 - RTSI Bus Line 0.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_RTSI1 - RTSI Bus Line 1.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_RTSI2 - RTSI Bus Line 2.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_RTSI3 - RTSI Bus Line 3.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_RTSI4 - RTSI Bus Line 4.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_RTSI5 - RTSI Bus Line 5.

IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_RTSI6 - RTSI Bus Line 6.

Default Value:
IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_NONE    �-   �  �    Instrument Handle                 ��#����  �    Status                            �� 9  � �    Frequency Sweep Mode              �A 9 � � �    Trigger Source                         	                      �None IVIDOWNCONVERTER_VAL_FREQUENCY_SWEEP_MODE_NONE Sweep IVIDOWNCONVERTER_VAL_FREQUENCY_SWEEP_MODE_SWEEP Step IVIDOWNCONVERTER_VAL_FREQUENCY_SWEEP_MODE_STEP List IVIDOWNCONVERTER_VAL_FREQUENCY_SWEEP_MODE_LIST            0  	RNone IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_NONE Immediate IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_IMMEDIATE External IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_EXTERNAL Internal IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_INTERNAL Software IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_SOFTWARE LAN0 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LAN0 LAN1 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LAN1 LAN2 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LAN2 LAN3 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LAN3 LAN4 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LAN4 LAN5 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LAN5 LAN6 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LAN6 LAN7 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LAN7 LXI0 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LXI0 LXI1 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LXI1 LXI2 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LXI2 LXI3 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LXI3 LXI4 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LXI4 LXI5 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LXI5 LXI6 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LXI6 LXI7 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_LXI7 TTL0 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_TTL0 TTL1 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_TTL1 TTL2 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_TTL2 TTL3 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_TTL3 TTL4 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_TTL4 TTL5 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_TTL5 TTL6 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_TTL6 TTL7 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_TTL7 PXI_STAR IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_PXI_STAR PXI_TRIG0 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_PXI_TRIG0 PXI_TRIG1 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_PXI_TRIG1 PXI_TRIG2 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_PXI_TRIG2 PXI_TRIG3 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_PXI_TRIG3 PXI_TRIG4 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_PXI_TRIG4 PXI_TRIG5 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_PXI_TRIG5 PXI_TRIG6 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_PXI_TRIG6 PXI_TRIG7 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_PXI_TRIG7 PXIe_DSTARA IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_PXIE_DSTARA PXIe_DSTARB IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_PXIE_DSTARB PXIe_DSTARC IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_PXIE_DSTARC RTSI0 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_RTSI0 RTSI1 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_RTSI1 RTSI2 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_RTSI2 RTSI3 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_RTSI3 RTSI4 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_RTSI4 RTSI5 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_RTSI5 RTSI6 IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_RTSI6    ?    This function configures the duration of one frequency sweep.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    Specifies the duration of one LO sweep from start to stop frequency. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_FREQUENCY_SWEEP_TIME attribute.

Units: Seconds

Default Value: 1.0 s    ��-   �  �    Instrument Handle                 ��#����  �    Status                            �_ 9 � �  �    Frequency Sweep Time (s)               	           1.0   ]    This function returns the band crossing information for sweeps. Sweep timing is influenced by points in the sweep where frequency bands are crossed. This function returns pairs of start/stop frequencies over which the sweep timing is constant. Sweep timing between different pairs of start/stop frequencies is variable. Thus, you can choose to use the IviDownconverter_WaitUntilSettled function between sweeps across bands. The bands are returned in ascending order of frequency. Use the IVIDOWNCONVERTER_ATTR_NUM_BANDS attribute to determine how many pairs of frequencies are returned by this function.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     l    Specifies the number of elements in the startFrequencies and stopFrequencies arrays.

Default Value: 2048
     �    A user-allocated buffer into which the start frequencies for each band are stored. Each value is paired with the corresponding element in the stopFrequencies output array. The frequencies are returned in ascending order.

Units: Hertz     �    A user-allocated buffer into which the stop frequencies for each band are stored. Each value is paired with the corresponding element in the startFrequencies output array. The frequencies are returned in ascending order.

Units: Hertz     ^    Returns the actual number of frequency values in each frequency output array.

Units: Hertz     �J-   �  �    Instrument Handle                 �#����  �    Status                            �� 9  �  �    Buffer Size                       �Y 9 � �  �    Start Frequencies                 �M 9� �  �    Stop Frequencies                  �A �  �  �    Actual Number of Frequencies           	           2048    	            	            	            �    This function configures the start and stop frequency attributes that control the frequency sweep of the RF input signal.

If the stop frequency is less than the start frequency, the frequency decreases during the sweep.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors        Specifies the start frequency of the LO sweep. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_FREQUENCY_SWEEP_START attribute.

Units: Hertz

Default Value: 100.0 kHz

Note: If the stop frequency is less than the start frequency, the frequency decreases during the sweep.        Specifies the stop frequency of the LO sweep. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_FREQUENCY_SWEEP_STOP attribute.

Units: Hertz

Default Value: 100.0 MHz

Note: If the stop frequency is less than the start frequency, the frequency decreases during the sweep.     �-   �  �    Instrument Handle                 ��#����  �    Status                            ˢ 9  �  �    Frequency Sweep Start (Hz)        �� 9 � �  �    Frequency Sweep Stop (Hz)              	           100.0e3    100.0e6    �    This function configures the attributes that control the step frequencies of the input frequency. If the stop frequency is less than the start frequency, the frequency decreases during the sweep.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Specifies the spacing of the step sweep. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_FREQUENCY_STEP_SCALING attribute.

Valid Values:
IVIDOWNCONVERTER_VAL_FREQUENCY_STEP_SCALING_LINEAR - Enables linear scaling for step sizes in stepped sweeps.

IVIDOWNCONVERTER_VAL_FREQUENCY_STEP_SCALING_LOGARITHMIC - Enables logarithmic scaling for step sizes in stepped sweeps.

Default value:
IVIDOWNCONVERTER_VAL_FREQUENCY_STEP_SCALING_LINEAR    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    "    Specifies the start frequency of the stepped sweep. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_FREQUENCY_STEP_START attribute.

Units: Hertz

Default Value: 500.0 kHz

Note: If the stop frequency is less than the start frequency, the frequency decreases during the sweep.        Specifies the stop frequency of the stepped sweep. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_FREQUENCY_STEP_STOP attribute.

Units: Hertz

Default Value: 5.0 MHz

Note: If the stop frequency is less than the start frequency, the frequency decreases during the sweep.    �    Specifies the step size. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_FREQUENCY_STEP_SIZE attribute.

Default Value: 100.0e3

Note: The units are hertz if the IVIDOWNCONVERTER_ATTR_FREQUENCY_STEP_SCALING attribute is IVIDOWNCONVERTER_VAL_FREQUENCY_STEP_SCALING_LINEAR and unitless (factor) if the IVIDOWNCONVERTER_ATTR_FREQUENCY_STEP_SCALING attribute is IVIDOWNCONVERTER_VAL_FREQUENCY_STEP_SCALING_LOGARITHMIC.    ϴ-   �  �    Instrument Handle                 �} 9� � �    Frequency Step Scaling            �F#����  �    Status                            � 9  �  �    Frequency Step Start (Hz)         �B 9 � �  �    Frequency Step Stop (Hz)          �h �  �  �    Frequency Step Size                               ~Linear IVIDOWNCONVERTER_VAL_FREQUENCY_STEP_SCALING_LINEAR Logarithmic IVIDOWNCONVERTER_VAL_FREQUENCY_STEP_SCALING_LOGARITHMIC    	           500.0e3    5.0e6    100.0e3    P    This function configures the attributes that control frequency stepping dwell.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    �    Enables or disables single step mode. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_FREQUENCY_STEP_SINGLE_STEP_ENABLED attribute.

Valid Values: 

VI_TRUE - Enables single step mode. The frequency sweep advances when the next trigger event occurs.
VI_FALSE - Disables single step mode. The frequency sweep advances immediately after the dwell time ends.

Default Value: VI_FALSE    t    Specifies the duration of one frequency step. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_FREQUENCY_STEP_DWELL attribute.

Units: Seconds

Default Value: 1.0 s

Note: The dwell time starts immediately at the start of each step. No settling time is added. This value is valid only when IVIDOWNCONVERTER_ATTR_FREQUENCY_STEP_SINGLE_STEP_ENABLED is VI_FALSE.    �n-   �  �    Instrument Handle                 �7#����  �    Status                            �	 9 P �       Single Step Enabled               � 9 � �  �    Frequency Step Dwell (s)               	           True VI_TRUE False VI_FALSE    1.0    T    This function resets the current frequency step to the frequency step start value.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    �}-   �  �    Instrument Handle                 �E#����  �    Status                                 	           9    This function creates a named list of frequency values.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     O    Specifies the number of frequencies in the frequency list.

Default Value: 0
     �    Specifies the array of frequency values to become elements of the list. The array must have at least as many elements as the value in the frequencyListBufferSize parameter.

Units: Hertz
     H    Specifies the name of the frequency list to create.

Default Value: ""    ��-   �  �    Instrument Handle                 ��#����  �    Status                            �m 9 � �  �    Frequency List Buffer Size        �� 9� � �    Frequency List                    �� 9  �  �    Name                                   	           0        ""    A    This function deletes all lists from the pool of defined lists.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    �J-   �  �    Instrument Handle                 �#����  �    Status                                 	           O    This function configures the attributes that control frequency list stepping.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    �    Enables or disables single step mode. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_FREQUENCY_SWEEP_LIST_SINGLE_STEP_ENABLED attribute.

Valid Values: 

VI_TRUE - Enables single step mode. The frequency list advances when the next trigger event occurs.
VI_FALSE - Disables single step mode. The frequency list advances immediately after the dwell time ends.

Default Value: VI_FALSE    (    Specifies the duration of one frequency step. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_FREQUENCY_SWEEP_LIST_DWELL attribute.

Units: Seconds

Default Value: 1.0 s

Note: This value is valid only when IVIDOWNCONVERTER_ATTR_FREQUENCY_SWEEP_LIST_SINGLE_STEP_ENABLED is VI_FALSE.   �-   �  �    Instrument Handle                #����  �    Status                           Q 9 P �       Single Step Enabled              � 9 � �  �    List Dwell (s)                         	           True VI_TRUE False VI_FALSE    1.0    A    This function resets the current list to the first entry value.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors   j-   �  �    Instrument Handle                3#����  �    Status                                 	           :    This function configures the IF output filter bandwidth.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    �    Specifies the maximum effective IF signal bandwidth that the downconverter's active IF output can present to the digitizer. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_IF_OUTPUT_FILTER_BANDWIDTH attribute.

This value is a measure of the spectral width between two points for which the amplitude profile is 3 dB below a peak close to mid band.

Units: Hertz

Default Value: 1.0 MHz   �-   �  �    Instrument Handle                �#����  �    Status                           "\ 9 � �  �    IF Output Filter Bandwidth (Hz)        	           1.0e6    C    This function configures whether the active IF output is enabled.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    �    Enables or disables the active IF output. You can enable only a single IF output at a time. When you enable a particular IF output, all other IF outputs are disabled. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_IF_OUTPUT_ENABLED attribute.

Valid Values: 

VI_TRUE - Enables IF output. The converted RF input signal appears at the device active output terminals.
VI_FALSE - Disables IF output. No signal appears at the device output.

Default Value: VI_TRUE   $�-   �  �    Instrument Handle                %�#����  �    Status                           ,� 9 � �       IF Output Enabled                      	          True VI_TRUE False VI_FALSE    5    This function configures the active IF output gain.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    Specifies the amount of gain or attenuation to apply to the active IF output. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_IF_OUTPUT_GAIN attribute.

Units: dB

Default Value: 0.0 dB   /-   �  �    Instrument Handle                0G#����  �    Status                           7 9 � �  �    IF Output Gain (dB)                    	           0.0    P    This function configures the bandwidth of the active IF output video detector.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    Specifies the bandwidth of the IF output video detection filter. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_IF_OUTPUT_VIDEO_DETECTOR_BANDWIDTH attribute.

Units: Hertz

Default Value: 1.0 MHz   8�-   �  �    Instrument Handle                9�#����  �    Status                           @� 9 � �  �    Video Detector Bandwidth (Hz)          	           1.0e6   �    This function returns the specific driver defined IF Output name that corresponds to the one-based index that you specify. If the driver defines a qualified IF output name, this function returns the qualified name. If the value that you pass for the index parameter is less than one or greater than the value of the IVIDOWNCONVERTER_ATTR_IF_OUTPUT_COUNT attribute, the function returns an empty string in the name parameter and returns the Invalid Value error.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     H    Specifies the index of the IF output name to return.

Default Value: 1     E    Specifies the buffer size for the name parameter.

Default Value: 0     �    Returns the IF output name that corresponds to the index. 

The name buffer must contain at least as many elements as the value you specify with the nameBufferSize parameter.   C�-   �  �    Instrument Handle                D�#����  �    Status                           K� 9  �  �    Index                            K� 9 � �  �    Name Buffer Size                 L1 9� �  �    Name                                   	           1    0    	            [    This function selects one of the available IF outputs and set it as the active IF output.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    w    Specifies the active IF output name. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_ACTIVE_IF_OUTPUT attribute.

Users who want to achieve interchangeability should use a virtual IF output name. The virtual IF output name should be sufficiently specific to the test system such that it is unlikely to conflict with a physical IF output name.

Default Value: ""   N{-   �  �    Instrument Handle                OD#����  �    Status                           V 9 � �  �    IF Output Name                         	           ""    U    This function configures the external mixer bias and the external mixer bias limit.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    Specifies the external mixer bias current. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_EXTERNAL_MIXER_BIAS_LEVEL attribute. 

Units: Amps

Default Value: 0.0 A     �    Specifies the external mixer bias current limit. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_EXTERNAL_MIXER_BIAS_LIMIT attribute. 

Units: Amps

Default Value: 0.0 A   X�-   �  �    Instrument Handle                Yp#����  �    Status                           `B 9  �  �    External Mixer Bias Level (A)    `� 9 � �  �    External Mixer Bias Limit (A)          	           0.0    0.0    4    This function configures the reference oscillator.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    k    Specifies the frequency of the external reference oscillator. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_REFERENCE_OSCILLATOR_EXTERNAL_FREQUENCY attribute. 

Units: Hertz

Default Value: 10.0 MHz

Note: This value is valid only when IVIDOWNCONVERTER_ATTR_REFERENCE_OSCILLATOR_SOURCE is IVIDOWNCONVERTER_VAL_REFERENCE_OSCILLATOR_SOURCE_EXTERNAL.    �    Specifies the reference oscillator source used to generate the precise IF output frequency. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_REFERENCE_OSCILLATOR_SOURCE attribute.

Valid Values:
IVIDOWNCONVERTER_VAL_REFERENCE_OSCILLATOR_SOURCE_INTERNAL - The driver uses the internal reference oscillator.

IVIDOWNCONVERTER_VAL_REFERENCE_OSCILLATOR_SOURCE_EXTERNAL - The driver uses an external reference oscillator.

Default Value:
IVIDOWNCONVERTER_VAL_REFERENCE_OSCILLATOR_SOURCE_INTERNAL   b�-   �  �    Instrument Handle                c�#����  �    Status                           j� 9 � �  �    External Frequency (Hz)          k� 9  � �    Reference Oscillator Source            	           10.0e6               �Internal IVIDOWNCONVERTER_VAL_REFERENCE_OSCILLATOR_SOURCE_INTERNAL External IVIDOWNCONVERTER_VAL_REFERENCE_OSCILLATOR_SOURCE_EXTERNAL    �    This function configures the reference oscillator output. Many downconverters support the ability to output their frequency reference. Use this function to enable or disable that output.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    0    Enables or disables the frequency reference output. The driver uses this value to set the IVIDOWNCONVERTER_ATTR_REFERENCE_OSCILLATOR_OUTPUT_ENABLED attribute.

Valid Values: 

VI_TRUE - Enables the frequency reference output.
VI_FALSE - Disables the frequency reference output.

Default Value: VI_FALSE   p<-   �  �    Instrument Handle                q#����  �    Status                           w� 9 � �       Output Enabled                         	           True VI_TRUE False VI_FALSE   �    This function sets the value of a ViInt32 attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes. It is best to use the high-level driver functions as much as possible. They handle order dependencies and multithread locking for you. In addition, they perform status checking only after setting all of the attributes. In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change. Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors        Specifies the value to which you want to set the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control. Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>. 

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    B    Specifies the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Attributes 
  whose value cannot be set are dim. Help text is shown for 
  each attribute. Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box. If you 
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
    	    If the attribute is repeated capability-based, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not repeated capability-based, then pass VI_NULL or an empty string.

Default Value:  ""
   ~�-   �  �    Instrument Handle                s#����  �    Status                           �E � � �  �    Attribute Value                 ���� � ���                                          �c = � � �    Attribute ID                     �� =  �  �    Repeated Capability Name               	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViReal64 attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes. It is best to use the high-level driver functions as much as possible. They handle order dependencies and multithread locking for you. In addition, they perform status checking only after setting all of the attributes. In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change. Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors        Specifies the value to which you want to set the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control. Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>. 

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    A    Specifies the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Attributes 
  whose value cannot be set are dim. Help text is shown for 
  each attribute. Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box. If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViReal64
  type. If you choose to see all IVI attributes, the data types
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
    	    If the attribute is repeated capability-based, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not repeated capability-based, then pass VI_NULL or an empty string.

Default Value:  ""
   �'-   �  �    Instrument Handle                ��#����  �    Status                           �� � � �  �    Attribute Value                 ���� � ���                                          �� = � � �    Attribute ID                     �) =  �  �    Repeated Capability Name               	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViString attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes. It is best to use the high-level driver functions as much as possible. They handle order dependencies and multithread locking for you. In addition, they perform status checking only after setting all of the attributes. In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change. Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors        Specifies the value to which you want to set the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control. Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>. 

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    A    Specifies the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Attributes 
  whose value cannot be set are dim. Help text is shown for 
  each attribute. Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box. If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViString
  type. If you choose to see all IVI attributes, the data types
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
    	    If the attribute is repeated capability-based, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not repeated capability-based, then pass VI_NULL or an empty string.

Default Value:  ""
   ��-   �  �    Instrument Handle                �l#����  �    Status                           �> � � �  �    Attribute Value                 ���� � ���                                          �\ = � � �    Attribute ID                     �� =  �  �    Repeated Capability Name               	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViBoolean attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes. It is best to use the high-level driver functions as much as possible. They handle order dependencies and multithread locking for you. In addition, they perform status checking only after setting all of the attributes. In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change. Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors        Specifies the value to which you want to set the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control. Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>. 

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    C    Specifies the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Attributes 
  whose value cannot be set are dim. Help text is shown for 
  each attribute. Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box. If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViBoolean
  type. If you choose to see all IVI attributes, the data types
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
    	    If the attribute is repeated capability-based, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not repeated capability-based, then pass VI_NULL or an empty string.

Default Value:  ""
   � -   �  �    Instrument Handle                ��#����  �    Status                           ɻ � � �  �    Attribute Value                 ���� � ���                                          �� = � � �    Attribute ID                     �$ =  �  �    Repeated Capability Name               	               .Press <ENTER> for a list of 
value constants.                0    ""   �    This function sets the value of a ViSession attribute.

This is a low-level function that you can use to set the values of instrument-specific attributes and inherent IVI attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid or is different than the value you specify. 

This instrument driver contains high-level functions that set most of the instrument attributes. It is best to use the high-level driver functions as much as possible. They handle order dependencies and multithread locking for you. In addition, they perform status checking only after setting all of the attributes. In contrast, when you set multiple attributes using the SetAttribute functions, the functions check the instrument status after each call.

Also, when state caching is enabled, the high-level functions that configure multiple attributes perform instrument I/O only for the attributes whose value you change. Thus, you can safely call the high-level functions without the penalty of redundant instrument I/O.


     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors        Pass the value to which you want to set the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control. Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>. 

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    	    If the attribute is repeated capability-based, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not repeated capability-based, then pass VI_NULL or an empty string.

Default Value:  ""
    >    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Attributes 
  whose value cannot be set are dim. Help text is shown for 
  each attribute. Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box. If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViSession
  type. If you choose to see all IVI attributes, the data types
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
   ؟-   �  �    Instrument Handle                �g#����  �    Status                           �9 � � �  �    Attribute Value                  �R =  �  �    Repeated Capability Name         �c = � � �    Attribute ID                    ���� � ���                                                	               ""                0    .Press <ENTER> for a list of 
value constants.   �    This function queries the value of a ViInt32 attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    �    Returns the current value of the attribute. Pass the address of a ViInt32 variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control. 
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>. 
    	    If the attribute is repeated capability-based, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not repeated capability-based, then pass VI_NULL or an empty string.

Default Value:  ""
    �    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Help text is
  shown for each attribute. Select an attribute by 
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
   � -   �  �    Instrument Handle                ��#����  �    Status                           � � � �  �    Attribute Value                  �U =  �  �    Repeated Capability Name         �f = � � �    Attribute ID                           	           	            ""                0   �    This function queries the value of a ViReal64 attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    �    Returns the current value of the attribute. Pass the address of a ViReal64 variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control. 
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>. 
    	    If the attribute is repeated capability-based, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not repeated capability-based, then pass VI_NULL or an empty string.

Default Value:  ""
    �    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Help text is
  shown for each attribute. Select an attribute by 
  double-clicking on it or by selecting it and then pressing
  <ENTER>.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViReal64
  type. If you choose to see all IVI attributes, the data types
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
   ��-   �  �    Instrument Handle                ��#����  �    Status                           � � � �  �    Attribute Value                  S =  �  �    Repeated Capability Name         d = � � �    Attribute ID                           	           	           ""                0   �    This function queries the value of a ViString attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

You must provide a ViChar array to serve as a buffer for the value. You pass the number of bytes in the buffer as the Buffer Size parameter. If the current value of the attribute, including the terminating NUL byte, is larger than the size you indicate in the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you want to call this function just to get the required buffer size, you can pass 0 for the Buffer Size and VI_NULL for the Attribute Value buffer. 

If you want the function to fill in the buffer regardless of the   number of bytes in the value, pass a negative number for the Buffer Size parameter. 

If state caching is available for the instrument driver and you have not disabled caching through MAX or through the optionsString parameter of the IviDownconverter_InitWithOptions function, the IVI Engine caches the string between multiple invokes of this function until the user fetches the whole string. Otherwise, this function queries the instrument to refresh the string attribute value in each function call.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    "    The buffer in which the function returns the current value of the attribute. The buffer must be of type ViChar and have at least as many bytes as indicated in the Buffer Size parameter.

If the current value of the attribute, including the terminating NUL byte, contains more bytes that you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you specify 0 for the Buffer Size parameter, you can pass VI_NULL for this parameter.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control. 
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>. 
    	    If the attribute is repeated capability-based, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not repeated capability-based, then pass VI_NULL or an empty string.

Default Value:  ""
    �    Pass the number of bytes in the ViChar array you specify for the Attribute Value parameter. 

If the current value of the attribute, including the terminating NUL byte, contains more bytes that you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Attribute Value buffer parameter.

Default Value: 512    �    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Help text is
  shown for each attribute. Select an attribute by 
  double-clicking on it or by selecting it and then pressing
  <ENTER>.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViString
  type. If you choose to see all IVI attributes, the data types
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
   -   �  �    Instrument Handle                �#����  �    Status or Required Size          � � L � �    Attribute Value                   � =  �  �    Repeated Capability Name         !� =� �  �    Buffer Size                      $� = � � �    Attribute ID                           	           	            ""    512                0   �    This function queries the value of a ViBoolean attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    �    Returns the current value of the attribute. Pass the address of a ViBoolean variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control. 
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>. 
    	    If the attribute is repeated capability-based, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not repeated capability-based, then pass VI_NULL or an empty string.

Default Value:  ""
    �    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Help text is
  shown for each attribute. Select an attribute by 
  double-clicking on it or by selecting it and then pressing
  <ENTER>.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViBoolean
  type. If you choose to see all IVI attributes, the data types
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
   ,�-   �  �    Instrument Handle                -y#����  �    Status                           4K � � �  �    Attribute Value                  6 =  �  �    Repeated Capability Name         7 = � � �    Attribute ID                           	           	            ""                0   �    This function queries the value of a ViSession attribute.

You can use this function to get the values of instrument- specific attributes and inherent IVI attributes. If the attribute represents an instrument state, this function performs instrument I/O in the following cases:

- State caching is disabled for the entire session or for the particular attribute.

- State caching is enabled and the currently cached value is invalid. 

     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    �    Returns the current value of the attribute. Pass the address of a ViSession variable.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has named constants as valid values, you can view a
  list of the constants by pressing <ENTER> on this control. 
  Select a value by double-clicking on it or by selecting it and 
  then pressing <ENTER>. 
    	    If the attribute is repeated capability-based, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not repeated capability-based, then pass VI_NULL or an empty string.

Default Value:  ""
    �    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Help text is
  shown for each attribute. Select an attribute by 
  double-clicking on it or by selecting it and then pressing
  <ENTER>.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViSession
  type. If you choose to see all IVI attributes, the data types
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
   >�-   �  �    Instrument Handle                ?|#����  �    Status                           FN � � �  �    Attribute Value                  H =  �  �    Repeated Capability Name         I = � � �    Attribute ID                           	           	            ""                0    S    This function checks the validity of a value you specify for a ViInt32 attribute.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    &    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control. Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>. 

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    	    If the attribute is repeated capability-based, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not repeated capability-based, then pass VI_NULL or an empty string.

Default Value:  ""
    <    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Attributes 
  whose value cannot be set are dim. Help text is shown for 
  each attribute. Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box. If you 
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
   OT-   �  �    Instrument Handle                P#����  �    Status                           V� � � �  �    Attribute Value                  Y =  �  �    Repeated Capability Name        ���� � ���                                          Z- = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0    T    This function checks the validity of a value you specify for a ViReal64 attribute.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    &    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control. Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>. 

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    	    If the attribute is repeated capability-based, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not repeated capability-based, then pass VI_NULL or an empty string.

Default Value:  ""
    =    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Attributes 
  whose value cannot be set are dim. Help text is shown for 
  each attribute. Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box. If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViReal64
  type. If you choose to see all IVI attributes, the data types
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
   ah-   �  �    Instrument Handle                b0#����  �    Status                           i � � �  �    Attribute Value                  k0 =  �  �    Repeated Capability Name        ���� � ���                                          lA = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0    T    This function checks the validity of a value you specify for a ViString attribute.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    &    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control. Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>. 

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    	    If the attribute is repeated capability-based, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not repeated capability-based, then pass VI_NULL or an empty string.

Default Value:  ""
    =    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Attributes 
  whose value cannot be set are dim. Help text is shown for 
  each attribute. Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box. If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViString
  type. If you choose to see all IVI attributes, the data types
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
   s}-   �  �    Instrument Handle                tE#����  �    Status                           { � � �  �    Attribute Value                  }E =  �  �    Repeated Capability Name        ���� � ���                                          ~V = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0    U    This function checks the validity of a value you specify for a ViBoolean attribute.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    &    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control. Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>. 

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    	    If the attribute is repeated capability-based, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not repeated capability-based, then pass VI_NULL or an empty string.

Default Value:  ""
    ?    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Attributes 
  whose value cannot be set are dim. Help text is shown for 
  each attribute. Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box. If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViBoolean
  type. If you choose to see all IVI attributes, the data types
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
   ��-   �  �    Instrument Handle                �[#����  �    Status                           �- � � �  �    Attribute Value                  �[ =  �  �    Repeated Capability Name        ���� � ���                                          �l = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0    U    This function checks the validity of a value you specify for a ViSession attribute.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    &    Pass the value which you want to verify as a valid value for the attribute.

From the function panel window, you can use this control as follows.

- If the attribute currently showing in the Attribute ID ring
  control has constants as valid values, you can view a list of
  the constants by pressing <ENTER> on this control. Select a
  value by double-clicking on it or by selecting it and then
  pressing <ENTER>. 

  Note:  Some of the values might not be valid depending on the
  current settings of the instrument session.

Default Value: none    	    If the attribute is repeated capability-based, this parameter specifies the name of the repeated capability on which to set the value of the attribute. If the attribute does not repeated capability-based, then pass VI_NULL or an empty string.

Default Value:  ""
    ?    Pass the ID of an attribute.

From the function panel window, you can use this control as follows.

- Click on the control or press <ENTER>, <spacebar>, or
  <ctrl-down arrow>, to display a dialog box containing a
  hierarchical list of the available attributes. Attributes 
  whose value cannot be set are dim. Help text is shown for 
  each attribute. Select an attribute by double-clicking on it  
  or by selecting it and then pressing <ENTER>.

  Read-only attributes appear dim in the list box. If you 
  select a read-only attribute, an error message appears.

  A ring control at the top of the dialog box allows you to see 
  all IVI attributes or only the attributes of the ViSession
  type. If you choose to see all IVI attributes, the data types
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
   ��-   �  �    Instrument Handle                �s#����  �    Status                           �E � � �  �    Attribute Value                  �s =  �  �    Repeated Capability Name        ���� � ���                                          �� = � � �    Attribute ID                           	               ""    .Press <ENTER> for a list of 
value constants.                0       This function performs calibration on the entire device. This call can be blocking or can be non-blocking, depending on the instrument implementation. If it is non-blocking, you can use the IviDownconverter_IsCalibrationComplete function to determine when the calibration is complete.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
   ��#����  �    Status                           �^-   �  �    Instrument Handle                  	              v    This function queries the instrument to determine whether the instrument is currently in a valid self-calibrated state or whether it needs to be calibrated.

This function returns the Calibrated value in the status parameter when the device does not need further self-calibration. If it does need self-calibration, the driver returns the Uncalibrated value. If the driver cannot query the instrument to determine its state, the driver returns the Calibrated Status Unknown value.

Note: This function does not check the instrument status. Typically, you call this function only in a sequence of calls to other low-level driver functions. The sequence performs one operation. Use the low-level functions to optimize one or more aspects of interaction with the instrument. To check the instrument status, call the IviDownconverter_error_query function at the conclusion of the sequence.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    W    Returns whether the status of the calibration operation.

Defined Values:
IVIDOWNCONVERTER_VAL_CALIBRATED - The downconverter is calibrated.

IVIDOWNCONVERTER_VAL_UNCALIBRATED - The downconverter requires further calibration.

IVIDOWNCONVERTER_VAL_CALIBRATED_STATUS_UNKNOWN - The downconverter cannot determine the status of the calibration.   �-   �  �    Instrument Handle                ��#����  �    Status                           �� > � �  �    Status                                 	           	           �    This function queries the instrument to determine the status of all calibration operations initiated by the IviDownconverter_Calibrate function.

This function returns the Calibration Complete value in the status parameter only when calibration is complete. If some calibration operations are still in progress, the driver returns the Calibration In Progress value. If the driver cannot query the instrument to determine its state, the driver returns the Calibration Status Unknown value.

Note: This function does not check the instrument status. Typically, you call this function only in a sequence of calls to other low-level driver functions. The sequence performs one operation. You use the low-level functions to optimize one or more aspects of interaction with the instrument. To check the instrument status, call the IviDownconverter_error_query function at the conclusion of the sequence.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    �    Returns the status of the calibration operation.

Defined Values:
IVIDOWNCONVERTER_VAL_CALIBRATION_COMPLETE - The downconverter has completed the calibration.

IVIDOWNCONVERTER_VAL_CALIBRATION_IN_PROGRESS - The downconverter is still performing the calibration.

IVIDOWNCONVERTER_VAL_CALIBRATION_STATUS_UNKNOWN - The downconverter cannot determine the status of the calibration.

IVIDOWNCONVERTER_VAL_CALIBRATION_FAILED - The downconverter calibration failed.   �_-   �  �    Instrument Handle                �(#����  �    Status                           �� > � �  �    Status                                 	           	           '    This function sends a command to trigger the downconverter. Call this function if you set a trigger source to a software trigger value. The following attributes and functions can set the trigger source to a software trigger.

Functions: 
IviDownconverter_ConfigureFrequencySweep

Attributes:
IVIDOWNCONVERTER_ATTR_FREQUENCY_SWEEP_TRIGGER_SOURCE

You must set the IVIDOWNCONVERTER_ATTR_FREQUENCY_SWEEP_TRIGGER_SOURCE attribute to IVIDOWNCONVERTER_VAL_TRIGGER_SOURCE_SOFTWARE before you can successfully call this function.
If you do not, this function does not send the software trigger and returns the IVIDOWNCONVERTER_ERROR_TRIGGER_NOT_SOFTWARE error.

Note: This function does not check the instrument status. Typically, you call this function only in a sequence of calls to other low-level driver functions. The sequence performs one operation. You use the low-level functions to optimize one or more aspects of interaction with the instrument. To check the instrument status, call the IviDownconverter_error_query function at the conclusion of the sequence.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
   ѹ#����  �    Status                           ؋-   �  �    Instrument Handle                  	               �    This function waits until all of the signals flowing through the downconverter have settled. If the signals do not settle within the time period you specify with the maximumTime parameter, the function returns the Max Time Exceeded error.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors        Specifies the maximum length of time to allow for this function to complete.

Units:  milliseconds

Defined Values:
IVIDOWNCONVERTER_VAL_MAX_TIME_IMMEDIATE (0) - The function returns immediately. If the downconverter has not settled, the function returns an error.
IVIDOWNCONVERTER_VAL_MAX_TIME_INFINITE (-1) - The function waits indefinitely for the downconverter to settle.

Default Value: 5000 ms

Note: This parameter applies only to this function. It has no effect on other timeout parameters or attributes.
   ��-   �  �    Instrument Handle                ۏ#����  �    Status                           �a 9 � �  �    Maximum Time (ms)                      	           5000   *    This function waits until the configured frequency sweep is complete. If no frequency sweep is currently running, this function returns immediately. If the sweep does not complete within the time period you specify with the maximumTime parameter, the function returns the Max Time Exceeded error.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors        Specifies the maximum length of time to allow for this function to complete.

Units:  milliseconds

Defined Values:
IVIDOWNCONVERTER_VAL_MAX_TIME_IMMEDIATE (0) - The function returns immediately. If the sweep has not completed, the function returns an error.
IVIDOWNCONVERTER_VAL_MAX_TIME_INFINITE (-1) - The function waits indefinitely for the frequency sweep to complete.

Default Value: 5000 ms

Note: This parameter applies only to this function. It has no effect on other timeout parameters or attributes.
   �U-   �  �    Instrument Handle                �#����  �    Status                           �� 9 � �  �    Maximum Time (ms)                      	           5000   %    This function resets the instrument to a known state and sends initialization commands to the instrument. The initialization commands set instrument settings such as Headers Off, Short Command form, and Data Transfer Binary to the state necessary for the operation of the instrument driver.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
   ��#����  �    Status                           ��-   �  �    Instrument Handle                  	                  This function resets the instrument and applies initial user specified settings from the Logical Name which was used to initialize the session. If the session was created without a Logical Name, this function is equivalent to the IviDownconverter_reset function.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
   �#����  �    Status                           �-   �  �    Instrument Handle                  	               �    This function places the instrument in a quiescent state where it has minimal or no impact on the system to which it is connected.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
   �#����  �    Status                           
t-   �  �    Instrument Handle                  	               Z    This function runs the instrument's self test routine and returns the test result(s). 

    $    This control contains the value returned from the instrument self test. Zero means success. For any other code, see the device's operator's manual.

Self-Test Code    Description
---------------------------------------
   0              Passed self test
   1              Self test failed

     �    Returns the self-test response string from the instrument. See the device's operation manual for an explanation of the string's contents.

You must pass a ViChar array with at least 256 bytes.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    9  �  �    Self Test Result                 E 9 � � ,    Self-Test Message                #����  �    Status                           �-   �  �    Instrument Handle                  	           	            	               `    This function returns the revision numbers of the instrument driver and instrument firmware.

     �    Returns the instrument driver software revision numbers in the form of a string.

You must pass a ViChar array with at least 256 bytes.     �    Returns the instrument firmware revision numbers in the form of a string.

You must pass a ViChar array with at least 256 bytes.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None    9  �  �    Instrument Driver Revision       � 9Y �  �    Firmware Revision                *#����  �    Status                           �-   �  �    Instrument Handle                  	            	            	               V    This function reads an error code and a message from the instrument's error queue.

     B    Returns the error code read from the instrument's error queue.

     �    Returns the error message string read from the instrument's error message queue.

You must pass a ViChar array with at least 256 bytes.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
   ! 9  �  �    Error Code                       !h 9 � � ,    Error Message                    !�#����  �    Status                           (�-   �  �    Instrument Handle                  	           	            	               n    This function converts a status code returned by an instrument driver function into a user-readable string.     %    Specifies the Status parameter that is returned from any of the instrument driver functions.

Default Value:  0  (VI_SUCCESS)

IviDownconverter Status Codes:
Status    Description
-------------------------------------------------
ERRORS:
BFFA1001  The trigger source is not set to software trigger.
BFFA2001  The selected frequency list is not defined.
BFFA2002  Maximum time exceeded before the operation completed.

IVI Engine Status Codes:
Status    Description
-------------------------------------------------
ERRORS:
BFFA0001  Instrument error. Call IviDownconverter_error_query.
BFFA0002  Cannot open file.
BFFA0003  Error reading from file.
BFFA0004  Error writing to file.
BFFA0005  Driver module file not found.
BFFA0006  Cannot open driver module file for reading.
BFFA0007  Driver module has invalid file format or invalid data.
BFFA0008  Driver module contains undefined references.
BFFA0009  Cannot find function in driver module.
BFFA000A  Failure loading driver module.
BFFA000B  Invalid path name.
BFFA000C  Invalid attribute.
BFFA000D  IVI attribute is not writable.
BFFA000E  IVI attribute is not readable.
BFFA000F  Invalid parameter.
BFFA0010  Invalid value.
BFFA0011  Function not supported.
BFFA0012  Attribute not supported.
BFFA0013  Value not supported.
BFFA0014  Invalid type.
BFFA0015  Types do not match.
BFFA0016  Attribute already has a value waiting to be updated.
BFFA0017  Specified item already exists.
BFFA0018  Not a valid configuration.
BFFA0019  Requested item does not exist or value not available.
BFFA001A  Requested attribute value not known.
BFFA001B  No range table.
BFFA001C  Range table is invalid.
BFFA001D  Object or item is not initialized.
BFFA001E  Non-interchangeable behavior.
BFFA001F  No channel table has been built for the session.
BFFA0020  Channel name specified is not valid.
BFFA0021  Unable to allocate system resource.
BFFA0022  Permission to access file was denied.
BFFA0023  Too many files are already open.
BFFA0024  Unable to create temporary file in target directory.
BFFA0025  All temporary filenames already used.
BFFA0026  Disk is full.
BFFA0027  Cannot find configuration file on disk.
BFFA0028  Cannot open configuration file.
BFFA0029  Error reading configuration file.
BFFA002A  Invalid ViInt32 value in configuration file.
BFFA002B  Invalid ViReal64 value in configuration file.
BFFA002C  Invalid ViBoolean value in configuration file.
BFFA002D  Entry missing from configuration file.
BFFA002E  Initialization failed in driver DLL.
BFFA002F  Driver module has unresolved external reference.
BFFA0030  Cannot find CVI Run-Time Engine.
BFFA0031  Cannot open CVI Run-Time Engine.
BFFA0032  CVI Run-Time Engine has invalid format.
BFFA0033  CVI Run-Time Engine is missing required function(s).
BFFA0034  CVI Run-Time Engine initialization failed.
BFFA0035  CVI Run-Time Engine has unresolved external reference.
BFFA0036  Failure loading CVI Run-Time Engine.
BFFA0037  Cannot open DLL for read exports.
BFFA0038  DLL file is corrupt.
BFFA0039  No DLL export table in DLL.
BFFA003A  Unknown attribute name in default configuration file.
BFFA003B  Unknown attribute value in default configuration file.
BFFA003C  Memory pointer specified is not known.
BFFA003D  Unable to find any channel strings.
BFFA003E  Duplicate channel string.
BFFA003F  Duplicate virtual channel name.
BFFA0040  Missing virtual channel name.
BFFA0041  Bad virtual channel name.
BFFA0042  Unassigned virtual channel name.
BFFA0043  Bad virtual channel assignment.
BFFA0044  Channel name required.
BFFA0045  Channel name not allowed.
BFFA0046  Attribute not valid for channel.
BFFA0047  Attribute must be channel based.
BFFA0048  Channel already excluded.
BFFA0049  Missing option name (nothing before the '=').
BFFA004A  Missing option value (nothing after the '=').
BFFA004B  Bad option name.
BFFA004C  Bad option value.
BFFA004D  Operation only valid on a class driver session.
BFFA004E  "ivi.ini" filename is reserved.
BFFA004F  Duplicate run-time configuration entry.
BFFA0050  Index parameter is one-based.
BFFA0051  Index parameter is too high.
BFFA0052  Attribute is not cacheable.
BFFA0053  You cannot export a ViAddr attribute to the end-user.
BFFA0054  Bad channel string in channel string list.
BFFA0055  Bad prefix name in default configuration file.
         
VISA Status Codes:
Status    Description
-------------------------------------------------
WARNINGS:
3FFF0002 Event enabled for one or more specified mechanisms.
3FFF0003 Event disabled for one or more specified mechanisms.
3FFF0004 Successful, but queue already empty.
3FFF0005 Specified termination character was read.
3FFF0006 Number of bytes transferred equals input count.
3FFF0077 Configuration non-existant or could not be loaded.
3FFF007D Open successful, but the device not responding.
3FFF0080 Wait successful, but more event objects available.
3FFF0082 Specified object reference is uninitialized.
3FFF0084 Attribute value not supported.
3FFF0085 Status code could not be interpreted.
3FFF0088 Specified I/O buffer type not supported.
3FFF0098 Successful,  but invoke no handlers for this event.
3FFF0099 Successful but session has nested shared locks.
3FFF009A Successful but session has nested exclusive locks.
3FFF009B Successful but operation not asynchronous.
         
ERRORS:
BFFF0000 Unknown system error (miscellaneous error).
BFFF000E Session or object reference is invalid.
BFFF000F Resource is locked.
BFFF0010 Invalid expression specified for search.
BFFF0011 Resource is not present in the system.
BFFF0012 Invalid resource reference specified. Parsing error.
BFFF0013 Invalid access mode.
BFFF0015 Timeout expired before operation completed.
BFFF0016 Unable to deallocate session data structures.
BFFF001B Specified degree is invalid.
BFFF001C Specified job identifier is invalid.
BFFF001D Attribute is not supported by the referenced object.
BFFF001E Attribute state not supported by the referenced object.
BFFF001F Specified attribute is read-only.
BFFF0020 Lock type lock not supported by this resource.
BFFF0021 Invalid access key.
BFFF0026 Specified event type not supported by the resource.
BFFF0027 Invalid mechanism specified.
BFFF0028 A handler was not installed.
BFFF0029 Handler reference either invalid or was not installed.
BFFF002A Specified event context invalid.
BFFF002D Event queue for specified type has overflowed.
BFFF002F Event type must be enabled in order to receive.
BFFF0030 User abort during transfer.
BFFF0034 Violation of raw write protocol during transfer.
BFFF0035 Violation of raw read protocol during transfer.
BFFF0036 Device reported output protocol error during transfer.
BFFF0037 Device reported input protocol error during transfer.
BFFF0038 Bus error during transfer.
BFFF0039 Unable to queue asynchronous operation.
BFFF003A Unable to start operation because setup is invalid.
BFFF003B Unable to queue the asynchronous operation.
BFFF003C Insufficient resources to perform memory allocation.
BFFF003D Invalid buffer mask specified.
BFFF003E I/O error.
BFFF003F Format specifier invalid.
BFFF0041 Format specifier not supported.
BFFF0042 Trigger line is currently in use.
BFFF004A Service request not received for the session.
BFFF004E Invalid address space specified.
BFFF0051 Invalid offset specified.
BFFF0052 Invalid access width specified.
BFFF0054 Offset not accessible from this hardware.
BFFF0055 Source and destination widths are different.
BFFF0057 Session not currently mapped.
BFFF0059 Previous response still pending.
BFFF005F No listeners condition detected.
BFFF0060 Interface not currently the controller in charge.
BFFF0061 Interface not the system controller.
BFFF0067 Session does not support this operation.
BFFF006A A parity error occurred during transfer.
BFFF006B A framing error occurred during transfer.
BFFF006C An overrun error occurred during transfer.
BFFF0070 Offset not properly aligned for operation access width.
BFFF0071 Specified user buffer not valid.
BFFF0072 Resource valid, but VISA cannot access it.
BFFF0076 Width not supported by this hardware.
BFFF0078 Invalid parameter value, parameter unknown.
BFFF0079 Invalid protocol.
BFFF007B Invalid window size.
BFFF0080 Session currently contains a mapped window.
BFFF0081 Operation not implemented.
BFFF0083 Invalid length.
BFFF0091 Invalid mode.
BFFF009C Session did not have a lock on the resource.
BFFF009D The device does not export any memory.
BFFF009E VISA-required code library not located or not loaded.
         
VXIPnP Driver Status Codes:
Status    Description
-------------------------------------------------
WARNINGS:
3FFC0101  Instrument does not have ID Query capability.
3FFC0102  Instrument does not have Reset capability.
3FFC0103  Instrument does not have Self-Test capability.
3FFC0104  Instrument does not have Error Query capability.
3FFC0105  Instrument does not have Revision Query capability.
          
ERRORS:
BFFC0001  Parameter 1 out of range, or error trying to set it.
BFFC0002  Parameter 2 out of range, or error trying to set it.
BFFC0003  Parameter 3 out of range, or error trying to set it.
BFFC0004  Parameter 4 out of range, or error trying to set it.
BFFC0005  Parameter 5 out of range, or error trying to set it.
BFFC0006  Parameter 6 out of range, or error trying to set it.
BFFC0007  Parameter 7 out of range, or error trying to set it.
BFFC0008  Parameter 8 out of range, or error trying to set it.
BFFC0011  Instrument failed the ID Query.
BFFC0012  Invalid response from instrument.     �    Returns the user-readable message string that corresponds to the status code you specify.

You must pass a ViChar array with at least 256 bytes.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors    '    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

You can pass VI_NULL for this parameter. This is useful when one of the initialize functions fail.

Default Value:  VI_NULL   + 9  �  h    Error Code                       P) 9 � � �    Error Message                    P�#����  �    Status                           W�-   �  �    Instrument Handle                  0    	            	           VI_NULL    P    This function invalidates the cached values of all attributes for the session.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
   Z#����  �    Status                           `�-   �  �    Instrument Handle                  	               h    This function returns the C session instrument handle you use to call the specific driver's functions.     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     Z    Returns the C session instrument handle you use to call the specific driver's functions.   b�-   �  �    Instrument Handle                cg#����  �    Status                           j9 = � �  �    Specific Driver C Handle               	           	          �    This function retrieves and then clears the IVI error information for the session or the current execution thread. One exception exists: If the BufferSize parameter is 0, the function does not clear the error information. By passing 0 for the buffer size, the caller can ascertain the buffer size required to get the entire error description string and then call the function again with a sufficiently large buffer.

If the user specifies a valid IVI session for the InstrumentHandle parameter, Get Error retrieves and then clears the error information for the session. If the user passes VI_NULL for the InstrumentHandle parameter, this function retrieves and then clears the error information for the current execution thread. If the InstrumentHandle parameter is an invalid session, the function does nothing and returns an error. Normally, the error information describes the first error that occurred since the user last called IviDownconverter_GetError or IviDownconverter_ClearError.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Pass the number of bytes in the ViChar array you specify for the Description parameter.

If the error description, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies BufferSize - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Description buffer parameter.

Default Value:  None     �    Returns the error code for the session or execution thread.

If you pass 0 for the Buffer Size, you can pass VI_NULL for this parameter.
    �    Returns the error description for the IVI session or execution thread. If there is no description, the function returns an empty string.

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter. If the error description, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass 0 for the Buffer Size, you can pass VI_NULL for this parameter.   o?#����  �    Status or Required Size          v-   �  �    Instrument Handle                v� 9A �  �    BufferSize                       y� 9 R �  �    Code                             zL � Q � �    Description                        	                   	           	           {    This function clears the error code and error description for the IVI session. If the user specifies a valid IVI session for the InstrumentHandle parameter, this function clears the error information for the session. If the user passes VI_NULL for the Vi parameter, this function clears the error information for the current execution thread. If the Vi parameter is an invalid session, the function does nothing and returns an error.
The function clears the error code by setting it to VI_SUCCESS. If the error description string is non-NULL, the function de-allocates the error description string and sets the address to VI_NULL.

Maintaining the error information separately for each thread is useful if the user does not have a session handle to pass to the IviDownconverter_GetError function, which occurs when a call to IviDownconverter_init or IviDownconverter_InitWithOptions fails.    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
   ��#����  �    Status                           ��-   �  �    Instrument Handle                  	              6    This function returns the interchangeability warnings associated with the IVI session. It retrieves and clears the oldest instance in which the class driver recorded an interchangeability warning. Interchangeability warnings indicate that using your application with a different instrument might cause different behavior. You use this function to retrieve interchangeability warnings.

The driver performs interchangeability checking when the IVIDOWNCONVERTER_ATTR_INTERCHANGE_CHECK attribute is set to VI_TRUE.

The function returns an empty string in the Interchange Warning parameter if no interchangeability warnings remain for the session.

In general, the instrument driver generates interchangeability warnings when an attribute that affects the behavior of the instrument is in a state that you did not specify.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None    �    Pass the number of bytes in the ViChar array you specify for the Interchange Warning parameter.

If the next interchangeability warning string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Interchange Warning buffer parameter.

Default Value:  None
        Returns the next interchange warning for the IVI session. If there are no interchange warnings, the function returns an empty  string.

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter. If the next interchangeability warning string, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

This parameter returns an empty string if no interchangeability
warnings remain for the session.

   �P#����  �    Status or Required Size          �"-   �  �    Instrument Handle                �� 9 � �  �    Buffer Size                      �� � Q � �    Interchange Warning                	                   	            A    This function clears the list of current interchange warnings.
     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors   �P-   �  �    Instrument Handle                �#����  �    Status                                 	          �    When developing a complex test system that consists of multiple test modules, it is generally a good idea to design the test modules so that they can run in any order. To do so requires ensuring that each test module completely configures the state of each instrument it uses. If a particular test module does not completely configure the state of an instrument, the state of the instrument depends on the configuration from a previously executed test module. If you execute the test modules in a different order, the behavior of the instrument and therefore the entire test module is likely to change. This change in behavior is generally instrument specific and represents an interchangeability problem.

You can use this function to test for such cases. After you call this function, the interchangeability checking algorithms in the specific driver ignore all previous configuration operations. By calling this function at the beginning of a test module, you can determine whether the test module has dependencies on the operation of previously executed test modules.

This function does not clear the interchangeability warnings from the list of previously recorded interchangeability warnings. If you want to guarantee that the IviDownconverter_GetNextInterchangeWarning function only returns those interchangeability warnings that are generated after calling this function, you must clear the list of interchangeability warnings. You can clear the interchangeability warnings list by repeatedly calling the IviDownconverter_GetNextInterchangeWarning function until no more interchangeability warnings are returned. If you are not interested in the content of those warnings, you can call the IviDownconverter_ClearInterchangeWarnings function.
     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors   �F-   �  �    Instrument Handle                �#����  �    Status                                 	          �    This function returns the coercion information associated with the IVI session. This function retrieves and clears the oldest instance in which the instrument driver coerced a value you specified to another value.

If you set the IVIDOWNCONVERTER_ATTR_RECORD_COERCIONS attribute to VI_TRUE, the instrument driver keeps a list of all coercions it makes on ViInt32 or ViReal64 values you pass to instrument driver functions. You use this function to retrieve information from that list.

If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Coercion Record buffer parameter.

The function returns an empty string in the Coercion Record parameter if no coercion records remain for the session.

    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None    �    Returns the next coercion record for the IVI session. If there are no coercion records, the function returns an empty string.

The buffer must contain at least as many elements as the value you specify with the Buffer Size parameter. If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate with the Buffer Size parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

This parameter returns an empty string if no coercion records remain for the session.
    �    Pass the number of bytes in the ViChar array you specify for the Coercion Record parameter.

If the next coercion record string, including the terminating NUL byte, contains more bytes than you indicate in this parameter, the function copies Buffer Size - 1 bytes into the buffer, places an ASCII NUL byte at the end of the buffer, and returns the buffer size you must pass to get the entire value. For example, if the value is "123456" and the Buffer Size is 4, the function places "123" into the buffer and returns 7.

If you pass a negative number, the function copies the value to the buffer regardless of the number of bytes in the value.

If you pass 0, you can pass VI_NULL for the Coercion Record buffer parameter.

Default Value:  None

   �8#����  �    Status or Required Size          �
-   �  �    Instrument Handle                �� � Q � �    Coercion Record                  �� 9 � �  �    Buffer Size                        	               	               �    This function obtains a multithread lock on the instrument session. Before it does so, it waits until all other execution threads have released their locks on the instrument session.

Other threads might have obtained a lock on this session in the following ways:

- The user's application called IviDownconverter_LockSession.

- A call to the instrument driver locked the session.

- A call to the IVI engine locked the session.

After your call to IviDownconverter_LockSession returns successfully, no other threads can access the instrument session until you call IviDownconverter_UnlockSession.

Use IviDownconverter_LockSession and IviDownconverter_UnlockSession around a sequence of calls to instrument driver functions if you require that the instrument retain its settings through the end of the sequence.

You can safely make nested calls to IviDownconverter_LockSession within the same thread. To completely unlock the session, you must balance each call to IviDownconverter_LockSession with a call to IviDownconverter_UnlockSession. If, however, you use the Caller Has Lock parameter in all calls to IviDownconverter_LockSession and IviDownconverter_UnlockSession within a function, the IVI Library locks the session only once within the function regardless of the number of calls you make to IviDownconverter_LockSession. This allows you to call IviDownconverter_UnlockSession just once at the end of the function. 
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    &    This parameter serves as a convenience. If you do not want to use this parameter, pass VI_NULL. 

Use this parameter in complex functions to keep track of whether you obtain a lock and therefore need to unlock the session. Pass the address of a local ViBoolean variable. In the declaration of the local variable, initialize it to VI_FALSE. Pass the address of the same local variable to any other calls you make to IviDownconverter_LockSession or IviDownconverter_UnlockSession in the same function.

The parameter is an input/output parameter. IviDownconverter_LockSession and IviDownconverter_UnlockSession each inspect the current value and take the following actions:

- If the value is VI_TRUE, IviDownconverter_LockSession does not lock the session again. If the value is VI_FALSE, IviDownconverter_LockSession obtains the lock and sets the value of the parameter to VI_TRUE.

- If the value is VI_FALSE, IviDownconverter_UnlockSession does not attempt to unlock the session. If the value is VI_TRUE, IviDownconverter_UnlockSession releases the lock and sets the value of the parameter to VI_FALSE.
 
Thus, you can, call IviDownconverter_UnlockSession at the end of your function without worrying about whether you actually have the lock. 

Example:

ViStatus TestFunc (ViSession vi, ViInt32 flags)
{
    ViStatus error = VI_SUCCESS;
    ViBoolean haveLock = VI_FALSE;

    if (flags & BIT_1)
        {
        viCheckErr( IviDownconverter_LockSession(vi, &haveLock));
        viCheckErr( TakeAction1(vi));
        if (flags & BIT_2)
            {
            viCheckErr( IviDownconverter_UnlockSession(vi, &haveLock));
            viCheckErr( TakeAction2(vi));
            viCheckErr( IviDownconverter_LockSession(vi, &haveLock);
            } 
        if (flags & BIT_3)
            viCheckErr( TakeAction3(vi));
        }

Error:
    /* 
       At this point, you cannot really be sure that 
       you have the lock. Fortunately, the haveLock 
       variable takes care of that for you.         
    */
    IviDownconverter_UnlockSession(vi, &haveLock);
    return error;
}   �[#����  �    Status                           �--   �  �    Instrument Handle                �� 9 � �  �    Caller Has Lock                    	               	            �    This function releases a lock that you acquired on an instrument session using IviDownconverter_LockSession. Refer to IviDownconverter_LockSession for additional information on session locks.
    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None
    '    This parameter serves as a convenience. If you do not want to use this parameter, pass VI_NULL. 

Use this parameter in complex functions to keep track of whether you obtain a lock and therefore need to unlock the session. 
Pass the address of a local ViBoolean variable. In the declaration of the local variable, initialize it to VI_FALSE. Pass the address of the same local variable to any other calls you make to IviDownconverter_LockSession or IviDownconverter_UnlockSession in the same function.

The parameter is an input/output parameter. IviDownconverter_LockSession and IviDownconverter_UnlockSession each inspect the current value and take the following actions:

- If the value is VI_TRUE, IviDownconverter_LockSession does not lock the session again. If the value is VI_FALSE, IviDownconverter_LockSession obtains the lock and sets the value of the parameter to VI_TRUE.

- If the value is VI_FALSE, IviDownconverter_UnlockSession does not attempt to unlock the session. If the value is VI_TRUE, IviDownconverter_UnlockSession releases the lock and sets the value of the parameter to VI_FALSE.
 
Thus, you can, call IviDownconverter_UnlockSession at the end of your function without worrying about whether you actually have the lock. 

Example:

ViStatus TestFunc (ViSession vi, ViInt32 flags)
{
    ViStatus error = VI_SUCCESS;
    ViBoolean haveLock = VI_FALSE;

    if (flags & BIT_1)
        {
        viCheckErr( IviDownconverter_LockSession(vi, &haveLock));
        viCheckErr( TakeAction1(vi));
        if (flags & BIT_2)
            {
            viCheckErr( IviDownconverter_UnlockSession(vi, &haveLock));
            viCheckErr( TakeAction2(vi));
            viCheckErr( IviDownconverter_LockSession(vi, &haveLock);
            } 
        if (flags & BIT_3)
            viCheckErr( TakeAction3(vi));
        }

Error:
    /* 
       At this point, you cannot really be sure that 
       you have the lock. Fortunately, the haveLock 
       variable takes care of that for you.         
    */
    IviDownconverter_UnlockSession(vi, &haveLock);
    return error;
}   ݩ#����  �    Status                           �{-   �  �    Instrument Handle                �D 9 � �  �    Caller Has Lock                    	               	           �    This function performs the following operations:

- Closes the instrument I/O session.

- Destroys the instrument driver session and all of its attributes.

- Deallocates any memory resources the driver uses.

Note:

(1) You must unlock the session before calling IviDownconverter_close.

(2) After calling IviDownconverter_close, you cannot use the instrument driver again until you call IviDownconverter_init or IviDownconverter_InitWithOptions.

    �    Returns the status code of this operation. The status code  either indicates success or describes an error or warning condition. You examine the status code from each call to an instrument driver function to determine if an error occurred.

To obtain a text description of the status code, or if the status code is not listed below, call the IviDownconverter_error_message function. To obtain additional information about the error condition, call the IviDownconverter_GetError function. To clear the error information from the driver, call the IviDownconverter_ClearError function.

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
No defined warnings.
  
ERRORS:
BFFA1001  Trigger source is not set to software trigger.
BFFA2001  Frequency List Unknown.
BFFA2002  Max Time Exceeded.

This instrument driver returns errors and warnings defined by other sources. The following table defines the ranges of additional status codes that this driver can return. The table lists the different include files that contain the defined constants for the particular status codes:

Numeric Range (in Hex)   Status Code Types    
-------------------------------------------------
3FFA0000 to 3FFA1FFF     IVI    Warnings
3FFF0000 to 3FFFFFFF     VISA   Warnings
3FFC0000 to 3FFCFFFF     VXIPnP Driver Warnings
          
BFFA0000 to BFFA1FFF     IVI    Errors
BFFF0000 to BFFFFFFF     VISA   Errors
BFFC0000 to BFFCFFFF     VXIPnP Driver Errors     �    The ViSession handle that you obtain from the IviDownconverter_init or IviDownconverter_InitWithOptions function. The handle identifies a particular instrument session.

Default Value:  None   ��#����  �    Status                           ��-   �  �    Instrument Handle                  	            ����         �  &�             K.        init                                                                                                                                    ����         (l  F�             K.        InitWithOptions                                                                                                                         ����         I  R�             K.        ConfigureBypass                                                                                                                         ����         St  \�             K.        ConfigurePreselectorEnabled                                                                                                             ����         ]�  f�             K.        ConfigureRFInputAttenuation                                                                                                             ����         g;  o�             K.        ConfigureRFInputFrequency                                                                                                               ����         p�  {_             K.        GetRFInputName                                                                                                                          ����         |�  �             K.        SetActiveRFInput                                                                                                                        ����         ��  �W             K.        ConfigureFrequencySweep                                                                                                                 ����         �}  �/             K.        ConfigureFrequencySweepTime                                                                                                             ����         ��  ��             K.        GetBandCrossingInfo                                                                                                                     ����         �!  ��             K.        ConfigureFrequencySweepStartStop                                                                                                        ����         ��  �             K.        ConfigureFrequencyStepStartStop                                                                                                         ����         �  �             K.        ConfigureFrequencyStepDwell                                                                                                             ����         �!  �             K.        ResetFrequencyStep                                                                                                                      ����         �  ��             K.        CreateFrequencySweepList                                                                                                                ����         � �             K.        ClearAllFrequencySweepLists                                                                                                             ����        _              K.        ConfigureFrequencySweepListDwell                                                                                                        ����        !              K.        ResetFrequencySweepList                                                                                                                 ����         #�             K.        ConfigureIFOutputFilterBandwidth                                                                                                        ����        $� .t             K.        ConfigureIFOutputEnabled                                                                                                                ����        /B 7�             K.        ConfigureIFOutputGain                                                                                                                   ����        8� Ak             K.        ConfigureIFOutputVideoDetectorBandwidth                                                                                                 ����        B# L�             K.        GetIFOutputName                                                                                                                         ����        N W�             K.        SetActiveIFOutput                                                                                                                       ����        XJ a�             K.        ConfigureExternalMixerBias                                                                                                              ����        b� m�             K.        ConfigureReferenceOscillator                                                                                                            ����        ox y             K.        ConfigureReferenceOscillatorOutputEnabled                                                                                               ����        y� ��             K.        SetAttributeViInt32                                                                                                                     ����        �Y �:             K.        SetAttributeViReal64                                                                                                                    ����        �� ��             K.        SetAttributeViString                                                                                                                    ����        �Q �5             K.        SetAttributeViBoolean                                                                                                                   ����        �� �             K.        SetAttributeViSession                                                                                                                   ����        �D �             K.        GetAttributeViInt32                                                                                                                     ����        �@              K.        GetAttributeViReal64                                                                                                                    ����        ? )z             K.        GetAttributeViString                                                                                                                    ����        *� ;�             K.        GetAttributeViBoolean                                                                                                                   ����        <� M�             K.        GetAttributeViSession                                                                                                                   ����        N� _q             K.        CheckAttributeViInt32                                                                                                                   ����        a q�             K.        CheckAttributeViReal64                                                                                                                  ����        s! ��             K.        CheckAttributeViString                                                                                                                  ����        �6 ��             K.        CheckAttributeViBoolean                                                                                                                 ����        �N ��             K.        CheckAttributeViSession                                                                                                                 ����        �f �'             K.        Calibrate                                                                                                                               ����        �� �             K.        IsCalibrated                                                                                                                            ����        �� ��             K.        IsCalibrationComplete                                                                                                                   ����        ͊ �T             K.        SendSoftwareTrigger                                                                                                                     ����        �� �l             K.        WaitUntilSettled                                                                                                                        ����        �# ��             K.        WaitUntilFrequencySweepComplete                                                                                                         ����        � �w             K.        reset                                                                                                                                   ����        �� �             K.        ResetWithDefaults                                                                                                                       ����         =             K.        Disable                                                                                                                                 ����        � �             K.        self_test                                                                                                                               ����        � �             K.        revision_query                                                                                                                          ����         � )�             K.        error_query                                                                                                                             ����        *� X�             K.        error_message                                                                                                                           ����        Y� a�             K.        InvalidateAllAttributes                                                                                                                 ����        b. j�             K.        GetSpecificDriverCHandle                                                                                                                ����        kV }E             K.        GetError                                                                                                                                ����        ~z ��             K.        ClearError                                                                                                                              ����        � �             K.        GetNextInterchangeWarning                                                                                                               ����        � ��             K.        ClearInterchangeWarnings                                                                                                                ����        �e ��             K.        ResetInterchangeCheck                                                                                                                   ����        �[ ��             K.        GetNextCoercionRecord                                                                                                                   ����        ƽ �$             K.        LockSession                                                                                                                             ����        �� �s             K.        UnlockSession                                                                                                                           ����        �. ��             K.        close                                                                                                                                                                                                                              �Initialize                                                                           �Initialize With Options                                                             �Configuration Functions                                                             �RF Input                                                                             �Configure Bypass [BP]                                                                �Configure Preselector Enabled [PS]                                                   �Configure RF Input Attenuation                                                       �Configure RF Input Frequency                                                         �Get RF Input Name                                                                    �Set Active RF Input                                                                 OFrequency Sweep                                                                      �Configure Frequency Sweep [FSW]                                                      �Configure Frequency Sweep Time [FSW]                                                 �Get Band Crossing Info [BCI]                                                        �Analog                                                                               �Configure Frequency Sweep Start Stop [FSW]                                          LStep                                                                                 �Configure Frequency Step Start Stop [FST]                                            �Configure Frequency Step Dwell [FST]                                                 �Reset Frequency Step [FST]                                                          List                                                                                 �Create Frequency Sweep List [FSL]                                                    �Clear All Frequency Sweep Lists [FSL]                                                �Configure Frequency Sweep List Dwell [FSL]                                           �Reset Frequency Sweep List [FSL]                                                    �IF Output                                                                            �Configure IF Output Filter Bandwidth [IFF]                                           �Configure IF Output Enabled                                                          �Configure IF Output Gain                                                             �Configure IF Output Video Detector Bandwidth [VDB]                                   �Get IF Output Name                                                                   �Set Active IF Output                                                                	+External Mixer                                                                      	�Bias                                                                                 �Configure External Mixer Bias [EM]                                                  
5Reference Oscillator                                                                 �Configure Reference Oscillator [RO]                                                  �Configure Reference Oscillator Output Enabled [RO]                                  
�Set/Get/Check Attribute                                                             Set Attribute                                                                        �Set Attribute ViInt32                                                                �Set Attribute ViReal64                                                               �Set Attribute ViString                                                               �Set Attribute ViBoolean                                                              �Set Attribute ViSession                                                             �Get Attribute                                                                        �Get Attribute ViInt32                                                                �Get Attribute ViReal64                                                               �Get Attribute ViString                                                               �Get Attribute ViBoolean                                                              �Get Attribute ViSession                                                             .Check Attribute                                                                      �Check Attribute ViInt32                                                              �Check Attribute ViReal64                                                             �Check Attribute ViString                                                             �Check Attribute ViBoolean                                                            �Check Attribute ViSession                                                           �Action Functions                                                                     �Calibrate [CAL]                                                                      �Is Calibrated [CAL]                                                                  �Is Calibration Complete [CAL]                                                        �Send Software Trigger [SWT]                                                          �Wait Until Settled                                                                   �Wait Until Frequency Sweep Complete [FSW]                                           4Utility Functions                                                                    �Reset                                                                                �Reset With Defaults                                                                  �Disable                                                                              �Self-Test                                                                            �Revision Query                                                                       �Error-Query                                                                          �Error Message                                                                        �Invalidate All Attributes                                                            �Get Specific Driver C Handle                                                        �Error Info                                                                           �Get Error                                                                            �Clear Error                                                                         �Interchangeability Info                                                              �Get Next Interchange Warning                                                         �Clear Interchange Warnings                                                           �Reset Interchange Check                                                             ECoercion Info                                                                        �Get Next Coercion Record                                                            �Locking                                                                              �Lock Session                                                                         �Unlock Session                                                                       �Close                                                                           