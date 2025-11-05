<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Ucontact.aspx.cs" Inherits="PetShop.Ucontact" %>
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
         <h1>Contact Us</h1>
         <p>We'd love to hear from you</p>
     </div>
 </section>

 <!-- Contact Content -->
 <section class="contact-content">
     <div class="container">
         <div class="contact-grid">
             <div class="contact-info">
                 <h2>Get in Touch</h2>
                 <p>Have questions about our pets or products? Need advice on pet care? We're here to help!</p>
                 
                 <div class="contact-item">
                     <i class="fas fa-map-marker-alt"></i>
                     <div>
                         <h3>Visit Our Store</h3>
                         <p>123 Pet Street<br>Pet City, PC 12345</p>
                     </div>
                 </div>
                 
                 <div class="contact-item">
                     <i class="fas fa-phone"></i>
                     <div>
                         <h3>Call Us</h3>
                         <p>+1 (555) 123-4567<br>Mon-Fri: 9AM-7PM, Sat-Sun: 10AM-6PM</p>
                     </div>
                 </div>
                 
                 <div class="contact-item">
                     <i class="fas fa-envelope"></i>
                     <div>
                         <h3>Email Us</h3>
                         <p>info@petshop.com<br>support@petshop.com</p>
                     </div>
                 </div>
                 
                 <div class="social-links">
                     <h3>Follow Us</h3>
                     <div class="social-icons">
                         <a href="#"><i class="fab fa-facebook"></i></a>
                         <a href="#"><i class="fab fa-twitter"></i></a>
                         <a href="#"><i class="fab fa-instagram"></i></a>
                         <a href="#"><i class="fab fa-youtube"></i></a>
                     </div>
                 </div>
             </div>
             
             <div class="contact-form-container">
                 <h2>Send us a Message</h2>
                 <form id="contactForm" class="contact-form">
                     <div class="form-group">
                           <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                           <asp:TextBox ID="txtnm" runat="server" ></asp:TextBox>
                         <%--<label for="contactName">Full Name</label>
                         <input type="text" id="contactName" name="name" required>--%>
                     </div>
                     <div class="form-group">
                         <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
                         <asp:TextBox ID="txteml" runat="server" ></asp:TextBox>
                        <%-- <label for="contactEmail">Email Address</label>
                         <input type="email" id="contactEmail" name="email" required>--%>
                     </div>
                     <div class="form-group">
                         <asp:Label ID="Label3" runat="server" Text="Message:"></asp:Label>
                         <asp:TextBox ID="txtmsg" runat="server"></asp:TextBox>
<%--                         <label for="subject">Subject</label>
                         <input type="text" id="subject" name="subject" required>--%>
                     </div>
                     <div class="form-group">
 <%--                        <label for="message">Message</label>
                         <textarea id="message" name="message" rows="5" required></textarea>--%>
                     </div>
                           <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary" style="width: 100%;" OnClick="Button1_Click"  />

<%--                     <button type="submit" class="btn btn-primary" style="width: 100%;">Send Message</button>--%>
                 </form>
             </div>
         </div>
     </div>
 </section>

 <!-- Map Section -->
 <section class="map-section">
     <div class="container">
         <h2>Find Us</h2>
         <div class="map-placeholder">
             <i class="fas fa-map-marked-alt"></i>
             <p>Interactive Map Coming Soon</p>
             <p>123 Pet Street, Pet City, PC 12345</p>
         </div>
     </div>
 </section>

 <!-- FAQ Section -->
 <section class="faq-section">
     <div class="container">
         <h2>Frequently Asked Questions</h2>
         <div class="faq-grid">
             <div class="faq-item">
                 <h3>What are your store hours?</h3>
                 <p>We're open Monday-Friday 9AM-7PM and Saturday-Sunday 10AM-6PM. We're closed on major holidays.</p>
             </div>
             <div class="faq-item">
                 <h3>Do you offer pet adoption services?</h3>
                 <p>Yes! We work with local shelters and rescue organizations to help find loving homes for pets in need.</p>
             </div>
             <div class="faq-item">
                 <h3>Can I return a pet if it doesn't work out?</h3>
                 <p>We have a 30-day return policy for pets, but we encourage you to consider this decision carefully as pets are family members.</p>
             </div>
             <div class="faq-item">
                 <h3>Do you offer pet grooming services?</h3>
                 <p>Yes, we have professional groomers on staff. Please call ahead to schedule an appointment.</p>
             </div>
         </div>
     </div>
 </section>
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

