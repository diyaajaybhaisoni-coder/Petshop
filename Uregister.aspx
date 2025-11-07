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
        <style>
            /* 🔹 સામાન્ય સ્ટાઈલ */
body {
    font-family: "Noto Sans Gujarati", "Poppins", sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f9f9f9;
}

/* 🔹 નાવબાર */
/* 🔹 Navbar Design */
.navbar {
  background-color: #ffffff;
  box-shadow: 0 2px 6px rgba(0,0,0,0.08);
  padding: 10px 60px;
  display: flex;
  justify-content: center;
  align-items: center;
  position: sticky;
  top: 0;
  z-index: 1000;
}

.nav-container {
  width: 100%;
  max-width: 1200px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.nav-logo {
  font-size: 22px;
  font-weight: bold;
  color: #ff6b6b;
  display: flex;
  align-items: center;
  gap: 5px;
}

.nav-logo i {
  color: #ff6b6b;
  font-size: 24px;
}

.nav-menu {
  list-style: none;
  display: flex;
  gap: 30px;
  margin: 0;
  padding: 0;
}

.nav-menu li a {
  text-decoration: none;
  color: #333;
  font-weight: 500;
  transition: 0.3s;
}

.nav-menu li a:hover,
.nav-menu li a.active {
  color: #ff6b6b;
}

/* 🔹 Login / Register Button */
.nav-buttons a {
  text-decoration: none;
  font-weight: 500;
  padding: 8px 18px;
  border-radius: 25px;
  transition: 0.3s ease;
  border: 1px solid transparent;
}

.login-btn {
  color: #333;
  border: 1px solid #ccc;
  background: #fff;
}

.register-btn {
  background: #ff6b6b;
  color: #fff;
  margin-left: 10px;
}

.login-btn:hover {
  background: #f8f8f8;
}

.register-btn:hover {
  background: #ff4040;
}

/* 🔹 Responsive */
@media (max-width: 768px) {
  .nav-menu {
    display: none;
  }
  .nav-container {
    justify-content: space-between;
  }
}

/* 🔹 ફોર્મ વિભાગ */
.form-section {
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 60px 0;
    background-color: #f5f5f5;
}

.form-container {
    background: #fff;
    border-radius: 10px;
    padding: 35px 40px;
    width: 450px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
}

.form-container h2 {
    text-align: center;
    color: #333;
    margin-bottom: 25px;
    font-size: 22px;
}

/* 🔹 ફોર્મ ઈનપુટ */
.form-group, .form-row {
    margin-bottom: 18px;
}

.form-row {
    display: flex;
    justify-content: space-between;
    gap: 15px;
}

.form-group label, .form-container asp\:label {
    display: block;
    color: #555;
    font-size: 15px;
    margin-bottom: 6px;
}

input[type="text"],
input[type="email"],
input[type="password"],
select,
textarea,
asp\:TextBox {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 6px;
    font-size: 14px;
    transition: border-color 0.3s;
}

input:focus, select:focus, textarea:focus {
    border-color: #ff6b6b;
    outline: none;
}

/* 🔹 બટન */
.btn, .asp\:Button, input[type="submit"], .btn-primary {
    display: inline-block;
    width: 100%;
    padding: 10px;
    background-color: #ff6b6b;
    color: #fff;
    font-size: 16px;
    font-weight: bold;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    transition: 0.3s;
}

.btn:hover {
    background-color: #ff4040;
}

/* 🔹 ફાઈલ અપલોડ */
.file-upload-display {
    background-color: #f1f1f1;
    padding: 10px;
    border: 1px dashed #ccc;
    border-radius: 6px;
    text-align: center;
    color: #777;
}

/* 🔹 ફૂટર (વૈકલ્પિક) */
footer {
    text-align: center;
    padding: 15px;
    background-color: #fff;
    color: #666;
    font-size: 14px;
    border-top: 1px solid #eee;
}

/* 🔹 રિસ્પોન્સિવ */
@media (max-width: 600px) {
    .form-container {
        width: 90%;
        padding: 25px;
    }
    .form-row {
        flex-direction: column;
    }
}

        </style>
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
                    <li class="nav-item"><a href="Product.aspx" class="nav-link">Product</a> </li>
                    <li class="nav-item"><a href="Uabout.aspx" class="nav-link">About Us</a> </li>
                    <li class="nav-item"><a href="Ucontact.aspx" class="nav-link">Contact</a> </li>
                </ul>
                <div>
                    <a href="Ulogin.aspx" class="login-btn">Login</a> <a href="Uregister.aspx" class="register-btn">Register</a>
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
            </asp:Content>

