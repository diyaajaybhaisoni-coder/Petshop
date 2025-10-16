using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace PetShop.admin
{
    public partial class Auser : System.Web.UI.Page
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
            fillgrid();
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter("select * from Uregister", con);
            ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_dlt")
            {
                getcon();
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                cmd = new SqlCommand("delete from Uregister where Id=  '" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
            }
        }

        protected string GetImageUrl(object imagePath)
        {
            if (imagePath == null || string.IsNullOrEmpty(imagePath.ToString().Trim()))
            {
                return "images/download.jpeg";
            }

            string path = imagePath.ToString().Trim();

            // If path doesn't start with 'images/', add it
            if (!path.StartsWith("images/"))
            {
                path = "images/" + path;
            }

            // Check if the file actually exists
            if (!System.IO.File.Exists(Server.MapPath(path)))
            {
                return "images/download.jpeg";
            }

            return path;
        }
    }
}