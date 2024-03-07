Keithley Instruments
SCPI-856C07
Release Note for Version C07
IVI Instrument Driver for the SCPI-compatible instruments.
03/12/2013

This document provides additional information for the installation and use of the KESCPI driver for LabVIEW and LabWindows CVI, Microsoft .NET, Visual Basic, and C/C++.

Table of Contents
----------------------------------------------
1  Introduction
 1.1  Included in this release
  1.1.1  KESCPI IVI Driver
 1.2  Additional available software
2  System Requirements
 2.1  Supported Operating Systems and System Software
3  Installation
 3.1  Prerequisite Installation
 3.2  Instrument Driver Installation
  3.2.1  Installing the driver from the Web
4  Using the KESCPI IVI Instrument Driver
 4.1  Virtual Instruments
 4.2  Create your own Virtual Instruments
 4.3  Logical Names
 4.4  VISA resources
  4.4.1  GPIB
  4.4.2  RS232
  4.4.3  Ethernet (Socket connection)
  4.4.4  Example of using VISA resources
 4.5  Driver Speed up solutions
  4.5.1  QueryInstrStatus
  4.5.2  RangeCheck
  4.5.3  Caching
 4.6  Using the Example Programs
 4.7  Using the driver with LabVIEW
5  Known problems and issues
 5.1  KESCPI_WriteInstrData
6  Copyright Notice
7  IVI Compliance

----------------------------------------------

1  Introduction

1.1  Included in this release
The components described below are provided as part of the KESCPI IVI Instrument Driver for any instrument that uses the SPCI protocol.  Some shortcuts for them are added to the Keithley Instruments folder on your Start Menu.

1.1.1  KESCPI IVI Driver
The KESCPI driver supports instruments that use the SCPI communication protocol.

The driver uses VISA to communicate with and an IVI configuration store to configure your instrument. IVI (Interchangeable Virtual Instruments) and VISA (Virtual Instrument Software Architecture) provide a common foundation for application development across multiple communication buses and multiple instrument vendors.  This software driver supports many Application Development Environments under Windows, such as Visual Basic, C/C++, LabVIEW, LabWindows/CVI, and TestPoint. Numerous examples and an on-line help utility are provided to help programmers build their custom applications.

Important note: VISA, an IVI configuration store, and Keithley I/O Layer software are no longer bundled with the driver installer.  The Keithley I/O layer may be downloaded from the Keithley Web site. 

1.2  Additional available software
Keithley I/O Layer software provides a versatile configuration utility for IVI and NI-VISA and an interactive communications utility.

2  System Requirements
 - Pentium-class PC.
 - SCPI-compatible instrument.
 - VISA: Keithley recommends NI-VISA 2.6 or later from National Instruments.
 - NI-IVI Compliance Package (ICP) from National Instruments.
 - Keithley I/O Layer software KIOL-850 version B02.3 or later. [Recommended] 

NOTE: Keithley strongly recommends that you power your computer and instrument from an Uninterruptible Power Supply (UPS) when running a critical application. 

2.1  Supported Operating Systems and System Software
Operating Systems:
 - Windows 8
 - Windows 7 
 - Windows Vista service pack 2 or later
 - Windows XP Professional service pack 3 or later, 32-bit only
The driver has been tested with a variety of international versions of Windows, including Chinese (Simplified and Traditional), Japanese, German, and French.  

Application Development Environments:
 - LabVIEW versions 7.0 through 8.6
 - LabWindows/CVI versions 6.0 through 8.5
 - Visual Basic 6 Service Pack 6
 - Visual Studio .NET
 - Visual Studio .NET 2003
 - Visual Studio 2005 Professional and Express
 - Visual Studio 2008 Professional and Express

3  Installation

Note: The instrument driver requires VISA and an IVI configuration store. Check www.keithley.com to see if a complete installation package that includes prerequisites and the driver; Or, install the prerequisites yourself and then install the driver.

