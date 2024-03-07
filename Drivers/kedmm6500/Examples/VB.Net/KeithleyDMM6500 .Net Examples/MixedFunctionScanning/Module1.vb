Imports KeithleyInstruments.KeithleyDMM6500.Interop
'This example is for mixed function scanning. supported by DAQ 6510  . Install 7700 card in slot 1 . 
Module Module1

    Sub Main()

        Console.WriteLine("Enter the ResourceName to connect")
        Dim resourceName As String = Console.ReadLine()

        Dim driver As IKeithleyDMM6500 = New KeithleyDMM6500Class()

        'Initialize and Reset the instrument to the default settings
        driver.Initialize(resourceName, True, True, "")

        Dim scanCnt As Integer = 1000   'Create a variable to hold the scan count
        Dim sampleCnt As Integer    'Create a variable to hold the full sample count (total number of readings)
        Dim chanCnt As Integer 'Create a variable to hold the channel count
        Dim actualRdgs As Integer   'Create a variable to hold the actual reading count
        Dim rcvBuffer As String     'Create a string buffer to hold extracted readings
        'timer1.start()  'Start a timer to help capture elapsed time

        'Set channel 101 for ACV and to have its low-end bandwidth set to 30Hz
        driver.ChannelFunction("101") = KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionVoltageAC
        driver.Measurement.Configuration.ChannelDetectorBandwidth(KeithleyDMM6500ACFunctionEnum.KeithleyDMM6500ACFunctionVoltageAC, "101") = KeithleyDMM6500DetectorBandwidthEnum.KeithleyDMM6500DetectorBandwidth30

        'Set channels 102-110 for DCV
        driver.ChannelFunction("102:110") = KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionVoltageDC

        'Set channels 111-114 for Temperature 
        driver.ChannelFunction("111:114") = KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionTemperature
        'Set temperature tranducer type to Thermocouple
        driver.Measurement.Configuration.Temperature.ChannelTransducerType("111:114") = KeithleyDMM6500TransducerTypeEnum.KeithleyDMM6500TransducerTypeThermocouple
        'measurement using Type K 
        driver.Measurement.Configuration.Temperature.ChannelThermocoupleType("111:114") = KeithleyDMM6500ThermocoupleTypeEnum.KeithleyDMM6500ThermocoupleTypeK
        'Thermocouples with a simulated reference junction set to 23°C
        driver.Measurement.Configuration.Temperature.ChannelThermocoupleRefJunctionType("111:114") = KeithleyDMM6500ThermocoupleRefJunctionTypeEnum.KeithleyDMM6500ThermocoupleRefJunctionTypeSimulated
        driver.Measurement.Configuration.Temperature.ChannelThermocoupleSimulatedRefJunction("111:114") = 23

        'Set channel 121 to measure ACI
        driver.ChannelFunction("121") = KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionCurrentAC

        'Set channel 122 to measure DCI
        driver.ChannelFunction("122") = KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionCurrentDC

        'Apply a label to channel 101
        driver.Route.ChannelConfiguration.Label("101") = "ACSource"
        'Apply a label to channel 111
        driver.Route.ChannelConfiguration.Label("111") = "Reg12VTemp"
        'Apply a label to channel 112
        driver.Route.ChannelConfiguration.Label("112") = "Reg5VTemp"
        'Apply a label to channel 113
        driver.Route.ChannelConfiguration.Label("113") = "LoadTemp1"
        'Apply a label to channel 114
        driver.Route.ChannelConfiguration.Label("114") = "LoadTemp2"

        'Set up Scan
        Dim scan As IKeithleyDMM6500RouteScan = driver.Route.Scan
        scan.Create("101:114")
        scan.Add("121")
        scan.Add("122")

        'Set the scan count to 24hrs * 60min/hr = 1440
        scan.Count = 2
        'Set the time between scans to 60s
        scan.Interval = 1
        'Enable scan retart after power failure
        scan.Restart = True

        'Clear buffer
        driver.Buffer.Clear("defbuffer1")

        'Trigger to start the scan...
        driver.Trigger.Initiate()

        'Wait for scan completion
        driver.Trigger.Wait()

        System.Threading.Thread.Sleep(15000)
        Try
            'Query the readings from the instrument
            Console.WriteLine(driver.Buffer.FetchData(1, 32, "defbuffer1", "READ, CHAN"))
            Console.ReadKey()
        Catch ex As Exception
            Console.WriteLine(ex.Message)
            Console.ReadKey()

        End Try

    End Sub

End Module
