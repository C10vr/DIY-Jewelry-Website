using System;
using System.Collections.Generic;
using System.Web.UI;

namespace DIY_Jewelry_Website
{
    public partial class CoursesPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // initialize watched collection
            var watched = Session["WatchedCourses"] as HashSet<string>;
            int count = watched != null ? watched.Count : 0;

            // update label if present
            if (FindControl("lblWatchedCount") is System.Web.UI.WebControls.Label lbl)
            {
                lbl.Text = $"Courses watched this session: {count}";
            }
        }
    }
}
