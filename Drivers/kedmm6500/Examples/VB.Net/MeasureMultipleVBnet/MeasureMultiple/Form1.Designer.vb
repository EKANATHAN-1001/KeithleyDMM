<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.InitButton = New System.Windows.Forms.Button()
        Me.InstrIdentity = New System.Windows.Forms.TextBox()
        Me.label1 = New System.Windows.Forms.Label()
        Me.splitContainer1 = New System.Windows.Forms.SplitContainer()
        Me.resourceName = New System.Windows.Forms.TextBox()
        Me.ErrMessage = New System.Windows.Forms.TextBox()
        Me.ErrorQueryButton = New System.Windows.Forms.Button()
        Me.label3 = New System.Windows.Forms.Label()
        Me.label2 = New System.Windows.Forms.Label()
        Me.ErrCode = New System.Windows.Forms.TextBox()
        Me.CloseButton = New System.Windows.Forms.Button()
        Me.IdentifyButton = New System.Windows.Forms.Button()
        Me.panel1 = New System.Windows.Forms.Panel()
        Me.ResultBox = New System.Windows.Forms.TextBox()
        Me.TabControl1 = New System.Windows.Forms.TabControl()
        Me.TabPage1 = New System.Windows.Forms.TabPage()
        Me.MeasureButton = New System.Windows.Forms.Button()
        Me.TextBox8 = New System.Windows.Forms.TextBox()
        Me.TextBox6 = New System.Windows.Forms.TextBox()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.TextBox5 = New System.Windows.Forms.TextBox()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.ComboBox1 = New System.Windows.Forms.ComboBox()
        Me.ComboBox3 = New System.Windows.Forms.ComboBox()
        Me.Label12 = New System.Windows.Forms.Label()
        Me.TabPage2 = New System.Windows.Forms.TabPage()
        Me.Button5 = New System.Windows.Forms.Button()
        Me.TextBox9 = New System.Windows.Forms.TextBox()
        Me.TextBox10 = New System.Windows.Forms.TextBox()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.TextBox11 = New System.Windows.Forms.TextBox()
        Me.Label9 = New System.Windows.Forms.Label()
        Me.Label10 = New System.Windows.Forms.Label()
        Me.Label11 = New System.Windows.Forms.Label()
        Me.ComboBox2 = New System.Windows.Forms.ComboBox()
        Me.panel3 = New System.Windows.Forms.Panel()
        Me.ResetButton = New System.Windows.Forms.Button()
        CType(Me.splitContainer1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.splitContainer1.Panel1.SuspendLayout()
        Me.splitContainer1.Panel2.SuspendLayout()
        Me.splitContainer1.SuspendLayout()
        Me.panel1.SuspendLayout()
        Me.TabControl1.SuspendLayout()
        Me.TabPage1.SuspendLayout()
        Me.TabPage2.SuspendLayout()
        Me.panel3.SuspendLayout()
        Me.SuspendLayout()
        '
        'InitButton
        '
        Me.InitButton.Location = New System.Drawing.Point(20, 81)
        Me.InitButton.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.InitButton.Name = "InitButton"
        Me.InitButton.Size = New System.Drawing.Size(255, 31)
        Me.InitButton.TabIndex = 2
        Me.InitButton.Text = "Initialize and Enable Remote Control"
        Me.InitButton.UseVisualStyleBackColor = True
        '
        'InstrIdentity
        '
        Me.InstrIdentity.Enabled = False
        Me.InstrIdentity.Location = New System.Drawing.Point(231, 171)
        Me.InstrIdentity.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.InstrIdentity.Name = "InstrIdentity"
        Me.InstrIdentity.Size = New System.Drawing.Size(805, 22)
        Me.InstrIdentity.TabIndex = 19
        '
        'label1
        '
        Me.label1.AutoSize = True
        Me.label1.Location = New System.Drawing.Point(19, 12)
        Me.label1.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.label1.Name = "label1"
        Me.label1.Size = New System.Drawing.Size(208, 17)
        Me.label1.TabIndex = 0
        Me.label1.Text = "Resource Name / Logical Name"
        '
        'splitContainer1
        '
        Me.splitContainer1.Location = New System.Drawing.Point(16, 15)
        Me.splitContainer1.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.splitContainer1.Name = "splitContainer1"
        '
        'splitContainer1.Panel1
        '
        Me.splitContainer1.Panel1.BackColor = System.Drawing.SystemColors.ActiveBorder
        Me.splitContainer1.Panel1.Controls.Add(Me.InitButton)
        Me.splitContainer1.Panel1.Controls.Add(Me.label1)
        Me.splitContainer1.Panel1.Controls.Add(Me.resourceName)
        '
        'splitContainer1.Panel2
        '
        Me.splitContainer1.Panel2.BackColor = System.Drawing.SystemColors.InactiveCaption
        Me.splitContainer1.Panel2.Controls.Add(Me.ErrMessage)
        Me.splitContainer1.Panel2.Controls.Add(Me.ErrorQueryButton)
        Me.splitContainer1.Panel2.Controls.Add(Me.label3)
        Me.splitContainer1.Panel2.Controls.Add(Me.label2)
        Me.splitContainer1.Panel2.Controls.Add(Me.ErrCode)
        Me.splitContainer1.Panel2.Enabled = False
        Me.splitContainer1.Size = New System.Drawing.Size(1071, 138)
        Me.splitContainer1.SplitterDistance = 493
        Me.splitContainer1.SplitterWidth = 5
        Me.splitContainer1.TabIndex = 16
        '
        'resourceName
        '
        Me.resourceName.Location = New System.Drawing.Point(24, 39)
        Me.resourceName.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.resourceName.Name = "resourceName"
        Me.resourceName.Size = New System.Drawing.Size(385, 22)
        Me.resourceName.TabIndex = 1
        Me.resourceName.Text = "TCPIP0::134.64.234.161::inst0::INSTR"
        Me.resourceName.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'ErrMessage
        '
        Me.ErrMessage.Enabled = False
        Me.ErrMessage.Location = New System.Drawing.Point(173, 84)
        Me.ErrMessage.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.ErrMessage.Name = "ErrMessage"
        Me.ErrMessage.Size = New System.Drawing.Size(332, 22)
        Me.ErrMessage.TabIndex = 7
        '
        'ErrorQueryButton
        '
        Me.ErrorQueryButton.Location = New System.Drawing.Point(39, 49)
        Me.ErrorQueryButton.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.ErrorQueryButton.Name = "ErrorQueryButton"
        Me.ErrorQueryButton.Size = New System.Drawing.Size(100, 31)
        Me.ErrorQueryButton.TabIndex = 3
        Me.ErrorQueryButton.Text = "ErrorQuery"
        Me.ErrorQueryButton.UseVisualStyleBackColor = True
        '
        'label3
        '
        Me.label3.AutoSize = True
        Me.label3.Location = New System.Drawing.Point(169, 64)
        Me.label3.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.label3.Name = "label3"
        Me.label3.Size = New System.Drawing.Size(97, 17)
        Me.label3.TabIndex = 6
        Me.label3.Text = "ErrorMessage"
        '
        'label2
        '
        Me.label2.AutoSize = True
        Me.label2.Location = New System.Drawing.Point(171, 5)
        Me.label2.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.label2.Name = "label2"
        Me.label2.Size = New System.Drawing.Size(73, 17)
        Me.label2.TabIndex = 4
        Me.label2.Text = "ErrorCode"
        '
        'ErrCode
        '
        Me.ErrCode.Enabled = False
        Me.ErrCode.Location = New System.Drawing.Point(175, 26)
        Me.ErrCode.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.ErrCode.Name = "ErrCode"
        Me.ErrCode.Size = New System.Drawing.Size(187, 22)
        Me.ErrCode.TabIndex = 5
        Me.ErrCode.Text = "0"
        '
        'CloseButton
        '
        Me.CloseButton.Location = New System.Drawing.Point(603, 22)
        Me.CloseButton.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.CloseButton.Name = "CloseButton"
        Me.CloseButton.Size = New System.Drawing.Size(201, 39)
        Me.CloseButton.TabIndex = 14
        Me.CloseButton.Text = "CloseConnection"
        Me.CloseButton.UseVisualStyleBackColor = True
        '
        'IdentifyButton
        '
        Me.IdentifyButton.Enabled = False
        Me.IdentifyButton.Location = New System.Drawing.Point(24, 165)
        Me.IdentifyButton.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.IdentifyButton.Name = "IdentifyButton"
        Me.IdentifyButton.Size = New System.Drawing.Size(179, 36)
        Me.IdentifyButton.TabIndex = 18
        Me.IdentifyButton.Text = "Instrument Identification"
        Me.IdentifyButton.UseVisualStyleBackColor = True
        '
        'panel1
        '
        Me.panel1.BackColor = System.Drawing.Color.FromArgb(CType(CType(224, Byte), Integer), CType(CType(224, Byte), Integer), CType(CType(224, Byte), Integer))
        Me.panel1.Controls.Add(Me.ResultBox)
        Me.panel1.Controls.Add(Me.TabControl1)
        Me.panel1.Controls.Add(Me.panel3)
        Me.panel1.Enabled = False
        Me.panel1.Location = New System.Drawing.Point(16, 219)
        Me.panel1.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.panel1.Name = "panel1"
        Me.panel1.Size = New System.Drawing.Size(1071, 359)
        Me.panel1.TabIndex = 17
        '
        'ResultBox
        '
        Me.ResultBox.Location = New System.Drawing.Point(503, 5)
        Me.ResultBox.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.ResultBox.Multiline = True
        Me.ResultBox.Name = "ResultBox"
        Me.ResultBox.ScrollBars = System.Windows.Forms.ScrollBars.Vertical
        Me.ResultBox.Size = New System.Drawing.Size(551, 233)
        Me.ResultBox.TabIndex = 5
        '
        'TabControl1
        '
        Me.TabControl1.Controls.Add(Me.TabPage1)
        Me.TabControl1.Controls.Add(Me.TabPage2)
        Me.TabControl1.Location = New System.Drawing.Point(8, 4)
        Me.TabControl1.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.TabControl1.Name = "TabControl1"
        Me.TabControl1.SelectedIndex = 0
        Me.TabControl1.Size = New System.Drawing.Size(485, 240)
        Me.TabControl1.TabIndex = 4
        '
        'TabPage1
        '
        Me.TabPage1.Controls.Add(Me.MeasureButton)
        Me.TabPage1.Controls.Add(Me.TextBox8)
        Me.TabPage1.Controls.Add(Me.TextBox6)
        Me.TabPage1.Controls.Add(Me.Label7)
        Me.TabPage1.Controls.Add(Me.TextBox5)
        Me.TabPage1.Controls.Add(Me.Label6)
        Me.TabPage1.Controls.Add(Me.Label5)
        Me.TabPage1.Controls.Add(Me.Label4)
        Me.TabPage1.Controls.Add(Me.ComboBox1)
        Me.TabPage1.Controls.Add(Me.ComboBox3)
        Me.TabPage1.Controls.Add(Me.Label12)
        Me.TabPage1.Location = New System.Drawing.Point(4, 25)
        Me.TabPage1.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.TabPage1.Name = "TabPage1"
        Me.TabPage1.Padding = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.TabPage1.Size = New System.Drawing.Size(477, 211)
        Me.TabPage1.TabIndex = 0
        Me.TabPage1.Text = "DMM Measure"
        Me.TabPage1.UseVisualStyleBackColor = True
        '
        'MeasureButton
        '
        Me.MeasureButton.Location = New System.Drawing.Point(280, 150)
        Me.MeasureButton.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.MeasureButton.Name = "MeasureButton"
        Me.MeasureButton.Size = New System.Drawing.Size(161, 28)
        Me.MeasureButton.TabIndex = 9
        Me.MeasureButton.Text = "Measure"
        Me.MeasureButton.UseVisualStyleBackColor = True
        '
        'TextBox8
        '
        Me.TextBox8.Location = New System.Drawing.Point(11, 150)
        Me.TextBox8.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.TextBox8.Name = "TextBox8"
        Me.TextBox8.Size = New System.Drawing.Size(168, 22)
        Me.TextBox8.TabIndex = 8
        Me.TextBox8.Text = "10"
        '
        'TextBox6
        '
        Me.TextBox6.Location = New System.Drawing.Point(280, 78)
        Me.TextBox6.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.TextBox6.Name = "TextBox6"
        Me.TextBox6.Size = New System.Drawing.Size(160, 22)
        Me.TextBox6.TabIndex = 7
        Me.TextBox6.Text = "1"
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(11, 130)
        Me.Label7.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(45, 17)
        Me.Label7.TabIndex = 6
        Me.Label7.Text = "Count"
        '
        'TextBox5
        '
        Me.TextBox5.Location = New System.Drawing.Point(9, 78)
        Me.TextBox5.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.TextBox5.Name = "TextBox5"
        Me.TextBox5.Size = New System.Drawing.Size(169, 22)
        Me.TextBox5.TabIndex = 5
        Me.TextBox5.Text = "0.01"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(276, 58)
        Me.Label6.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(44, 17)
        Me.Label6.TabIndex = 4
        Me.Label6.Text = "NPLC"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(11, 58)
        Me.Label5.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(50, 17)
        Me.Label5.TabIndex = 2
        Me.Label5.Text = "Range"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(11, 5)
        Me.Label4.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(62, 17)
        Me.Label4.TabIndex = 1
        Me.Label4.Text = "Function"
        '
        'ComboBox1
        '
        Me.ComboBox1.FormattingEnabled = True
        Me.ComboBox1.Location = New System.Drawing.Point(11, 23)
        Me.ComboBox1.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.ComboBox1.Name = "ComboBox1"
        Me.ComboBox1.Size = New System.Drawing.Size(459, 24)
        Me.ComboBox1.TabIndex = 0
        '
        'ComboBox3
        '
        Me.ComboBox3.FormattingEnabled = True
        Me.ComboBox3.Location = New System.Drawing.Point(12, 78)
        Me.ComboBox3.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.ComboBox3.Name = "ComboBox3"
        Me.ComboBox3.Size = New System.Drawing.Size(167, 24)
        Me.ComboBox3.TabIndex = 11
        '
        'Label12
        '
        Me.Label12.AutoSize = True
        Me.Label12.Location = New System.Drawing.Point(11, 58)
        Me.Label12.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.Label12.Name = "Label12"
        Me.Label12.Size = New System.Drawing.Size(60, 17)
        Me.Label12.TabIndex = 10
        Me.Label12.Text = "Type     "
        '
        'TabPage2
        '
        Me.TabPage2.Controls.Add(Me.Button5)
        Me.TabPage2.Controls.Add(Me.TextBox9)
        Me.TabPage2.Controls.Add(Me.TextBox10)
        Me.TabPage2.Controls.Add(Me.Label8)
        Me.TabPage2.Controls.Add(Me.TextBox11)
        Me.TabPage2.Controls.Add(Me.Label9)
        Me.TabPage2.Controls.Add(Me.Label10)
        Me.TabPage2.Controls.Add(Me.Label11)
        Me.TabPage2.Controls.Add(Me.ComboBox2)
        Me.TabPage2.Location = New System.Drawing.Point(4, 25)
        Me.TabPage2.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.TabPage2.Name = "TabPage2"
        Me.TabPage2.Padding = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.TabPage2.Size = New System.Drawing.Size(477, 211)
        Me.TabPage2.TabIndex = 1
        Me.TabPage2.Text = "DMM Digitize"
        Me.TabPage2.UseVisualStyleBackColor = True
        '
        'Button5
        '
        Me.Button5.Location = New System.Drawing.Point(277, 148)
        Me.Button5.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.Button5.Name = "Button5"
        Me.Button5.Size = New System.Drawing.Size(161, 28)
        Me.Button5.TabIndex = 18
        Me.Button5.Text = "Measure"
        Me.Button5.UseVisualStyleBackColor = True
        '
        'TextBox9
        '
        Me.TextBox9.Location = New System.Drawing.Point(7, 150)
        Me.TextBox9.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.TextBox9.Name = "TextBox9"
        Me.TextBox9.Size = New System.Drawing.Size(168, 22)
        Me.TextBox9.TabIndex = 17
        Me.TextBox9.Text = "10"
        '
        'TextBox10
        '
        Me.TextBox10.Location = New System.Drawing.Point(277, 76)
        Me.TextBox10.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.TextBox10.Name = "TextBox10"
        Me.TextBox10.Size = New System.Drawing.Size(160, 22)
        Me.TextBox10.TabIndex = 16
        Me.TextBox10.Text = "1000000"
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Location = New System.Drawing.Point(7, 130)
        Me.Label8.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(45, 17)
        Me.Label8.TabIndex = 15
        Me.Label8.Text = "Count"
        '
        'TextBox11
        '
        Me.TextBox11.Location = New System.Drawing.Point(7, 76)
        Me.TextBox11.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.TextBox11.Name = "TextBox11"
        Me.TextBox11.Size = New System.Drawing.Size(169, 22)
        Me.TextBox11.TabIndex = 14
        Me.TextBox11.Text = "1"
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Location = New System.Drawing.Point(273, 57)
        Me.Label9.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(89, 17)
        Me.Label9.TabIndex = 13
        Me.Label9.Text = "Sample Rate"
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Location = New System.Drawing.Point(4, 57)
        Me.Label10.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(50, 17)
        Me.Label10.TabIndex = 12
        Me.Label10.Text = "Range"
        '
        'Label11
        '
        Me.Label11.AutoSize = True
        Me.Label11.Location = New System.Drawing.Point(8, 4)
        Me.Label11.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(62, 17)
        Me.Label11.TabIndex = 11
        Me.Label11.Text = "Function"
        '
        'ComboBox2
        '
        Me.ComboBox2.FormattingEnabled = True
        Me.ComboBox2.Location = New System.Drawing.Point(8, 22)
        Me.ComboBox2.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.ComboBox2.Name = "ComboBox2"
        Me.ComboBox2.Size = New System.Drawing.Size(459, 24)
        Me.ComboBox2.TabIndex = 10
        '
        'panel3
        '
        Me.panel3.BackColor = System.Drawing.SystemColors.AppWorkspace
        Me.panel3.Controls.Add(Me.CloseButton)
        Me.panel3.Controls.Add(Me.ResetButton)
        Me.panel3.Location = New System.Drawing.Point(5, 251)
        Me.panel3.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.panel3.Name = "panel3"
        Me.panel3.Size = New System.Drawing.Size(1061, 85)
        Me.panel3.TabIndex = 3
        '
        'ResetButton
        '
        Me.ResetButton.Location = New System.Drawing.Point(209, 22)
        Me.ResetButton.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.ResetButton.Name = "ResetButton"
        Me.ResetButton.Size = New System.Drawing.Size(201, 39)
        Me.ResetButton.TabIndex = 12
        Me.ResetButton.Text = "Reset"
        Me.ResetButton.UseVisualStyleBackColor = True
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 16.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1104, 593)
        Me.Controls.Add(Me.splitContainer1)
        Me.Controls.Add(Me.InstrIdentity)
        Me.Controls.Add(Me.IdentifyButton)
        Me.Controls.Add(Me.panel1)
        Me.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.Name = "Form1"
        Me.Text = "MeasureMultiple"
        Me.splitContainer1.Panel1.ResumeLayout(False)
        Me.splitContainer1.Panel1.PerformLayout()
        Me.splitContainer1.Panel2.ResumeLayout(False)
        Me.splitContainer1.Panel2.PerformLayout()
        CType(Me.splitContainer1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.splitContainer1.ResumeLayout(False)
        Me.panel1.ResumeLayout(False)
        Me.panel1.PerformLayout()
        Me.TabControl1.ResumeLayout(False)
        Me.TabPage1.ResumeLayout(False)
        Me.TabPage1.PerformLayout()
        Me.TabPage2.ResumeLayout(False)
        Me.TabPage2.PerformLayout()
        Me.panel3.ResumeLayout(False)
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Private WithEvents InitButton As System.Windows.Forms.Button
    Private WithEvents InstrIdentity As System.Windows.Forms.TextBox
    Private WithEvents label1 As System.Windows.Forms.Label
    Private WithEvents splitContainer1 As System.Windows.Forms.SplitContainer
    Private WithEvents resourceName As System.Windows.Forms.TextBox
    Private WithEvents ErrMessage As System.Windows.Forms.TextBox
    Private WithEvents ErrorQueryButton As System.Windows.Forms.Button
    Private WithEvents label3 As System.Windows.Forms.Label
    Private WithEvents label2 As System.Windows.Forms.Label
    Private WithEvents ErrCode As System.Windows.Forms.TextBox
    Private WithEvents CloseButton As System.Windows.Forms.Button
    Private WithEvents IdentifyButton As System.Windows.Forms.Button
    Private WithEvents panel1 As System.Windows.Forms.Panel
    Private WithEvents panel3 As System.Windows.Forms.Panel
    Private WithEvents ResetButton As System.Windows.Forms.Button
    Friend WithEvents TabControl1 As System.Windows.Forms.TabControl
    Friend WithEvents TabPage1 As System.Windows.Forms.TabPage
    Friend WithEvents ComboBox1 As System.Windows.Forms.ComboBox
    Friend WithEvents TabPage2 As System.Windows.Forms.TabPage
    Friend WithEvents ResultBox As System.Windows.Forms.TextBox
    Friend WithEvents TextBox8 As System.Windows.Forms.TextBox
    Friend WithEvents TextBox6 As System.Windows.Forms.TextBox
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents TextBox5 As System.Windows.Forms.TextBox
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents MeasureButton As System.Windows.Forms.Button
    Friend WithEvents Button5 As System.Windows.Forms.Button
    Friend WithEvents TextBox9 As System.Windows.Forms.TextBox
    Friend WithEvents TextBox10 As System.Windows.Forms.TextBox
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents TextBox11 As System.Windows.Forms.TextBox
    Friend WithEvents Label9 As System.Windows.Forms.Label
    Friend WithEvents Label10 As System.Windows.Forms.Label
    Friend WithEvents Label11 As System.Windows.Forms.Label
    Friend WithEvents ComboBox2 As System.Windows.Forms.ComboBox
    Friend WithEvents ComboBox3 As System.Windows.Forms.ComboBox
    Friend WithEvents Label12 As System.Windows.Forms.Label

End Class
