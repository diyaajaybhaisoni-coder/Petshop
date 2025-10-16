// Cart functionality
let cart = JSON.parse(localStorage.getItem('cart')) || [];

// Sample products data
const products = {
    dogs: [
        { id: 1, name: "Golden Retriever Puppy", price: 1200, image: "https://images.unsplash.com/photo-1552053831-71594a27632d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80", category: "dogs" },
        { id: 2, name: "German Shepherd", price: 1000, image: "https://images.unsplash.com/photo-1583337130417-3346a1be7dee?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80", category: "dogs" },
        { id: 3, name: "French Bulldog", price: 1500, image: "https://images.unsplash.com/photo-1601758228041-f3b2795255f1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80", category: "dogs" },
        { id: 4, name: "Labrador Retriever", price: 1100, image: "https://images.unsplash.com/photo-1543466835-00a4907b8201?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80", category: "dogs" }
    ],
    cats: [
        { id: 5, name: "Persian Cat", price: 800, image: "https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80", category: "cats" },
        { id: 6, name: "Maine Coon", price: 900, image: "https://images.unsplash.com/photo-1543852786-1cf6624b9987?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80", category: "cats" },
        { id: 7, name: "British Shorthair", price: 750, image: "https://images.unsplash.com/photo-1574158622682-e40e69881006?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80", category: "cats" },
        { id: 8, name: "Siamese Cat", price: 700, image: "https://images.unsplash.com/photo-1571566882372-1598d88abd90?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80", category: "cats" }
    ],
    dogFood: [
        { id: 9, name: "Premium Dog Food - Chicken", price: 45, image: "https://images.unsplash.com/photo-1583337130417-3346a1be7dee?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80", category: "dogFood" },
        { id: 10, name: "Grain-Free Dog Food", price: 55, image: "https://images.unsplash.com/photo-1601758228041-f3b2795255f1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80", category: "dogFood" },
        { id: 11, name: "Puppy Formula", price: 35, image: "https://images.unsplash.com/photo-1552053831-71594a27632d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80", category: "dogFood" },
        { id: 12, name: "Senior Dog Food", price: 50, image: "https://images.unsplash.com/photo-1543466835-00a4907b8201?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80", category: "dogFood" }
    ],
    catFood: [
        { id: 13, name: "Premium Cat Food - Salmon", price: 40, image: "https://images.unsplash.com/photo-1543852786-1cf6624b9987?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80", category: "catFood" },
        { id: 14, name: "Kitten Formula", price: 30, image: "https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80", category: "catFood" },
        { id: 15, name: "Indoor Cat Formula", price: 35, image: "https://images.unsplash.com/photo-1574158622682-e40e69881006?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80", category: "catFood" },
        { id: 16, name: "Grain-Free Cat Food", price: 45, image: "https://images.unsplash.com/photo-1571566882372-1598d88abd90?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80", category: "catFood" }
    ]
};

// Initialize page
document.addEventListener('DOMContentLoaded', function() {
    updateCartCount();
    loadFeaturedProducts();
    initializeMobileMenu();
    initializeForms();
    updateUserInterface();
    createDemoUser();
});

// Create demo user for testing
function createDemoUser() {
    // Ensure collections
    const ensureArray = (k) => {
        const val = localStorage.getItem(k);
        if (!val) localStorage.setItem(k, JSON.stringify([]));
    };
    ['users','contacts','carts','categories','products'].forEach(ensureArray);

    // Seed demo user
    const users = JSON.parse(localStorage.getItem('users') || '[]');
    const exists = users.some(u => u.email === 'demo@petshop.com');
    if (!exists) {
        users.push({
            id: `user_${Date.now()}`,
            name: "John Doe",
            gender: "male",
            email: "demo@petshop.com",
            password: "123456",
            city: "New York",
            address: "123 Main Street",
            newsletter: true,
            image: null,
            createdAt: Date.now()
        });
        localStorage.setItem('users', JSON.stringify(users));
    }
}

