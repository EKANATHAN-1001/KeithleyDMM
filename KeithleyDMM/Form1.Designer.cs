namespace KeithleyDMM
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
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea2 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend2 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series2 = new System.Windows.Forms.DataVisualization.Charting.Series();
            this.mRangeComboBox = new System.Windows.Forms.ComboBox();
            this.GetButton = new System.Windows.Forms.Button();
            this.DCVBtn = new System.Windows.Forms.Button();
            this.DCIBtn = new System.Windows.Forms.Button();
            this.ResistanceBtn = new System.Windows.Forms.Button();
            this.ACVBtn = new System.Windows.Forms.Button();
            this.ACIBtn = new System.Windows.Forms.Button();
            this.CapacitanceBtn = new System.Windows.Forms.Button();
            this.DiodeBtn = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.mRangePanel = new System.Windows.Forms.Panel();
            this.mOutputLabel = new System.Windows.Forms.Label();
            this.DiaChart = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.DigiVBtn = new System.Windows.Forms.Button();
            this.DigiIBtn = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.SampleRatetxtBox = new System.Windows.Forms.TextBox();
            this.CountTxtBox = new System.Windows.Forms.TextBox();
            this.mRangePanel.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.DiaChart)).BeginInit();
            this.SuspendLayout();
            // 
            // mRangeComboBox
            // 
            this.mRangeComboBox.FormattingEnabled = true;
            this.mRangeComboBox.Location = new System.Drawing.Point(117, 60);
            this.mRangeComboBox.Name = "mRangeComboBox";
            this.mRangeComboBox.Size = new System.Drawing.Size(149, 24);
            this.mRangeComboBox.TabIndex = 12;
            this.mRangeComboBox.SelectedIndexChanged += new System.EventHandler(this.mRangeComboBox_SelectedIndexChanged);
            // 
            // GetButton
            // 
            this.GetButton.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.GetButton.Location = new System.Drawing.Point(82, 327);
            this.GetButton.Name = "GetButton";
            this.GetButton.Size = new System.Drawing.Size(176, 38);
            this.GetButton.TabIndex = 9;
            this.GetButton.Text = "Click me";
            this.GetButton.UseVisualStyleBackColor = true;
            this.GetButton.Click += new System.EventHandler(this.button1_Click);
            // 
            // DCVBtn
            // 
            this.DCVBtn.Location = new System.Drawing.Point(53, 41);
            this.DCVBtn.Name = "DCVBtn";
            this.DCVBtn.Size = new System.Drawing.Size(85, 40);
            this.DCVBtn.TabIndex = 17;
            this.DCVBtn.Text = "DCV";
            this.DCVBtn.UseVisualStyleBackColor = true;
            this.DCVBtn.Click += new System.EventHandler(this.DCVBtn_Click);
            // 
            // DCIBtn
            // 
            this.DCIBtn.Location = new System.Drawing.Point(173, 41);
            this.DCIBtn.Name = "DCIBtn";
            this.DCIBtn.Size = new System.Drawing.Size(85, 40);
            this.DCIBtn.TabIndex = 18;
            this.DCIBtn.Text = "DCI";
            this.DCIBtn.UseVisualStyleBackColor = true;
            this.DCIBtn.Click += new System.EventHandler(this.DCIBtn_Click);
            // 
            // ResistanceBtn
            // 
            this.ResistanceBtn.Location = new System.Drawing.Point(301, 41);
            this.ResistanceBtn.Name = "ResistanceBtn";
            this.ResistanceBtn.Size = new System.Drawing.Size(85, 40);
            this.ResistanceBtn.TabIndex = 19;
            this.ResistanceBtn.Text = "RES";
            this.ResistanceBtn.UseVisualStyleBackColor = true;
            this.ResistanceBtn.Click += new System.EventHandler(this.ResistanceBtn_Click);
            // 
            // ACVBtn
            // 
            this.ACVBtn.Location = new System.Drawing.Point(53, 122);
            this.ACVBtn.Name = "ACVBtn";
            this.ACVBtn.Size = new System.Drawing.Size(85, 40);
            this.ACVBtn.TabIndex = 20;
            this.ACVBtn.Text = "ACV";
            this.ACVBtn.UseVisualStyleBackColor = true;
            this.ACVBtn.Click += new System.EventHandler(this.ACVBtn_Click);
            // 
            // ACIBtn
            // 
            this.ACIBtn.Location = new System.Drawing.Point(173, 122);
            this.ACIBtn.Name = "ACIBtn";
            this.ACIBtn.Size = new System.Drawing.Size(85, 40);
            this.ACIBtn.TabIndex = 21;
            this.ACIBtn.Text = "ACI";
            this.ACIBtn.UseVisualStyleBackColor = true;
            this.ACIBtn.Click += new System.EventHandler(this.ACIBtn_Click);
            // 
            // CapacitanceBtn
            // 
            this.CapacitanceBtn.Location = new System.Drawing.Point(301, 122);
            this.CapacitanceBtn.Name = "CapacitanceBtn";
            this.CapacitanceBtn.Size = new System.Drawing.Size(85, 40);
            this.CapacitanceBtn.TabIndex = 22;
            this.CapacitanceBtn.Text = "CAP";
            this.CapacitanceBtn.UseVisualStyleBackColor = true;
            this.CapacitanceBtn.Click += new System.EventHandler(this.CapacitanceBtn_Click);
            // 
            // DiodeBtn
            // 
            this.DiodeBtn.Location = new System.Drawing.Point(421, 42);
            this.DiodeBtn.Name = "DiodeBtn";
            this.DiodeBtn.Size = new System.Drawing.Size(85, 40);
            this.DiodeBtn.TabIndex = 23;
            this.DiodeBtn.Text = "Diode";
            this.DiodeBtn.UseVisualStyleBackColor = true;
            this.DiodeBtn.Click += new System.EventHandler(this.DiodeBtn_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Perpetua Titling MT", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(39, 62);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(60, 17);
            this.label3.TabIndex = 15;
            this.label3.Text = "Range";
            // 
            // mRangePanel
            // 
            this.mRangePanel.Controls.Add(this.label3);
            this.mRangePanel.Controls.Add(this.mRangeComboBox);
            this.mRangePanel.Location = new System.Drawing.Point(392, 88);
            this.mRangePanel.Name = "mRangePanel";
            this.mRangePanel.Size = new System.Drawing.Size(281, 151);
            this.mRangePanel.TabIndex = 24;
            // 
            // mOutputLabel
            // 
            this.mOutputLabel.AutoSize = true;
            this.mOutputLabel.Location = new System.Drawing.Point(144, 231);
            this.mOutputLabel.Name = "mOutputLabel";
            this.mOutputLabel.Size = new System.Drawing.Size(54, 16);
            this.mOutputLabel.TabIndex = 25;
            this.mOutputLabel.Text = "Result : ";
            // 
            // DiaChart
            // 
            chartArea2.Name = "ChartArea1";
            this.DiaChart.ChartAreas.Add(chartArea2);
            legend2.Name = "Legend1";
            this.DiaChart.Legends.Add(legend2);
            this.DiaChart.Location = new System.Drawing.Point(301, 255);
            this.DiaChart.Name = "DiaChart";
            series2.ChartArea = "ChartArea1";
            series2.Legend = "Legend1";
            series2.Name = "Series1";
            this.DiaChart.Series.Add(series2);
            this.DiaChart.Size = new System.Drawing.Size(862, 340);
            this.DiaChart.TabIndex = 26;
            this.DiaChart.Text = "chart1";
            // 
            // DigiVBtn
            // 
            this.DigiVBtn.Location = new System.Drawing.Point(741, 179);
            this.DigiVBtn.Name = "DigiVBtn";
            this.DigiVBtn.Size = new System.Drawing.Size(85, 40);
            this.DigiVBtn.TabIndex = 27;
            this.DigiVBtn.Text = "Digi V";
            this.DigiVBtn.UseVisualStyleBackColor = true;
            this.DigiVBtn.Click += new System.EventHandler(this.btn_Click);
            // 
            // DigiIBtn
            // 
            this.DigiIBtn.Location = new System.Drawing.Point(997, 179);
            this.DigiIBtn.Name = "DigiIBtn";
            this.DigiIBtn.Size = new System.Drawing.Size(85, 40);
            this.DigiIBtn.TabIndex = 28;
            this.DigiIBtn.Text = "Digi I";
            this.DigiIBtn.UseVisualStyleBackColor = true;
            this.DigiIBtn.Click += new System.EventHandler(this.DigiIBtn_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(732, 101);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(100, 20);
            this.label1.TabIndex = 29;
            this.label1.Text = "SampleRate";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(732, 136);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(166, 20);
            this.label2.TabIndex = 30;
            this.label2.Text = "Count(No of Sample)";
            // 
            // SampleRatetxtBox
            // 
            this.SampleRatetxtBox.Location = new System.Drawing.Point(958, 99);
            this.SampleRatetxtBox.Name = "SampleRatetxtBox";
            this.SampleRatetxtBox.Size = new System.Drawing.Size(143, 22);
            this.SampleRatetxtBox.TabIndex = 31;
            // 
            // CountTxtBox
            // 
            this.CountTxtBox.Location = new System.Drawing.Point(958, 134);
            this.CountTxtBox.Name = "CountTxtBox";
            this.CountTxtBox.Size = new System.Drawing.Size(143, 22);
            this.CountTxtBox.TabIndex = 32;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1175, 607);
            this.Controls.Add(this.CountTxtBox);
            this.Controls.Add(this.SampleRatetxtBox);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.DigiIBtn);
            this.Controls.Add(this.DigiVBtn);
            this.Controls.Add(this.DiaChart);
            this.Controls.Add(this.mOutputLabel);
            this.Controls.Add(this.mRangePanel);
            this.Controls.Add(this.DiodeBtn);
            this.Controls.Add(this.CapacitanceBtn);
            this.Controls.Add(this.ACIBtn);
            this.Controls.Add(this.ACVBtn);
            this.Controls.Add(this.ResistanceBtn);
            this.Controls.Add(this.DCIBtn);
            this.Controls.Add(this.DCVBtn);
            this.Controls.Add(this.GetButton);
            this.Name = "Form1";
            this.Text = "Form1";
            this.mRangePanel.ResumeLayout(false);
            this.mRangePanel.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.DiaChart)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.ComboBox mRangeComboBox;
        private System.Windows.Forms.Button GetButton;
        private System.Windows.Forms.Button DCVBtn;
        private System.Windows.Forms.Button DCIBtn;
        private System.Windows.Forms.Button ResistanceBtn;
        private System.Windows.Forms.Button ACVBtn;
        private System.Windows.Forms.Button ACIBtn;
        private System.Windows.Forms.Button CapacitanceBtn;
        private System.Windows.Forms.Button DiodeBtn;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Panel mRangePanel;
        private System.Windows.Forms.Label mOutputLabel;
        private System.Windows.Forms.DataVisualization.Charting.Chart DiaChart;
        private System.Windows.Forms.Button DigiVBtn;
        private System.Windows.Forms.Button DigiIBtn;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox SampleRatetxtBox;
        private System.Windows.Forms.TextBox CountTxtBox;
    }
}

