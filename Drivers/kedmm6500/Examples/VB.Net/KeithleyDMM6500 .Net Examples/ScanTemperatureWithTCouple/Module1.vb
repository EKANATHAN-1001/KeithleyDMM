Imports KeithleyInstruments.KeithleyDMM6500.Interop

Module Module1

    Sub Main()

        Console.WriteLine("Enter the ResourceName to connect")
        Dim resourceName As String = Console.ReadLine()

        Dim driver As IKeithleyDMM6500 = New KeithleyDMM6500Class()

        'Initialize and Reset the instrument to the default settings
        driver.Initialize(resourceName, True, True, "")

        'Set up channel settings for Slot 1
        driver.ChannelFunction("101:110") = KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionTemperature

        Dim measConfig As IKeithleyDMM6500MeasurementConfiguration = driver.Measurement.Configuration
        measConfig.Temperature.ChannelTransducerType("101:110") = KeithleyDMM6500TransducerTypeEnum.KeithleyDMM6500TransducerTypeThermocouple
        measConfig.Temperature.ChannelThermocoupleType("101:110") = KeithleyDMM6500ThermocoupleTypeEnum.KeithleyDMM6500ThermocoupleTypeK
        measConfig.Temperature.ChannelThermocoupleRefJunctionType("101:110") = KeithleyDMM6500ThermocoupleRefJunctionTypeEnum.KeithleyDMM6500ThermocoupleRefJunctionTypeInternal
        measConfig.ChannelOpenDetector(KeithleyDMM6500OpenDetectorFunctionsEnum.KeithleyDMM6500OpenDetectorFunctionsTemperature, "101:110") = True

        'Set up Scan
        Dim scan As IKeithleyDMM6500RouteScan = driver.Route.Scan
        scan.Create("101:110")
        'Set the scan count to 24hrs * 60min/hr = 1440
        scan.Count = 1400
        'Set the time between scans to 60s
        scan.Interval = 60
        'Ensure data gets written to a connected USB drive after each scan
        scan.Export("/usb1/scan24hr.csv", KeithleyDMM6500WhenToExportEnum.KeithleyDMM6500WhenToExportEndOfScan, "ALL")
        'Enable scan retart after power failure
        scan.Restart = True

        'Trigger to start the scan...
        driver.Trigger.Initiate()
    End Sub

End Module
