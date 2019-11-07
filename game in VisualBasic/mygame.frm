VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H0000FFFF&
   Caption         =   "BOLL GAME"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   ForeColor       =   &H000000FF&
   LinkTopic       =   "Form1"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      BackColor       =   &H0000FFFF&
      Caption         =   "."
      Height          =   9495
      Left            =   840
      TabIndex        =   13
      Top             =   0
      Width           =   17415
      Begin VB.Timer Timer6 
         Interval        =   5
         Left            =   4560
         Top             =   7800
      End
      Begin VB.Timer Timer5 
         Interval        =   300
         Left            =   4080
         Top             =   6840
      End
      Begin VB.Timer Timer4 
         Interval        =   150
         Left            =   5520
         Top             =   6480
      End
      Begin VB.Timer Timer1 
         Interval        =   10
         Left            =   960
         Top             =   2400
      End
      Begin VB.Timer Timer2 
         Interval        =   1
         Left            =   3960
         Top             =   3360
      End
      Begin VB.Timer Timer3 
         Interval        =   80
         Left            =   5400
         Top             =   5040
      End
      Begin VB.Shape Shape1 
         FillColor       =   &H00FF0000&
         FillStyle       =   0  'Solid
         Height          =   375
         Left            =   240
         Shape           =   3  'Circle
         Top             =   3120
         Width           =   375
      End
      Begin VB.Shape Shape2 
         FillColor       =   &H008080FF&
         FillStyle       =   0  'Solid
         Height          =   375
         Left            =   480
         Shape           =   3  'Circle
         Top             =   600
         Width           =   375
      End
      Begin VB.Shape Shape3 
         BorderColor     =   &H80000002&
         FillColor       =   &H00404080&
         FillStyle       =   0  'Solid
         Height          =   375
         Left            =   360
         Shape           =   3  'Circle
         Top             =   4320
         Width           =   375
      End
      Begin VB.Shape Shape4 
         FillColor       =   &H0000FF00&
         FillStyle       =   0  'Solid
         Height          =   375
         Left            =   3720
         Shape           =   3  'Circle
         Top             =   5640
         Width           =   375
      End
      Begin VB.Shape Shape5 
         FillColor       =   &H00C0C000&
         FillStyle       =   0  'Solid
         Height          =   375
         Left            =   2280
         Shape           =   3  'Circle
         Top             =   1320
         Width           =   375
      End
      Begin VB.Shape Shape6 
         FillColor       =   &H00008080&
         FillStyle       =   0  'Solid
         Height          =   375
         Left            =   240
         Shape           =   3  'Circle
         Top             =   6000
         Width           =   375
      End
      Begin VB.Shape Shape7 
         FillColor       =   &H0080FFFF&
         FillStyle       =   0  'Solid
         Height          =   375
         Left            =   2640
         Shape           =   3  'Circle
         Top             =   3720
         Width           =   375
      End
      Begin VB.Shape Shape8 
         FillColor       =   &H0080FF80&
         FillStyle       =   0  'Solid
         Height          =   375
         Left            =   720
         Shape           =   3  'Circle
         Top             =   7200
         Width           =   375
      End
      Begin VB.Shape Shape9 
         FillColor       =   &H00C0C0C0&
         FillStyle       =   0  'Solid
         Height          =   375
         Left            =   2880
         Shape           =   3  'Circle
         Top             =   6720
         Width           =   375
      End
      Begin VB.Shape Shape10 
         FillColor       =   &H00C0E0FF&
         FillStyle       =   0  'Solid
         Height          =   375
         Left            =   2160
         Shape           =   3  'Circle
         Top             =   8640
         Width           =   375
      End
      Begin VB.Shape Shape11 
         BorderColor     =   &H00FF0000&
         FillColor       =   &H00FF0000&
         FillStyle       =   6  'Cross
         Height          =   375
         Left            =   16320
         Shape           =   4  'Rounded Rectangle
         Top             =   4320
         Width           =   375
      End
      Begin VB.Shape Shape12 
         FillColor       =   &H000000FF&
         FillStyle       =   0  'Solid
         Height          =   375
         Left            =   2040
         Shape           =   2  'Oval
         Top             =   2400
         Width           =   495
      End
      Begin VB.Shape Shape13 
         FillColor       =   &H00C0C0FF&
         FillStyle       =   0  'Solid
         Height          =   495
         Left            =   1680
         Shape           =   3  'Circle
         Top             =   5880
         Width           =   615
      End
      Begin VB.Shape Shape14 
         FillColor       =   &H0080FF80&
         FillStyle       =   0  'Solid
         Height          =   495
         Left            =   2880
         Shape           =   3  'Circle
         Top             =   5040
         Width           =   495
      End
      Begin VB.Shape Shape15 
         FillColor       =   &H000000FF&
         FillStyle       =   6  'Cross
         Height          =   495
         Left            =   4200
         Shape           =   4  'Rounded Rectangle
         Top             =   2160
         Width           =   495
      End
      Begin VB.Shape Shape16 
         FillColor       =   &H0000FF00&
         FillStyle       =   6  'Cross
         Height          =   495
         Left            =   4080
         Shape           =   5  'Rounded Square
         Top             =   4200
         Width           =   615
      End
      Begin VB.Shape Shape17 
         FillColor       =   &H00FFFF80&
         FillStyle       =   0  'Solid
         Height          =   615
         Left            =   1800
         Shape           =   3  'Circle
         Top             =   7080
         Width           =   615
      End
      Begin VB.Shape Shape18 
         FillColor       =   &H0000FF00&
         FillStyle       =   0  'Solid
         Height          =   375
         Left            =   1440
         Shape           =   3  'Circle
         Top             =   8160
         Width           =   495
      End
      Begin VB.Shape Shape19 
         FillColor       =   &H000000FF&
         FillStyle       =   6  'Cross
         Height          =   495
         Left            =   2760
         Shape           =   5  'Rounded Square
         Top             =   8400
         Width           =   495
      End
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00FF0000&
      Caption         =   "HELP"
      BeginProperty Font 
         Name            =   "Chiller"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1260
      Left            =   16320
      Picture         =   "mygame.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   12
      Top             =   9600
      UseMaskColor    =   -1  'True
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   195
      Left            =   240
      TabIndex        =   1
      Top             =   8280
      Width           =   195
   End
   Begin VB.Shape Shape34 
      BackStyle       =   1  'Opaque
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Left            =   12360
      Shape           =   3  'Circle
      Top             =   9960
      Width           =   495
   End
   Begin VB.Line Line2 
      BorderWidth     =   5
      Index           =   10
      X1              =   13200
      X2              =   12600
      Y1              =   10200
      Y2              =   10080
   End
   Begin VB.Line Line2 
      BorderWidth     =   5
      Index           =   9
      X1              =   13200
      X2              =   12600
      Y1              =   9840
      Y2              =   10080
   End
   Begin VB.Line Line2 
      BorderWidth     =   5
      Index           =   8
      X1              =   12600
      X2              =   12960
      Y1              =   10080
      Y2              =   9600
   End
   Begin VB.Line Line2 
      BorderWidth     =   5
      Index           =   7
      X1              =   12600
      X2              =   12600
      Y1              =   10080
      Y2              =   9480
   End
   Begin VB.Line Line2 
      BorderWidth     =   5
      Index           =   6
      X1              =   12600
      X2              =   12240
      Y1              =   10080
      Y2              =   9600
   End
   Begin VB.Line Line2 
      BorderWidth     =   5
      Index           =   5
      X1              =   12600
      X2              =   12000
      Y1              =   10080
      Y2              =   9840
   End
   Begin VB.Line Line2 
      BorderWidth     =   5
      Index           =   4
      X1              =   12600
      X2              =   12000
      Y1              =   10080
      Y2              =   10200
   End
   Begin VB.Line Line2 
      BorderWidth     =   5
      Index           =   3
      X1              =   12600
      X2              =   12120
      Y1              =   10080
      Y2              =   10440
   End
   Begin VB.Line Line2 
      BorderWidth     =   5
      Index           =   2
      X1              =   12600
      X2              =   12360
      Y1              =   10080
      Y2              =   10680
   End
   Begin VB.Line Line2 
      BorderWidth     =   5
      Index           =   1
      X1              =   12720
      X2              =   12600
      Y1              =   10680
      Y2              =   10080
   End
   Begin VB.Line Line2 
      BorderWidth     =   5
      Index           =   0
      X1              =   12600
      X2              =   13080
      Y1              =   10080
      Y2              =   10560
   End
   Begin VB.Label Label3 
      BackColor       =   &H0000FF00&
      Caption         =   "S T  A    R T"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2175
      Left            =   19080
      TabIndex        =   15
      Top             =   1920
      Width           =   495
   End
   Begin VB.Shape Shape35 
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Solid
      Height          =   2775
      Left            =   18720
      Shape           =   2  'Oval
      Top             =   1680
      Width           =   1095
   End
   Begin VB.Shape Shape33 
      FillStyle       =   0  'Solid
      Height          =   255
      Left            =   2760
      Shape           =   3  'Circle
      Top             =   9840
      Width           =   255
   End
   Begin VB.Shape Shape32 
      FillStyle       =   0  'Solid
      Height          =   255
      Left            =   1320
      Shape           =   3  'Circle
      Top             =   9840
      Width           =   255
   End
   Begin VB.Shape Shape30 
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   1920
      Shape           =   2  'Oval
      Top             =   9840
      Width           =   1095
   End
   Begin VB.Shape Shape29 
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   600
      Shape           =   2  'Oval
      Top             =   9840
      Width           =   1095
   End
   Begin VB.Shape Shape31 
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   135
      Left            =   1440
      Shape           =   2  'Oval
      Top             =   10440
      Width           =   735
   End
   Begin VB.Shape Shape28 
      FillColor       =   &H00FF00FF&
      FillStyle       =   0  'Solid
      Height          =   1095
      Left            =   480
      Shape           =   2  'Oval
      Top             =   9600
      Width           =   2655
   End
   Begin VB.Shape Shape27 
      FillStyle       =   0  'Solid
      Height          =   255
      Left            =   6840
      Shape           =   1  'Square
      Top             =   10200
      Width           =   495
   End
   Begin VB.Shape Shape26 
      FillStyle       =   0  'Solid
      Height          =   255
      Left            =   7080
      Shape           =   3  'Circle
      Top             =   9840
      Width           =   495
   End
   Begin VB.Shape Shape25 
      FillColor       =   &H00000040&
      FillStyle       =   0  'Solid
      Height          =   255
      Left            =   6600
      Shape           =   3  'Circle
      Top             =   9840
      Width           =   495
   End
   Begin VB.Shape Shape24 
      FillColor       =   &H00FFFF00&
      FillStyle       =   0  'Solid
      Height          =   855
      Left            =   6360
      Shape           =   3  'Circle
      Top             =   9720
      Width           =   1455
   End
   Begin VB.Label Label12 
      BackColor       =   &H000080FF&
      Caption         =   "YOUR SCORE"
      BeginProperty Font 
         Name            =   "OCR A Extended"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3360
      TabIndex        =   14
      Top             =   9840
      Width           =   3135
   End
   Begin VB.Shape Shape23 
      FillStyle       =   0  'Solid
      Height          =   135
      Left            =   0
      Shape           =   2  'Oval
      Top             =   8160
      Width           =   615
   End
   Begin VB.Shape Shape22 
      FillStyle       =   5  'Downward Diagonal
      Height          =   735
      Left            =   240
      Top             =   8280
      Width           =   135
   End
   Begin VB.Shape Shape21 
      BackColor       =   &H008080FF&
      BorderColor     =   &H0000FF00&
      FillColor       =   &H000080FF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   360
      Shape           =   3  'Circle
      Top             =   9120
      Width           =   255
   End
   Begin VB.Shape Shape20 
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   0
      Shape           =   3  'Circle
      Top             =   9120
      Width           =   255
   End
   Begin VB.Label Label4 
      BackColor       =   &H00808000&
      Caption         =   "E"
      BeginProperty Font 
         Name            =   "Matura MT Script Capitals"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Index           =   8
      Left            =   0
      TabIndex        =   11
      Top             =   6960
      Width           =   615
   End
   Begin VB.Label Label4 
      BackColor       =   &H000000C0&
      Caption         =   "C"
      BeginProperty Font 
         Name            =   "Matura MT Script Capitals"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Index           =   7
      Left            =   0
      TabIndex        =   10
      Top             =   6120
      Width           =   615
   End
   Begin VB.Label Label4 
      BackColor       =   &H00FFFF00&
      Caption         =   "A"
      BeginProperty Font 
         Name            =   "Matura MT Script Capitals"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Index           =   6
      Left            =   0
      TabIndex        =   9
      Top             =   5280
      Width           =   615
   End
   Begin VB.Label Label4 
      BackColor       =   &H0080FF80&
      Caption         =   "R"
      BeginProperty Font 
         Name            =   "Matura MT Script Capitals"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Index           =   5
      Left            =   0
      TabIndex        =   8
      Top             =   4440
      Width           =   615
   End
   Begin VB.Label Label4 
      BackColor       =   &H00FF00FF&
      BeginProperty Font 
         Name            =   "Matura MT Script Capitals"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Index           =   4
      Left            =   0
      TabIndex        =   7
      Top             =   3600
      Width           =   615
   End
   Begin VB.Label Label4 
      BackColor       =   &H0000FFFF&
      Caption         =   "L"
      BeginProperty Font 
         Name            =   "Matura MT Script Capitals"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Index           =   3
      Left            =   0
      TabIndex        =   6
      Top             =   2760
      Width           =   615
   End
   Begin VB.Label Label4 
      BackColor       =   &H000000FF&
      Caption         =   "L"
      BeginProperty Font 
         Name            =   "Matura MT Script Capitals"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Index           =   2
      Left            =   0
      TabIndex        =   5
      Top             =   1920
      Width           =   615
   End
   Begin VB.Label Label4 
      BackColor       =   &H00FF8080&
      Caption         =   "B"
      BeginProperty Font 
         Name            =   "Matura MT Script Capitals"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Index           =   0
      Left            =   0
      TabIndex        =   4
      Top             =   120
      Width           =   615
   End
   Begin VB.Label Label4 
      BackColor       =   &H00C0C0FF&
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Matura MT Script Capitals"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Index           =   1
      Left            =   0
      TabIndex        =   3
      Top             =   1080
      Width           =   615
   End
   Begin VB.Label Label2 
      BackColor       =   &H0080FF80&
      Caption         =   "B"
      BeginProperty Font 
         Name            =   "Matura MT Script Capitals"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   0
      TabIndex        =   2
      Top             =   240
      Width           =   615
   End
   Begin VB.Label Label1 
      BackColor       =   &H0000FF00&
      Caption         =   " 0000000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   7680
      TabIndex        =   0
      Top             =   9840
      Width           =   3015
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim t, c, z, flag As Integer
Dim s As Long
Dim i As Double
Dim j, k, l, m, d, e, n As Integer


