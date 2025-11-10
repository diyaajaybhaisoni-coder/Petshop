using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetShop.admin
{
    public partial class Aindex : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();

            int Product = GetTotalProducts();
            totalProduct.Text = Product.ToString();

            int User = GetTotalUser();
            totalUser.Text = User.ToString();

            int contact = GetTotalContact();
            totalContact.Text = contact.ToString();

            int category = GetTotalCategory();
            totalCategory.Text = category.ToString();
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        int GetTotalProducts()
        {
            int count = 0;

          
            using (SqlConnection con = new SqlConnection(s))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM add_prod", con))
                {
                    con.Open();
                    count = (int)cmd.ExecuteScalar();
                }
            }

            return count;
        }
        int GetTotalUser()
        {
            int count = 0;


            using (SqlConnection con = new SqlConnection(s))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Uregister", con))
                {
                    con.Open();
                    count = (int)cmd.ExecuteScalar();
                }
            }

            return count;
        }
        int GetTotalContact()
        {
            int count = 0;


            using (SqlConnection con = new SqlConnection(s))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM contact", con))
                {
                    con.Open();
                    count = (int)cmd.ExecuteScalar();
                }
            }

            return count;
        }
        int GetTotalCategory()
        {
            int count = 0;


            using (SqlConnection con = new SqlConnection(s))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM add_cate", con))
                {
                    con.Open();
                    count = (int)cmd.ExecuteScalar();
                }
            }

            return count;
        }
    }
}