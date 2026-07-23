using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;

namespace DIY_Jewelry_Website
{
    public partial class Watch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string url = Request.QueryString["url"];
            string id = Request.QueryString["id"] ?? url;

            if (!string.IsNullOrEmpty(id))
            {
                var watched = Session["WatchedCourses"] as HashSet<string>;
                if (watched == null)
                {
                    watched = new HashSet<string>(StringComparer.OrdinalIgnoreCase);
                    Session["WatchedCourses"] = watched;
                }
                watched.Add(id);
            }

            if (!string.IsNullOrEmpty(url))
            {
                // decode and redirect
                string decoded = Server.UrlDecode(url);
                Response.Redirect(decoded);
            }

            // fallback
            if (FindControl("litMessage") is System.Web.UI.WebControls.Literal lit)
            {
                lit.Text = "Redirecting...";
            }
        }
    }
}
