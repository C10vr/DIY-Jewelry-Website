using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DIY_Jewelry_Website
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {

            if (txtUsername.Text == "admin" && txtPassword.Text == "password")
            {
                lblMessage.Text = "Login successful.";
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblMessage.Text = "Invalid username or password.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}