3.1  Prerequisite Installation

Before installing the KESCPI instrument driver:
 - Install VISA; Keithley recommends NI-VISA 2.6 or later from National Instruments.
 - Install an IVI configuration store; Keithley recommends NI-IVI Compliance Package (ICP) from National Instruments because it provides libraries that allows the driver to access the IVI Configuration Server.
 - Install the optional Keithley I/O Layer, KIOL-850, following the instructions in the I/O layer readme file to install and configure the software, and to connect your instrument to your computer.

3.2  Instrument Driver Installation

3.2.1  Installing the driver from the Web
Download the driver software from the Keithley Web site, www.keithley.com.  The software is a single compressed file and should be downloaded to a temporary directory.

Run the downloaded file from the temporary directory.

Follow the instructions on the screen to install the software.

When the installation is complete, reboot your computer.

4  Using the KESCPI IVI Instrument Driver
To connect to the instrument via the driver you need to first call KESCPI_init or KESCPI_InitWithOptions. The first parameter for either function is a VISA resource string, which indicates to the I/O layer which communication device you want to use to connect to the instrument and in most cases the address of the instrument.  This can be specified using a Virtual Instrument name, a Logical Name, or a VISA Resource string.  We recommend that you do not use the VISA resource string form, since it builds hardware and bus dependencies into your code.  If you use the Virtual Instrument Name or the Logical Name form, the Keithley Configuration Panel can be used to select a different bus or address with no code changes required.

4.1  Virtual Instruments
The installer creates several virtual instrument configurations that you can use to automatically connect to an instrument.

If you are using a National Instruments GPIB card, select KESCPI_GPIB16 as your device.  By default, the logical name KESCPIExampleInstr is also assigned to this device. This logical name is used by the example programs but can also be used by user programs.

If you are using a Keithley Instruments or CEC ISA or PCI GPIB card, select KESCPI_GPIB1_16 as your device.

If you are using a Keithley Instruments or INES PCMCIA GPIB card, select KESCPI_GPIB2_16 as your device.

If you are using COM Port 1, select KESCPI_COM1 as your device.

If you are using COM Port 2, select KESCPI_COM2 as your device.

An example of using a Virtual Instrument Name to connect to an instrument connected to COM Port 1 is:
  KESCPI_init("KESCPI_COM1", VI_TRUE, VI_TRUE, handle)

4.2  Create your own Virtual Instruments
If you want to create your own virtual instruments then use the Configuration Panel or Wizard. Open the Configuration Panel by selecting Start> Programs> Keithley Instruments> Keithley Configuration Panel, and wait for the Wizard to start.  Follow the Wizard instructions to create a new configuration or modify an existing one.

4.3  Logical Names
You can also define logical Names for your devices using the configuration panel.  One logical name is created by default: KESCPIExampleInstr.  This default logical name is used by the example programs supplied with the driver, and is associated with the KESCPI_GPIB16 device by default.

4.4  VISA resources

4.4.1  GPIB
For GPIB instruments, you would use a resource string of the following format:
     "GPIBx::yy::INSTR".
     x is the GPIB card number.
     yy is the GPIB address of the instrument.

4.4.2  RS232
For RS232 instruments, the VISA resource string has the following format:
     "ASRLx::INSTR" where x is the COM Port number.

4.4.3  Ethernet (Socket connection)
For Ethernet instruments, use the following VISA resource string format:
     "TCPIPx::IP::Port::SOCKET".
          x is the Ethernet card number.
          IP is the IP address of the instrument.
          Port is the port number of the instrument.
	The default port of model 2701 is 1394.

4.4.4  Example of using VISA resources:
To connect to an instrument with IP address "10.12.90.115" on port 1394:
    KESCPI_init("TCPIP0::10.12.90.115::1394::SOCKET", VI_TRUE, VI_TRUE, handle)

