<%@ Page Title="" Language="C#" MasterPageFile="~/İndexHome.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ekosat_website.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 17px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" CssClass="auto-style2">
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style2">Marka:
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("BrandName") %>'></asp:Label>
                                    &nbsp; Model:
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("CarModel") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="245px" ImageUrl='<%# Eval("CarPhoto1") %>' Width="561px" />
                                    &nbsp;<br /> </td>
                            </tr>
                            <tr>
                                <td>
                                    <br />
                                    Yakıt tipi:
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("CarFuelType") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Açıklama:
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("CarDescription") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Satıcı:
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("CarSeller") %>'></asp:Label>
                                    &nbsp; Satıcı Numarası:&nbsp;
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("CarContact") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;Fiyat:
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("CarPrice") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
