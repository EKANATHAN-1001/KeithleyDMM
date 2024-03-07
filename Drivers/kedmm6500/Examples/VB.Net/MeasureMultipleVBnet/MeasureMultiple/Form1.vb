Imports System.Threading
Imports KeithleyInstruments
'This example does a functions measurement after getting connected to the instrument . We can get the identification of the instrument and DMM measure and DMM digitize measurement with range , NPLC and count as input . We also have Error query and reset and close connection functionalities . supported by DAQ 6510
Public Class Form1

    Public driver As KeithleyInstruments.KeithleyDMM6500.Interop.IKeithleyDMM6500

    Private Sub Initialize(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles InitButton.Click
        driver = New KeithleyInstruments.KeithleyDMM6500.Interop.KeithleyDMM6500

        Try
            driver.Initialize(resourceName.Text, False, False, "")
        Catch ex As Exception
            MessageBox.Show("Not a Valid Instrument Resource Name OR Something went wrong", "VBdotnetApplication", MessageBoxButtons.OK, MessageBoxIcon.Asterisk)
        End Try

        If driver.Initialized = True Then
            driver.Trigger.Abort()

            splitContainer1.Panel2.Enabled = True
            IdentifyButton.Enabled = True
            panel1.Enabled = True

            'As we are doing DMM operation query to check if front terminal is active
            If driver.Route.Terminal = KeithleyDMM6500.Interop.KeithleyDMM6500SystemTerminalEnum.KeithleyDMM6500SystemTerminalRear Then
                MessageBox.Show("This example supports only front panel operations, put the instrument in front panel measurement mode", "CSharpDotnetApplication", MessageBoxButtons.OK, MessageBoxIcon.Asterisk)
                Close(sender, e)
            End If
        End If

    End Sub

    Private Sub ErrorQuery(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ErrorQueryButton.Click
        Dim code As Integer = -1
        Dim mess As String = ""
        driver.Utility.ErrorQuery(code, mess)
        ErrCode.Text = code
        ErrMessage.Text = mess
    End Sub

    Private Sub Identify(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles IdentifyButton.Click
        InstrIdentity.Text = driver.Identity.InstrumentManufacturer + "," + driver.Identity.InstrumentModel
    End Sub

    Private Sub Reset(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ResetButton.Click
        driver.Utility.Reset()
        ErrMessage.Clear()

    End Sub

    Private Sub Close(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CloseButton.Click
        driver.Close()
        If driver.Initialized = False Then
            splitContainer1.Panel2.Enabled = False
            IdentifyButton.Enabled = False
            panel1.Enabled = False
        End If
    End Sub

    Private Sub FunctionComboBoxSelectionChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ComboBox1.SelectedIndexChanged
        Dim s As String = ComboBox1.SelectedItem.ToString()
        Select Case s
            Case "2WireResistance", "4WireResistance", "Capacitance", "CurrentAC", "CurrentDC", "VoltageAC", "VoltageDC", "VoltageDCRatio"
                TextBox5.Enabled = True
            Case Else
                TextBox5.Enabled = False
        End Select

        Select Case s
            Case "2WireResistance", "4WireResistance", "CurrentDC", "Diode", "Temperature", "VoltageDC", "VoltageDCRatio"
                TextBox6.Enabled = True
            Case Else
                TextBox6.Enabled = False
        End Select

        Select Case s
            Case "Temperature"
                Label12.BringToFront()
                ComboBox3.BringToFront()
            Case Else
                Label12.SendToBack()
                ComboBox3.SendToBack()
        End Select


    End Sub

    Private Sub Measure(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MeasureButton.Click
        Try
            driver.Function = MeasureFunction(ComboBox1.SelectedItem.ToString())
            'driver.Buffer.Create("MeasureMultiple", 1000)
            driver.Buffer.Clear("defbuffer1")
            Thread.Sleep(500)

            Select Case ComboBox1.SelectedItem.ToString()
                Case "2WireResistance", "4WireResistance", "Capacitance", "CurrentAC", "CurrentDC", "VoltageAC", "VoltageDC", "VoltageDCRatio"
                    driver.Measurement.Configuration.Range(RangeFunction(ComboBox1.SelectedItem.ToString())) = Double.Parse(TextBox5.Text)
            End Select
            Thread.Sleep(500)

            Select Case ComboBox1.SelectedItem.ToString()
                Case "2WireResistance", "4WireResistance", "CurrentDC", "Diode", "Temperature", "VoltageDC", "VoltageDCRatio"
                    driver.Measurement.Configuration.NPLC(NPLCFunction(ComboBox1.SelectedItem.ToString())) = Double.Parse(TextBox6.Text)
            End Select
            Thread.Sleep(500)

            If ComboBox1.SelectedItem.ToString() = "Temperature" Then
                driver.Measurement.Configuration.Temperature.TransducerType = TransducerType(ComboBox3.SelectedItem.ToString())
            End If
            Thread.Sleep(500)

            driver.Measurement.Configuration.Count = Double.Parse(TextBox8.Text)
            Thread.Sleep(500)

            driver.Buffer.TraceTrigger("defbuffer1")
            Thread.Sleep(20000) ' depends on the count we have to increase the sleep for the buffer to get all the data 

            Dim wfmReading As Double() = driver.Buffer.FetchDoubleData(1, Double.Parse(TextBox8.Text), "defbuffer1", KeithleyDMM6500.Interop.KeithleyDMM6500BufferFormatElementEnum.KeithleyDMM6500BufferFormatElementReading)
            Thread.Sleep(2000)
            Dim wfmReadingUnits As String = driver.Buffer.FetchStringData(1, Double.Parse(TextBox8.Text), "defbuffer1", KeithleyDMM6500.Interop.KeithleyDMM6500BufferFormatElementEnum.KeithleyDMM6500BufferFormatElementUnit)
            Thread.Sleep(2000)
            Dim wfmReadingRelTime As Double() = driver.Buffer.FetchDoubleData(1, Double.Parse(TextBox8.Text), "defbuffer1", KeithleyDMM6500.Interop.KeithleyDMM6500BufferFormatElementEnum.KeithleyDMM6500BufferFormatElementRelative)
            Thread.Sleep(2000)

            Dim formattedReading As String() = wfmReadingUnits.Split(",")

            If formattedReading.Length = wfmReading.Length And wfmReadingRelTime.Length = wfmReading.Length Then
                For count As Integer = 0 To wfmReading.Length - 1
                    formattedReading(count) = wfmReadingRelTime(count).ToString("F8") & "     " & wfmReading(count).ToString("0.#####E+0") & formattedReading(count)
                Next
            End If

            'driver.Buffer.Delete("MeasureMultiple")
            ResultBox.Text = "RelativeTime     FormattedReading" & Environment.NewLine & String.Join(Environment.NewLine, formattedReading)

        Catch ex As Exception
            MessageBox.Show(ex.Message, "VBdotnetApplication", MessageBoxButtons.OK, MessageBoxIcon.Asterisk)
        End Try
    End Sub

    Function RangeFunction(ByVal enumStr As String) As KeithleyInstruments.KeithleyDMM6500.Interop.KeithleyDMM6500FunctionsWithRangeEnum
        Select Case enumStr
            Case "2WireResistance"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500FunctionsWithRangeEnum.KeithleyDMM6500FunctionsWithRange2WireResistance
            Case "4WireResistance"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500FunctionsWithRangeEnum.KeithleyDMM6500FunctionsWithRange4WireResistance
            Case "Capacitance"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500FunctionsWithRangeEnum.KeithleyDMM6500FunctionsWithRangeCapacitance
            Case "CurrentAC"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500FunctionsWithRangeEnum.KeithleyDMM6500FunctionsWithRangeCurrentAC
            Case "CurrentDC"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500FunctionsWithRangeEnum.KeithleyDMM6500FunctionsWithRangeCurrentDC
            Case "VoltageAC"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500FunctionsWithRangeEnum.KeithleyDMM6500FunctionsWithRangeVoltageAC
            Case "VoltageDC"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500FunctionsWithRangeEnum.KeithleyDMM6500FunctionsWithRangeVoltageDC
            Case "VoltageDCRatio"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500FunctionsWithRangeEnum.KeithleyDMM6500FunctionsWithRangeVoltageDCRatio
            Case Else
                Return KeithleyDMM6500.Interop.KeithleyDMM6500FunctionsWithRangeEnum.KeithleyDMM6500FunctionsWithRangeCurrentDC
        End Select
    End Function

    Function NPLCFunction(ByVal enumStr As String) As KeithleyInstruments.KeithleyDMM6500.Interop.KeithleyDMM6500NPLCFunctionsEnum
        Select Case enumStr
            Case "2WireResistance"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500NPLCFunctionsEnum.KeithleyDMM6500NPLCFunctions2WireResistance
            Case "4WireResistance"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500NPLCFunctionsEnum.KeithleyDMM6500NPLCFunctions4WireResistance
            Case "Temperature"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500NPLCFunctionsEnum.KeithleyDMM6500NPLCFunctionsTemperature
            Case "CurrentAC"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500NPLCFunctionsEnum.KeithleyDMM6500NPLCFunctionsCurrentAC
            Case "CurrentDC"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500NPLCFunctionsEnum.KeithleyDMM6500NPLCFunctionsCurrentDC
            Case "Diode"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500NPLCFunctionsEnum.KeithleyDMM6500NPLCFunctionsDiode
            Case "VoltageAC"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500NPLCFunctionsEnum.KeithleyDMM6500NPLCFunctionsVoltageAC
            Case "VoltageDC"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500NPLCFunctionsEnum.KeithleyDMM6500NPLCFunctionsVoltageDC
            Case "VoltageDCRatio"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500NPLCFunctionsEnum.KeithleyDMM6500NPLCFunctionsVoltageDCRatio
            Case Else
                Return KeithleyDMM6500.Interop.KeithleyDMM6500NPLCFunctionsEnum.KeithleyDMM6500NPLCFunctionsCurrentDC
        End Select
    End Function

    Function MeasureFunction(ByVal enumStr As String) As KeithleyInstruments.KeithleyDMM6500.Interop.KeithleyDMM6500FunctionEnum
        Select Case enumStr
            Case "2WireResistance"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500FunctionEnum.KeithleyDMM6500Function2WireResistance
            Case "4WireResistance"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500FunctionEnum.KeithleyDMM6500Function4WireResistance
            Case "Capacitance"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionCapacitance
            Case "CurrentAC"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionCurrentAC
            Case "CurrentDC"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionCurrentDC
            Case "Diode"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionDiode
            Case "VoltageAC"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionVoltageAC
            Case "VoltageDC"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionVoltageDC
            Case "VoltageDCRatio"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionVoltageDCRatio
            Case "Period"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionPeriod
            Case "Frequency"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionFrequency
            Case "Temperature"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionTemperature
            Case "Continuity"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionContinuity
            Case Else
                Return KeithleyDMM6500.Interop.KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionCurrentDC
        End Select
    End Function

    Function TransducerType(ByVal enumStr As String) As KeithleyInstruments.KeithleyDMM6500.Interop.KeithleyDMM6500TransducerTypeEnum
        Select Case enumStr
            Case "Thermocouple"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500TransducerTypeEnum.KeithleyDMM6500TransducerTypeThermocouple
            Case "Thermistor"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500TransducerTypeEnum.KeithleyDMM6500TransducerTypeThermistor
            Case "2WireRtd"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500TransducerTypeEnum.KeithleyDMM6500TransducerType2WireRtd
            Case "4WireRtd"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500TransducerTypeEnum.KeithleyDMM6500TransducerType4WireRtd
            Case Else
                Return KeithleyDMM6500.Interop.KeithleyDMM6500TransducerTypeEnum.KeithleyDMM6500TransducerTypeThermocouple
        End Select
    End Function

    Function DigitizerFunction(ByVal enumStr As String) As KeithleyInstruments.KeithleyDMM6500.Interop.KeithleyDMM6500DigitizerFunctionEnum
        Select Case enumStr
            Case "CurrentDC"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500DigitizerFunctionEnum.KeithleyDMM6500DigitizerFunctionCurrentDC
            Case "VoltageDC"
                Return KeithleyDMM6500.Interop.KeithleyDMM6500DigitizerFunctionEnum.KeithleyDMM6500DigitizerFunctionVoltageDC
            Case Else
                Return KeithleyDMM6500.Interop.KeithleyDMM6500DigitizerFunctionEnum.KeithleyDMM6500DigitizerFunctionCurrentDC
        End Select
    End Function

    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Dim values As Array = [Enum].GetValues(GetType(KeithleyInstruments.KeithleyDMM6500.Interop.KeithleyDMM6500FunctionEnum))
        For Each value In values
            If (value.ToString().Substring(23) <> "None") Then
                ComboBox1.Items.Add(value.ToString().Substring(23))
            End If
        Next
        ComboBox1.SelectedIndex = 0

        Dim digValues As Array = [Enum].GetValues(GetType(KeithleyInstruments.KeithleyDMM6500.Interop.KeithleyDMM6500DigitizerFunctionEnum))
        For Each digvalue In digValues
            If (digvalue.ToString().Substring(32) <> "None") Then
                ComboBox2.Items.Add(digvalue.ToString().Substring(32))
            End If
        Next
        ComboBox2.SelectedIndex = 0

        Dim tempTypes As Array = [Enum].GetValues(GetType(KeithleyInstruments.KeithleyDMM6500.Interop.KeithleyDMM6500TransducerTypeEnum))
        For Each temptype In tempTypes
            ComboBox3.Items.Add(temptype.ToString().Substring(29))
        Next

    End Sub

    Private Sub DigitizerMeasure(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button5.Click
        Try
            driver.Digitizer.Function = DigitizerFunction(ComboBox2.SelectedItem.ToString())
            'driver.Buffer.Create("defbuffer1", 1000)
            driver.Buffer.Clear("defbuffer1")

            Thread.Sleep(500)
            driver.Digitizer.Configuration.Range(DigitizerFunction(ComboBox2.SelectedItem.ToString())) = Double.Parse(TextBox11.Text)
            Thread.Sleep(500)
            driver.Digitizer.Configuration.SampleRate(DigitizerFunction(ComboBox2.SelectedItem.ToString())) = Double.Parse(TextBox10.Text)
            Thread.Sleep(500)
            driver.Digitizer.Configuration.Count = Double.Parse(TextBox9.Text)
            Thread.Sleep(500)
            driver.Buffer.TraceDigitizerTrigger("defbuffer1")
            Thread.Sleep(20000) ' depends on the count we have to increase the sleep for the buffer to get all the data 

            Dim wfmReading As Double() = driver.Buffer.FetchDoubleData(1, Double.Parse(TextBox8.Text), "defbuffer1", KeithleyDMM6500.Interop.KeithleyDMM6500BufferFormatElementEnum.KeithleyDMM6500BufferFormatElementReading)
            Thread.Sleep(1500)
            Dim wfmReadingUnits As String = driver.Buffer.FetchStringData(1, Double.Parse(TextBox8.Text), "defbuffer1", KeithleyDMM6500.Interop.KeithleyDMM6500BufferFormatElementEnum.KeithleyDMM6500BufferFormatElementUnit)
            Thread.Sleep(1500)
            Dim wfmReadingRelTime As Double() = driver.Buffer.FetchDoubleData(1, Double.Parse(TextBox8.Text), "defbuffer1", KeithleyDMM6500.Interop.KeithleyDMM6500BufferFormatElementEnum.KeithleyDMM6500BufferFormatElementRelative)
            Thread.Sleep(1500)

            Dim formattedReading As String() = wfmReadingUnits.Split(",")

            If formattedReading.Length = wfmReading.Length And wfmReadingRelTime.Length = wfmReading.Length Then
                For count As Integer = 0 To wfmReading.Length - 1
                    formattedReading(count) = wfmReadingRelTime(count).ToString("F8") & "     " & wfmReading(count).ToString("0.#####E+0") & formattedReading(count)
                Next
            End If

            'driver.Buffer.Delete("MeasureMultiple")
            ResultBox.Text = "RelativeTime      FormattedReading" & Environment.NewLine & String.Join(Environment.NewLine, formattedReading)

        Catch ex As Exception
            MessageBox.Show(ex.Message, "VBdotnetApplication", MessageBoxButtons.OK, MessageBoxIcon.Asterisk)
        End Try
    End Sub
End Class
