<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="AddCars.aspx.cs" Inherits="Hasan_TAS.AddCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 167px">Marka</td>
            <td>
                <asp:DropDownList ID="combobox" runat="server" Width="150px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 167px">Model</td>
            <td>
                <asp:TextBox ID="tboxModel" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 167px">Fotoğraf</td>
            <td>
                <asp:TextBox ID="tboxPhoto" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 167px">Yakıt</td>
            <td>
                <asp:TextBox ID="tboxFuel" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 167px">Açıklama</td>
            <td>
                <asp:TextBox ID="tboxDescription" runat="server" Height="120px" TextMode="MultiLine" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 167px">Satıcı</td>
            <td>
                <asp:TextBox ID="tboxSeller" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 167px">İletişim</td>
            <td>
                <asp:TextBox ID="tboxContact" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 167px">Fiyat</td>
            <td>
                <asp:TextBox ID="tboxPrice" runat="server" Width="150px"></asp:TextBox>
                <br />
                <asp:Button ID="btnSend" runat="server" Height="40px" OnClick="btnSend_Click" Text="Oluştur" Width="150px" />
            </td>
        </tr>
    </table>
</form>
</asp:Content>
