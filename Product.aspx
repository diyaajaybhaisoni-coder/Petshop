<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="PetShop.Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>PetShop - Your Pet's Best Friend</title>
        <link rel="stylesheet" href="styles.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
       <style>
           body {
    background-color: #f8f9fb;
    font-family: 'Poppins', sans-serif;
    margin: 0;
    padding: 0;
}

/* Product Grid Layout */
#DataList1 {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 40px;
    padding: 20px;
}

/* Product Card */
.product-card {
    background: #fff;
    border-radius: 20px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
    width: 260px;
    padding: 20px;
    text-align: center;
    transition: all 0.3s ease-in-out;
}

.product-card:hover {
    transform: translateY(-8px);
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
}

.product-card img {
    width: 100%;
    height: 180px;
    object-fit: cover;
    border-radius: 15px;
    margin-bottom: 15px;
}

.product-name {
    font-size: 18px;
    font-weight: 600;
    color: #333;
    margin-bottom: 5px;
}

.product-category {
    color: #777;
    font-size: 14px;
    margin-bottom: 5px;
}

.product-price {
    color: #ff6b6b;
    font-weight: bold;
    font-size: 16px;
    margin-bottom: 10px;
}

.product-description {
    font-size: 13px;
    color: #666;
    margin-bottom: 15px;
    min-height: 40px;
}

/* Buttons */
.btn-add-cart, .btn-view-details {
    display: inline-block;
    padding: 8px 16px;
    border-radius: 8px;
    font-weight: 600;
    cursor: pointer;
    text-decoration: none;
    margin: 5px;
    transition: background-color 0.3s ease;
}

.btn-add-cart {
    background-color: #007bff;
    color: white !important;
}

.btn-add-cart:hover {
    background-color: #0056b3;
}

.btn-view-details {
    background-color: #ff6b6b;
    color: white !important;
}

.btn-view-details:hover {
    background-color: #ff4b4b;
}

/* Pagination */
.pagination-container {
    text-align: center;
    margin: 40px 0;
}

.pagination-btn {
    background-color: #ff6b6b;
    color: #fff !important;
    padding: 10px 18px;
    border-radius: 8px;
    text-decoration: none;
    margin: 0 5px;
    font-weight: 600;
    border: none;
    cursor: pointer;
}

.pagination-btn:hover {
    background-color: #ff4b4b;
}

       </style>
        <%--<style>
        body {
            background-color: #f8f9fb;
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
        }

        /* Product List Layout */
        .product-card {
            background: #fff;
            border-radius: 20px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
            width: 260px;
            padding: 20px;
            text-align: center;
            transition: all 0.3s ease-in-out;
        }

        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.12);
        }

        .product-card img {
            width: 100%;
            height: 180px;
            object-fit: cover;
            border-radius: 15px;
            margin-bottom: 15px;
        }

        .product-name {
            font-size: 18px;
            font-weight: 600;
            color: #333;
            margin-bottom: 5px;
        }

        .product-category {
            color: #777;
            font-size: 14px;
            margin-bottom: 5px;
        }

        .product-card div:nth-child(4) {
            color: #ff6b6b;
            font-weight: bold;
            font-size: 16px;
            margin-bottom: 10px;
        }

        /* Add to Cart Button */
        .btn-view-details {
            display: inline-block;
            background-color: #ff6b6b;
            color: white !important;
            border: none;
            padding: 10px 20px;
            border-radius: 10px;
            text-decoration: none;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-view-details:hover {
            background-color: #ff4b4b;
        }

        /* View Details Button */
        .btn-add-cart {
            display: inline-block;
            background-color: transparent;
            color: #007bff !important;
            border: none;
            padding: 8px 15px;
            text-decoration: none;
            font-weight: 500;
            cursor: pointer;
            transition: color 0.3s ease;
        }

        .btn-add-cart:hover {
            text-decoration: underline;
            color: #0056b3 !important;
        }

        /* Pagination */
        .pagination-container {
            text-align: center;
            margin: 40px 0;
        }

        .pagination-btn {
            background-color: #ff6b6b;
            color: #fff !important;
            padding: 10px 18px;
            border-radius: 8px;
            text-decoration: none;
            margin: 0 5px;
            font-weight: 600;
            border: none;
            cursor: pointer;
        }

        .pagination-btn:hover {
            background-color: #ff4b4b;
        }

        /* DataList container alignment */
        #DataList1 {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 40px;
            padding: 20px;
        }--%></style>
    </head>

    <body>
        <!-- Navigation -->
        <nav class="navbar">
            <div class="nav-container">
                <div class="nav-logo">
                    <i class="fas fa-paw"></i><span>PetShop</span>
                </div>
                <ul class="nav-menu">
                    <li class="nav-item"><a href="index.aspx" class="nav-link active">Home</a> </li>
                    <li class="nav-item dropdown"><a href="#" class="nav-link">Products <i class="fas fa-chevron-down"></i></a>
                        <div class="dropdown-content">
                            <a href="dog.aspx">Dogs</a> <a href="cat.aspx">Cats</a> <a href="dog-food.aspx">Dog Food</a> <a href="cat-food.aspx">Cat Food</a>
                        </div>
                    </li>
                    <li class="nav-item"><a href="Uabout.aspx" class="nav-link">About Us</a> </li>
                    <li class="nav-item"><a href="Ucontact.aspx" class="nav-link">Contact</a> </li>
                </ul>
                <div class="nav-actions">
                    <a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i><span class="cart-count">0</span> </a><%--<a href="admin/login.aspx" class="admin-btn" style="background: #2c3e50; color: white; padding: 8px 16px; border-radius: 25px; text-decoration: none; font-weight: 500; transition: all 0.3s ease;"><i class="fas fa-shield-alt"></i>Admin </a>--%><a href="login.aspx" class="login-btn">Login</a> <a href="register.aspx" class="register-btn">Register</a>
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
                            Ready to find something special for your pet?
                        </p>
                    </div>
                    <div class="user-actions">
                        <a href="cart.aspx" class="btn">View Cart</a> <a href="dog.aspx" class="btn">Shop Dogs</a> <a href="cat.aspx" class="btn">Shop Cats</a>
                    </div>
                </div>
            </div>
        </section>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <br />
    <br />
    <br />
    <asp:DataList ID="DataList1" runat="server" CellPadding="10" RepeatDirection="Horizontal" CellSpacing="50" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <div class="product-card">
