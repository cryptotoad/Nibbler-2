VERSION 5.00
Begin VB.Form frmFilters 
   Caption         =   "Filters"
   ClientHeight    =   5925
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   3135
   Icon            =   "frmFilters.frx":0000
   LinkTopic       =   "Form3"
   ScaleHeight     =   5925
   ScaleWidth      =   3135
   StartUpPosition =   3  'Windows Default
   Begin VB.ListBox lstFilters 
      Height          =   4350
      ItemData        =   "frmFilters.frx":15371
      Left            =   120
      List            =   "frmFilters.frx":15373
      TabIndex        =   2
      Top             =   120
      Width           =   2895
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Remove"
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   5280
      Width           =   2895
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Add"
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   4680
      Width           =   2895
   End
End
Attribute VB_Name = "frmFilters"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    'Set up packet filtering
    Set outboundFilter = New clsPacketFilter
    
    outboundFilter.encoding = 2 ' turn on hex
    outboundFilter.newData = StringToHex(StrConv("Skidszz", vbUnicode))
    outboundFilter.toFilter = StringToHex(StrConv("AntiVir", vbUnicode))
    outboundFilter.isActive = False
    'WPE style packet filters :P
    
    
    Set inboundFilter = New clsPacketFilter
    
    inboundFilter.encoding = 2 ' turn on hex
    inboundFilter.newData = "90" ' let's be crazy and filter nulls to nops for shits n gigs
    inboundFilter.toFilter = "00"
    inboundFilter.isActive = False
    ListView1.ListItems(1).ListSubItems.Add "Test", 0
    
    
End Sub
