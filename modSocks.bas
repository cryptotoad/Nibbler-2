Attribute VB_Name = "modSocks"
Public Function readProxyPacket(socksPacket As String) As String
    Dim bytes() As String
    
    socksPacket = StringToHex(socksPacket)
    readSOCKSPacket = socksPacket
    bytes = Split(socksPacket, " ")
    

End Function