<%--                <asp:Image ID="Image1" Height="180px" Width="180px" runat="server" ImageUrl='<%# ResolveUrl("~/admin/" + Eval("Image")) %>' />--%>
                <asp:Image ID="Image2" Height="180px" Width="180px" runat="server" ImageUrl='<%#  ResolveUrl("~/admin/" + Eval("Image")) %>' />

                <div class="product-name">
                    <asp:Label ID="Label1" runat="server" Text='<%#  Eval("Name") %>'></asp:Label>
                </div>

                <div class="product-category">
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                </div>

                <div>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                </div>
                
                <div>
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                </div>
                <%-- <asp:LinkButton ID="btnViewDetails" runat="server" Text="View Details" 
                CssClass="btn-view-details" 
                CommandName="ViewDetails" 
                CommandArgument='<%# Eval("Id") %>' 
                OnClick="btnViewDetails_Click" />--%>

                <asp:LinkButton ID="cmd_atc" runat="server" CssClass="btn-view-details" CommandArgument='<%# Eval("Id") %>'>Add to Cart</asp:LinkButton>
                <br />

                <asp:LinkButton ID="cmd_vd" runat="server" CommandName="cmd_vd" CommandArgument='<%# Eval("Id") %>' OnClick="cmd_vd_Click">View Details</asp:LinkButton>

                <br>

                    <br>
                <br>
                <br></br>
                <%-- <asp:LinkButton ID="cmd_vd" runat="server" CommandArgument='<%# Eval("Id") %>' CssClass="btn-add-cart">View Details</asp:LinkButton>--%>
                <br>
                <br></br>
                <br></br>
                <br></br>
                </br>
                </br>

                </br>

                </br>
            </div>
        </ItemTemplate>
    </asp:DataList>
    <div class="pagination-container">
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="pagination-btn">Previous</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" CssClass="pagination-btn">Next</asp:LinkButton>
    </div>
    <%--      <!-- Hero Section -->
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
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-section">
                    <h3>PetShop</h3>
                    <p>
                        Your trusted partner in pet care for over 10 years.
                    </p>
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
                        <i class="fas fa-phone"></i>+1 (555) 123-4567
                    </p>
                    <p>
                        <i class="fas fa-envelope"></i>info@petshop.com
                    </p>
                    <p>
                        <i class="fas fa-map-marker-alt"></i>123 Pet Street, City
                    </p>
                </div>
            </div>
            <div class="footer-bottom">
                <p>
                    &copy; 2024 PetShop. All rights reserved.
                </p>
            </div>
        </div>
    </footer>

    <script src="script.js"></script>
    </body>
</html>
</asp:Content>

