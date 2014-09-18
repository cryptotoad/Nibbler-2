VERSION 5.00
Begin VB.Form frmWormhole 
   BorderStyle     =   5  'Sizable ToolWindow
   Caption         =   "Wormhole Config"
   ClientHeight    =   1620
   ClientLeft      =   120
   ClientTop       =   390
   ClientWidth     =   1740
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1620
   ScaleWidth      =   1740
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Set"
      Height          =   315
      Left            =   120
      TabIndex        =   3
      Top             =   1200
      Width           =   1455
   End
   Begin VB.Frame Frame1 
      Height          =   1095
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   1455
      Begin VB.OptionButton Option2 
         Caption         =   "Exit  Point"
         Height          =   255
         Left            =   120
         TabIndex        =   2
         Top             =   720
         Width           =   1095
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Entry Point"
         Height          =   255
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   1095
      End
   End
End
Attribute VB_Name = "frmWormhole"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public entryPoint As Boolean


Private Sub Command1_Click()
    If Option1.Value = True Then
        entryPoint = True
    Else
        entryPoint = False
    End If
End Sub