Private Sub Command1_KeyPress(KeyAscii As Integer)
If KeyAscii = 97 Then
Shape11.Top = Shape11.Top + 200
ElseIf KeyAscii = 98 Then
Shape11.Top = Shape11.Top - 500
End If
End Sub


Private Sub Command2_Click()
Form3.Show
Timer1.Enabled = False
Timer2.Enabled = False
End Sub

Private Sub Form_Load()
i = 1
End Sub

Private Sub Label3_Click()
Timer1.Enabled = True
Timer2.Enabled = True
Timer3.Enabled = True
Form1.Shape1.Visible = True
Form1.Shape2.Visible = True
Form1.Shape3.Visible = True
Form1.Shape4.Visible = True
Form1.Shape5.Visible = True
Form1.Shape6.Visible = True
Form1.Shape7.Visible = True
Form1.Shape8.Visible = True
Form1.Shape9.Visible = True
Form1.Shape10.Visible = True
Form1.Shape11.Visible = True
Form1.Shape12.Visible = True
Form1.Shape13.Visible = True
Form1.Shape14.Visible = True
Form1.Shape15.Visible = True
Form1.Shape16.Visible = True
Form1.Shape17.Visible = True
Form1.Shape18.Visible = True
Form1.Shape19.Visible = True
Form1.Shape20.Visible = True
End Sub

