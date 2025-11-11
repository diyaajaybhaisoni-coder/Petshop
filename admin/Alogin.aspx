<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="Alogin.aspx.cs" Inherits="PetShop.admin.Alogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Dashboard - PetShop</title>
        <link rel="stylesheet" href="styles.css">
        <script defer src="admin.js"></script>
        <style>
            .login-box {
                width: 350px;
                margin: 80px auto;
                padding: 30px 40px;
                background-color: #ffffff;
                border: 2px solid #d0d7de;
                border-radius: 10px;
                box-shadow: 0 4px 10px rgba(0,0,0,0.1);
                text-align: center;
            }

                .login-box h2 {
                    margin-bottom: 20px;
                    color: #0a0a23;
                }

                .login-box input[type="text"],
                .login-box input[type="password"],
                .login-box .aspNetDisabled {
                    width: 100%;
                    padding: 8px;
                    margin: 8px 0;
                    border: 1px solid #ccc;
                    border-radius: 6px;
                }

                .login-box input[type="submit"],
                .login-box button,
                .login-box .aspNetButton {
                    margin-top: 10px;
                    padding: 8px 18px;
                    border: none;
                    border-radius: 6px;
                    background-color: #007bff;
                    color: white;
                    cursor: pointer;
                }

                    .login-box input[type="submit"]:hover {
                        background-color: #0056b3;
                    }

            .muted {
                font-size: 12px;
                color: #666;
            }
        </style>
    </head>
    <body>
        <nav class="navbar">
            <div class="brand">
                PetShop Admin
            </div>
            <nav>
              <a href="Aindex.aspx" class="active">Dashboard</a> <a href="Aadd_categories.aspx">Add Category</a> <a href="Aadd_product.aspx">Add Product</a> <a href="Acontacts.aspx">Contacts</a> <a href="Auser.aspx">Users</a> <a href="Aorder.aspx">Order</a>
            </nav>

        </nav>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <main class="content">
    <div class="login-box">
        <form id="adminLoginForm" class="card form">

            <center>
                <h2>Admin Login</h2>
            </center>
            <center>
                <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="txteml" runat="server"></asp:TextBox>
                <br />

                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="txtpw" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
            </center>
            <%--<label>
        <span>Username</span>
        <input type="text" id="username" required>
    </label>
    <label>
        <span>Password</span>
        <input type="password" id="password" required>
    </label>
    <button type="submit" class="primary">Login</button>--%>
            <center>
                <p class="muted">Use provided admin credentials.</p>
            </center>
        </form>
        <%--    <h1>Dashboard</h1>--%>
        <%-- <div class="grid">
        <div class="card">
            <h3>Total Categories</h3>
            <div id="statCategories" class="stat">
                0</div>
        </div>
        <div class="card">
            <h3>Total Products</h3>
            <div id="statProducts" class="stat">
                0</div>
        </div>
        <div class="card">
            <h3>Total Users</h3>
            <div id="statUsers" class="stat">
                0</div>
        </div>
        <div class="card">
            <h3>Contacts</h3>
            <div id="statContacts" class="stat">
                0</div>
        </div>
        <div class="card">
            <h3>Carts</h3>
            <div id="statCarts" class="stat">
                0</div>
        </div>
    </div>--%>
    </main>
    </body>
</html>
</asp:Content>

