<%@ Control Language="C#" AutoEventWireup="true" %>

<%@ Import Namespace="System.Web.Security" %>
<script runat="server">

    public bool ShowQuote { get; set; } = false;

    protected void Page_Load(object sender, EventArgs e)
    {
        bool isAuth = Session["Username"] != null;
        // normalize user type to string to handle int or string stored in session
        string userType = Convert.ToString(Session["UserType"] ?? string.Empty);

        // ensure server controls are available; they are declared in markup with runat="server"
        bool insideForm = IsInsideServerForm(this);

        // toggle common links
        lnkSignOut.Visible = isAuth && insideForm;
        lnkSignOutLink.Visible = isAuth && !insideForm;
        lnkLogin.Visible = !isAuth;

        // show Dashboard for userType == "2"; show Tutorial for userType == "1"; always show Profile when authenticated
        bool showDashboard = isAuth && userType == "2";
        lnkDashboard.Visible = showDashboard;

        bool showTutorial = isAuth && userType == "1";
        // lnkTutorial control is declared in the markup below
        System.Web.UI.WebControls.HyperLink tutorialLink = this.FindControl("lnkTutorial") as System.Web.UI.WebControls.HyperLink;
        if (tutorialLink != null)
        {
            tutorialLink.Visible = showTutorial;
        }

        // hide the whole h2 container when not a type-2 user
        var h2DashboardCtrl = this.FindControl("h2Dashboard") as System.Web.UI.HtmlControls.HtmlGenericControl;
        if (h2DashboardCtrl != null)
        {
            h2DashboardCtrl.Visible = showDashboard;
        }

        // hide the whole h2 container for tutorial when not a type-1 user
        var h2TutorialCtrl = this.FindControl("h2Tutorial") as System.Web.UI.HtmlControls.HtmlGenericControl;
        if (h2TutorialCtrl != null)
        {
            h2TutorialCtrl.Visible = showTutorial;
        }
        lnkProfile.Visible = isAuth;
    }

    // see if control is contained
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
            // sign out
            Session.Clear();
            Session.Abandon();
            FormsAuthentication.SignOut();

            // auth cookie expire
            var authCookie = new HttpCookie(FormsAuthentication.FormsCookieName, "");
            authCookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(authCookie);

            // expire session cookie
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
                <h2>
                    <asp:HyperLink ID="lnkProfile" runat="server" NavigateUrl="~/Profile.aspx" Text="Profile" Style="text-decoration: none; color: inherit;" Visible="false" />
                </h2>
                <h2 id="h2Dashboard" runat="server" style="display: inline-block;">
                    <asp:HyperLink ID="lnkDashboard" runat="server" NavigateUrl="~/Dashboard.aspx" Text="Dashboard" Style="text-decoration: none; color: inherit;" Visible="false" />
                </h2>
                <h2 id="h2Tutorial" runat="server" style="display: inline-block;">
                    <asp:HyperLink ID="lnkTutorial" runat="server" NavigateUrl="~/Tutorial.aspx" Text="Tutorial" Style="text-decoration: none; color: inherit;" Visible="false" />
                </h2>
                <h2>
                    <asp:HyperLink ID="lnkLogin" runat="server" NavigateUrl="~/Login.aspx" Text="Log In" Style="text-decoration: none; color: inherit;" />
                    <asp:LinkButton ID="lnkSignOut" runat="server" OnClick="lnkSignOut_Click" Visible="false" Style="text-decoration: none; color: inherit;">Sign Out</asp:LinkButton>
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