Private Sub Timer1_Timer()
c = c + 1
If c = 80 Then
i = i + 0.1
c = 0
End If
Shape1.Left = Shape1.Left + (10 * i)
If Shape1.Left >= 17655 Then
Shape1.Left = 120
End If
Shape2.Left = Shape2.Left + (50 * i)
If Shape2.Left >= 17655 Then
Shape2.Left = 120
End If
Shape3.Left = Shape3.Left + (40 * i)
If Shape3.Left >= 17655 Then
Shape3.Left = 120
End If

Shape4.Left = Shape4.Left + (20 * i)
If Shape4.Left >= 17655 Then
Shape4.Left = 120
End If
Shape5.Left = Shape5.Left + (12 * i)
If Shape5.Left >= 17655 Then
Shape5.Left = 120
End If
Shape6.Left = Shape6.Left + (15 * i)
If Shape6.Left >= 17655 Then
Shape6.Left = 120
End If
Shape7.Left = Shape7.Left + (13 * i)
If Shape7.Left >= 17655 Then
Shape7.Left = 120
End If
Shape8.Left = Shape8.Left + (18 * i)
If Shape8.Left >= 17655 Then
Shape8.Left = 120
End If
Shape9.Left = Shape9.Left + (36 * i)
If Shape9.Left >= 17655 Then
Shape9.Left = 120
End If
Shape10.Left = Shape10.Left + (12 * i)
If Shape10.Left >= 17655 Then
Shape10.Left = 120
End If
Shape12.Left = Shape12.Left + (50 * i)
If Shape12.Left >= 17655 Then
Shape12.Left = 120
End If
Shape13.Left = Shape13.Left + (70 * i)
If Shape13.Left >= 17655 Then
Shape13.Left = 120
End If
Shape14.Left = Shape14.Left + (45 * i)
If Shape14.Left >= 17655 Then
Shape14.Left = 120
End If
Shape17.Left = Shape17.Left + (45 * i)
If Shape17.Left >= 17655 Then
Shape17.Left = 120
End If
Shape18.Left = Shape18.Left + (45 * i)
If Shape18.Left >= 17655 Then
Shape18.Left = 120
End If
Shape11.Top = Shape11.Top + 10
Shape15.Left = Shape15.Left + 100
If Shape15.Left >= 17655 Then
Shape15.Left = 120
End If
Shape19.Left = Shape19.Left + 100
If Shape19.Left >= 17655 Then
Shape19.Left = 120
End If
If Shape11.Top >= 9495 Then
Form2.Show
Timer1.Enabled = False
Timer2.Enabled = False
Timer4.Interval = 50
End If
If Shape11.Top <= 80 Then
Form2.Show
Timer1.Enabled = False
Timer2.Enabled = False
Timer4.Interval = 50