// Update user interface based on login status
function updateUserInterface() {
    const isLoggedIn = localStorage.getItem('isLoggedIn') === 'true';
    const currentUser = JSON.parse(localStorage.getItem('currentUser') || '{}');
    
    // Update navigation bar
    const navActions = document.querySelector('.nav-actions');
    if (navActions) {
        if (isLoggedIn && currentUser.name) {
            // Show user name and logout option
            navActions.innerHTML = `
                <a href="cart.html" class="cart-btn">
                    <i class="fas fa-shopping-cart"></i>
                    <span class="cart-count">0</span>
                </a>
                <div class="user-menu">
                    <span class="welcome-text">Welcome, ${currentUser.name}!</span>
                    <button class="logout-btn" onclick="logout()">Logout</button>
                </div>
            `;
        } else {
            // Show login/register buttons
            navActions.innerHTML = `
                <a href="cart.html" class="cart-btn">
                    <i class="fas fa-shopping-cart"></i>
                    <span class="cart-count">0</span>
                </a>
                <a href="login.html" class="login-btn">Login</a>
                <a href="register.html" class="register-btn">Register</a>
            `;
        }
    }
    
    // Update homepage welcome section
    const userProfileSection = document.getElementById('userProfileSection');
    const welcomeMessage = document.getElementById('welcomeMessage');
    const userLocation = document.getElementById('userLocation');
    
    if (userProfileSection && welcomeMessage && userLocation) {
        if (isLoggedIn && currentUser.name) {
            userProfileSection.style.display = 'block';
            welcomeMessage.textContent = `Welcome back, ${currentUser.name}!`;
            userLocation.textContent = `From ${currentUser.city} - Ready to find something special for your pet?`;
        } else {
            userProfileSection.style.display = 'none';
        }
    }
    
    // Update cart count after navigation update
    updateCartCount();
}

// Logout function
function logout() {
    localStorage.removeItem('isLoggedIn');
    localStorage.removeItem('currentUser');
    alert('You have been logged out successfully!');
    updateUserInterface();
    
    // Redirect to home page if not already there
    if (!window.location.pathname.includes('index.html')) {
        window.location.href = 'index.html';
    }
}

// Mobile menu functionality
function initializeMobileMenu() {
    const hamburger = document.querySelector('.hamburger');
    const navMenu = document.querySelector('.nav-menu');

    if (hamburger && navMenu) {
        hamburger.addEventListener('click', function() {
            hamburger.classList.toggle('active');
            navMenu.classList.toggle('active');
        });

        // Close mobile menu when clicking on a link
        document.querySelectorAll('.nav-link').forEach(link => {
            link.addEventListener('click', () => {
                hamburger.classList.remove('active');
                navMenu.classList.remove('active');
            });
        });
    }
}

// Load featured products on homepage
function loadFeaturedProducts() {
    const container = document.getElementById('featured-products');
    if (!container) return;

    const featuredProducts = [
        ...products.dogs.slice(0, 2),
        ...products.cats.slice(0, 2)
    ];

    container.innerHTML = featuredProducts.map(product => `
        <div class="product-card">
            <img src="${product.image}" alt="${product.name}" class="product-image">
            <div class="product-info">
                <h3 class="product-name">${product.name}</h3>
                <p class="product-price">$${product.price}</p>
                <button class="add-to-cart" onclick="addToCart(${product.id}, '${product.category}')">
                    Add to Cart
                </button>
            </div>
        </div>
    `).join('');
}

// Load products for specific category pages
function loadProducts(category) {
    const container = document.getElementById('products-container');
    if (!container) return;

    const categoryProducts = products[category] || [];
    
    container.innerHTML = categoryProducts.map(product => `
        <div class="product-card">
            <img src="${product.image}" alt="${product.name}" class="product-image">
            <div class="product-info">
                <h3 class="product-name">${product.name}</h3>
                <p class="product-price">$${product.price}</p>
                <button class="add-to-cart" onclick="addToCart(${product.id}, '${product.category}')">
                    Add to Cart
                </button>
            </div>
        </div>
    `).join('');
}

// Add to cart functionality
function addToCart(productId, category) {
    const product = findProductById(productId, category);
    if (!product) return;

    const existingItem = cart.find(item => item.id === productId);
    
    if (existingItem) {
        existingItem.quantity += 1;
    } else {
        cart.push({
            ...product,
            quantity: 1
        });
    }

    localStorage.setItem('cart', JSON.stringify(cart));
    updateCartCount();
    showNotification('Product added to cart!');
}

// Find product by ID and category
function findProductById(id, category) {
    const categoryMap = {
        'dogs': 'dogs',
        'cats': 'cats',
        'dogFood': 'dogFood',
        'catFood': 'catFood'
    };
    
    const productsArray = products[categoryMap[category]];
    return productsArray ? productsArray.find(p => p.id === id) : null;
}

// Update cart count in navigation
function updateCartCount() {
    const cartCount = document.querySelector('.cart-count');
    if (cartCount) {
        const totalItems = cart.reduce((sum, item) => sum + item.quantity, 0);
        cartCount.textContent = totalItems;
    }
}

