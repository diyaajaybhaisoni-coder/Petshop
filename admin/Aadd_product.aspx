<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="Aadd_product.aspx.cs" Inherits="PetShop.admin.Aadd_product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
                <!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>PetShop Admin - Add Product</title>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background-color: #e9f2ff;
    }

    /* Navbar */
    .navbar {
      display: flex;
      justify-content: space-between;
      align-items: center;
      background-color: #d8e8ff;
      padding: 12px 40px;
    }

    .navbar-left {
      font-size: 22px;
      font-weight: bold;
      color: #2b68d9;
    }

    .navbar-right a {
      margin: 0 15px;
      text-decoration: none;
      font-weight: bold;
      color: #000;
    }

    .navbar-right a.active {
      background: #cfe2ff;
      padding: 6px 14px;
      border-radius: 6px;
      color: #2b68d9;
    }

    .logout-btn {
      background: #e74c3c;
      color: #fff;
      padding: 8px 14px;
      border: none;
      border-radius: 6px;
      cursor: pointer;
      font-weight: bold;
    }

    /* Container */
    .container {
      padding: 30px;
    }

    .container h2 {
      font-size: 26px;
      font-weight: bold;
      margin-bottom: 20px;
    }

    .main-content {
      display: flex;
      gap: 25px;
    }

    /* Left Form */
    .form-box {
      flex: 1;
      background: #f0f6ff;
      padding: 20px;
      border-radius: 10px;
      border: 1px solid #d0e3ff;
    }

    .form-box label {
      display: block;
      font-weight: bold;
      margin-top: 12px;
      margin-bottom: 5px;
    }

    .form-box input,
    .form-box select,
    .form-box textarea {
      width: 100%;
      padding: 10px;
      border: 1px solid #c5d9f7;
      border-radius: 6px;
      font-size: 14px;
    }

    .form-box textarea {
      resize: none;
      height: 80px;
    }

    .form-box button {
      margin-top: 15px;
      background: #2b68d9;
      color: #fff;
      padding: 10px 18px;
      border: none;
      border-radius: 6px;
      cursor: pointer;
      font-size: 15px;
      font-weight: bold;
    }

    /* Right Table */
    .table-box {
      flex: 1.5;
      background: #f0f6ff;
      padding: 20px;
      border-radius: 10px;
      border: 1px solid #d0e3ff;
    }

    .table-box input {
      width: 100%;
      padding: 10px;
      border: 1px solid #c5d9f7;
      border-radius: 6px;
      margin-bottom: 12px;
    }

    table {
      width: 100%;
      border-collapse: collapse;
    }

    table th, table td {
      padding: 12px;
      text-align: left;
      border-bottom: 1px solid #ccc;
    }

    table th {
      background: #e4f0ff;
    }

    .no-products {
      text-align: center;
      padding: 20px;
      color: #777;
    }
  </style>
</head>
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
              <a href="Aindex.aspx" class="active">Dashboard</a> <a href="Aadd_categories.aspx">Add Category</a> <a href="Aadd_product.aspx">Add Product</a> <a href="Acontact.aspx">Contacts</a> <a href="Auser.aspx">Users</a> <a href="Acart.aspx">Carts</a>
            </nav>
        </nav>
<%--<!DOCTYPE html>
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
                <a href="index.aspx" class="active">Dashboard</a> <a href="categories.aspx">Add Category</a> <a href="products.aspx">Add Product</a> <a href="show-products.aspx">Show Products</a> <a href="contacts.aspx">Contacts</a> <a href="users.aspx">Users</a> <a href="carts.aspx">Carts</a>
            </nav>
            <button id="logoutBtn" class="logout">
                Logout
            </button>
        </nav>--%>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <body>
        </br>
        </br>
<%--  <!-- Navbar -->
  <div class="navbar">
    <div class="navbar-left">PetShop Admin</div>
    <div class="navbar-right">
                      <a href="Aindex.aspx" class="active">Dashboard</a> <a href="Aadd_categories.aspx">Add Category</a> <a href="Aadd_product.aspx">Add Product</a> <a href="Acontacts.aspx">Contacts</a> <a href="Auser.aspx">Users</a> <a href="Acart.aspx">Carts</a>
    </div>
  </div>--%>

  <!-- Page Content -->
  <div class="container">
    <h2>Add / Manage Products</h2>

    <div class="main-content">
      <!-- Left Side Form -->
      <div class="form-box">
        <%--<label>Category</label>
        <select>
          <option>Select category</option>
        </select>--%>
          <asp:Label ID="Label1" runat="server" Text="Select Category"></asp:Label>
          <asp:DropDownList ID="drpct" runat="server" OnSelectedIndexChanged="drpct_SelectedIndexChanged">
            <asp:ListItem>--Select Company--</asp:ListItem>
          </asp:DropDownList>

          <asp:Label ID="Label5" runat="server" Text="Product Name"></asp:Label>
          <asp:TextBox ID="txtnm" runat="server"></asp:TextBox>

          <asp:Label ID="Label2" runat="server" Text="Price"></asp:Label>
          <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>

          <asp:Label ID="Label4" runat="server" Text="Image"></asp:Label>
          <asp:FileUpload ID="img" runat="server" />

          <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
          <asp:TextBox ID="txtds" runat="server"></asp:TextBox>
          <br />
          <br />

          <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />

       <%-- <label>Product Name</label>
        <input type="text" placeholder="Enter product name">--%>

        <%--<label>Price</label>
        <input type="text" placeholder="Enter price">--%>

       <%-- <label>Image URL</label>
        <input type="text" placeholder="https://...">--%>

        <%--<label>Description</label>
        <textarea placeholder="Short description..."></textarea>--%>

<%--        <button>Save</button>--%>
      </div>

    <div>
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" >
         <Columns>
             <asp:TemplateField HeaderText="ID">
                 <ItemTemplate>
                     <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>' CssClass="id-column"></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Image">
                 <ItemTemplate>
                     <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' 
                         style="width: 40px; height: 40px; object-fit: cover; border-radius: 6px;" />
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Name">
                 <ItemTemplate>
                     <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Category">
                 <ItemTemplate>
                     <asp:Label ID="Label3" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Price">
                 <ItemTemplate>
                     ₹<asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Description">
                 <ItemTemplate>
                     <asp:Label ID="Label5" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Edit">
                 <ItemTemplate>
                     <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_edt">✏️</asp:LinkButton>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Delete">
                 <ItemTemplate>
                     <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_dlt">❌</asp:LinkButton>
                 </ItemTemplate>
             </asp:TemplateField>
         </Columns>
     </asp:GridView>
    </div>

      <%--<!-- Right Side Table -->
      <div class="table-box">
        <input type="text" placeholder="Search...">
        <table>
          <tr>
            
            <th>Category</th>
            <th>Name</th>
            <th>Price</th>
            <th>Image</th>
            <th>Description</th>          
          </tr>
          <tr>
            <td colspan="5" class="no-products">No products</td>
          </tr>
        </table>
      </div>--%>
    </div>
  </div>

</body>
</html>
  <%--  <main class="content">
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
    </script>--%>
</body>
</html>
            </asp:Content>

