using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace PetShop
{
    public partial class Uregister : System.Web.UI.Page
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
        void imgupload()
        {
            if (fldimg.HasFile)
            {
                fnm = "images/" + fldimg.FileName;
                fldimg.SaveAs(Server.MapPath(fnm));
            }
        }
        void clear()
        {
            txteml.Text = "";
            txtnm.Text = "";
            txtadd.Text = "";
            txtpw.Text = "";
            txtcpw.Text = "";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Save")
            {
                getcon();
                imgupload();
                cmd = new SqlCommand("insert into Uregister(Name,Gender,Email,Password,City,Address,Image) values('" + txtnm.Text + "' , '" + rdbgen.Text + "' ,  '" + txteml.Text + "' ,'" + txtpw.Text + "', '" + drpct.Text + "','"+ txtadd.Text +"', '" + fnm + "')", con);
                cmd.ExecuteNonQuery();
                clear();
                Response.Redirect("Ulogin.aspx");
            }
        }
    }
}