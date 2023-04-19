<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" enableEventValidation="false" CodeBehind="Messages.aspx.cs" Inherits="Hasan_TAS.Messages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table class="nav-justified">
        <tr>
            <td>Mesajlar</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <table class="nav-justified">
                            <tr>
                                <td>Gönderen kişi:
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ContactName") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Gönderen mail:
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("ContactMail") %>'></asp:Label>
                                    <br />
                                    Mesajı:</td>
                            </tr>
                            <tr>
                                <td>&nbsp;<asp:TextBox ID="tboxMesaj" runat="server" Height="149px" ReadOnly="True" Text='<%# Eval("ContactMessage") %>' TextMode="MultiLine" Width="314px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br />
                                    <a href="MessageDelete.aspx?id=<%# Eval("ContactID") %>"><div class="btn btn-danger">Sil</div></a>
                                    
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</form>
</asp:Content>
