using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetShop
{
    public partial class Checkout : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string fnm;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["admin"] == null)
            {
                Response.Redirect("Ulogin.aspx");
            } 
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {
            getcon();

            // 1. Get user ID from std_table
            da = new SqlDataAdapter("select * from Uregister where Email='" + txtEmail.Text + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count == 0)
            {
                lblAmount.Text = "";
                lblMessage.Text = "User not found.";
                return;
            }

            int uid = Convert.ToInt32(ds.Tables[0].Rows[0][0]);

            // 2. Get cart items for user
            da = new SqlDataAdapter("select *, (Price * Quantity) as Total from Cartt where User_Cart_Id='" + uid + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            DataTable cartItems = ds.Tables[0];

            if (cartItems.Rows.Count == 0)
            {
                lblAmount.Text = "";
                lblMessage.Text = "Your cart is empty.";
                con.Close();
                return;
            }

            // 3. Calculate total amount
            decimal totalAmount = 0;
            foreach (DataRow dr in cartItems.Rows)
            {
                if (dr["Total"] != DBNull.Value)
                    totalAmount += Convert.ToDecimal(dr["Total"]);
            }

            // ✅ Show total amount
            lblAmount.Text = "Your Total Amount: ₹" + totalAmount.ToString("0.00");

            // 4. Insert into order_tbl
            string shippingAddress = txtShippingAddress.Text.Trim();
            string paymentMethod = rblPaymentMethod.SelectedValue;

            if (string.IsNullOrEmpty(shippingAddress))
            {
                lblMessage.Text = "Please enter a shipping address.";
                con.Close();
                return;
            }

            cmd = new SqlCommand("INSERT INTO order_tbl (User_Id, Order_Date, Total_Amount, Order_Status, Shipping_Address, Payment_Method) " + "VALUES (" + uid + ", '" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "', " + totalAmount + ", 'Pending', '" + shippingAddress + "', '" + paymentMethod + "'); " + "SELECT SCOPE_IDENTITY();", con);

            int orderId = Convert.ToInt32(cmd.ExecuteScalar());

            // 5. Insert order_items_tbl for each cart item
            foreach (DataRow dr in cartItems.Rows)
            {
                cmd = new SqlCommand("INSERT INTO order_items_tbl (Order_Id, Prod_Id, Prod_Name, Prod_Price, Prod_Quantity, Prod_Image) VALUES (" + orderId + ", '" + dr["Prod_cart_Id"] + "', '" + dr["Name"] + "', " + dr["Price"] + ", " + dr["Quantity"] + ", '" + dr["Image"] + "')", con);
                //cmd = new SqlCommand("INSERT INTO order_items_tbl (Order_Id, Prod_Id, Prod_Name, Prod_Price, Prod_Quantity, Prod_Image) VALUES (" + orderId + ", '" + dr["Prod_cart_Id"] + "', '" + dr["Prod_Name"] + "', " + dr["Prod_Price"] + ", " + dr["Prod_Quantity"] + ", '" + dr["Prod_Image"] + "')", con);
                cmd.ExecuteNonQuery();
            }

            // 6. Clear cart
            cmd = new SqlCommand("DELETE FROM Cartt WHERE User_Cart_Id='" + uid + "'", con);
            cmd.ExecuteNonQuery();

            // ✅ Success message
            lblMessage.Text = "Order placed successfully!";
        }
    }
}