using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace PetShop.admin
{
    public partial class Aadd_product : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        int i;
        String fnm;

        //String fldimgpath;
        //FileUpload fldimg;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            fillcombo();
            fillgrid();

        }
        void fillcombo()
        {
            getcon();
            da = new SqlDataAdapter("select * from add_cate", con);
            ds = new DataSet();
            da.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                drpct.Items.Add(ds.Tables[0].Rows[i]["Pet"].ToString());
            }
        }
        void clear()
        {
            txtnm.Text = "";
            txtds.Text = "";
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void imgupload()
        {
            if (img.HasFile)
            {
                fnm = "images/" + img.FileName;
                img.SaveAs(Server.MapPath(fnm));
            }
        }

        //void imgupload()
        //{
        //    if (fldimg.HasFile)
        //    {
        //        fldimgpath = "images/" + fldimg.FileName;
        //        fldimg.SaveAs(Server.MapPath(fldimgpath));
        //    }
        //    else
        //    {
        //        fldimgpath = ""; // or default image path
        //    }
        //}

        //void imgupload()
        //{
        //    fldimgpath = "images/" + fldimg.FileName;
        //    fldimg.SaveAs(Server.MapPath(fldimgpath));
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Save")
            {
                getcon();
                imgupload();
                cmd = new SqlCommand("insert into add_prod(Category,Name,Price,Image,Description)values('" + drpct.SelectedValue +"' , '" + txtnm.Text + "' ,'"+ txtprice.Text+"' , '"+ fnm + "','" + txtds.Text + "')", con);
                cmd.ExecuteNonQuery();
                clear();
                fillgrid();
                Response.Redirect(Request.RawUrl);
            }
            else
            {
                //cmd = new SqlCommand("Update add_prod set Image='" + fnm + "',Name='" + txtnm.Text + "',Catagory='" + drpct.Text + "',Price='" + txtprice.Text + "',Description='" + txtds.Text + "' where Id='" + ViewState["id"] + "'", con);
                  cmd = new SqlCommand("Update add_prod set Image='" + fnm + "',Name='" + txtnm.Text + "',Category='" + drpct.Text + "',Price='" + txtprice.Text + "',Description='" + txtds.Text + "' where Id='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();

                Button1.Text = "Save";
                clear();
            }
        }
        void select()
        {
            getcon();
            da = new SqlDataAdapter("select * from add_prod where Id='" + ViewState["id"] + "'", con);

            ds = new DataSet();
            da.Fill(ds);

            //Paring

            txtnm.Text = ds.Tables[0].Rows[0]["Name"].ToString();
            drpct.Text = ds.Tables[0].Rows[0]["Category"].ToString();
            txtprice.Text = ds.Tables[0].Rows[0]["Price"].ToString();
            txtds.Text = ds.Tables[0].Rows[0]["Description"].ToString();
        }

        protected void drpct_SelectedIndexChanged(object sender, EventArgs e)
        {
            getcon();
            da = new SqlDataAdapter("select Id from add_cate where Pet='" + drpct.SelectedItem.Text + "'", con);

            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                ViewState["cid"] = ds.Tables[0].Rows[0]["Id"].ToString();
            }
            else
            {
                ViewState["cid"] = null;
            }
        }
        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter("select * from add_prod", con);
            ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_edt")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                Button1.Text = "Update";
                select();
            }
            else
            {
                getcon();
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                cmd = new SqlCommand("delete from add_prod where Id='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
            }
        }
    }
}