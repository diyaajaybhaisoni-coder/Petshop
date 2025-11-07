<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="PetShop.Cart" %>
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
        body {
            font-family: "Poppins", sans-serif;
            background-color: #f9f9fb;
            color: #333;
        }

        h1 {
            color: #ff6b6b;
            font-weight: 700;
            margin-bottom: 30px;
        }

        .cart-container {
            width: 90%;
            max-width: 1200px;
            margin: 50px auto;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            padding: 30px;
        }

        .cart-container h1 {
            text-align: center;
            color: #ff6b6b;
            font-size: 28px;
        }

        /* GridView styling */
        .cart-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .cart-table th {
            background-color: #ff6b6b;
            color: white;
            padding: 12px;
            text-align: center;
            font-size: 16px;
        }

        .cart-table td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
            text-align: center;
            vertical-align: middle;
        }

        .cart-table tr:hover {
            background-color: #fff6f6;
        }

        .cart-table img {
            width: 90px;
            height: 90px;
            object-fit: cover;
            border-radius: 8px;
        }

        input[type="text"] {
            width: 50px;
            padding: 5px;
            text-align: center;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn-update {
            background-color: #ff6b6b;
            color: #fff;
            border: none;
            border-radius: 6px;
            padding: 10px 20px;
            margin-top: 15px;
            cursor: pointer;
            font-weight: 500;
            transition: 0.3s;
        }

        .btn-update:hover {
            background-color: #e55c5c;
        }

        .remove-link {
            color: #ff6b6b;
            font-weight: 600;
            text-decoration: none;
        }

        .remove-link:hover {
            text-decoration: underline;
        }

        #lblFinalTotal {
            display: block;
            margin-top: 20px;
            font-size: 18px;
            font-weight: 600;
            color: #333;
        }

        #lblFinalTotal span {
            color: #ff6b6b;
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
                <%--<li class="nav-item dropdown"><a href="#" class="nav-link">Products <i class="fas fa-chevron-down"></i></a>
                    <div class="dropdown-content">
                        <a href="dog.aspx">Dogs</a> <a href="cat.aspx">Cats</a> <a href="dog-food.aspx">Dog Food</a> <a href="cat-food.aspx">Cat Food</a>
                    </div>
                </li>--%>
                 <li class="nav-item"><a href="Product.aspx" class="nav-link">Product</a> </li>
                <li class="nav-item"><a href="Uabout.aspx" class="nav-link">About Us</a> </li>
                <li class="nav-item"><a href="Ucontact.aspx" class="nav-link">Contact</a> </li>
                <li class="nav-item"><a href="Cart.aspx" class="nav-link">Cart</a> </li>
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
    <br />
    <br />
    <br />
    <br />
                          <center>
               <h1>Product Added to cart</h1>
               <asp:GridView ID="gvCart" runat="server" CssClass="cart-table" AutoGenerateColumns="False" DataKeyNames="Prod_cart_Id" OnRowCommand="gvCart_RowCommand">
                   <Columns>
                       <asp:TemplateField HeaderText="Product Image">
                           <ItemTemplate>
                               <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' />
                           </ItemTemplate>
                       </asp:TemplateField>
                      <asp:TemplateField HeaderText="Product Name">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                        </ItemTemplate>
                       </asp:TemplateField>
<%--                       <asp:TemplateField HeaderText="Product Name">
                           <ItemTemplate>
                               <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>--%>
                      <asp:TemplateField HeaderText="Product Category">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                        </ItemTemplate>
                      </asp:TemplateField>
                      <asp:TemplateField HeaderText="Product Price">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </ItemTemplate>
                      </asp:TemplateField>
<%--                       <asp:TemplateField HeaderText="Product Price">
                           <ItemTemplate>
                               <asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>--%>
                       <asp:TemplateField HeaderText="Product Quantity">
                           <ItemTemplate>
                               <asp:Label ID="Label4" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Quantity">
                           <ItemTemplate>
                               <asp:TextBox ID="txtQuantity" runat="server" Text='<%# Eval("Quantity") %>'></asp:TextBox>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Action">
                           <ItemTemplate>
                              <asp:LinkButton ID="btnRemove" runat="server" CssClass="remove-link" CommandName="Remove" CommandArgument='<%# Eval("Prod_cart_Id") %>'>Remove</asp:LinkButton>
                           </ItemTemplate>
                       </asp:TemplateField>
                   </Columns>
               </asp:GridView>
               <asp:Button ID="txtUpdateCart" runat="server" Text="update cart" CssClass="btn-update" OnClick="txtUpdateCart_Click" />
                <br />
