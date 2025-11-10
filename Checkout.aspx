<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="PetShop.Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <center>
        <div class="container">
            <h2>Checkout</h2>

            <label for="txtEmail">Email</label>
            <asp:TextBox ID="txtEmail" runat="server" Placeholder="Enter your email" CssClass="form-control" />
            <br />


            <label for="txtShippingAddress">Shipping Address</label>
            <asp:TextBox ID="txtShippingAddress" runat="server" TextMode="MultiLine" Rows="3" Placeholder="Enter your shipping address" />
            <br />
            <label>Payment Method</label>
            <asp:RadioButtonList ID="rblPaymentMethod" runat="server" RepeatDirection="Horizontal" CssClass="payment-options">
                <asp:ListItem Text="Cash on Delivery" Value="COD" Selected="True"></asp:ListItem>
                <asp:ListItem Text="Credit/Debit Card" Value="Card"></asp:ListItem>
                <asp:ListItem Text="UPI" Value="UPI"></asp:ListItem>
            </asp:RadioButtonList>
            <br />

            <asp:Button ID="btnPlaceOrder" runat="server" Text="Place Order" CssClass="btn" OnClick="btnPlaceOrder_Click" />
            <asp:Label ID="lblAmount" runat="server" CssClass="message" />
            <br />
            <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>

        </div>
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

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
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
                font-family: "Segoe UI", sans-serif;
                background-color: #f4f4f9;
                margin: 0;
                padding: 0;
            }

            .container {
                width: 500px;
                margin: 60px auto;
                background: white;
                padding: 30px 40px;
                border-radius: 12px;
                box-shadow: 0 0 12px rgba(0, 0, 0, 0.1);
            }

            h2 {
                text-align: center;
                color: #333;
                margin-bottom: 25px;
            }

            label {
                font-weight: bold;
                display: block;
                margin-top: 15px;
                color: #555;
            }

            input[type=text],
            textarea {
                width: 100%;
                padding: 10px;
                margin-top: 5px;
                border: 1px solid #ccc;
                border-radius: 6px;
                box-sizing: border-box;
            }

            textarea {
                resize: vertical;
            }

            .payment-options {
                margin-top: 10px;
            }

                .payment-options label {
                    font-weight: normal;
                    margin-right: 15px;
                }

            .btn {
                display: block;
                width: 100%;
                background-color: #0078d7;
                color: white;
                padding: 12px;
                font-size: 16px;
                border: none;
                border-radius: 6px;
                cursor: pointer;
                margin-top: 25px;
            }

                .btn:hover {
                    background-color: #005fa3;
                }

            .message {
                margin-top: 20px;
                text-align: center;
                font-weight: bold;
                color: green;
            }

            .error {
                color: red;
            }


            @media (max-width: 600px) {
                .checkout-box {
                    width: 90%;
                }

                input[type="text"],
                input[type="email"],
                textarea,
                .btn,
                .payment-options {
                    width: 100%;
                }
            }

            .container {
                width: 450px;
                margin: 50px auto;
                background-color: #ffffff;
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0px 4px 10px rgba(0,0,0,0.15);
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
                    <li class="nav-item"><a href="index.aspx" class="nav-link active">Home</a> </li>
                    <li class="nav-item"><a href="Product.aspx" class="nav-link">Product</a> </li>
                    <li class="nav-item"><a href="about.aspx" class="nav-link">About Us</a> </li>
                    <li class="nav-item"><a href="contact.aspx" class="nav-link">Contact</a> </li>
                </ul>
                <div>
                    <a href="Ulogin.aspx" class="login-btn">Login</a> <a href="Uregister.aspx" class="register-btn">Register</a>
                </div>
                <div class="hamburger">
                    <span class="bar"></span><span class="bar"></span><span class="bar"></span>
                </div>
            </div>
        </nav>
</asp:Content>


<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">

    <%--<!-- Footer -->
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
</html>--%>
</asp:Content>



