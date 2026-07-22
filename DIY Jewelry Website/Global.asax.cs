using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using System.Security.Principal;

namespace DIY_Jewelry_Website
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }

        // Decode the forms auth ticket and attach roles for the request
        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {
            HttpCookie authCookie = Context.Request.Cookies[FormsAuthentication.FormsCookieName];
            if (authCookie == null) return;

            FormsAuthenticationTicket ticket = null;
            try
            {
                ticket = FormsAuthentication.Decrypt(authCookie.Value);
            }
            catch
            {
                return;
            }

            if (ticket == null) return;

            string userType = ticket.UserData; // we stored userType when creating ticket
            string[] roles = userType == "2" ? new[] { "Admin" } : new[] { "User" };

            var id = new GenericIdentity(ticket.Name);
            Context.User = new GenericPrincipal(id, roles);
        }
    }
}