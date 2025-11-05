<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="Acart.aspx.cs" Inherits="PetShop.admin.Acart" %>
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
    <main class="content">
    <h1>User Carts</h1>
    <div class="card">
        <table>
            <thead>
                <tr>
                    <th>User</th>
                    <th>Items</th>
                    <th>Total</th>
                    <th>Date</th>
                </tr>
            </thead>
            <tbody id="tbody"></tbody>
        </table>
    </div>
</main>

<%--<script>
    const tbody = document.getElementById('tbody');

    function productNameById(id) {
        const p = AdminStorage.getAll('products').find(x => x.id === id);
        return p ? p.name : id;
    }

    function render() {
        const carts = AdminStorage.getAll('carts').sort((a, b) => (b.createdAt || 0) - (a.createdAt || 0));
        tbody.innerHTML = carts.map(c => {
            const items = (c.items || []).map(i => `${productNameById(i.productId)} x ${i.qty}`).join('<br>');
            const total = (c.items || []).reduce((sum, i) => sum + Number(i.price || 0) * Number(i.qty || 1), 0);
            return `
            <tr>
                <td>${c.userName || c.userId || ''}</td>
                <td>${items}</td>
                <td>₹${total.toFixed(2)}</td>
                <td>${c.createdAt ? new Date(c.createdAt).toLocaleString() : ''}</td>
            </tr>`;
        }).join('') || '<tr><td colspan="4" class="muted">No carts</td></tr>';
    }

    document.addEventListener('DOMContentLoaded', render);
</script>--%>
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

