<%@ Control Language="C#" AutoEventWireup="true" %>

<%@ Import Namespace="System.Web.Security" %>
<script runat="server">

    public bool ShowQuote { get; set; } = false;

    protected void Page_Load(object sender, EventArgs e)
    {
        // Use session-based check for simplicity and reliability across redirects
        bool isAuth = Session["Username"] != null;
        if (lnkSignOut != null && lnkLogin != null && lnkSignOutLink != null)
        {
            bool insideForm = IsInsideServerForm(this);

            // Show server-side LinkButton only when this control is inside a <form runat="server">.
            // Otherwise, show a plain hyperlink that points to a Logout page.
            lnkSignOut.Visible = isAuth && insideForm;
            lnkSignOutLink.Visible = isAuth && !insideForm;
            lnkLogin.Visible = !isAuth;
        }
    }

    // Determine whether this control is contained within an HtmlForm with runat="server".
    private bool IsInsideServerForm(Control ctrl)
    {
        Control cur = ctrl;
        while (cur != null)
        {
            if (cur is System.Web.UI.HtmlControls.HtmlForm) return true;
            cur = cur.Parent;
        }
        return false;
    }

    protected void lnkSignOut_Click(object sender, EventArgs e)
    {
        try
        {
            // Clear session and sign out
            Session.Clear();
            Session.Abandon();
            FormsAuthentication.SignOut();

            // Expire auth cookie explicitly
            var authCookie = new HttpCookie(FormsAuthentication.FormsCookieName, "");
            authCookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(authCookie);

            // Expire session cookie
            var sessionCookie = new HttpCookie("ASP.NET_SessionId", "");
            sessionCookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(sessionCookie);

            Response.Redirect("~/Home.aspx", true);
        }
        catch { }
    }

</script>

<header id="header">

    <div class="header-container">
        <div class="logo-box">
            <div>
                <a href="Home.aspx">
                    <img class="logo" src="/Content/images/Logo.png" />
                </a>
            </div>

            <div class="top-bar">
                <h2>Join Us</h2>
                <h2>About Us</h2>
                <h2>
                    <asp:HyperLink ID="lnkLogin" runat="server" NavigateUrl="~/Login.aspx" Text="Log In" Style="text-decoration: none; color: inherit;" />
                    <asp:LinkButton ID="lnkSignOut" runat="server" OnClick="lnkSignOut_Click" Visible="false" Style="text-decoration: none; color: inherit;">Sign Out</asp:LinkButton>
                    <%-- Fallback for pages that do not host a server-side <form>: render a regular link to a logout endpoint --%>
                    <asp:HyperLink ID="lnkSignOutLink" runat="server" NavigateUrl="~/Logout.aspx" Visible="false" Style="text-decoration: none; color: inherit;">Sign Out</asp:HyperLink>
                </h2>
            </div>

            <!-- Responsive Hamburger --> 

            <div class="hamburger">
                <i class="fa-solid fa-bars"></i>
            </div>

        </div>
    </div>

    <% if (ShowQuote) { %>

    <div class="header-quote">

        <div>
            <h1><b>Knot Fine Co.</b></h1>
            <p class="slogan">The Money That Grows.</p>
        </div>
        <div class="why-us-button">
            <a href="#features" onclick="scrollToInfo()" class="cta-button">Why Us?</a>
        </div>

    </div>
    <% } %>

</header>

<script>

    (function () {

        const header = document.getElementById('header');
        const headerQuote = document.querySelector('.header-quote');
        let sectionPadding = document.querySelector('#content, #section');

        window.onscroll = function () {
            if (!sectionPadding) sectionPadding = document.querySelector('#content, #section');
            if (document.body.scrollTop > 250 || document.documentElement.scrollTop > 250) {

                if (header) header.classList.add("sticky");
                if (headerQuote) headerQuote.classList.add('hidden-quote');
                if (sectionPadding) sectionPadding.classList.add('sectionPadding');

            } else {

                if (header) header.classList.remove("sticky");
                if (headerQuote) headerQuote.classList.remove('hidden-quote');
                if (sectionPadding) sectionPadding.classList.remove('sectionPadding');

            }
        };

        window.onscroll();

    })();

</script>
