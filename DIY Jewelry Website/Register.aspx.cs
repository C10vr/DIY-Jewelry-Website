using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.SqlClient;
using System.Configuration;
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
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                string query = "SELECT COUNT(*) FROM userTable WHERE Username = '" + txtRegUsername.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());

                if (check > 0)
                {
                    lblRegMessage.Visible = true;
                    lblRegMessage.ForeColor = System.Drawing.Color.Red;
                    lblRegMessage.Text = "Username has been taken!";
                }
                else
                {
                    string query1 = "INSERT INTO userTable (FullName, EmailAddress, Username, Password) VALUES (@txtFullName, @txtEmail, @txtRegUsername, @txtRegPassword)";
                    SqlCommand cmd1 = new SqlCommand(query1, con);

                    cmd1.Parameters.AddWithValue("@txtFullName", txtFullName.Text);
                    cmd1.Parameters.AddWithValue("@txtEmail", txtEmail.Text);
                    cmd1.Parameters.AddWithValue("@txtRegUsername", txtRegUsername.Text);
                    cmd1.Parameters.AddWithValue("@txtRegPassword", txtRegPassword.Text);

                    cmd1.ExecuteNonQuery();
                    Response.Redirect("login.aspx");
                }
                con.Close();
            }
            catch (Exception ex)
            {
                lblRegMessage.Visible = true;
                lblRegMessage.ForeColor = System.Drawing.Color.Red;
                lblRegMessage.Text = "Registration is not successful!" + ex.ToString();
            }
        }
    }
}