// Show notification
function showNotification(message) {
    // Create notification element
    const notification = document.createElement('div');
    notification.style.cssText = `
        position: fixed;
        top: 100px;
        right: 20px;
        background: #28a745;
        color: white;
        padding: 15px 20px;
        border-radius: 8px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.2);
        z-index: 10000;
        font-weight: 600;
        transform: translateX(100%);
        transition: transform 0.3s ease;
    `;
    notification.textContent = message;
    
    document.body.appendChild(notification);
    
    // Animate in
    setTimeout(() => {
        notification.style.transform = 'translateX(0)';
    }, 100);
    
    // Remove after 3 seconds
    setTimeout(() => {
        notification.style.transform = 'translateX(100%)';
        setTimeout(() => {
            document.body.removeChild(notification);
        }, 300);
    }, 3000);
}

// Load cart page
function loadCartPage() {
    const container = document.getElementById('cart-container');
    if (!container) return;

    if (cart.length === 0) {
        container.innerHTML = `
            <div style="text-align: center; padding: 50px;">
                <h2>Your cart is empty</h2>
                <p>Add some products to get started!</p>
                <a href="index.html" class="btn btn-primary">Continue Shopping</a>
            </div>
        `;
        return;
    }

    const total = cart.reduce((sum, item) => sum + (item.price * item.quantity), 0);

    container.innerHTML = `
        <h1>Shopping Cart</h1>
        <div class="cart-items">
            ${cart.map(item => `
                <div class="cart-item">
                    <img src="${item.image}" alt="${item.name}" class="cart-item-image">
                    <div class="cart-item-info">
                        <h3 class="cart-item-name">${item.name}</h3>
                        <p class="cart-item-price">$${item.price}</p>
                    </div>
                    <div class="quantity-controls">
                        <button class="quantity-btn" onclick="updateQuantity(${item.id}, -1)">-</button>
                        <span class="quantity">${item.quantity}</span>
                        <button class="quantity-btn" onclick="updateQuantity(${item.id}, 1)">+</button>
                    </div>
                    <button class="remove-item" onclick="removeFromCart(${item.id})">Remove</button>
                </div>
            `).join('')}
        </div>
        <div class="cart-summary">
            <h3 class="cart-total">Total: $${total.toFixed(2)}</h3>
            <button class="checkout-btn" onclick="checkout()">Proceed to Checkout</button>
        </div>
    `;
}

// Update quantity in cart
function updateQuantity(productId, change) {
    const item = cart.find(item => item.id === productId);
    if (!item) return;

    item.quantity += change;
    
    if (item.quantity <= 0) {
        removeFromCart(productId);
        return;
    }

    localStorage.setItem('cart', JSON.stringify(cart));
    updateCartCount();
    loadCartPage();
}

// Remove from cart
function removeFromCart(productId) {
    cart = cart.filter(item => item.id !== productId);
    localStorage.setItem('cart', JSON.stringify(cart));
    updateCartCount();
    loadCartPage();
}

// Checkout function
function checkout() {
    if (cart.length === 0) return;
    
    // Save cart snapshot for admin
    const currentUser = JSON.parse(localStorage.getItem('currentUser') || '{}');
    const carts = JSON.parse(localStorage.getItem('carts') || '[]');
    carts.push({
        id: Date.now(),
        userId: currentUser.id || null,
        userName: currentUser.name || 'Guest',
        items: cart.map(i => ({ productId: i.id, name: i.name, qty: i.quantity, price: i.price })),
        createdAt: Date.now()
    });
    localStorage.setItem('carts', JSON.stringify(carts));
    
    alert('Thank you for your purchase! Your order has been placed successfully.');
    cart = [];
    localStorage.setItem('cart', JSON.stringify(cart));
    updateCartCount();
    loadCartPage();
}

