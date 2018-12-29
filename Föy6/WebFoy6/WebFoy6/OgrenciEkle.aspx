<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OgrenciEkle.aspx.cs" Inherits="WebFoy6.OgrenciEkle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 578px; width: 665px;">
            <asp:Label ID="LabelOgrenciAdi" runat="server" Text="Öğrencinin Adı: "></asp:Label><br />
            <asp:TextBox ID="TextBoxOgrenciAd" runat="server" Height="19px" Width="253px"></asp:TextBox>
            <br />
            <asp:Label ID="LabelOgrenciSoyadi" runat="server" Text="Öğrencinin Soyadı: "></asp:Label>
            <br />
            <asp:TextBox ID="TextBoxOgrenciSoyad" runat="server" Height="19px" Width="253px"></asp:TextBox>
            <br />
            <asp:Label ID="LabelBolum" runat="server" Text="Öğrencinin Bölümü: "></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownListBolum" runat="server" DataSourceID="EntityDataSource1" DataTextField="bolumAd" DataValueField="bolumID" Height="20px" Width="257px">
            </asp:DropDownList>
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=vtys6Entities" DefaultContainerName="vtys6Entities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="tBolums">
            </asp:EntityDataSource>
            <br />
            <br />
            <asp:Button ID="ButtonOgrenciEkle" runat="server" Text="Öğrenci Ekle" Width="256px" OnClick="ButtonOgrenciEkle_Click" />
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