<asp:Label ID="lblFinalTotal" runat="server" Text="lblFinalTotal"></asp:Label>
               </center>
                    <%--<!-- Hero Section -->
    <section class="hero">
        <div class="hero-content">
            <h1>Welcome to PetShop</h1>
            <p>
                Everything your furry friends need, all in one place</p>
            <div class="hero-buttons">
                <a href="dog.aspx" class="btn btn-primary">Shop Dogs</a> <a href="cat.aspx" class="btn btn-secondary">Shop Cats</a>
            </div>
        </div>
        <div class="hero-image">
            <img src="https://images.unsplash.com/photo-1601758228041-f3b2795255f1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80" alt="Happy pets">
        </div>
    </section>

    <!-- Featured Categories -->
    <section class="categories">
        <div class="container">
            <h2>Shop by Category</h2>
            <div class="category-grid">
                <div class="category-card">
                    <img src="https://images.unsplash.com/photo-1552053831-71594a27632d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80" alt="Dogs">
                    <h3>Dogs</h3>
                    <p>
                        Find the perfect companion</p>
                    <a href="dog.aspx" class="btn btn-outline">Shop Now</a>
                </div>
                <div class="category-card">
                    <img src="https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80" alt="Cats">
                    <h3>Cats</h3>
                    <p>
                        Adorable feline friends</p>
                    <a href="cat.aspx" class="btn btn-outline">Shop Now</a>
                </div>
                <div class="category-card">
                    <img src="https://images.unsplash.com/photo-1583337130417-3346a1be7dee?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80" alt="Dog Food">
                    <h3>Dog Food</h3>
                    <p>
                        Nutritious meals for dogs</p>
                    <a href="dog-food.aspx" class="btn btn-outline">Shop Now</a>
                </div>
                <div class="category-card">
                    <img src="https://images.unsplash.com/photo-1543852786-1cf6624b9987?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80" alt="Cat Food">
                    <h3>Cat Food</h3>
                    <p>
                        Premium cat nutrition</p>
                    <a href="cat-food.aspx" class="btn btn-outline">Shop Now</a>
                </div>
            </div>
        </div>
    </section>

    <!-- Featured Products -->
    <section class="featured-products">
        <div class="container">
            <h2>Featured Products</h2>
            <div class="products-grid" id="featured-products">
                <div class="product-card">
                    <img src="https://images.unsplash.com/photo-1552053831-71594a27632d?ixlib=rb-4.0.3&amp;ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&amp;auto=format&amp;fit=crop&amp;w=500&amp;q=80" alt="Golden Retriever Puppy" class="product-image">
                    <div class="product-info">
                        <h3 class="product-name">Golden Retriever Puppy</h3>
                        <p class="product-price">
                            $1200</p>
                        <button class="add-to-cart" onclick="addToCart(1, 'dogs')">
                            Add to Cart
                        </button>
                    </div>
                </div>
                <div class="product-card">
                    <img src="https://images.unsplash.com/photo-1583337130417-3346a1be7dee?ixlib=rb-4.0.3&amp;ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&amp;auto=format&amp;fit=crop&amp;w=500&amp;q=80" alt="German Shepherd" class="product-image">
                    <div class="product-info">
                        <h3 class="product-name">German Shepherd</h3>
                        <p class="product-price">
                            $1000</p>
                        <button class="add-to-cart" onclick="addToCart(2, 'dogs')">
                            Add to Cart
                        </button>
                    </div>
                </div>
                <div class="product-card">
                    <img src="https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-4.0.3&amp;ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&amp;auto=format&amp;fit=crop&amp;w=500&amp;q=80" alt="Persian Cat" class="product-image">
                    <div class="product-info">
                        <h3 class="product-name">Persian Cat</h3>
                        <p class="product-price">
                            $800</p>
                        <button class="add-to-cart" onclick="addToCart(5, 'cats')">
                            Add to Cart
                        </button>
                    </div>
                </div>
                <div class="product-card">
                    <img src="https://images.unsplash.com/photo-1543852786-1cf6624b9987?ixlib=rb-4.0.3&amp;ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&amp;auto=format&amp;fit=crop&amp;w=500&amp;q=80" alt="Maine Coon" class="product-image">
                    <div class="product-info">
                        <h3 class="product-name">Maine Coon</h3>
                        <p class="product-price">
                            $900</p>
                        <button class="add-to-cart" onclick="addToCart(6, 'cats')">
                            Add to Cart
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </section>--%>
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
                
    <!-- Footer -->
  <%--  <footer class="footer">
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
                        <li><a href="Uindex.aspx">Home</a></li>
                        <li><a href="Uabout.aspx">About Us</a></li>
                        <li><a href="Ucontact.aspx">Contact</a></li>
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
 --%>           </asp:Content>