End If

If Shape11.Left > Shape10.Left And Shape11.Left < Shape10.Left + 375 And ((Shape10.Top + 375 > Shape11.Top And Shape11.Top + 375 > Shape10.Top) Or (Shape10.Top > Shape11.Top And Shape11.Top > Shape10.Top)) Then

Form2.Show
Timer1.Enabled = False
Timer2.Enabled = False
Timer4.Interval = 50


End If
If Shape11.Left > Shape9.Left And Shape11.Left < Shape9.Left + 375 And ((Shape9.Top + 375 > Shape11.Top And Shape11.Top + 375 > Shape9.Top) Or (Shape9.Top > Shape11.Top And Shape11.Top > Shape9.Top)) Then

Form2.Show
Timer1.Enabled = False
Timer2.Enabled = False
Timer4.Interval = 50

End If
If Shape11.Left > Shape8.Left And Shape11.Left < Shape8.Left + 375 And ((Shape8.Top + 375 > Shape11.Top And Shape11.Top + 375 > Shape8.Top) Or (Shape8.Top > Shape11.Top And Shape11.Top > Shape8.Top)) Then

Form2.Show
Timer1.Enabled = False
Timer2.Enabled = False
Timer4.Interval = 50

End If
If Shape11.Left > Shape7.Left And Shape11.Left < Shape7.Left + 375 And ((Shape7.Top + 375 > Shape11.Top And Shape11.Top + 375 > Shape7.Top) Or (Shape7.Top > Shape11.Top And Shape11.Top > Shape7.Top)) Then

