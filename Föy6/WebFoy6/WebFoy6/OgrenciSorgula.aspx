<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OgrenciSorgula.aspx.cs" Inherits="WebFoy6.OgrenciSorgula" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 359px; width: 627px;">
            <asp:Label ID="LabelOgrenciId" runat="server" Text="Öğrenci ID: "></asp:Label><br />
            <asp:TextBox ID="TextBoxOgrenciID" runat="server" Height="19px" Width="253px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="ButtonOgrenciSorgula" runat="server" Text="Sorgula" Width="256px" OnClick="ButtonOgrenciSorgula_Click" />
            <br />
            <br />
            <asp:Label ID="errorLabel" runat="server"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridViewOgrenci" runat="server" Width="531px">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
