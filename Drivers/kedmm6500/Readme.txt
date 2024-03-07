			***********************
			**** Read Me First ****
			***********************

Version 1.0
April 2018


Introducing the Keithley IVI Driver for Model DMM6500 Series of Digital Multimeter
----------------------------------------------------------------------------------
The Keithley DMM6500 IVI COM driver conforms to the IVI driver standards and specifications. The help file included with the driver contains the detailed driver functionality description and programming information.
This readme file contains additional information for the user.
The driver uses the services provided by IVI Shared components (provided by IVI foundation) and VISA.
The driver can be used with GPIB or LAN or USB.

Supported Instruments
---------------------
Model DMM6500 
Model DAQ6510
 
Installation
-------------
  System Requirements: The driver installation will check for the
  following requirements.  If not found, the installer will either
  abort, warn, or install the required component as appropriate.

  Supported Operating Systems:
    Windows XP
    Windows Vista
    Windows 7
    Windows 8
    Windows 10 

  Shared Components
    Before this driver can be installed, your computer must already
    have the IVI Shared Components installed.

    Minimal IVI Version: 2.0

    The IVI Shared Components installer is available from: 
    http://www.ivifoundation.org/shared_components/Default.aspx

   VISA
    The following implementations of VISA are compliant with this driver: NI-VISA™, AGILENT IO Libraries Suite™.
    The Keithley I/O Layer supplies a NI-VISA™ runtime. Downloads are available at www.keithley.com/support or you may follow the link below:
    ( http://www.keithley.com/support/keidoc_searchresult?keyword=KIOL&item_type=Software+Driver )

Additional Setup
----------------
  .NET Framework
    The .NET Framework itself is not required by this driver. If you
    plan to use the driver with .NET, the minimal .NET framework version is 2.0.

  The .NET Framework requires an interop assembly for a COM
  server. A Primary Interop Assembly, along with an XML file for
  IntelliSense is installed with the driver. The driver's PIA, along
  with IVI PIAs are installed, by default, in:
  <drive>:\Program Files\IVI Foundation\IVI\Bin\Primary Interop Assemblies

  The PIA is also installed into the Global Assembly Cache (GAC) if
  you have the .NET framework installed.

Help File
---------
  The help file (KeithleyDMM6500.chm) is located in the directory:
   <drive>:\Program Files\IVI Foundation\IVI\Drivers\kedmm6500

Examples
--------
  The driver installs few examples written in C#.NET, C++ and VB.NET. Examples are located in the directory:
   <drive>:\Program Files\IVI Foundation\IVI\Drivers\kedmm6500\Examples


Revision History
----------------
  Version     Date         Notes
  -------   ------------   -----
  1.0     April,2018  Initial public release
  

IVI Compliance
--------------
  The IVI compliance information document is located in the directory:
   <drive>:\Program Files\IVI Foundation\IVI\Drivers\kedmm6500
