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
                    <li class="nav-item"><a href="Uindex.aspx" class="nav-link active">Home</a> </li>
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
</asp:Content>


<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
</asp:Content>



