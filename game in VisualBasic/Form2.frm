VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "Form2"
   ClientHeight    =   4935
   ClientLeft      =   5115
   ClientTop       =   2445
   ClientWidth     =   7230
   LinkTopic       =   "Form2"
   ScaleHeight     =   4935
   ScaleLeft       =   6000
   ScaleMode       =   0  'User
   ScaleWidth      =   7230
   Begin VB.Frame Frame1 
      BackColor       =   &H000000FF&
      Caption         =   "Frame1"
      Height          =   4935
      Left            =   -120
      TabIndex        =   0
      Top             =   0
      Width           =   7455
      Begin VB.CommandButton Command1 
         BackColor       =   &H000000C0&
         Caption         =   "EXIT"
         BeginProperty Font 
            Name            =   "Algerian"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   2640
         TabIndex        =   2
         Top             =   3480
         Width           =   2175
      End
      Begin VB.Label Label3 
         BackColor       =   &H00FF00FF&
         Caption         =   "00000000"
         BeginProperty Font 
            Name            =   "Magneto"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   3720
         TabIndex        =   4
         Top             =   2040
         Width           =   3135
      End
      Begin VB.Label Label2 
         BackColor       =   &H0000C000&
         Caption         =   "YOUR SCORE"
         BeginProperty Font 
            Name            =   "Eras Bold ITC"
            Size            =   20.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   360
         TabIndex        =   3
         Top             =   2040
         Width           =   2895
      End
      Begin VB.Label Label1 
         BackColor       =   &H00FF0000&
         Caption         =   "GAME OVER"
         BeginProperty Font 
            Name            =   "Kristen ITC"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   1920
         TabIndex        =   1
         Top             =   600
         Width           =   3735
      End
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
End
End Sub
