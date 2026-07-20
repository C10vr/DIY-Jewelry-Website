using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DIY_Jewelry_Website
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // DB connection and registration logic tmrow, for now just display a message
            lblRegMessage.Text = "testing resgistration";
            lblRegMessage.ForeColor = System.Drawing.Color.Green;
        }
    }
}