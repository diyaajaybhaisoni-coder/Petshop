using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

namespace PetShop.admin
{
    public partial class Alogin : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string fnm;
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txteml.Text != null && txtpw != null)
            {


                getcon();
                cmd = new SqlCommand("select count(*) from Aregister where Email = '" + txteml.Text + "' and Password='" + txtpw.Text + "'", con);
                i = Convert.ToInt32(cmd.ExecuteScalar());


                if (i > 0)
                {
                    Session["admin"] = txteml.Text;
                    Response.Redirect("Aindex.aspx");
                }
                else
                {
                    Response.Write("<script> alrt('Invalid User')</script>");
                }
            }
        }
    }
}