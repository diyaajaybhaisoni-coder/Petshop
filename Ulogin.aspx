<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Ulogin.aspx.cs" Inherits="PetShop.Ulogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>PetShop - Your Pet's Best Friend</title>
        <link rel="stylesheet" href="styles.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    </head>
    <body>
        <!-- Navigation -->
        <nav class="navbar">
            <div class="nav-container">
                <div class="nav-logo">
                    <i class="fas fa-paw"></i><span>PetShop</span>
                </div>
                <ul class="nav-menu">
                    <li class="nav-item"><a href="index.aspx" class="nav-link active">Home</a> </li>
                    <li class="nav-item"><a href="Product.aspx" class="nav-link">Product</a> </li>
                    <li class="nav-item"><a href="about.aspx" class="nav-link">About Us</a> </li>
                    <li class="nav-item"><a href="contact.aspx" class="nav-link">Contact</a> </li>
                </ul>
                <div>
                    <a href="Ulogin.aspx" class="login-btn">Login</a> <a href="Uregister.aspx" class="register-btn">Register</a>
                </div>
                <div class="hamburger">
                    <span class="bar"></span><span class="bar"></span><span class="bar"></span>
                </div>
            </div>
        </nav>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">

    <!-- Login Form -->
    <section class="form-section">
        <div class="form-container">
            <h2>Login to Your Account</h2>
            <form id="loginForm">
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="txteml" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="txtpw" runat="server"></asp:TextBox>
                </div>
                <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-primary" Style="width: 100%;" OnClick="Button1_Click" />
            </form>
            <p style="text-align: center; margin-top: 20px;">
                Don't have an account? <a href="Uregister.aspx" style="color: #ff6b6b;">Register here</a>
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-section">
                    <h3>PetShop</h3>
                    <p>
                        Your trusted partner in pet care for over 10 years.
                    </p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-facebook"></i></a><a href="#"><i class="fab fa-twitter"></i></a><a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
                <div class="footer-section">
                    <h4>Quick Links</h4>
                    <ul>
                        <li><a href="Uindex.aspx">Home</a></li>
                        <li><a href="Uabout.aspx">About Us</a></li>
                        <li><a href="Ucontact.aspx">Contact</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h4>Products</h4>
                    <ul>
                        <li><a href="Product.aspx">Dogs</a></li>
                        <li><a href="Product.aspx">Cats</a></li>
                        <li><a href="Product.aspx">Dog Food</a></li>
                        <li><a href="Product.aspx">Cat Food</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h4>Contact Info</h4>
                    <p>
                        <i class="fas fa-phone"></i>+91 92655 69655
                    </p>
                    <p>
                        <i class="fas fa-envelope"></i>petshop@gmail.com
                    </p>
                    <p>
                        <i class="fas fa-map-marker-alt"></i>KKV Chowk, Rajkot.
                    </p>
                </div>
            </div>
            <div class="footer-bottom">
                <p>PetShop</p>
            </div>
        </div>
    </footer>

    <script src="script.js"></script>
    </body>
</html>
</asp:Content>

