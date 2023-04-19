<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="AdminAddCars.aspx.cs" Inherits="Hasan_TAS.AdminAddCars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="nav-justified">
                    <tr>
                        <td style="width: 167px">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 167px">Model</td>
                        <td>
                            <asp:TextBox ID="tboxModel" runat="server" Width="150px" ReadOnly="True" Text='<%# Eval("CarModel") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 167px">Fotoğraf</td>
                        <td>
                            <asp:TextBox ID="tboxPhoto" runat="server" Width="150px" ReadOnly="True" Text='<%# Eval("CarPhoto") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 167px">Yakıt</td>
                        <td>
                            <asp:TextBox ID="tboxFuel" runat="server" Width="150px" ReadOnly="True" Text='<%# Eval("CarFuelType") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 167px">Açıklama</td>
                        <td>
                            <asp:TextBox ID="tboxDescription" runat="server" Height="120px" TextMode="MultiLine" Width="150px" ReadOnly="True" Text='<%# Eval("CarDescription") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 167px">Satıcı</td>
                        <td>
                            <asp:TextBox ID="tboxSeller" runat="server" Width="150px" ReadOnly="True" Text='<%# Eval("CarSeller") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 167px">İletişim</td>
                        <td>
                            <asp:TextBox ID="tboxContact" runat="server" Width="150px" ReadOnly="True" Text='<%# Eval("CarContact") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 167px">Fiyat</td>
                        <td style="margin-left: 160px">
                            <asp:TextBox ID="tboxPrice" runat="server" Width="150px" ReadOnly="True" Text='<%# Eval("CarPrice") %>'></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 167px">&nbsp;</td>
                        <td style="margin-left: 160px">
                            <a href="ApproveCars.aspx?carid=<%# Eval("CarID") %>"><div class="btn btn-danger">Onayla</div></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </form>

</asp:Content>
