Imports KeithleyInstruments.KeithleyDMM6500.Interop
'This is a grading and binning example . it is supported by DAQ6510/DMM6500 instrument .  
Module Module1

    Sub Main()
        Dim i As Integer
        Dim max As Integer = 4
        Dim highLimits As Double() = {120, 110, 105, 101}
        Dim lowLimits As Double() = {80, 90, 95, 99}
        Dim failBitPattern As Short() = {15, 1, 2, 3}
        Dim allPassPattern As Short = 11
        Dim bufferSize As Integer = 1000000
        Console.WriteLine("Enter the ResourceName to connect")
        Dim resourceName As String = Console.ReadLine()

        Dim driver As IKeithleyDMM6500 = New KeithleyDMM6500Class()

        'Initialize and Reset the instrument to the default settings
        driver.Initialize(resourceName, True, True, "")

        driver.Buffer.Create("bufferVar", bufferSize)
        driver.Buffer.Clear("bufferVar")
        driver.Function = KeithleyDMM6500FunctionEnum.KeithleyDMM6500Function4WireResistance

        Dim measConfig As IKeithleyDMM6500MeasurementConfiguration = driver.Measurement.Configuration
        measConfig.NPLC(KeithleyDMM6500NPLCFunctionsEnum.KeithleyDMM6500NPLCFunctions4WireResistance) = 1
        measConfig.AutoZeroEnabled(KeithleyDMM6500FunctionEnum.KeithleyDMM6500Function4WireResistance) = True
        measConfig.OffsetCompensationEnabled(KeithleyDMM6500Function5Enum.KeithleyDMM6500Function54WireResistance) = True
        For i = 1 To max
            driver.Digital.ConfigureLineMode(i, KeithleyDMM6500DigitalTriggerTypeEnum.KeithleyDMM6500DigitalTriggerTypeDigital, KeithleyDMM6500DigitalLineStateEnum.KeithleyDMM6500DigitalLineStateOut)
        Next
        For i = 1 To max
            driver.Digital.LineState(i) = False
        Next
        driver.Digital.ConfigureLineMode(5, KeithleyDMM6500DigitalTriggerTypeEnum.KeithleyDMM6500DigitalTriggerTypeTrigger, KeithleyDMM6500DigitalLineStateEnum.KeithleyDMM6500DigitalLineStateIn)
        driver.Trigger.Digital.Mode(5) = KeithleyDMM6500TriggerModeEnum.KeithleyDMM6500TriggerModeFalling
        driver.Digital.ConfigureLineMode(6, KeithleyDMM6500DigitalTriggerTypeEnum.KeithleyDMM6500DigitalTriggerTypeTrigger, KeithleyDMM6500DigitalLineStateEnum.KeithleyDMM6500DigitalLineStateOut)
        driver.Trigger.Digital.OutputLogic(6) = KeithleyDMM6500TriggerOutputLogicTypeEnum.KeithleyDMM6500TriggerOutputLogicTypeNegative
        driver.Trigger.Digital.OutputPulsewidth(6) = 10 * (10 ^ -6)
        driver.Trigger.Digital.OutputStimulus(6) = "NOT1"
        driver.Trigger.Model.LoadGradeBinning(100, KeithleyDMM6500BinningStartInLineEnum.KeithleyDMM6500BinningStartInLineDigital5, 0.1, 0.1, "bufferVar", allPassPattern, highLimits, lowLimits, failBitPattern)

        'Trigger to start the scan...
        driver.Trigger.Initiate()
        driver.Trigger.Wait()
        driver.Display.ScreenName = KeithleyDMM6500DisplayScreenNameEnum.KeithleyDMM6500DisplayScreenNameSwipeUser
        driver.Display.Message(KeithleyDMM6500DisplayLineEnum.KeithleyDMM6500DisplayLineBottom, "Test Completed")
    End Sub

End Module
