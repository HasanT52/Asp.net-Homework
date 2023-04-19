<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Hasan_TAS.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
        <asp:TextBox ID="tboxMail" runat="server" TextMode="Email"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="tboxPassword" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnLogin" runat="server" Text="Giriş Yap" Width="130px" OnClick="btnLogin_Click" />
    </form>
</asp:Content>
