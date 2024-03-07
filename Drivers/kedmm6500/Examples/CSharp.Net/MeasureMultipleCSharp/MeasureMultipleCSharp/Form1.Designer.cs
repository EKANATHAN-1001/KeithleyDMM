namespace MeasureMultipleCSharp
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.MeasureButton2 = new System.Windows.Forms.Button();
            this.InitButton = new System.Windows.Forms.Button();
            this.CountTextBox2 = new System.Windows.Forms.TextBox();
            this.SampleRateTextBox = new System.Windows.Forms.TextBox();
            this.Label8 = new System.Windows.Forms.Label();
            this.RangeTextBox2 = new System.Windows.Forms.TextBox();
            this.Label9 = new System.Windows.Forms.Label();
            this.Label10 = new System.Windows.Forms.Label();
            this.Label11 = new System.Windows.Forms.Label();
            this.FunctionComboBox2 = new System.Windows.Forms.ComboBox();
            this.MeasureButton = new System.Windows.Forms.Button();
            this.CountTextBox = new System.Windows.Forms.TextBox();
            this.NPLCTextBox = new System.Windows.Forms.TextBox();
            this.ResetButton = new System.Windows.Forms.Button();
            this.panel3 = new System.Windows.Forms.Panel();
            this.CloseButton = new System.Windows.Forms.Button();
            this.Label7 = new System.Windows.Forms.Label();
            this.RangeTextBox = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.Label6 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.ErrorQueryButton = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.ErrorMsgTxtBox = new System.Windows.Forms.TextBox();
            this.InstrDesc = new System.Windows.Forms.TextBox();
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.ErrorCodeTxtBox = new System.Windows.Forms.TextBox();
            this.InstrDetails = new System.Windows.Forms.TextBox();
            this.Label5 = new System.Windows.Forms.Label();
            this.Label4 = new System.Windows.Forms.Label();
            this.ResultTextBox = new System.Windows.Forms.TextBox();
            this.FunctionComboBox = new System.Windows.Forms.ComboBox();
            this.button3 = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.tabControl2 = new System.Windows.Forms.TabControl();
            this.tabPage3 = new System.Windows.Forms.TabPage();
            this.label12 = new System.Windows.Forms.Label();
            this.comboBox3 = new System.Windows.Forms.ComboBox();
            this.tabPage4 = new System.Windows.Forms.TabPage();
            this.panel3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).BeginInit();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            this.panel1.SuspendLayout();
            this.tabControl2.SuspendLayout();
            this.tabPage3.SuspendLayout();
            this.tabPage4.SuspendLayout();
            this.SuspendLayout();
            // 
            // MeasureButton2
            // 
            this.MeasureButton2.Location = new System.Drawing.Point(209, 126);
            this.MeasureButton2.Name = "MeasureButton2";
            this.MeasureButton2.Size = new System.Drawing.Size(121, 23);
            this.MeasureButton2.TabIndex = 18;
            this.MeasureButton2.Text = "Measure";
            this.MeasureButton2.UseVisualStyleBackColor = true;
            this.MeasureButton2.Click += new System.EventHandler(this.MeasureDigitizer);
            // 
            // InitButton
            // 
            this.InitButton.Location = new System.Drawing.Point(15, 66);
            this.InitButton.Name = "InitButton";
            this.InitButton.Size = new System.Drawing.Size(191, 25);
            this.InitButton.TabIndex = 2;
            this.InitButton.Text = "Initialize and Enable Remote Control";
            this.InitButton.UseVisualStyleBackColor = true;
            this.InitButton.Click += new System.EventHandler(this.Initialize);
            // 
            // CountTextBox2
            // 
            this.CountTextBox2.Location = new System.Drawing.Point(6, 128);
            this.CountTextBox2.Name = "CountTextBox2";
            this.CountTextBox2.Size = new System.Drawing.Size(127, 20);
            this.CountTextBox2.TabIndex = 17;
            this.CountTextBox2.Text = "10";
            // 
            // SampleRateTextBox
            // 
            this.SampleRateTextBox.Location = new System.Drawing.Point(209, 68);
            this.SampleRateTextBox.Name = "SampleRateTextBox";
            this.SampleRateTextBox.Size = new System.Drawing.Size(121, 20);
            this.SampleRateTextBox.TabIndex = 16;
            this.SampleRateTextBox.Text = "1000000";
            // 
            // Label8
            // 
            this.Label8.AutoSize = true;
            this.Label8.Location = new System.Drawing.Point(6, 112);
            this.Label8.Name = "Label8";
            this.Label8.Size = new System.Drawing.Size(39, 15);
            this.Label8.TabIndex = 15;
            this.Label8.Text = "Count";
            // 
            // RangeTextBox2
            // 
            this.RangeTextBox2.Location = new System.Drawing.Point(6, 68);
            this.RangeTextBox2.Name = "RangeTextBox2";
            this.RangeTextBox2.Size = new System.Drawing.Size(128, 20);
            this.RangeTextBox2.TabIndex = 14;
            this.RangeTextBox2.Text = "1";
            // 
            // Label9
            // 
            this.Label9.AutoSize = true;
            this.Label9.Location = new System.Drawing.Point(206, 52);
            this.Label9.Name = "Label9";
            this.Label9.Size = new System.Drawing.Size(79, 15);
            this.Label9.TabIndex = 13;
            this.Label9.Text = "Sample Rate";
            // 
            // Label10
            // 
            this.Label10.AutoSize = true;
            this.Label10.Location = new System.Drawing.Point(4, 52);
            this.Label10.Name = "Label10";
            this.Label10.Size = new System.Drawing.Size(44, 15);
            this.Label10.TabIndex = 12;
            this.Label10.Text = "Range";
            // 
            // Label11
            // 
            this.Label11.AutoSize = true;
            this.Label11.Location = new System.Drawing.Point(7, 9);
            this.Label11.Name = "Label11";
            this.Label11.Size = new System.Drawing.Size(54, 15);
            this.Label11.TabIndex = 11;
            this.Label11.Text = "Function";
            // 
            // FunctionComboBox2
            // 
            this.FunctionComboBox2.FormattingEnabled = true;
            this.FunctionComboBox2.Location = new System.Drawing.Point(7, 24);
            this.FunctionComboBox2.Name = "FunctionComboBox2";
            this.FunctionComboBox2.Size = new System.Drawing.Size(345, 21);
            this.FunctionComboBox2.TabIndex = 10;
            // 
            // MeasureButton
            // 
            this.MeasureButton.Location = new System.Drawing.Point(208, 127);
            this.MeasureButton.Name = "MeasureButton";
            this.MeasureButton.Size = new System.Drawing.Size(121, 23);
            this.MeasureButton.TabIndex = 9;
            this.MeasureButton.Text = "Measure";
            this.MeasureButton.UseVisualStyleBackColor = true;
            this.MeasureButton.Click += new System.EventHandler(this.Measure);
            // 
            // CountTextBox
            // 
            this.CountTextBox.Location = new System.Drawing.Point(6, 127);
            this.CountTextBox.Name = "CountTextBox";
            this.CountTextBox.Size = new System.Drawing.Size(127, 20);
            this.CountTextBox.TabIndex = 8;
            this.CountTextBox.Text = "10";
            // 
            // NPLCTextBox
            // 
            this.NPLCTextBox.Location = new System.Drawing.Point(208, 68);
            this.NPLCTextBox.Name = "NPLCTextBox";
            this.NPLCTextBox.Size = new System.Drawing.Size(121, 20);
            this.NPLCTextBox.TabIndex = 7;
            this.NPLCTextBox.Text = "1";
            // 
            // ResetButton
            // 
            this.ResetButton.Location = new System.Drawing.Point(157, 18);
            this.ResetButton.Name = "ResetButton";
            this.ResetButton.Size = new System.Drawing.Size(151, 32);
            this.ResetButton.TabIndex = 12;
            this.ResetButton.Text = "Reset";
            this.ResetButton.UseVisualStyleBackColor = true;
            this.ResetButton.Click += new System.EventHandler(this.Reset);
            // 
            // panel3
            // 
            this.panel3.BackColor = System.Drawing.SystemColors.AppWorkspace;
            this.panel3.Controls.Add(this.CloseButton);
            this.panel3.Controls.Add(this.ResetButton);
            this.panel3.Location = new System.Drawing.Point(4, 204);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(796, 69);
            this.panel3.TabIndex = 3;
            // 
            // CloseButton
            // 
            this.CloseButton.Location = new System.Drawing.Point(452, 18);
            this.CloseButton.Name = "CloseButton";
            this.CloseButton.Size = new System.Drawing.Size(151, 32);
            this.CloseButton.TabIndex = 14;
            this.CloseButton.Text = "CloseConnection";
            this.CloseButton.UseVisualStyleBackColor = true;
            this.CloseButton.Click += new System.EventHandler(this.Close);
            // 
            // Label7
            // 
            this.Label7.AutoSize = true;
            this.Label7.Location = new System.Drawing.Point(6, 111);
            this.Label7.Name = "Label7";
            this.Label7.Size = new System.Drawing.Size(39, 15);
            this.Label7.TabIndex = 6;
            this.Label7.Text = "Count";
            // 
            // RangeTextBox
            // 
            this.RangeTextBox.Location = new System.Drawing.Point(5, 67);
            this.RangeTextBox.Name = "RangeTextBox";
            this.RangeTextBox.Size = new System.Drawing.Size(128, 20);
            this.RangeTextBox.TabIndex = 5;
            this.RangeTextBox.Text = "0.01";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(127, 52);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(85, 15);
            this.label3.TabIndex = 6;
            this.label3.Text = "ErrorMessage";
            // 
            // Label6
            // 
            this.Label6.AutoSize = true;
            this.Label6.Location = new System.Drawing.Point(205, 52);
            this.Label6.Name = "Label6";
            this.Label6.Size = new System.Drawing.Size(39, 15);
            this.Label6.TabIndex = 4;
            this.Label6.Text = "NPLC";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(14, 10);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(183, 15);
            this.label1.TabIndex = 0;
            this.label1.Text = "Resource Name / Logical Name";
            // 
            // ErrorQueryButton
            // 
            this.ErrorQueryButton.Location = new System.Drawing.Point(29, 40);
            this.ErrorQueryButton.Name = "ErrorQueryButton";
            this.ErrorQueryButton.Size = new System.Drawing.Size(75, 25);
            this.ErrorQueryButton.TabIndex = 3;
            this.ErrorQueryButton.Text = "ErrorQuery";
            this.ErrorQueryButton.UseVisualStyleBackColor = true;
            this.ErrorQueryButton.Click += new System.EventHandler(this.QueryError);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(128, 4);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(63, 15);
            this.label2.TabIndex = 4;
            this.label2.Text = "ErrorCode";
            // 
            // ErrorMsgTxtBox
            // 
            this.ErrorMsgTxtBox.Enabled = false;
            this.ErrorMsgTxtBox.Location = new System.Drawing.Point(130, 68);
            this.ErrorMsgTxtBox.Name = "ErrorMsgTxtBox";
            this.ErrorMsgTxtBox.Size = new System.Drawing.Size(250, 20);
            this.ErrorMsgTxtBox.TabIndex = 7;
            // 
            // InstrDesc
            // 
            this.InstrDesc.Location = new System.Drawing.Point(18, 32);
            this.InstrDesc.Name = "InstrDesc";
            this.InstrDesc.Size = new System.Drawing.Size(290, 20);
            this.InstrDesc.TabIndex = 1;
            this.InstrDesc.Text = "TCPIP0::134.64.234.161::inst0::INSTR";
            this.InstrDesc.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // splitContainer1
            // 
            this.splitContainer1.Location = new System.Drawing.Point(12, 13);
            this.splitContainer1.Name = "splitContainer1";
            // 
            // splitContainer1.Panel1
            // 
            this.splitContainer1.Panel1.BackColor = System.Drawing.SystemColors.ActiveBorder;
            this.splitContainer1.Panel1.Controls.Add(this.InitButton);
            this.splitContainer1.Panel1.Controls.Add(this.label1);
            this.splitContainer1.Panel1.Controls.Add(this.InstrDesc);
            // 
            // splitContainer1.Panel2
            // 
            this.splitContainer1.Panel2.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.splitContainer1.Panel2.Controls.Add(this.ErrorMsgTxtBox);
            this.splitContainer1.Panel2.Controls.Add(this.ErrorQueryButton);
            this.splitContainer1.Panel2.Controls.Add(this.label3);
            this.splitContainer1.Panel2.Controls.Add(this.label2);
            this.splitContainer1.Panel2.Controls.Add(this.ErrorCodeTxtBox);
            this.splitContainer1.Panel2.Enabled = false;
            this.splitContainer1.Size = new System.Drawing.Size(803, 112);
            this.splitContainer1.SplitterDistance = 370;
            this.splitContainer1.TabIndex = 20;
            // 
            // ErrorCodeTxtBox
            // 
            this.ErrorCodeTxtBox.Enabled = false;
            this.ErrorCodeTxtBox.Location = new System.Drawing.Point(131, 21);
            this.ErrorCodeTxtBox.Name = "ErrorCodeTxtBox";
            this.ErrorCodeTxtBox.Size = new System.Drawing.Size(141, 20);
            this.ErrorCodeTxtBox.TabIndex = 5;
            this.ErrorCodeTxtBox.Text = "0";
            // 
            // InstrDetails
            // 
            this.InstrDetails.Enabled = false;
            this.InstrDetails.Location = new System.Drawing.Point(173, 140);
            this.InstrDetails.Name = "InstrDetails";
            this.InstrDetails.Size = new System.Drawing.Size(605, 20);
            this.InstrDetails.TabIndex = 23;
            // 
            // Label5
            // 
            this.Label5.AutoSize = true;
            this.Label5.Location = new System.Drawing.Point(3, 52);
            this.Label5.Name = "Label5";
            this.Label5.Size = new System.Drawing.Size(44, 15);
            this.Label5.TabIndex = 2;
            this.Label5.Text = "Range";
            // 
            // Label4
            // 
            this.Label4.AutoSize = true;
            this.Label4.Location = new System.Drawing.Point(6, 9);
            this.Label4.Name = "Label4";
            this.Label4.Size = new System.Drawing.Size(54, 15);
            this.Label4.TabIndex = 1;
            this.Label4.Text = "Function";
            // 
            // ResultTextBox
            // 
            this.ResultTextBox.Location = new System.Drawing.Point(377, 4);
            this.ResultTextBox.Multiline = true;
            this.ResultTextBox.Name = "ResultTextBox";
            this.ResultTextBox.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.ResultTextBox.Size = new System.Drawing.Size(414, 190);
            this.ResultTextBox.TabIndex = 5;
            // 
            // FunctionComboBox
            // 
            this.FunctionComboBox.FormattingEnabled = true;
            this.FunctionComboBox.Location = new System.Drawing.Point(6, 24);
            this.FunctionComboBox.Name = "FunctionComboBox";
            this.FunctionComboBox.Size = new System.Drawing.Size(345, 21);
            this.FunctionComboBox.TabIndex = 0;
            this.FunctionComboBox.SelectedIndexChanged += new System.EventHandler(this.FunctionSelectionChanged);
            // 
            // button3
            // 
            this.button3.Enabled = false;
            this.button3.Location = new System.Drawing.Point(18, 135);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(134, 29);
            this.button3.TabIndex = 22;
            this.button3.Text = "Instrument Identification";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.IdentifyInstrument);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.panel1.Controls.Add(this.tabControl2);
            this.panel1.Controls.Add(this.ResultTextBox);
            this.panel1.Controls.Add(this.panel3);
            this.panel1.Enabled = false;
            this.panel1.Location = new System.Drawing.Point(12, 179);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(803, 292);
            this.panel1.TabIndex = 21;
            // 
            // tabControl2
            // 
            this.tabControl2.Controls.Add(this.tabPage3);
            this.tabControl2.Controls.Add(this.tabPage4);
            this.tabControl2.Location = new System.Drawing.Point(6, 4);
            this.tabControl2.Name = "tabControl2";
            this.tabControl2.SelectedIndex = 0;
            this.tabControl2.Size = new System.Drawing.Size(365, 194);
            this.tabControl2.TabIndex = 24;
            // 
            // tabPage3
            // 
            this.tabPage3.Controls.Add(this.MeasureButton);
            this.tabPage3.Controls.Add(this.FunctionComboBox);
            this.tabPage3.Controls.Add(this.CountTextBox);
            this.tabPage3.Controls.Add(this.Label4);
            this.tabPage3.Controls.Add(this.NPLCTextBox);
            this.tabPage3.Controls.Add(this.Label5);
            this.tabPage3.Controls.Add(this.Label7);
            this.tabPage3.Controls.Add(this.Label6);
            this.tabPage3.Controls.Add(this.label12);
            this.tabPage3.Controls.Add(this.RangeTextBox);
            this.tabPage3.Controls.Add(this.comboBox3);
            this.tabPage3.Location = new System.Drawing.Point(4, 22);
            this.tabPage3.Name = "tabPage3";
            this.tabPage3.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage3.Size = new System.Drawing.Size(357, 168);
            this.tabPage3.TabIndex = 0;
            this.tabPage3.Text = "DMM_Measure";
            this.tabPage3.UseVisualStyleBackColor = true;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(6, 52);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(45, 15);
            this.label12.TabIndex = 10;
            this.label12.Text = "Type    ";
            // 
            // comboBox3
            // 
            this.comboBox3.FormattingEnabled = true;
            this.comboBox3.Location = new System.Drawing.Point(6, 67);
            this.comboBox3.Name = "comboBox3";
            this.comboBox3.Size = new System.Drawing.Size(127, 21);
            this.comboBox3.TabIndex = 11;
            // 
            // tabPage4
            // 
            this.tabPage4.Controls.Add(this.MeasureButton2);
            this.tabPage4.Controls.Add(this.SampleRateTextBox);
            this.tabPage4.Controls.Add(this.CountTextBox2);
            this.tabPage4.Controls.Add(this.FunctionComboBox2);
            this.tabPage4.Controls.Add(this.Label11);
            this.tabPage4.Controls.Add(this.Label8);
            this.tabPage4.Controls.Add(this.Label10);
            this.tabPage4.Controls.Add(this.RangeTextBox2);
            this.tabPage4.Controls.Add(this.Label9);
            this.tabPage4.Location = new System.Drawing.Point(4, 22);
            this.tabPage4.Name = "tabPage4";
            this.tabPage4.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage4.Size = new System.Drawing.Size(357, 168);
            this.tabPage4.TabIndex = 1;
            this.tabPage4.Text = "DMM_Digitize";
            this.tabPage4.UseVisualStyleBackColor = true;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(826, 484);
            this.Controls.Add(this.splitContainer1);
            this.Controls.Add(this.InstrDetails);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.panel1);
            this.Name = "Form1";
            this.Text = "MeasureMultiple";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.panel3.ResumeLayout(false);
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel1.PerformLayout();
            this.splitContainer1.Panel2.ResumeLayout(false);
            this.splitContainer1.Panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).EndInit();
            this.splitContainer1.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.tabControl2.ResumeLayout(false);
            this.tabPage3.ResumeLayout(false);
            this.tabPage3.PerformLayout();
            this.tabPage4.ResumeLayout(false);
            this.tabPage4.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        internal System.Windows.Forms.Button MeasureButton2;
        private System.Windows.Forms.Button InitButton;
        internal System.Windows.Forms.TextBox CountTextBox2;
        internal System.Windows.Forms.TextBox SampleRateTextBox;
        internal System.Windows.Forms.Label Label8;
        internal System.Windows.Forms.TextBox RangeTextBox2;
        internal System.Windows.Forms.Label Label9;
        internal System.Windows.Forms.Label Label10;
        internal System.Windows.Forms.Label Label11;
        internal System.Windows.Forms.ComboBox FunctionComboBox2;
        internal System.Windows.Forms.Button MeasureButton;
        internal System.Windows.Forms.TextBox CountTextBox;
        internal System.Windows.Forms.TextBox NPLCTextBox;
        private System.Windows.Forms.Button ResetButton;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Button CloseButton;
        internal System.Windows.Forms.Label Label7;
        internal System.Windows.Forms.TextBox RangeTextBox;
        private System.Windows.Forms.Label label3;
        internal System.Windows.Forms.Label Label6;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button ErrorQueryButton;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox ErrorMsgTxtBox;
        private System.Windows.Forms.TextBox InstrDesc;
        private System.Windows.Forms.SplitContainer splitContainer1;
        private System.Windows.Forms.TextBox ErrorCodeTxtBox;
        private System.Windows.Forms.TextBox InstrDetails;
        internal System.Windows.Forms.Label Label5;
        internal System.Windows.Forms.Label Label4;
        internal System.Windows.Forms.TextBox ResultTextBox;
        internal System.Windows.Forms.ComboBox FunctionComboBox;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TabControl tabControl2;
        private System.Windows.Forms.TabPage tabPage3;
        private System.Windows.Forms.TabPage tabPage4;
        internal System.Windows.Forms.Label label12;
        private System.Windows.Forms.ComboBox comboBox3;
    }
}

