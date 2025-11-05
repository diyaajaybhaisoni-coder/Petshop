<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="Auser.aspx.cs" Inherits="PetShop.admin.Auser" %>
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
              <a href="Aindex.aspx" class="active">Dashboard</a> <a href="Aadd_categories.aspx">Add Category</a> <a href="Aadd_product.aspx">Add Product</a> <a href="Acontacts.aspx">Contacts</a> <a href="Auser.aspx">Users</a> <a href="Acart.aspx">Carts</a>
            </nav>
         
        </nav>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <br />
    <br />
    <br />
    <br />

<asp:GridView ID="GridView1" runat="server" CssClass="styled-grid" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
           <Columns>
    <asp:TemplateField HeaderText="Id">
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="UserName">
        <ItemTemplate>
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Password">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Password") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Name">
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Image">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" 
                ImageUrl='<%# GetImageUrl(Eval("Image")) %>' 
                Width="40" Height="40" 
                style="border-radius: 50%; object-fit: cover;" 
                onerror="this.src='images/download.jpeg';" />
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Gender">
        <ItemTemplate>
            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Email">
        <ItemTemplate>
            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Delete">
        <ItemTemplate>
             <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_dlt">❌</asp:LinkButton>
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
        </asp:GridView>
    <%--<main class="content">
    <h1>Dashboard</h1>
    <div class="grid">
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
    </div>
    </main>

    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const { getAll } = AdminStorage;
            document.getElementById('statCategories').textContent = getAll('categories').length;
            document.getElementById('statProducts').textContent = getAll('products').length;
            document.getElementById('statUsers').textContent = getAll('users').length;
            document.getElementById('statContacts').textContent = getAll('contacts').length;
            document.getElementById('statCarts').textContent = getAll('carts').length;
        });
    </script>
</body>
</html>--%>
            </asp:Content>