4.5  Driver Speed up solutions
Using the KESCPI_InitWithOptions function there is a parameter, called OptionString, where you can enable/disable certain features of an IVI driver.

4.5.1  QueryInstrStatus
If this feature is enabled the driver will query the instrument after every function call to see if there were any errors. This is useful while you are writing your application but once it is finalized then you can disable this feature to gain extra performance.

4.5.2  RangeCheck
If enabled the IVI engine will check to see if the parameters you are passing in are within range. Disabling this feature in the final application will also gain some performance increase.

4.5.3  Caching
The driver has the option of caching all the settings it sends to the instrument so that it doesn't send a setting to the instrument a second time if it hasn't changed. By default this is enabled.

4.6  Using the Example Programs
The KESCPI Driver includes a number of example programs written in Visual Basic, LabVIEW, and C.  The examples demonstrate how to perform common functions using the driver. Some of the example programs are hard coded to use an instrument at GPIB address 16 using a National Instruments GPIB interface card for communications. If you are using a different bus, address, or interface card, you must edit the example programs to change the address, bus, or interface.

Other examples are using a hard coded logical name: KESCPIExampleInstr for the device identifier. By default, the logical name is associated with the KESCPI_GPIB12 device, which is a SCPI at GPIB address 16 using a National Instruments GPIB interface card for communications.  If you are using a different bus, address, or interface card, you must reassign the logical name to the correct device using the Keithley Configuration Panel.  For example, if you are using a CEC GPIB card instead of a National Instrument GPIB card, you would use the Keithley Configuration Panel to reassign the logical name from the KESCPI_GPIB12 device to the KESCPI_GPIB1_12 device.

4.7  Using the driver with LabVIEW
LabVIEW versions 7.0 through 8.6 are supported.

If LabVIEW is already installed on your computer when the driver is installed, the LabVIEW VIs will be installed in the proper subdirectory of the LabVIEW directory so that they are directly accessible from within LabVIEW.

If LabVIEW is not installed on your computer when the driver is installed, the LabVIEW VIs will placed in a subdirectory of the Keithley Instruments directory.  Once LabVIEW has been installed, the VIs must be copied to the proper subdirectory under LabVIEW before they can be used.  This directory is typically:
     C:\Program Files\National Instruments\LabVIEW X\inst.lib\KESCPI


5  Known problems and issues
5.1  KESCPI_WriteInstrData
A SCPI command line must be terminated with a linefeed character. When using this function to send a command line to the instrument, ensure the last character is a linefeed.  In LabVIEW and C add a "\n" whilst in Visual BASIC add the "Chr(10)" or "vbLf" command to the end of the string.

6  Copyright Notice
The KESCPI Series instrument driver is Copyright (c) 2001-2004, 2008, 2010, 2013 Keithley Instruments.  All Rights Reserved.

7 IVI Compliance 
The following information is required by IVI 3.1 section 5.21. 

IVI Compliance Category:
  IVI-C Specific Instrument Driver 
  Class Specification Version:  N/A

Optional Features:
  Interchangeability Checking = False
  State Caching =               True
  Coercion Recording =          False

Driver Identification:
  Driver Revision:              2.0
  Driver Vendor:                Keithley Instruments, Inc.
  Prefix:                       KESCPI
  Description:                  Keithley SCPI-based Instrument IVI Driver 

Hardware Information:
  Instrument Manufacturer:      Keithley Instruments, Inc.
  Supported Instrument Models:  ANY

  Supported Bus Interfaces:     RS232, GPIB, Ethernet

32-Bit Software Information:
  Supported Operating Systems: 	Windows XP (32-bit only), Windows Vista, Windows 7, Windows 8
  Support Software Required:    VISA (part of NI-VISA 2.6 or later, NI-VISA 4.6.2 or later for 64-bit operating systems [Recommended])
				                National Instruments ICP 4.1 or later
  Source Code Availability:     Source code not available.

End of Release notes.
