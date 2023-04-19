<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="ContactPage.aspx.cs" Inherits="Hasan_TAS.ContactPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:TextBox ID="tboxName" runat="server" ToolTip="Adınız"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="tboxMail" runat="server" ToolTip="abc@info.com"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="tboxMessage" runat="server" Height="278px" TextMode="MultiLine" ToolTip="Mesajınız..." Width="456px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnSend" runat="server" OnClick="btnSend_Click" Text="Yollla" Width="243px" />
    </form>
</asp:Content>
