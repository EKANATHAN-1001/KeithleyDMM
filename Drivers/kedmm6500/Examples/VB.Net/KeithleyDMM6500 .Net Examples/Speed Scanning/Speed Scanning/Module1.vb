
Imports KeithleyInstruments.KeithleyDMM6500.Interop
Imports System.Threading
Module Module1

    Sub Main()
        Dim scanCnt As Integer = 1000   'Create a variable to hold the scan count
        Dim sampleCnt As Integer        'total number of readings
        Dim i As Integer
        Dim chanCnt As Integer = 20        'Create a variable to hold the channel count
        Dim actualRdgs As Integer       'Create a variable to hold the actual reading count
        Dim rcvBuffer As String         'Create a string buffer to hold extracted readings

        Console.WriteLine("Enter the ResourceName to connect")
        Dim resourceName As String = Console.ReadLine()

        Dim driver As IKeithleyDMM6500 = New KeithleyDMM6500Class()

        'Initialize and Reset the instrument to the default settings
        driver.Initialize(resourceName, True, True, "")

        Dim scan As IKeithleyDMM6500RouteScan = driver.Route.Scan
        scan.Count = scanCnt

        'Set channels 101-120 for DCV
        driver.ChannelFunction("101:120") = KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionVoltageDC              'Set function to DCV
        Dim measConfig As IKeithleyDMM6500MeasurementConfiguration = driver.Measurement.Configuration


        measConfig.ChannelRange(KeithleyDMM6500FunctionsWithRangeEnum.KeithleyDMM6500FunctionsWithRangeVoltageDC, "101:120") = 1           'Set the fixed range at 1V
        measConfig.Filter.ChannelState(KeithleyDMM6500Function2Enum.KeithleyDMM6500Function2VoltageDC, "101:120") = False                       'Disable background statistics
        driver.Display.Resolution(KeithleyDMM6500DisplayResolutionFunctionEnum.KeithleyDMM6500DisplayResolutionFunctionVoltageDC) = KeithleyDMM6500DisplayResolutionEnum.KeithleyDMM6500DisplayResolution4AndHalfDigits   'Front panel shows only 4 significant digits
        measConfig.ChannelNPLC(KeithleyDMM6500NPLCFunctionsEnum.KeithleyDMM6500NPLCFunctionsVoltageDC, "101:120") = 0.0005                   'Set fastest NPLC possible
        measConfig.ChannelLineSync(KeithleyDMM6500Function3Enum.KeithleyDMM6500Function3VoltageDC, "101:120") = False                           'Turn off line sync
        measConfig.ChannelAutoZeroEnabled(KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionVoltageDC, "101:120") = False                       'Turn off auto zero
        measConfig.Limit.ChannelEnabled(KeithleyDMM6500Function2Enum.KeithleyDMM6500Function2VoltageDC, KeithleyDMM6500MeasurementLimitTestEnum.KeithleyDMM6500MeasurementLimitTest1, "101:120") = False                     'Turn off limit tests
        measConfig.Limit.ChannelEnabled(KeithleyDMM6500Function2Enum.KeithleyDMM6500Function2VoltageDC, KeithleyDMM6500MeasurementLimitTestEnum.KeithleyDMM6500MeasurementLimitTest2, "101:120") = False
        driver.Route.Scan.Interval() = 0            'Set trigger interval between scans to 0s
        driver.Buffer.Clear("defbuffer1")           'Clear the reading buffer
        driver.Display.Brightness = KeithleyDMM6500DisplayBrightnessEnum.KeithleyDMM6500DisplayBrightnessOff        'Turn the display off
        driver.Route.Scan.Create("101:120")        'Set the scan list 

        sampleCnt = scanCnt * chanCnt
        'Trigger to start the scan...

        driver.Trigger.Initiate()
        Thread.Sleep(1000)
        Try
            For i = 1 To sampleCnt
                Thread.Sleep(500)
                actualRdgs = driver.Buffer.Actual("defbuffer1")
                rcvBuffer = driver.Buffer.FetchData(i, actualRdgs, "defbuffer1", "READ")
                i = actualRdgs + 1
            Next
            driver.Display.Brightness = KeithleyDMM6500DisplayBrightnessEnum.KeithleyDMM6500DisplayBrightness100percent
            Console.WriteLine(rcvBuffer)
            Console.ReadLine()
        Catch ex As Exception
            driver.Display.Brightness = KeithleyDMM6500DisplayBrightnessEnum.KeithleyDMM6500DisplayBrightness100percent
            Console.WriteLine(rcvBuffer)
            Console.ReadLine()
        End Try


    End Sub

End Module
