<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Hasan_TAS.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:TextBox ID="tboxMail" runat="server" TextMode="Email"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="tboxPassword" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Kayıt Ol" Width="130px" />
    </form>
</asp:Content>
