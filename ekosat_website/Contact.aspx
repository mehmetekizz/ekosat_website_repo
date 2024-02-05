<%@ Page Title="" Language="C#" MasterPageFile="~/İndexContact.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ekosat_website.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/stylecontact.css" rel="stylesheet" />
    <style>
        *{
            text-transform: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="section-contact">
        <div class="container">
            <h2>Conact Us</h2>

            <div class="contact-form">
                <div class="form">
                    <h3>Send us a message</h3>
                    <div class="input-box">
                        <asp:TextBox class="box" placeholder="Full Name" ID="tboxName" runat="server" ></asp:TextBox> 
                    </div>
                    <div class="input-box">
                        <asp:TextBox class="box" placeholder="Email" ID="tboxMail" runat="server" TextMode="Email"></asp:TextBox>
                    </div>
                    <div class="input-box">
                        <asp:TextBox class="box-message" placeholder="Your Message" ID="tboxMessage" runat="server" Height="70px" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <asp:Button class="btn" ID="btnSend" runat="server" Text="Send Message" OnClick="btnSend_Click" />
                </div> 

                <div class="contact-logo">
                    <a href="Home.aspx"><img src="images/ekosat-logo.png" alt="logo bulunamadı"></a>
                </div>
            </div>        
        </div>


    </section>
</asp:Content>
