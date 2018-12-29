<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebFoy6.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 290px">
    <form id="form1" runat="server">
        <div align="center">
            <asp:Button ID="FakulteEkle" runat="server" onClick="FakulteEkle_Click" Text="Fakulte Ekle" Width="345px" Height="45px" />
        </div>
        <div align="center">
            <asp:Button ID="BolumEkle" runat="server" onClick="BolumEkle_Click" Text="Bölüm Ekle" Width="345px" Height="45px" />
        </div>
        <div align="center">
            <asp:Button ID="OgrenciEkle" runat="server" onClick="OgrenciEkle_Click" Text="Öğrenci Ekle" Width="345px" Height="45px" />
        </div>
        <div align="center">
            <asp:Button ID="OgrenciSorgula" runat="server" onClick="OgrenciSorgula_Click" Text="Öğrenci Sorgula" Width="345px" Height="45px" />
        </div>
        <div align="center">
            <asp:Button ID="OgrenciSorgulaWeb" runat="server" onClick="OgrenciSorgulaWeb_Click" Text="Öğrenci Sorgula (Web Servisi İle)" 
                Width="345px" Height="45px" />
        </div>
    </form>
</body>
</html>