// Form validation and submission
function initializeForms() {
    // Login form
    const loginForm = document.getElementById('loginForm');
    if (loginForm) {
        loginForm.addEventListener('submit', function(e) {
            e.preventDefault();
            const email = document.getElementById('email').value;
            const password = document.getElementById('password').value;
            
            if (email && password) {
                // Check against users list
                const users = JSON.parse(localStorage.getItem('users') || '[]');
                const userData = users.find(u => u.email === email && u.password === password);
                if (userData) {
                    // Store login status and user info
                    localStorage.setItem('isLoggedIn', 'true');
                    localStorage.setItem('currentUser', JSON.stringify({
                        id: userData.id,
                        name: userData.name,
                        email: userData.email,
                        city: userData.city
                    }));
                    
                    alert(`Welcome back, ${userData.name}!`);
                    window.location.href = 'index.html';
                } else {
                    alert('Invalid email or password. Please try again.');
                }
            } else {
                alert('Please fill in all fields');
            }
        });
    }

    // Register form
    const registerForm = document.getElementById('registerForm');
    if (registerForm) {
        registerForm.addEventListener('submit', function(e) {
            e.preventDefault();
            const name = document.getElementById('name').value;
            const gender = document.getElementById('gender').value;
            const email = document.getElementById('regEmail').value;
            const password = document.getElementById('regPassword').value;
            const confirmPassword = document.getElementById('confirmPassword').value;
            const city = document.getElementById('city').value;
            const address = document.getElementById('address').value;
            const profileImage = document.getElementById('profileImage').files[0];
            const terms = document.querySelector('input[name="terms"]').checked;
            const newsletter = document.querySelector('input[name="newsletter"]').checked;
            
            // Validation
            if (!name || !gender || !email || !password || !confirmPassword || !city || !address) {
                alert('Please fill in all required fields');
                return;
            }
            
            if (password !== confirmPassword) {
                alert('Passwords do not match');
                return;
            }
            
            if (password.length < 6) {
                alert('Password must be at least 6 characters long');
                return;
            }
            
            if (!terms) {
                alert('Please agree to the Terms and Conditions');
                return;
            }
            
            const saveUser = (imageDataUrl) => {
                const users = JSON.parse(localStorage.getItem('users') || '[]');
                if (users.some(u => u.email === email)) {
                    alert('Email already registered');
                    return;
                }
                const userData = {
                    id: `user_${Date.now()}`,
                    name,
                    gender,
                    email,
                    password,
                    confirmPassword,
                    city,
                    address,
                    newsletter,
                    image: imageDataUrl || null,
                    createdAt: Date.now()
                };
                users.push(userData);
                localStorage.setItem('users', JSON.stringify(users));
                alert('Registration successful! Welcome to PetShop!');
                window.location.href = 'login.html';
            };

            if (profileImage) {
                const reader = new FileReader();
                reader.onload = function(e2){ saveUser(e2.target.result); };
                reader.readAsDataURL(profileImage);
            } else {
                saveUser(null);
            }
        });
    }

    // Contact form
    const contactForm = document.getElementById('contactForm');
    if (contactForm) {
        contactForm.addEventListener('submit', function(e) {
            e.preventDefault();
            const name = document.getElementById('contactName').value;
            const email = document.getElementById('contactEmail').value;
            const subject = document.getElementById('subject').value;
            const message = document.getElementById('message').value;
            
            if (name && email && subject && message) {
                // Save to contacts collection
                const contactMessage = {
                    id: Date.now(),
                    name,
                    email,
                    subject,
                    message,
                    createdAt: Date.now()
                };
                const contacts = JSON.parse(localStorage.getItem('contacts') || '[]');
                contacts.push(contactMessage);
                localStorage.setItem('contacts', JSON.stringify(contacts));
                
                alert('Message sent successfully! We will get back to you soon.');
                contactForm.reset();
            } else {
                alert('Please fill in all fields');
            }
        });
    }
}

// Fill demo credentials function
function fillDemoCredentials() {
    const emailField = document.getElementById('email');
    const passwordField = document.getElementById('password');
    
    if (emailField && passwordField) {
        emailField.value = 'demo@petshop.com';
        passwordField.value = '123456';
        
        // Add visual feedback
        emailField.style.borderColor = '#28a745';
        passwordField.style.borderColor = '#28a745';
        
        setTimeout(() => {
            emailField.style.borderColor = '#ddd';
            passwordField.style.borderColor = '#ddd';
        }, 2000);
        
        showNotification('Demo credentials filled! You can now click Login.');
    }
}

// Image preview functionality
function previewImage(input) {
    const file = input.files[0];
    const preview = document.getElementById('imagePreview');
    const previewImg = document.getElementById('previewImg');
    const fileDisplay = input.parentElement.querySelector('.file-upload-display');
    
    if (file) {
        const reader = new FileReader();
        reader.onload = function(e) {
            previewImg.src = e.target.result;
            preview.style.display = 'block';
            fileDisplay.style.display = 'none';
        };
        reader.readAsDataURL(file);
    }
}

function removeImage() {
    const input = document.getElementById('profileImage');
    const preview = document.getElementById('imagePreview');
    const fileDisplay = input.parentElement.querySelector('.file-upload-display');
    
    input.value = '';
    preview.style.display = 'none';
    fileDisplay.style.display = 'block';
}

// Page-specific initialization
if (window.location.pathname.includes('cart.html')) {
    document.addEventListener('DOMContentLoaded', loadCartPage);
}

if (window.location.pathname.includes('dog.html')) {
    document.addEventListener('DOMContentLoaded', () => loadProducts('dogs'));
}

if (window.location.pathname.includes('cat.html')) {
    document.addEventListener('DOMContentLoaded', () => loadProducts('cats'));
}

if (window.location.pathname.includes('dog-food.html')) {
    document.addEventListener('DOMContentLoaded', () => loadProducts('dogFood'));
}

if (window.location.pathname.includes('cat-food.html')) {
    document.addEventListener('DOMContentLoaded', () => loadProducts('catFood'));
}
