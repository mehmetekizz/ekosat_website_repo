<%@ Page Title="" Language="C#" MasterPageFile="~/İndexSignup.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="ekosat_website.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
     <link rel="stylesheet" href="styles/stylesignup.css">
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
            font-size: 1.7rem;
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
        <section class="section-signup">
            <div class="form-box-signup">
                <h2>Signup</h2>
                    <div class="input-box">
                        <span class="icon"><i class="fa-solid fa-user"></i></span>
                        <asp:TextBox class="box" ID="tboxName" runat="server"></asp:TextBox>
                        <label>Name</label>
                    </div>
                    <div class="input-box">
                        <span class="icon"><i class="fa-solid fa-user"></i></span>
                        <asp:TextBox class="box" ID="tboxSurname" runat="server"></asp:TextBox>
                        <label>Surname</label>
                    </div>
                    <div class="input-box">
                        <span class="icon"><i class="fa-solid fa-envelope"></i></span>
                        <asp:TextBox class="box" ID="tboxMail" runat="server" TextMode="Email"></asp:TextBox>
                        <label>Email</label>
                    </div>
                    <div class="input-box">
                        <span class="icon" id="show-lock"><i id="lock" class="fa-solid fa-lock"></i></span>
                        <span class="icon" id="show-unlock"><i id="unlock" class="fa-solid fa-lock-open lock-unlock"></i></span>
                        <asp:TextBox class="box" ID="tboxPassword" runat="server" TextMode="Password"></asp:TextBox> 
                        <!--  <input class="box" id="tboxPassword" type="password" /> -->
                        <label>Password</label>
                    </div>
                    <div class="remember-forgot">
                        <input class="checkbox" type="checkbox"> 
                        <label class="remember">I agree to the terms & conditions</label>
                    </div>
                    <asp:Button class="btn" ID="btnSignup" runat="server" Text="Signup" OnClick="btnSignup_Click" />
                    <div class="login-signup">
                        <p>You already have an account? <a href="Login.aspx" class="login-link">Login</a></p>
                    </div>
            </div>
        </section>
    </section>
        <script src="js/scriptlogin-signup.js"></script>

</asp:Content>
