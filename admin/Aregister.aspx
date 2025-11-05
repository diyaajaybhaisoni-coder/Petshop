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
              <a href="Aindex.aspx" class="active">Dashboard</a> <a href="Aadd_categories.aspx">Add Category</a> <a href="Aadd_product.aspx">Add Product</a> <a href="Acontacts.aspx">Contacts</a> <a href="Auser.aspx">Users</a> <a href="Acart.aspx">Carts</a>
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

<%--        <label>
            <span>Username</span>
            <input type="text" id="username" required>
        </label>
        <label>
            <span>Name</span>
            <input type="text" id="name" required>
        </label>
        <label>
            <span>Gender</span>
            <select id="gender" required>
                <option value="">Select</option>
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
            </select>
        </label>
        <label>
            <span>City</span>
            <input type="text" id="city" required>
        </label>
        <label>
            <span>Address</span>
            <textarea id="address" required></textarea>
        </label>
        <label>
            <span>Password</span>
            <input type="password" id="password" required>
        </label>
        <label>
            <span>Confirm Password</span>
            <input type="password" id="confirmPassword" required>
        </label>
        <label>
            <span>Image</span>
            <input type="file" id="imageFile" accept="image/*">
        </label>
        <button type="submit" class="primary">Register</button>--%>
        <p class="muted">After registration, you can login from the admin login page.</p>
        <p class="muted"><a href="login.html">Back to Login</a></p>
    </form>
</main>

<%--<script>
    const form = document.getElementById('adminRegisterForm');
    const imgInput = document.getElementById('imageFile');

    function toDataUrl(file) {
        return new Promise((resolve) => {
            if (!file) { resolve(null); return; }
            const r = new FileReader();
            r.onload = (e) => resolve(e.target.result);
            r.readAsDataURL(file);
        });
    }

    form.addEventListener('submit', async (e) => {
        e.preventDefault();
        const name = document.getElementById('name').value.trim();
        const gender = document.getElementById('gender').value;
        const city = document.getElementById('city').value.trim();
        const address = document.getElementById('address').value.trim();
        const username = document.getElementById('username').value.trim();
        const password = document.getElementById('password').value;
        const confirmPassword = document.getElementById('confirmPassword').value;
        const image = await toDataUrl(imgInput.files[0]);

        if (!username || !name || !gender || !city || !address || !password || !confirmPassword) {
            alert('Please fill all fields');
            return;
        }
        if (password !== confirmPassword) {
            alert('Passwords do not match');
            return;
        }
        const newAdmin = {
            id: AdminUtils.generateId('admin'),
            username,
            name,
            gender,
            city,
            address,
            password,
            image: image || null,
            createdAt: Date.now()
        };
        const result = AdminAuth.register(newAdmin);
        if (!result.ok) {
            alert(result.message || 'Registration failed');
            return;
        }
        alert('Admin registered successfully. You can now login.');
        window.location.href = 'login.html';
    });
</script>--%>
        <%--<div class="grid">

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

    <%--<script>
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