Form2.Show
Timer1.Enabled = False
Timer2.Enabled = False
Timer4.Interval = 50

End If

If Shape11.Left > Shape6.Left And Shape11.Left < Shape6.Left + 375 And ((Shape6.Top + 375 > Shape11.Top And Shape11.Top + 375 > Shape6.Top) Or (Shape6.Top > Shape11.Top And Shape11.Top > Shape6.Top)) Then

Form2.Show
Timer1.Enabled = False
Timer2.Enabled = False
Timer4.Interval = 50

End If
If Shape11.Left > Shape5.Left And Shape11.Left < Shape5.Left + 375 And ((Shape5.Top + 375 > Shape11.Top And Shape11.Top + 375 > Shape5.Top) Or (Shape5.Top > Shape11.Top And Shape11.Top > Shape5.Top)) Then

Form2.Show
Timer1.Enabled = False
Timer2.Enabled = False
Timer4.Interval = 50

End If
If Shape11.Left > Shape4.Left And Shape11.Left < Shape4.Left + 375 And ((Shape4.Top + 375 > Shape11.Top And Shape11.Top + 375 > Shape4.Top) Or (Shape4.Top > Shape11.Top And Shape11.Top > Shape4.Top)) Then

Form2.Show
Timer1.Enabled = False
Timer2.Enabled = False
Timer4.Interval = 50

