using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace PetShop
{
    public partial class Product : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        String fnm;
        PagedDataSource pg;
        int row = 3, p;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("Ulogin.aspx");
            }
            getcon();
            filllist();
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton2.Enabled = true;

            p += Convert.ToInt32(ViewState["pid"]) - 1;

            ViewState["pid"] = Convert.ToInt32(p);

            int temp = row / pg.PageSize;
            if (p == temp)
            {
                LinkButton1.Enabled = false;
            }
            filllist();
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            LinkButton1.Enabled = true;
            p += Convert.ToInt32(ViewState["pid"]) + 1;

            ViewState["pid"] = Convert.ToInt32(p);

            int temp = row / pg.PageSize;
            if (p == temp)
            {
                LinkButton2.Enabled = false;
            }
            filllist();
        }

        protected void cmd_vd_Click(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "cmd_vd")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("ViewDetails.aspx?id=" + id);
            }
            else if (e.CommandName == "cmd_add")
            {
                getcon();
                da = new SqlDataAdapter("Select * from Uregister where email ='" + Session["admin"] + "'", con);
                ds = new DataSet();
                da.Fill(ds);

                int userid = Convert.ToInt16(ds.Tables[0].Rows[0][0]);
                int prodid = Convert.ToInt32(e.CommandArgument);

                da = new SqlDataAdapter("Select * from add_prod where Id = '" + prodid + "'", con);
                ds = new DataSet();
                da.Fill(ds);


                string name = ds.Tables[0].Rows[0]["Name"].ToString();
                string price = ds.Tables[0].Rows[0]["Price"].ToString();
                string img = ds.Tables[0].Rows[0]["Image"].ToString();
                string Category = ds.Tables[0].Rows[0]["Category"].ToString();

                int Quantity = 1;

                cmd = new SqlCommand("INSERT INTO Cartt(User_Cart_Id, Prod_cart_Id, Image, Name, Category, Price, Quantity) VALUES ('" + userid + "','" + prodid + "','" + img + "','" + name + "','" + Category + "','" + price + "','" + Quantity + "')", con);

                if (cmd.ExecuteNonQuery() > 0)
                { 
                    Response.Redirect("Cart.aspx");
                }

            }
        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            ViewState["pid"] = 0; 
            filllist();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("SELECT * FROM add_prod", con);
            ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("SELECT * FROM add_prod WHERE Category = 'Dog'", con);
            ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("SELECT * FROM add_prod WHERE Category = 'Cat'", con);
            ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("SELECT * FROM add_prod WHERE Category = 'Dog-Food'", con);
            ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("SELECT * FROM add_prod WHERE Category = 'Cat-Food'", con);
            ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        void filllist()
        {
            getcon();
            da = new SqlDataAdapter("select * from add_prod", con);
            ds = new DataSet();
            da.Fill(ds);

            row = ds.Tables[0].Rows.Count;
            pg = new PagedDataSource();

            pg.AllowPaging = true;
            pg.PageSize = 4;
            pg.CurrentPageIndex = Convert.ToInt32(ViewState["pid"]);

            pg.DataSource = ds.Tables[0].DefaultView;
            DataList1.DataSource = pg;
            DataList1.DataBind();
        }
    }
}