using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DIY_Jewelry_Website
{
    public partial class Welcome : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Prevent Cache 

            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
            Response.Cache.SetRevalidation(HttpCacheRevalidation.AllCaches);
            Response.Cache.SetValidUntilExpires(false);

            // Read session values once and reuse
            string username = Session["Username"] as string;
            string ut = Convert.ToString(Session["UserType"] ?? string.Empty);

            // Set welcome label and navigation based on session info (only on first load)
            if (!IsPostBack)
            {
                if (ut == "2")
                {
                    // Admin user — show welcome and provide a button to go to the dashboard
                    lblWelcome.Text = "Admin";
                    lnkNavigation.Text = "Go to dashboard";
                    lnkNavigation.NavigateUrl = ResolveUrl("~/dashboard.aspx");
                    lnkNavigation.Visible = true;
                }
                else
                {
                    // Set welcome name for non-admin users
                    if (!string.IsNullOrEmpty(username))
                    {
                        lblWelcome.Text = username;
                    }
                    else
                    {
                        lblWelcome.Text = "User";
                    }

                    // For non-admin users show a button that links to the tutorial.
                    lnkNavigation.Text = "Go to tutorial";
                    lnkNavigation.NavigateUrl = ResolveUrl("~/tutorial.aspx");
                    lnkNavigation.Visible = true;
                }
            }
        }
    }
}