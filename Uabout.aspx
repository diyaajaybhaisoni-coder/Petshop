<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Uabout.aspx.cs" Inherits="PetShop.Uabout" %>
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
         <h1>About PetShop</h1>
         <p>Your trusted partner in pet care for over 10 years</p>
     </div>
 </section>

 <!-- About Content -->
 <section class="about-content">
     <div class="container">
         <div class="about-grid">
             <div class="about-text">
                 <h2>Our Story</h2>
                 <p>Founded in 2014, PetShop has been dedicated to providing the highest quality pets, food, and supplies for your beloved companions. What started as a small family business has grown into the premier destination for pet lovers everywhere.</p>
                 
                 <p>We believe that every pet deserves the best care, nutrition, and love. That's why we carefully select each product and animal in our store, ensuring they meet our strict standards for quality and health.</p>
                 
                 <h3>Our Mission</h3>
                 <p>To provide exceptional pets and products while promoting responsible pet ownership and animal welfare in our community.</p>
                 
                 <h3>Our Values</h3>
                 <ul>
                     <li><i class="fas fa-heart"></i> Compassion for all animals</li>
                     <li><i class="fas fa-star"></i> Quality in everything we do</li>
                     <li><i class="fas fa-handshake"></i> Trust and transparency</li>
                     <li><i class="fas fa-users"></i> Community involvement</li>
                 </ul>
             </div>
             <div class="about-image">
                 <img src="https://images.unsplash.com/photo-1601758228041-f3b2795255f1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80" alt="Happy pets">
             </div>
         </div>
     </div>
 </section>

 <!-- Team Section -->
 <section class="team-section">
     <div class="container">
         <h2>Meet Our Team</h2>
         <div class="team-grid">
             <div class="team-member">
                 <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80" alt="John Smith">
                 <h3>John Smith</h3>
                 <p>Founder & CEO</p>
                 <p>Veterinarian with 15+ years of experience</p>
             </div>
             <div class="team-member">
                 <img src="https://images.unsplash.com/photo-1494790108755-2616b612b786?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80" alt="Sarah Johnson">
                 <h3>Sarah Johnson</h3>
                 <p>Pet Care Specialist</p>
                 <p>Expert in animal nutrition and behavior</p>
             </div>
             <div class="team-member">
                 <img src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80" alt="Mike Davis">
                 <h3>Mike Davis</h3>
                 <p>Store Manager</p>
                 <p>Ensuring the best shopping experience</p>
             </div>
         </div>
     </div>
 </section>

 <!-- Stats Section -->
 <section class="stats-section">
     <div class="container">
         <div class="stats-grid">
             <div class="stat-item">
                 <h3>10+</h3>
                 <p>Years of Experience</p>
             </div>
             <div class="stat-item">
                 <h3>5000+</h3>
                 <p>Happy Customers</p>
             </div>
             <div class="stat-item">
                 <h3>1000+</h3>
                 <p>Pets Adopted</p>
             </div>
             <div class="stat-item">
                 <h3>50+</h3>
                 <p>Product Categories</p>
             </div>
         </div>
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

