VERSION 5.00
Begin VB.Form Form4 
   Caption         =   "Form4"
   ClientHeight    =   5565
   ClientLeft      =   6120
   ClientTop       =   2445
   ClientWidth     =   7050
   LinkTopic       =   "Form4"
   ScaleHeight     =   5565
   ScaleWidth      =   7050
   Begin VB.Frame Frame1 
      Caption         =   "Frame1"
      Height          =   5535
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   6975
      Begin VB.CommandButton Command1 
         BackColor       =   &H8000000D&
         Caption         =   "EXIT"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   675
         Left            =   2760
         Picture         =   "Form4.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   3
         Top             =   4500
         UseMaskColor    =   -1  'True
         Width           =   1935
      End
      Begin VB.Timer Timer2 
         Interval        =   100
         Left            =   360
         Top             =   1440
      End
      Begin VB.Timer Timer1 
         Interval        =   100
         Left            =   480
         Top             =   600
      End
      Begin VB.Label Label2 
         BackColor       =   &H00400000&
         Caption         =   "PLAY"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   615
         Left            =   3000
         TabIndex        =   2
         Top             =   1680
         Width           =   1455
      End
      Begin VB.Label Label1 
         BackColor       =   &H000080FF&
         Caption         =   "WELCOME TO BOLL GAME"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   1320
         TabIndex        =   1
         Top             =   360
         Width           =   4815
      End
      Begin VB.Image Image1 
         Height          =   11520
         Left            =   0
         Picture         =   "Form4.frx":D6B2E
         Top             =   120
         Width           =   15360
      End
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a, b As Integer

Private Sub Command1_Click()
End
End Sub

Private Sub Label2_Click()
Form1.Show
Form1.Timer1.Enabled = False
Form1.Timer2.Enabled = False
Form1.Timer3.Enabled = False
Form1.Shape1.Visible = False
Form1.Shape2.Visible = False
Form1.Shape3.Visible = False
Form1.Shape4.Visible = False
Form1.Shape5.Visible = False
Form1.Shape6.Visible = False
Form1.Shape7.Visible = False
Form1.Shape8.Visible = False
Form1.Shape9.Visible = False
Form1.Shape10.Visible = False
Form1.Shape11.Visible = False
Form1.Shape12.Visible = False
Form1.Shape13.Visible = False
Form1.Shape14.Visible = False
Form1.Shape15.Visible = False
Form1.Shape16.Visible = False
Form1.Shape17.Visible = False
Form1.Shape18.Visible = False
Form1.Shape19.Visible = False
Form1.Shape20.Visible = False
Timer1.Enabled = False
Unload Form4
End Sub

Private Sub Timer1_Timer()
a = a + 1

If a = 20 Then
Label1.Caption = "WELCOME TO BOLL GAME"
a = 0
End If
End Sub

Private Sub Timer2_Timer()
b = b + 1
If b = 10 Then
Label1.Caption = "LET'S HAVE SOME FUN"
b = 0

End If
End Sub
