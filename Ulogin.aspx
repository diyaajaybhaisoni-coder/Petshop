<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Ulogin.aspx.cs" Inherits="PetShop.Ulogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
                <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"><title>PetShop - Your Pet's Best Friend</title>
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
                    <li class="nav-item dropdown"><a href="#" class="nav-link">Products <i class="fas fa-chevron-down"></i></a>
                        <div class="dropdown-content">
                            <a href="dog.aspx">Dogs</a> <a href="cat.aspx">Cats</a> <a href="dog-food.aspx">Dog Food</a> <a href="cat-food.aspx">Cat Food</a>
                        </div>
                    </li>
                    <li class="nav-item"><a href="about.aspx" class="nav-link">About Us</a> </li>
                    <li class="nav-item"><a href="contact.aspx" class="nav-link">Contact</a> </li>
                </ul>
                <div class="nav-actions">
                    <a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i><span class="cart-count">0</span> </a><a href="admin/login.aspx" class="admin-btn" style="background: #2c3e50; color: white; padding: 8px 16px; border-radius: 25px; text-decoration: none; font-weight: 500; transition: all 0.3s ease;"><i class="fas fa-shield-alt"></i>Admin </a><a href="login.aspx" class="login-btn">Login</a> <a href="register.aspx" class="register-btn">Register</a>
                </div>
                <div class="hamburger">
                    <span class="bar"></span><span class="bar"></span><span class="bar"></span>
                </div>
            </div>
        </nav>

    <!-- User Profile Section (shown when logged in) -->
        <section class="user-profile-section" id="userProfileSection" style="display: none;">
            <div class="container">
                <div class="user-profile-content">
                    <div class="user-info">
                        <h2 id="welcomeMessage">Welcome back!</h2>
                        <p id="userLocation">
                            Ready to find something special for your pet?</p>
                    </div>
                    <div class="user-actions">
                        <a href="cart.aspx" class="btn">View Cart</a> <a href="dog.aspx" class="btn">Shop Dogs</a> <a href="cat.aspx" class="btn">Shop Cats</a>
                    </div>
                </div>
            </div>
        </section>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
                   
    <!-- Login Form -->
<section class="form-section">
    <div class="form-container">
        <h2>Login to Your Account</h2>
        
<%--        <!-- Demo Credentials -->
        <div class="demo-credentials">
            <h3>Demo Login Credentials:</h3>
            <p><strong>Email:</strong> demo@petshop.com</p>
            <p><strong>Password:</strong> 123456</p>
            <button type="button" onclick="fillDemoCredentials()" class="btn btn-outline" style="margin-top: 10px;">
                <i class="fas fa-user"></i> Use Demo Credentials
            </button>
        </div>--%>
        
        <form id="loginForm">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="txteml" runat="server" ></asp:TextBox>
                <%--<label for="email">Email Address</label>
                <input type="email" id="email" name="email" required>--%>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="txtpw" runat="server"></asp:TextBox>
                <%--<label for="password">Password</label>
                <input type="password" id="password" name="password" required>--%>
            </div>
            <%--<div class="form-group">
                <label>
                    <input type="checkbox" name="remember"> Remember me
                </label>
            </div>--%>
<%--            <button type="submit" class="btn btn-primary" style="width: 100%;">Login</button>--%>

            <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-primary" style="width: 100%;" OnClick="Button1_Click"/>
        </form>
        <p style="text-align: center; margin-top: 20px;">
            Don't have an account? <a href="Uregister.aspx" style="color: #ff6b6b;">Register here</a>
        </p>
    </div>
</section>
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
                
    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-section">
                    <h3>PetShop</h3>
                    <p>
                        Your trusted partner in pet care for over 10 years.</p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-facebook"></i></a><a href="#"><i class="fab fa-twitter"></i></a><a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
                <div class="footer-section">
                    <h4>Quick Links</h4>
                    <ul>
                        <li><a href="index.aspx">Home</a></li>
                        <li><a href="about.aspx">About Us</a></li>
                        <li><a href="contact.aspx">Contact</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h4>Products</h4>
                    <ul>
                        <li><a href="dog.aspx">Dogs</a></li>
                        <li><a href="cat.aspx">Cats</a></li>
                        <li><a href="dog-food.aspx">Dog Food</a></li>
                        <li><a href="cat-food.aspx">Cat Food</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h4>Contact Info</h4>
                    <p>
                        <i class="fas fa-phone"></i>+1 (555) 123-4567</p>
                    <p>
                        <i class="fas fa-envelope"></i>info@petshop.com</p>
                    <p>
                        <i class="fas fa-map-marker-alt"></i>123 Pet Street, City</p>
                </div>
            </div>
            <div class="footer-bottom">
                <p>
                    &copy; 2024 PetShop. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <script src="script.js"></script>
</body>
</html>
            </asp:Content>

