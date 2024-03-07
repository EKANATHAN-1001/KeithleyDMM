using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using KeithleyInstruments.KeithleyDMM6500 .Interop ;
using System.Threading;
using System.Globalization;
//This example does a functions measurement after getting connected to the instrument . We can get the identification of the instrument and DMM measure and DMM digitize measurement with range , NPLC and count as input . We also have Error query and reset and close connection functionalities . 
namespace MeasureMultipleCSharp
{
    public partial class Form1 : Form
    {
        private IKeithleyDMM6500 driver;
        public Form1()
        {
            InitializeComponent();
        }

        private void Initialize(object sender, EventArgs e)
        {
            driver = new KeithleyDMM6500Class();
            try
            {
                driver.Initialize(InstrDesc.Text, false, false, "");
            }
            catch(Exception ex)
            {
                MessageBox.Show("Not a Valid Instrument Resource Name OR Something went wrong", "CSharpDotnetApplication", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
            }
            if(driver.Initialized == true)
            {
                driver.Trigger.Abort();

                splitContainer1.Panel2.Enabled = true;
                button3.Enabled = true;
                panel1.Enabled = true;

                //As we are doing DMM operation query to check if front terminal is active
                if (driver.Route.Terminal == KeithleyDMM6500SystemTerminalEnum.KeithleyDMM6500SystemTerminalRear)
                {
                    MessageBox.Show("This example supports only front panel operations, put the instrument in front panel measurement mode", "CSharpDotnetApplication", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                    Close(sender, e);
                }
            }
        }


        private void QueryError(object sender, EventArgs e)
        {
            int code = -1;
            string mess = "";
            driver.Utility.ErrorQuery(ref code,ref mess);
            ErrorCodeTxtBox.Text = code.ToString();
            ErrorMsgTxtBox.Text = mess;
        }

        private void IdentifyInstrument(object sender, EventArgs e)
        {
            InstrDetails.Text = driver.Identity.InstrumentManufacturer + "," + driver.Identity.InstrumentModel;
        }

        private KeithleyInstruments.KeithleyDMM6500.Interop.KeithleyDMM6500FunctionEnum MeasureFunction(string enumStr) 
        {
        switch(enumStr)
            {
            case "2WireResistance":
                return KeithleyDMM6500FunctionEnum.KeithleyDMM6500Function2WireResistance;
            case "4WireResistance":
                return KeithleyDMM6500FunctionEnum.KeithleyDMM6500Function4WireResistance;
            case "Capacitance":
                return KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionCapacitance;
            case "CurrentAC":
                return KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionCurrentAC;
            case "CurrentDC":
                return KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionCurrentDC;
            case "Diode":
                return KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionDiode;
            case "VoltageAC":
                return KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionVoltageAC;
            case "VoltageDC":
                return KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionVoltageDC;
            case "VoltageDCRatio":
                return KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionVoltageDCRatio;
            case "Period":
                return KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionPeriod;
            case "Frequency":
                return KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionFrequency;
            case "Temperature":
                return KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionTemperature;
            case "Continuity":
                return KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionContinuity;
            default:
                return KeithleyDMM6500FunctionEnum.KeithleyDMM6500FunctionCurrentDC;
             }
        }

        private KeithleyInstruments.KeithleyDMM6500.Interop.KeithleyDMM6500FunctionsWithRangeEnum RangeFunction(String enumStr) 
        {
            switch (enumStr)
            {
                case "2WireResistance":
                    return KeithleyDMM6500FunctionsWithRangeEnum.KeithleyDMM6500FunctionsWithRange2WireResistance;
                case "4WireResistance":
                    return KeithleyDMM6500FunctionsWithRangeEnum.KeithleyDMM6500FunctionsWithRange4WireResistance;
                case "Capacitance":
                    return KeithleyDMM6500FunctionsWithRangeEnum.KeithleyDMM6500FunctionsWithRangeCapacitance;
                case "CurrentAC":
                    return KeithleyDMM6500FunctionsWithRangeEnum.KeithleyDMM6500FunctionsWithRangeCurrentAC;
                case "CurrentDC":
                    return KeithleyDMM6500FunctionsWithRangeEnum.KeithleyDMM6500FunctionsWithRangeCurrentDC;
                case "VoltageAC":
                    return KeithleyDMM6500FunctionsWithRangeEnum.KeithleyDMM6500FunctionsWithRangeVoltageAC;
                case "VoltageDC":
                    return KeithleyDMM6500FunctionsWithRangeEnum.KeithleyDMM6500FunctionsWithRangeVoltageDC;
                case "VoltageDCRatio":
                    return KeithleyDMM6500FunctionsWithRangeEnum.KeithleyDMM6500FunctionsWithRangeVoltageDCRatio;
                default:
                    return KeithleyDMM6500FunctionsWithRangeEnum.KeithleyDMM6500FunctionsWithRangeCurrentDC;
            }
        }
        private KeithleyInstruments.KeithleyDMM6500.Interop.KeithleyDMM6500NPLCFunctionsEnum NPLCFunction(String enumStr)
        {
            switch(enumStr)
            {
                case "2WireResistance":
                    return KeithleyDMM6500NPLCFunctionsEnum.KeithleyDMM6500NPLCFunctions2WireResistance;
                case "4WireResistance":
                    return KeithleyDMM6500NPLCFunctionsEnum.KeithleyDMM6500NPLCFunctions4WireResistance;
                case "Temperature":
                    return KeithleyDMM6500NPLCFunctionsEnum.KeithleyDMM6500NPLCFunctionsTemperature;
                case "CurrentAC":
                    return KeithleyDMM6500NPLCFunctionsEnum.KeithleyDMM6500NPLCFunctionsCurrentAC;
                case "CurrentDC":
                    return KeithleyDMM6500NPLCFunctionsEnum.KeithleyDMM6500NPLCFunctionsCurrentDC;
                case "Diode":
                    return KeithleyDMM6500NPLCFunctionsEnum.KeithleyDMM6500NPLCFunctionsDiode;
                case "VoltageAC":
                    return KeithleyDMM6500NPLCFunctionsEnum.KeithleyDMM6500NPLCFunctionsVoltageAC;
                case "VoltageDC":
                    return KeithleyDMM6500NPLCFunctionsEnum.KeithleyDMM6500NPLCFunctionsVoltageDC;
                case "VoltageDCRatio":
                    return KeithleyDMM6500NPLCFunctionsEnum.KeithleyDMM6500NPLCFunctionsVoltageDCRatio;
                default:
                    return KeithleyDMM6500NPLCFunctionsEnum.KeithleyDMM6500NPLCFunctionsCurrentDC;
            }
        }
        private void Measure(object sender, EventArgs e)
        {
        try
        {
            driver.Function = MeasureFunction(FunctionComboBox.SelectedItem.ToString());
            //driver.Buffer.Create("MeasureMultiple", 1000);
            driver.Buffer.Clear("defbuffer1");
            Thread.Sleep(500);
            switch (FunctionComboBox.SelectedItem.ToString())
            {
                case "2WireResistance":
                case "4WireResistance":
                case "Capacitance":
                case "CurrentAC":
                case "CurrentDC":
                case "VoltageAC":
                case "VoltageDC":
                case "VoltageDCRatio":
                    driver.Measurement.Configuration.set_Range(RangeFunction(FunctionComboBox.SelectedItem.ToString()), Double.Parse(RangeTextBox.Text));
                    Thread.Sleep(500);
                    break;
                default:
                    break;
            }

            switch (FunctionComboBox.SelectedItem.ToString())
            {
                case "2WireResistance":
                case "4WireResistance":
                case "CurrentDC":
                case "Diode":
                case "Temperature":
                case "VoltageDC":
                case "VoltageDCRatio":
                    driver.Measurement.Configuration.set_NPLC(NPLCFunction(FunctionComboBox.SelectedItem.ToString()), Double.Parse(NPLCTextBox.Text));
                    Thread.Sleep(500);
                    break;
                default:
                    break;
            }

            if( FunctionComboBox.SelectedItem.ToString() == "Temperature")
                driver.Measurement.Configuration.Temperature.TransducerType = TransducerType(comboBox3.SelectedItem.ToString());
            Thread.Sleep(500);

            driver.Measurement.Configuration.Count = Int32.Parse(CountTextBox.Text);
            Thread.Sleep(500);

            driver.Buffer.TraceTrigger("defbuffer1");
            Thread.Sleep(20000);// depends on the count we have to increase the sleep for the buffer to get all the data 

            Double[] wfmReading = driver.Buffer.FetchDoubleData(1, Int32.Parse(CountTextBox.Text), "defbuffer1", KeithleyDMM6500BufferFormatElementEnum.KeithleyDMM6500BufferFormatElementReading);
            Thread.Sleep(2000);
            string wfmReadingUnits = driver.Buffer.FetchStringData(1, Int32.Parse(CountTextBox.Text), "defbuffer1", KeithleyDMM6500BufferFormatElementEnum.KeithleyDMM6500BufferFormatElementUnit);
            Thread.Sleep(2000);
            Double[] wfmReadingRelativeTimestamp = driver.Buffer.FetchDoubleData(1, Int32.Parse(CountTextBox.Text), "defbuffer1", KeithleyDMM6500BufferFormatElementEnum.KeithleyDMM6500BufferFormatElementRelative);
            Thread.Sleep(2000);

            string[] formattedReading = wfmReadingUnits.Split(',');
            if (wfmReadingRelativeTimestamp.Length == wfmReading.Length && formattedReading.Length == wfmReading.Length)
            {
                for (int i = 0; i < wfmReadingRelativeTimestamp.Length; i++)
                {
                    formattedReading[i] = wfmReadingRelativeTimestamp[i].ToString("F8")+"\t"+ wfmReading[i].ToString("0.#####E+0")+ formattedReading[i];
                }                
            }
            
            //driver.Buffer.Delete("MeasureMultiple");
            ResultTextBox.Text = "RelativeTime\t FormattedReading"+Environment.NewLine+ String.Join(Environment.NewLine, formattedReading);
        }
        catch (Exception ex)
        {
            MessageBox.Show(ex.Message , "CSharpDotnetApplication", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
        }

        }

        KeithleyInstruments.KeithleyDMM6500.Interop.KeithleyDMM6500TransducerTypeEnum TransducerType(String enumStr)
        {
            switch(enumStr)
            {
                case "Thermocouple":
                    return KeithleyInstruments.KeithleyDMM6500.Interop.KeithleyDMM6500TransducerTypeEnum.KeithleyDMM6500TransducerTypeThermocouple;
                case "Thermistor":
                    return KeithleyInstruments.KeithleyDMM6500.Interop.KeithleyDMM6500TransducerTypeEnum.KeithleyDMM6500TransducerTypeThermistor;
                case "2WireRtd":
                    return KeithleyInstruments.KeithleyDMM6500.Interop.KeithleyDMM6500TransducerTypeEnum.KeithleyDMM6500TransducerType2WireRtd;
                case "4WireRtd":
                    return KeithleyInstruments.KeithleyDMM6500.Interop.KeithleyDMM6500TransducerTypeEnum.KeithleyDMM6500TransducerType4WireRtd;
                default:
                    return KeithleyInstruments.KeithleyDMM6500.Interop.KeithleyDMM6500TransducerTypeEnum.KeithleyDMM6500TransducerTypeThermocouple;
            }
        }

        KeithleyInstruments.KeithleyDMM6500.Interop.KeithleyDMM6500DigitizerFunction1Enum DigitizerFunction(string enumStr ) 
        {
            switch(enumStr)
            {
                case "CurrentDC":
                    return KeithleyDMM6500DigitizerFunction1Enum.KeithleyDMM6500DigitizerFunction1CurrentDC;
                case "VoltageDC":
                    return KeithleyDMM6500DigitizerFunction1Enum.KeithleyDMM6500DigitizerFunction1VoltageDC;
                default:
                    return KeithleyDMM6500DigitizerFunction1Enum.KeithleyDMM6500DigitizerFunction1CurrentDC;
            }
        }

        private void MeasureDigitizer(object sender, EventArgs e)
        {
            try
            {
                driver.Digitizer.Function = DigitizerFunction(FunctionComboBox2.SelectedItem.ToString());
                //driver.Buffer.Create("MeasureMultiple", 1000);
                driver.Buffer.Clear("defbuffer1");
                Thread.Sleep(500);
                driver.Digitizer.Configuration.set_Range((KeithleyDMM6500DigitizerFunctionEnum)DigitizerFunction(FunctionComboBox2.SelectedItem.ToString()), Double.Parse(RangeTextBox2.Text));
                Thread.Sleep(500);
                driver.Digitizer.Configuration.set_SampleRate((KeithleyDMM6500DigitizerFunctionEnum)DigitizerFunction(FunctionComboBox2.SelectedItem.ToString()), Double.Parse(SampleRateTextBox.Text));
                Thread.Sleep(500);
                driver.Digitizer.Configuration.Count = Int32.Parse(CountTextBox2.Text);
                Thread.Sleep(500);
                driver.Buffer.TraceDigitizerTrigger("defbuffer1");
                Thread.Sleep(20000);// depends on the count we have to increase the sleep for the buffer to get all the data 
                Double[] wfmReading  = driver.Buffer.FetchDoubleData(1, Int32.Parse(CountTextBox2.Text), "defbuffer1", KeithleyDMM6500BufferFormatElementEnum.KeithleyDMM6500BufferFormatElementReading);
                Thread.Sleep(2000);
                string wfmReadingUnits = driver.Buffer.FetchStringData(1, Int32.Parse(CountTextBox.Text), "defbuffer1", KeithleyDMM6500BufferFormatElementEnum.KeithleyDMM6500BufferFormatElementUnit);
                Thread.Sleep(2000);
                Double[] wfmReadingRelativeTimestamp = driver.Buffer.FetchDoubleData(1, Int32.Parse(CountTextBox.Text), "defbuffer1", KeithleyDMM6500BufferFormatElementEnum.KeithleyDMM6500BufferFormatElementRelative);
                Thread.Sleep(2000);

                string[] formattedReading = wfmReadingUnits.Split(',');
                if (wfmReadingRelativeTimestamp.Length == wfmReading.Length && formattedReading.Length == wfmReading.Length)
                {
                    for (int i = 0; i < wfmReadingRelativeTimestamp.Length; i++)
                    {
                        formattedReading[i] = wfmReadingRelativeTimestamp[i].ToString("F8") + "\t" + wfmReading[i].ToString("0.#####E+0") + formattedReading[i];
                    }
                }

                //driver.Buffer.Delete("MeasureMultiple");
                ResultTextBox.Text = "RelativeTime\t FormattedReading" + Environment.NewLine + String.Join(Environment.NewLine, formattedReading);         
            }

            catch( Exception ex)
            {
                MessageBox.Show(ex.Message, "CSharpDotnetApplication", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
            }
        }

        private void Reset(object sender, EventArgs e)
        {
            driver.Utility.Reset();
            ErrorMsgTxtBox.Clear();
        }

        private void Close(object sender, EventArgs e)
        {
            driver.Close();
            if( driver.Initialized == false)
            {
                splitContainer1.Panel2.Enabled = false;
                button3.Enabled = false;
                panel1.Enabled = false;
            }
        }

        private void FunctionSelectionChanged(object sender, EventArgs e)
        {
            string s = FunctionComboBox.SelectedItem.ToString();
            switch(s)
            {
                case "2WireResistance":
                case "4WireResistance":
                case "Capacitance":
                case "CurrentAC":
                case "CurrentDC":
                case "VoltageAC":
                case "VoltageDC":
                case "VoltageDCRatio":
                    RangeTextBox.Enabled = true;
                    break;
                default:
                    RangeTextBox.Enabled = false;
                    break;
            }

            switch (s)
            {
                case "2WireResistance":
                case "4WireResistance":
                case "CurrentDC":
                case "Diode":
                case "Temperature":
                case "VoltageDC":
                case "VoltageDCRatio":
                    NPLCTextBox.Enabled = true;
                    break;
                default :
                    NPLCTextBox.Enabled = false;
                    break;
            }

            switch( s)
            {
                case "Temperature":
                    label12.BringToFront();
                    comboBox3.BringToFront();
                    break;
                default:
                    label12.SendToBack();
                    comboBox3.SendToBack();
                    break;
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            Array values = Enum.GetValues(typeof(KeithleyInstruments.KeithleyDMM6500.Interop.KeithleyDMM6500FunctionEnum));
            foreach (var value in values)
            {
                if (value.ToString().Substring(23) != "None")
                {
                    FunctionComboBox.Items.Add(value.ToString().Substring(23));
                }
            }
            FunctionComboBox.SelectedIndex = 0;

            Array digValues = Enum.GetValues(typeof(KeithleyInstruments.KeithleyDMM6500.Interop.KeithleyDMM6500DigitizerFunctionEnum));
            foreach (var digvalue in digValues)
            {
                if (digvalue.ToString().Substring(32) != "None")
                {
                    FunctionComboBox2.Items.Add(digvalue.ToString().Substring(32));
                }
            }
            FunctionComboBox2.SelectedIndex = 0;

            Array tempTypes = Enum.GetValues(typeof(KeithleyInstruments.KeithleyDMM6500.Interop.KeithleyDMM6500TransducerTypeEnum));
            foreach(var temptype in tempTypes)
                comboBox3.Items.Add(temptype.ToString().Substring(29));
        }
   }

}
