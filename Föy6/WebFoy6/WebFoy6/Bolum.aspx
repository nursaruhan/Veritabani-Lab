<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bolum.aspx.cs" Inherits="WebFoy6.Bolum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
 <form id="form1" runat="server">
      <div style="height: 578px; width: 665px;">
            <asp:Label ID="LabelBolumAdi" runat="server" Text="Bölüm Adı: "></asp:Label><br />
            <asp:TextBox ID="TextBoxBolumAdi" runat="server" Height="19px" Width="253px"></asp:TextBox>
            <br />
            <asp:Label ID="LabelFakulte" runat="server" Text="Fakulte Adı: "></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownListFakulte" runat="server" Height="20px" OnSelectedIndexChanged="DropDownListFakulte_SelectedIndexChanged" Width="259px" DataSourceID="EntityDataSource" DataTextField="fakulteAd" DataValueField="fakulteID">
            </asp:DropDownList>
            <asp:EntityDataSource ID="EntityDataSource" runat="server" ConnectionString="name=vtys6Entities" DefaultContainerName="vtys6Entities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="tFakultes">
            </asp:EntityDataSource>
            <br />
            <br />
            <asp:Button ID="ButtonBolumEkle" runat="server" Text="Bölüm Ekle" Width="256px" OnClick="ButtonBolumEkle_Click" />
            <br />
            <br />
            <asp:Label ID="errorLabel" runat="server"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridViewBolum" runat="server" Width="531px">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
