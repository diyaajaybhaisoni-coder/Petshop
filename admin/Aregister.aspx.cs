using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace PetShop.admin
{
    public partial class Aregister : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string fnm;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void clear()
        {
            txteml.Text = "";
            txtnm.Text = "";
            txtpw.Text = "";
            txtcpw.Text = "";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Save")
            {
                getcon();
                cmd = new SqlCommand("insert into Aregister(Email,Name,Password) values('" + txteml.Text + "','" + txtnm.Text + "','" + txtpw.Text + "')", con);
                cmd.ExecuteNonQuery();
                clear();
                Response.Redirect("Alogin.aspx");
            }
        }
    }
}