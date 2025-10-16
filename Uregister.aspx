<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Uregister.aspx.cs" Inherits="PetShop.Uregister" %>
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
                    <li class="nav-item"><a href="Uindex.aspx" class="nav-link active">Home</a> </li>
                    <li class="nav-item dropdown"><a href="#" class="nav-link">Products <i class="fas fa-chevron-down"></i></a>
                        <div class="dropdown-content">
                            <a href="dog.aspx">Dogs</a> <a href="cat.aspx">Cats</a> <a href="dog-food.aspx">Dog Food</a> <a href="cat-food.aspx">Cat Food</a>
                        </div>
                    </li>
                    <li class="nav-item"><a href="about.aspx" class="nav-link">About Us</a> </li>
                    <li class="nav-item"><a href="contact.aspx" class="nav-link">Contact</a> </li>
                </ul>
                <div class="nav-actions">
                    <a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i><span class="cart-count">0</span> </a><a href="admin/login.aspx" class="admin-btn" style="background: #2c3e50; color: white; padding: 8px 16px; border-radius: 25px; text-decoration: none; font-weight: 500; transition: all 0.3s ease;"><i class="fas fa-shield-alt"></i>Admin </a><a href="login.aspx" class="login-btn">Login</a> <a href="Uregister.aspx" class="register-btn">Register</a>
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
    
    <!-- Register Form -->
<section class="form-section">
    <div class="form-container">
        <h2>Create Your Account</h2>
        <form id="registerForm">
            <div class="form-row">
                <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="txtnm" runat="server"></asp:TextBox>
                    <%--<label for="name">Full Name *</label>
                    <input type="text" id="name" name="name" required>--%>
                </div>
                <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label>
            <asp:RadioButtonList ID="rdbgen" runat="server" RepeatDirection="Horizontal">  
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
                    <%--<label for="gender">Gender *</label>
                    <select id="gender" name="gender" required>
                        <option value="">Select Gender</option>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                        <option value="other">Other</option>
                        <option value="prefer-not-to-say">Prefer not to say</option>
                    </select>--%>
                </div>
            </div>
            
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="txteml" runat="server"></asp:TextBox>
              <%--  <label for="regEmail">Email Address *</label>
                <input type="email" id="regEmail" name="email" required>--%>
            </div>
            
            <div class="form-row">
                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="txtpw" runat="server"></asp:TextBox>
                    <%--<label for="regPassword">Password *</label>
                    <input type="password" id="regPassword" name="password" required>--%>
                </div>
                    <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>    
                    <asp:TextBox ID="txtcpw" runat="server"></asp:TextBox>
                <div class="form-group">

                    <%--<label for="confirmPassword">Confirm Password *</label>
                    <input type="password" id="confirmPassword" name="confirmPassword" required>--%>
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-group">
                        <asp:Label ID="Label6" runat="server" Text="City"></asp:Label>
                        <asp:DropDownList ID="drpct" runat="server">
                            <asp:ListItem>---Select city---</asp:ListItem>
                            <asp:ListItem>Rajkot</asp:ListItem>
                            <asp:ListItem>Surat</asp:ListItem>
                            <asp:ListItem>Ahemdabad</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    <%--<label for="city">City *</label>
                    <input type="text" id="city" name="city" required>--%>
                </div>
                <div class="form-group">
                            <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
                            <asp:TextBox ID="txtadd" runat="server"></asp:TextBox>
                    <%--<label for="address">Address *</label>
                    <input type="text" id="address" name="address" required>--%>
                </div>
            </div>
            
            <div class="form-group">
<%--                <label for="profileImage">Profile Image</label>--%>
                <asp:Label ID="Label8" runat="server" Text="Image"></asp:Label>
                    <div class="file-upload-display">
                    <asp:FileUpload ID="fldimg" runat="server"   />
                    </div>

                <%--<div class="file-upload-container">
                    <input type="file" id="profileImage" name="profileImage" accept="image/*" onchange="previewImage(this)">
                    <div class="file-upload-display">
                        <i class="fas fa-cloud-upload-alt"></i>
                        <span>Choose Image</span>
                    </div>
                    <div class="image-preview" id="imagePreview" style="display: none;">
                        <img id="previewImg" src="" alt="Preview">
                        <button type="button" onclick="removeImage()" class="remove-image-btn">
                            <i class="fas fa-times"></i>
                        </button>
                    </div>
                </div>--%>
            </div>

        <asp:Button ID="Button1" runat="server" Text="Save" i class="fas fa-save btn btn-primary" OnClick="Button1_Click"/>
            
<%--            <button type="submit" class="btn btn-primary" style="width: 100%;">
                <i class="fas fa-save"></i> Save & Register
            </button>--%>
        </form>
        <p style="text-align: center; margin-top: 20px;">
            Already have an account? <a href="Ulogin.aspx" style="color: #ff6b6b;">Login here</a>
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

