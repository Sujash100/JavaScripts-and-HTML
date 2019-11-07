VERSION 5.00
Begin VB.Form Form3 
   Caption         =   "Form3"
   ClientHeight    =   6945
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   10635
   LinkTopic       =   "Form3"
   ScaleHeight     =   6945
   ScaleWidth      =   10635
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Caption         =   "Frame1"
      Height          =   5895
      Left            =   0
      TabIndex        =   1
      Top             =   960
      Width           =   10575
      Begin VB.Label Label3 
         Caption         =   "RESUME"
         BeginProperty Font 
            Name            =   "Lucida Calligraphy"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   495
         Left            =   960
         TabIndex        =   3
         Top             =   4200
         Width           =   2295
      End
      Begin VB.Label Label2 
         BackColor       =   &H0000FF00&
         Caption         =   $"Form3.frx":0000
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3495
         Left            =   0
         TabIndex        =   2
         Top             =   0
         Width           =   9255
      End
      Begin VB.Image Image1 
         Height          =   11520
         Left            =   -240
         Picture         =   "Form3.frx":019F
         Top             =   0
         Width           =   15360
      End
   End
   Begin VB.Label Label1 
      BackColor       =   &H0000FF00&
      Caption         =   "WELCOME"
      BeginProperty Font 
         Name            =   "Bell MT"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3720
      TabIndex        =   0
      Top             =   120
      Width           =   2295
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Label3_Click()

Form1.Timer1.Enabled = True
Form1.Timer2.Enabled = True
Unload Form3

End Sub
