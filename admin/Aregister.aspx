<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="Aregister.aspx.cs" Inherits="PetShop.admin.Aregister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
                
<!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"><title>Admin Dashboard - PetShop</title>
        <link rel="stylesheet" href="styles.css">
    <script defer src="admin.js"></script>
    </head>
    <body>
        <nav class="navbar">
            <div class="brand">
                PetShop Admin</div>
            <nav>
              <a href="Aindex.aspx" class="active">Dashboard</a> <a href="Aadd_categories.aspx">Add Category</a> <a href="Aadd_product.aspx">Add Product</a> <a href="Acontacts.aspx">Contacts</a> <a href="Auser.aspx">Users</a> <a href="Aorder.aspx">Order</a>
            </nav>
           
        </nav>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <main class="content">
<%--    <h1>Dashboard</h1>--%>
    <main class="auth-container">
    <form id="adminRegisterForm" class="card form">
        <h2>Create Admin Account</h2>

        <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="txteml" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="txtnm" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="txtpw" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="Label7" runat="server" Text="Confirm Password"></asp:Label>
        <asp:TextBox ID="txtcpw" runat="server"></asp:TextBox>
        <br />

        <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click"  />

        <p class="muted">After registration, you can login from the admin login page.</p>
        <p class="muted"><a href="login.html">Back to Login</a></p>
    </form>
</main>
</body>
</html>
            </asp:Content>

