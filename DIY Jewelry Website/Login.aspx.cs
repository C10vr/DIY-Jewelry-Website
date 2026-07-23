using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

namespace DIY_Jewelry_Website
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    con.Open();

                    string query = "SELECT UserType FROM userTable WHERE Username = @Username AND Password = @Password";

                    SqlCommand cmd = new SqlCommand(query, con);

                    cmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());

                    object result = cmd.ExecuteScalar();

                    if(result != null)
                    {
                        int userType = Convert.ToInt32(result);

                        Session["Username"] = txtUsername.Text.Trim();
                        Session["UserType"] = userType;

                        // Create forms auth ticket so the whole site knows the user and role
                        var ticket = new FormsAuthenticationTicket(1,
                            txtUsername.Text.Trim(),
                            DateTime.Now,
                            DateTime.Now.AddHours(8),
                            false,
                            userType.ToString()); // store userType in UserData

                        string encrypted = FormsAuthentication.Encrypt(ticket);
                        var cookie = new HttpCookie(FormsAuthentication.FormsCookieName, encrypted)
                        {
                            HttpOnly = true
                        };
                        Response.Cookies.Add(cookie);

                        if (userType == 2)
                        {
                            Response.Redirect("Welcome.aspx");
                        }
                        else if (userType == 1)
                        {
                            Response.Redirect("Welcome.aspx");
                        }
                        else
                        {
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                            lblMessage.Text = "Invalid User Type";
                        }
                    }
                    else
                    {
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        lblMessage.Text = "Invalid username or password.";
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Error: " + ex.Message;
            }

        }
    }
}