End If

If Shape11.Left > Shape3.Left And Shape11.Left < Shape3.Left + 375 And ((Shape3.Top + 375 > Shape11.Top And Shape11.Top + 375 > Shape3.Top) Or (Shape3.Top > Shape11.Top And Shape11.Top > Shape3.Top)) Then

Form2.Show
Timer1.Enabled = False
Timer2.Enabled = False
Timer4.Interval = 50

End If

If Shape11.Left > Shape2.Left And Shape11.Left < Shape2.Left + 375 And ((Shape2.Top + 375 > Shape11.Top And Shape11.Top + 375 > Shape2.Top) Or (Shape2.Top > Shape11.Top And Shape11.Top > Shape2.Top)) Then

Form2.Show
Timer1.Enabled = False
Timer2.Enabled = False

End If

If Shape11.Left > Shape1.Left And Shape11.Left < Shape1.Left + 375 And ((Shape1.Top + 375 > Shape11.Top And Shape11.Top + 375 > Shape1.Top) Or (Shape1.Top > Shape11.Top And Shape11.Top > Shape1.Top)) Then

Form2.Show
Timer1.Enabled = False
Timer2.Enabled = False


End If

If Shape11.Left > Shape12.Left And Shape11.Left < Shape12.Left + 375 And ((Shape12.Top + 375 > Shape11.Top And Shape11.Top + 375 > Shape12.Top) Or (Shape12.Top > Shape11.Top And Shape11.Top > Shape12.Top)) Then

