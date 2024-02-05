<%@ Page Title="" Language="C#" MasterPageFile="~/İndexMessages.Master" AutoEventWireup="true" CodeBehind="Messages.aspx.cs" Inherits="ekosat_website.Messages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .section-contact{
            font-size: 1.6rem;
            margin-top:3rem;
        }
        .contact-form{
            margin-top: -2rem;
        }
        .box-message{
            margin-top:1rem;
        }
        .btn{
            text-align: center;
            padding-top: 1.4rem;
        }
        *{
            text-transform: none;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 35px;
        }
        .auto-style5 {
            height: 32px;
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="contact-form">
<div class="form">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style3">
                                    Sender:&nbsp; <asp:Label ID="Label1" runat="server" Text='<%# Eval("ContactName") %>'></asp:Label>   
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    Mail of Sender:&nbsp; <asp:Label ID="Label2" runat="server" Text='<%# Eval("ContactMail") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <div class="input-box">
                                    <br />
                                    Message:&nbsp; <asp:TextBox class="box-message" ID="tboxMessage" runat="server" Height="194px" ReadOnly="True" Text='<%# Eval("ContactMessage") %>' TextMode="MultiLine" Width="500px"></asp:TextBox>
                                    <br />
                                    </div>
                                </td>
                            </tr>
           
                            <tr>
                                <td class="auto-style5">
                                    <a href="MessageDelete.aspx?id=<%#Eval("ContactID")%>" <div class="btn"> Delete </div> </a>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">&nbsp;</td>
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
</div>        
</div>
</asp:Content>
