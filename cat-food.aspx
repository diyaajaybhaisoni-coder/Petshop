<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="cat-food.aspx.cs" Inherits="PetShop.cat_food" %>
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
                    <li class="nav-item"><a href="about.aspx" class="nav-link">About Us</a> </li>
                    <li class="nav-item"><a href="contact.aspx" class="nav-link">Contact</a> </li>
                </ul>
                <div class="nav-actions">
                    <a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i><span class="cart-count">0</span> </a><a href="admin/login.aspx" class="admin-btn" style="background: #2c3e50; color: white; padding: 8px 16px; border-radius: 25px; text-decoration: none; font-weight: 500; transition: all 0.3s ease;"><i class="fas fa-shield-alt"></i>Admin </a><a href="login.aspx" class="login-btn">Login</a> <a href="register.aspx" class="register-btn">Register</a>
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
        <!-- Page Header -->
    <section class="page-header">
        <div class="container">
            <h1>Cat Food</h1>
            <p>Premium nutrition for your feline friend</p>
        </div>
    </section>

    <!-- Products Section -->
    <section class="products-section">
        <div class="container">
            <div class="products-grid" id="products-container">
<section class="products-section">
        <div class="container">
            <div class="products-grid" id="products-container">
        <div class="product-card">
            <img src="https://images.unsplash.com/photo-1543852786-1cf6624b9987?ixlib=rb-4.0.3&amp;ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&amp;auto=format&amp;fit=crop&amp;w=500&amp;q=80" alt="Premium Cat Food - Salmon" class="product-image">
            <div class="product-info">
                <h3 class="product-name">Premium Cat Food - Salmon</h3>
                <p class="product-price">$40</p>
                <button class="add-to-cart" onclick="addToCart(13, 'catFood')">
                    Add to Cart
                </button>
            </div>
        </div>
    
        <div class="product-card">
            <img src="https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-4.0.3&amp;ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&amp;auto=format&amp;fit=crop&amp;w=500&amp;q=80" alt="Kitten Formula" class="product-image">
            <div class="product-info">
                <h3 class="product-name">Kitten Formula</h3>
                <p class="product-price">$30</p>
                <button class="add-to-cart" onclick="addToCart(14, 'catFood')">
                    Add to Cart
                </button>
            </div>
        </div>
    
        <div class="product-card">
            <img src="https://images.unsplash.com/photo-1574158622682-e40e69881006?ixlib=rb-4.0.3&amp;ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&amp;auto=format&amp;fit=crop&amp;w=500&amp;q=80" alt="Indoor Cat Formula" class="product-image">
            <div class="product-info">
                <h3 class="product-name">Indoor Cat Formula</h3>
                <p class="product-price">$35</p>
                <button class="add-to-cart" onclick="addToCart(15, 'catFood')">
                    Add to Cart
                </button>
            </div>
        </div>
    
        <div class="product-card">
            <img src="https://images.unsplash.com/photo-1571566882372-1598d88abd90?ixlib=rb-4.0.3&amp;ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&amp;auto=format&amp;fit=crop&amp;w=500&amp;q=80" alt="Grain-Free Cat Food" class="product-image">
            <div class="product-info">
                <h3 class="product-name">Grain-Free Cat Food</h3>
                <p class="product-price">$45</p>
                <button class="add-to-cart" onclick="addToCart(16, 'catFood')">
                    Add to Cart
                </button>
            </div>
        </div>
    </div>
        </div>
    </section>            </div>
        </div>
    </section>
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
    <footer class="footer">
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
                        <li><a href="index.aspx">Home</a></li>
                        <li><a href="about.aspx">About Us</a></li>
                        <li><a href="contact.aspx">Contact</a></li>
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
            </asp:Content>