Form2.Show
Timer1.Enabled = False
Timer2.Enabled = False
Timer4.Interval = 50


End If


If Shape11.Left > Shape13.Left And Shape11.Left < Shape13.Left + 375 And ((Shape13.Top + 375 > Shape11.Top And Shape11.Top + 375 > Shape13.Top) Or (Shape13.Top > Shape11.Top And Shape11.Top > Shape13.Top)) Then
Form2.Show
Timer1.Enabled = False
Timer2.Enabled = False
Timer4.Interval = 50



End If
If Shape11.Left > Shape14.Left And Shape11.Left < Shape14.Left + 375 And ((Shape14.Top + 375 > Shape11.Top And Shape11.Top + 375 > Shape14.Top) Or (Shape14.Top > Shape11.Top And Shape11.Top > Shape14.Top)) Then

Form2.Show
Timer1.Enabled = False
Timer2.Enabled = False
Timer4.Interval = 50

End If

If Shape11.Left > Shape17.Left And Shape11.Left < Shape17.Left + 615 And ((Shape17.Top + 615 > Shape11.Top And Shape11.Top + 615 > Shape17.Top) Or (Shape17.Top > Shape11.Top And Shape11.Top > Shape17.Top)) Then

Form2.Show
Timer1.Enabled = False
Timer2.Enabled = False
Timer4.Interval = 50


End If

If Shape11.Left > Shape18.Left And Shape11.Left < Shape18.Left + 375 And ((Shape18.Top + 375 > Shape11.Top And Shape11.Top + 375 > Shape18.Top) Or (Shape18.Top > Shape11.Top And Shape11.Top > Shape18.Top)) Then

Form2.Show
Timer1.Enabled = False
Timer2.Enabled = False
Timer4.Interval = 50

End If
If Shape11.Left > Shape15.Left And Shape11.Left < Shape15.Left + 495 And ((Shape15.Top + 495 > Shape11.Top And Shape11.Top + 495 > Shape15.Top) Or (Shape15.Top > Shape11.Top And Shape11.Top > Shape15.Top)) Then
Shape11.Height = 495
Shape11.Width = 495
Shape11.Left = 16320
Shape11.Top = 2100

End If
If Shape11.Left > Shape19.Left And Shape11.Left < Shape19.Left + 495 And ((Shape19.Top + 495 > Shape11.Top And Shape11.Top + 495 > Shape19.Top) Or (Shape19.Top > Shape11.Top And Shape11.Top > Shape19.Top)) Then
Shape11.Height = 495
Shape11.Width = 495
Shape11.Left = 16320
Shape11.Top = 9680

End If



End Sub

Private Sub Timer2_Timer()
t = t + 1
If t = 50 Then
s = s + 100
t = 0
End If
Label1.Caption = "score:" & s
Form2.Label3.Caption = "" & s

End Sub


Private Sub Timer3_Timer()

Shape16.Left = Shape16.Left + 100

If Shape16.Left >= 17655 Then
Shape16.Left = 120
End If


If Shape11.Left > Shape16.Left And Shape11.Left < Shape16.Left + 495 And ((Shape16.Top + 495 > Shape11.Top And Shape11.Top + 495 > Shape16.Top) Or (Shape16.Top > Shape11.Top And Shape11.Top > Shape16.Top)) Then
Shape11.Height = 375
Shape11.Width = 375
Shape11.Left = 16320
Shape11.Top = 4200

End If



End Sub

