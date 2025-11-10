using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetShop
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                if (Session["admin"] != null)
                {
                  
                    login.Visible = false;
                    logout.Visible = true;
                }
                else
                {
                    // No user logged in
                    login.Visible = true;
                    logout.Visible = false;
                    Response.Redirect("Ulogin.aspx");
                }
            }

        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Clear session data
            Session.Clear();
            Session.Abandon();

            Response.Redirect("Ulogin.aspx");
        }
    }
}