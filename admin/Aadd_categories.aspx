<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="Aadd_categories.aspx.cs" Inherits="PetShop.admin.Aadd_categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
                
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>PetShop Admin - Add Category</title>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background-color: #eaf4ff;
    }

    /* Navbar */
    .navbar {
      background-color: #d6e8ff;
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 10px 20px;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }
    .navbar h2 {
      margin: 0;
      color: #4682f0;
    }
    .navbar ul {
      list-style: none;
      display: flex;
      margin: 0;
      padding: 0;
    }
    .navbar ul li {
      margin: 0 10px;
    }
    .navbar ul li a {
      text-decoration: none;
      color: black;
      font-weight: 500;
      padding: 8px 15px;
      border-radius: 6px;
    }
    .navbar ul li a.active {
      background-color: #eaf4ff;
      border: 1px solid #4682f0;
      color: #4682f0;
    }
    .logout {
      background: red;
      color: white;
      border: none;
      padding: 8px 15px;
      border-radius: 6px;
      cursor: pointer;
      font-weight: bold;
    }

    /* Main */
    .container {
      padding: 30px;
    }
    h1 {
      margin-bottom: 20px;
      color: #000;
    }

    .box {
      display: flex;
      gap: 20px;
    }
    .card {
      background: #f4f9ff;
      flex: 1;
      padding: 20px;
      border-radius: 10px;
      border: 1px solid #c5dfff;
    }
    .card input {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border-radius: 6px;
      border: 1px solid #ccc;
    }
    .card button {
      background: #4682f0;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 6px;
      cursor: pointer;
      font-size: 15px;
    }
    .card button:hover {
      background: #346bd9;
    }

    /* Table */
    .table-box {
      width: 100%;
    }
    .table-box input {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 6px;
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
      background: #eaf4ff;
    }
    .no-data {
      text-align: center;
      color: gray;
      padding: 20px 0;
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
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <body>
        <br />
        <br />
  <!-- Main -->
  <div class="container">
    <h1>Add / Manage Categories</h1>
    <div class="box">
      <!-- Left Card -->
      <div class="card">
          <asp:Label ID="Label1" runat="server" Text="Pet/Food"></asp:Label>
          <asp:TextBox ID="txtpet" runat="server"></asp:TextBox>

          <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <%--<label>Pet Name (Dog / Cat)</label>
        <input type="text" placeholder="Dog or Cat">--%>

       <%-- <label>Food Name</label>
        <input type="text" placeholder="Puppy Food / Adult Food">--%>

        <%--<label>Image URL</label>
        <input type="text" placeholder="https://...">--%>

<%--        <button>Save</button>--%>
<%--        <p><b>Details:</b> pet name, food name, image.</p>--%>
      </div>

      <!-- Right Card -->
      <div class="card table-box">
        <input type="text" placeholder="Search...">
        <table>
          <thead>
            <tr>
              <th>Image</th>
              <th>Pet</th>
              <th>Food</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td colspan="4" class="no-data">No categories</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</body>
</html>
</asp:Content>