Private Sub Timer4_Timer()
Shape32.Left = Shape32.Left - 20
If Shape32.Left <= 780 Then
Shape32.Left = Shape32.Left + 500
End If
Shape33.Left = Shape33.Left - 20
If Shape33.Left <= 2230 Then
Shape33.Left = Shape33.Left + 500
End If
j = j + 1
If j = 5 Then
Shape20.FillColor = &HFF&
Shape21.FillColor = &HFF&
Shape27.FillColor = &HFF&
Shape25.FillColor = &H80000008
Shape26.FillColor = &H80000008
Label1.BackColor = &H80000008
j = 0
Else
Shape27.FillColor = &H80000008
Shape25.FillColor = &HFFFFFF
Shape26.FillColor = &HFFFFFF
Shape21.FillColor = &HFFFFFF
Shape20.FillColor = &HFFFFFF

Label1.BackColor = &HFF&
End If

k = k + 1
If k = 10 Then
Label1.BackColor = &H80FF80
k = 0
Else
Label1.BackColor = &H80FFFF
End If





End Sub

Private Sub Timer5_Timer()
e = e + 1
If e = 10 Then
Label4(1).BackColor = &H80FFFF
Label4(2).BackColor = &HC0FFC0
Label4(3).BackColor = &HFFFF&
Label4(4).BackColor = &HFF&

e = 0
Else
Label4(1).BackColor = &HFF&
Label4(2).BackColor = &HC0FFC0
Label4(3).BackColor = &H80FF80
Label4(4).BackColor = &HFFFF&

End If
l = l + 1
If l = 10 Then
Shape31.Height = 140
Shape31.Width = 1815
Shape31.Left = 840
l = 0
Else
Shape31.Height = 140
Shape31.Width = 735
Shape31.Left = 1440
End If


End Sub

Private Sub Timer6_Timer()
flag = flag + 1
If flag = 5 Then
Line2(0).BorderColor = &HFF
For z = 1 To 10
Line2(z).BorderColor = black
Next z
End If

If flag = 10 Then
Line2(1).BorderColor = &HFF
Line2(o).BorderColor = black
For z = 2 To 10
Line2(z).BorderColor = black
Next z
End If
If flag = 15 Then
Line2(2).BorderColor = &HFF
Line2(o).BorderColor = black
Line2(1).BorderColor = black
For z = 3 To 10
Line2(z).BorderColor = black
Next z
End If
If flag = 20 Then
Line2(3).BorderColor = &HFF
Line2(4).BorderColor = black
Line2(5).BorderColor = black
For z = 0 To 2
Line2(z).BorderColor = black
Next z
End If

If flag = 25 Then
Line2(4).BorderColor = &HFF
Line2(5).BorderColor = black
For z = 0 To 3
Line2(z).BorderColor = black
Next z
For z = 6 To 10
Line2(z).BorderColor = black
Next z
End If
If flag = 30 Then
Line2(5).BorderColor = &HFF
For z = 0 To 4
Line2(z).BorderColor = black
Next z
For z = 6 To 10
Line2(z).BorderColor = black
Next z
End If

If flag = 35 Then
Line2(6).BorderColor = &HFF
For z = 0 To 5
Line2(z).BorderColor = black
Next z
For z = 7 To 10
Line2(z).BorderColor = black
Next z
End If
If flag = 40 Then
Line2(7).BorderColor = &HFF
For z = 0 To 6
Line2(z).BorderColor = black
Next z
For z = 8 To 10
Line2(z).BorderColor = black
Next z
End If
If flag = 45 Then
Line2(8).BorderColor = &HFF
For z = 0 To 7
Line2(z).BorderColor = black
Next z
For z = 9 To 10
Line2(z).BorderColor = black
Next z
End If
If flag = 50 Then
Line2(9).BorderColor = &HFF
Line2(10).BorderColor = black
For z = 0 To 8
Line2(z).BorderColor = black
Next z
End If
If flag = 55 Then
Line2(10).BorderColor = &HFF
For z = 0 To 9
Line2(z).BorderColor = &H0&
Next z
End If
If flag = 60 Then
flag = 5
End If
End Sub
