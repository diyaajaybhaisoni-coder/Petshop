<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="PetShop.Cart" %>

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
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
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
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#  ResolveUrl("~/admin/" + Eval("Image")) %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product Name">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product Category">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product Price">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
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
        <asp:Button ID="Button1" runat="server" Text="Checkout" CssClass="btn-update" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="lblFinalTotal" runat="server" Text="lblFinalTotal"></asp:Label>
    </center>
</asp:Content>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
</asp:Content>

