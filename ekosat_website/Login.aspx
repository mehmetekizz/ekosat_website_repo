<%@ Page Title="" Language="C#" MasterPageFile="~/İndexLogin.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ekosat_website.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link href="styles/stylelogin.css" rel="stylesheet" />
     <style>
     .login-signup p{
         font-size: 1.3rem;
     }
     .login-signup p a{
         font-size: 1.3rem;
     }
     .remember-forgot a {
         color: var(--font-color);
         font-size: 1.3rem;
     }
     .remember-forgot label {
         font-size: 1.3rem;
     }
     *{
         font-size: 1.4rem;
     }
     .lock-unlock {
         font-size: 0rem;
     }
     .input-box #show-lock,
     .input-box #show-unlock {
        position: absolute;
        right: 0.6rem;
        font-size: 1.6rem;
        line-height: 5.9rem;
        cursor: pointer;
     }
 </style>  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="container">
        <section class="section-logo"> 
            <a href="Home.aspx"><img src="images/ekosat-logo.png" alt=""></a> 
        </section>
        <section class="section-login">
            <div class="form-box-login">
                <h2>Login</h2>            
                    <div class="input-box">
                        <span class="icon"><i class="fa-solid fa-envelope"></i></span>
                        <asp:TextBox class="box" ID="tboxMail" runat="server" TextMode="Email" ></asp:TextBox>
                        <label>Email</label>
                    </div>
                    <div class="input-box">
                        <span class="icon" id="show-lock"><i id="lock" class="fa-solid fa-lock"></i></span>
                        <span class="icon" id="show-unlock"><i id="unlock" class="fa-solid fa-lock-open lock-unlock"></i></span>
                        <asp:TextBox class="box" ID="tboxPassword" runat="server" TextMode="Password"></asp:TextBox> 
                        <!-- <input class="box" id="tboxPassword" type="password" /> -->
                        <label>Password</label>
                    </div>
                    <div class="remember-forgot">
                        <asp:CheckBox  class="checkbox" ID="CheckBox" runat="server" />
                        <label class="remember"> Remember me</label>
                        <a href="#">Forgot Password</a>
                    </div>
                    <asp:Button class="btn" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                    <div class="login-signup">
                        <p>Don't have an account? <a href="Signup.aspx" class="login-link">Signup</a></p>                  
                    </div>    
            </div>
        </section>
    </section>
        <script src="js/scriptlogin-signup.js"></script>
</asp:Content>
