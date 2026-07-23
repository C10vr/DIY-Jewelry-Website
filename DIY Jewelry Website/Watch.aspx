<%@ Page Language="C#" AutoEventWireup="true" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Redirecting...</title>
    <script runat="server">
        protected void Page_Load(object sender, EventArgs e)
        {
            string url = Request.QueryString["url"];
            string id = Request.QueryString["id"] ?? url;

            if (!string.IsNullOrEmpty(id))
            {
                var watched = Session["WatchedCourses"] as System.Collections.Generic.HashSet<string>;
                if (watched == null)
                {
                    watched = new System.Collections.Generic.HashSet<string>(StringComparer.OrdinalIgnoreCase);
                    Session["WatchedCourses"] = watched;
                }
                watched.Add(id);
            }

            if (!string.IsNullOrEmpty(url))
            {
                string decoded = Server.UrlDecode(url);
                Response.Redirect(decoded);
            }

            if (FindControl("litMessage") is System.Web.UI.WebControls.Literal lit)
            {
                lit.Text = "Redirecting...";
            }
        }
    </script>
</head>
<body>
    <form runat="server">
        <asp:Literal ID="litMessage" runat="server" />
    </form>
</body>
</html>
