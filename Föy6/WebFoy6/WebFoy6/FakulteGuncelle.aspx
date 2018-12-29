<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FakulteGuncelle.aspx.cs" Inherits="WebFoy6.FakulteGuncelle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <div style="height: 359px; width: 627px;">
            <asp:Label ID="LabelFakulteId" runat="server" Text="Fakülte Id: "></asp:Label><br />
            <asp:TextBox ID="TextBoxFakulteId" runat="server" Height="19px" Width="253px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="LabelFakulteAd" runat="server" Text="Fakülte Adı: "></asp:Label><br />
            <asp:TextBox ID="TextBoxFakulteAd" runat="server" Height="19px" Width="253px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="ButtonFakulteGuncelle" runat="server" Text="Fakülte Guncelle" Width="256px" OnClick="ButtonFakulteGuncelle_Click" />
            <br />
            <br />
            <asp:Label ID="errorLabel" runat="server" Text=" "></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridViewFakulte" runat="server" Width="531px">
            </asp:GridView>
    </form>
</body>
</html>
