<%@ Page Language="C#" AutoEventWireup="true" %>
<%@ Import Namespace="System.Web.Security" %>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Session.Clear();
            Session.Abandon();
            FormsAuthentication.SignOut();

            var authCookie = new System.Web.HttpCookie(FormsAuthentication.FormsCookieName, "");
            authCookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(authCookie);

            var sessionCookie = new System.Web.HttpCookie("ASP.NET_SessionId", "");
            sessionCookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(sessionCookie);

            Response.Redirect("~/Home.aspx", true);
        }
        catch { }
    }
</script>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Signing out...</title>
</head>
<body>
    <p>Signing out...</p>
</body>
</html>