<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OgrenciSorgulaWebServis.aspx.cs" Inherits="WebFoy6.OgrenciSorgulaWebServis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 335px">
    <form id="form1" runat="server">
        <div style="height: 327px">
            <asp:Label ID="LabelOgrenciID" runat="server" Text="Öğrenci ID:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBoxOgrenciID" runat="server" Width="204px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="ButtonSorgula" runat="server" OnClick="ButtonSorgula_Click" Text="Web Servis ile Sorgula" Width="214px" />
            <br />
            <br />
            <asp:GridView ID="GridViewSorgu" runat="server">
            </asp:GridView>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
