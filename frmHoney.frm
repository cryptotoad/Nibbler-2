VERSION 5.00
Begin VB.Form frmHoney 
   Caption         =   "Honeypot Manager"
   ClientHeight    =   3210
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   Icon            =   "frmHoney.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   3210
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Update Watchlist"
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   2640
      Width           =   4335
   End
   Begin VB.TextBox txtWatchlist 
      Height          =   2175
      Left            =   120
      TabIndex        =   0
      Top             =   360
      Width           =   4335
   End
   Begin VB.Label Label1 
      Caption         =   "Watchlist (One per line)"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   1815
   End
End
Attribute VB_Name = "frmHoney"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public watchlist As String

Private Sub Command1_Click()
    watchlist = txtWatchlist.Text
End Sub
