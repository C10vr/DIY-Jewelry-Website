using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DIY_Jewelry_Website
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // this for authentication
            if (Session["Username"] == null)
            {
                Response.Redirect("~/Login.aspx", true);
                return;
            }

            if (!IsPostBack)
            {
                LoadUserProfile();
            }
        }

        private void LoadUserProfile()
        {
            try
            {
                string currentUsername = Session["Username"].ToString();

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    con.Open();
                    string query = "SELECT Username, EmailAddress FROM userTable WHERE Username = @Username";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@Username", currentUsername);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            lblUsername.Text = reader["Username"].ToString();
                            lblEmail.Text = reader["EmailAddress"].ToString();
                            txtUsername.Text = reader["Username"].ToString();
                            txtEmail.Text = reader["EmailAddress"].ToString();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Error loading profile: " + ex.Message;
            }
        }

        protected void btnUpdateUsername_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
                return;

            try
            {
                string currentUsername = Session["Username"].ToString();
                string newUsername = txtUsername.Text.Trim();

                // Check if username changed
                if (newUsername == currentUsername)
                {
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Text = "Username is the same as current username";
                    return;
                }

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    con.Open();

                    // Check if new username already exists
                    string checkUsernameQuery = "SELECT COUNT(*) FROM userTable WHERE Username = @Username";
                    SqlCommand checkUsernameCmd = new SqlCommand(checkUsernameQuery, con);
                    checkUsernameCmd.Parameters.AddWithValue("@Username", newUsername);
                    int usernameCount = (int)checkUsernameCmd.ExecuteScalar();

                    if (usernameCount > 0)
                    {
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        lblMessage.Text = "Username already exists. Please choose a different username.";
                        return;
                    }

                    // Update username
                    string updateQuery = "UPDATE userTable SET Username = @NewUsername WHERE Username = @CurrentUsername";
                    SqlCommand updateCmd = new SqlCommand(updateQuery, con);
                    updateCmd.Parameters.AddWithValue("@NewUsername", newUsername);
                    updateCmd.Parameters.AddWithValue("@CurrentUsername", currentUsername);

                    int rowsAffected = updateCmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        // updates
                        Session["Username"] = newUsername;

                        lblMessage.ForeColor = System.Drawing.Color.Green;
                        lblMessage.Text = "Username updated successfully!";

                        LoadUserProfile();
                    }
                    else
                    {
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        lblMessage.Text = "Failed to update username. Please try again.";
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Error updating username: " + ex.Message;
            }
        }

        protected void btnUpdateEmail_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
                return;

            try
            {
                string currentUsername = Session["Username"].ToString();
                string newEmail = txtEmail.Text.Trim();

                string currentEmail = lblEmail.Text;

                if (newEmail == currentEmail)
                {
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Text = "Email is the same as current email.";
                    return;
                }

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    con.Open();

                    // email check validation
                    string checkEmailQuery = "SELECT COUNT(*) FROM userTable WHERE EmailAddress = @Email AND Username != @Username";
                    SqlCommand checkEmailCmd = new SqlCommand(checkEmailQuery, con);
                    checkEmailCmd.Parameters.AddWithValue("@Email", newEmail);
                    checkEmailCmd.Parameters.AddWithValue("@Username", currentUsername);
                    int emailCount = (int)checkEmailCmd.ExecuteScalar();

                    if (emailCount > 0)
                    {
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        lblMessage.Text = "Email already exists. Please use a different email.";
                        return;
                    }

                    // update email
                    string updateQuery = "UPDATE userTable SET EmailAddress = @Email WHERE Username = @Username";
                    SqlCommand updateCmd = new SqlCommand(updateQuery, con);
                    updateCmd.Parameters.AddWithValue("@Email", newEmail);
                    updateCmd.Parameters.AddWithValue("@Username", currentUsername);

                    int rowsAffected = updateCmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                        lblMessage.Text = "Email updated successfully!";

                        LoadUserProfile();
                    }
                    else
                    {
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        lblMessage.Text = "Failed to update email. Please try again.";
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Error updating email: " + ex.Message;
            }
        }

        protected void btnUpdatePassword_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
                return;

            try
            {
                string currentUsername = Session["Username"].ToString();
                string newPassword = txtPassword.Text.Trim();

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    con.Open();

                    // update password
                    string updateQuery = "UPDATE userTable SET Password = @Password WHERE Username = @Username";
                    SqlCommand updateCmd = new SqlCommand(updateQuery, con);
                    updateCmd.Parameters.AddWithValue("@Password", newPassword);
                    updateCmd.Parameters.AddWithValue("@Username", currentUsername);

                    int rowsAffected = updateCmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                        lblMessage.Text = "Password updated successfully!";

                        // clear password fields
                        txtPassword.Text = "";
                        txtConfirmPassword.Text = "";
                    }
                    else
                    {
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        lblMessage.Text = "Failed to update password. Please try again.";
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Error updating password: " + ex.Message;
            }
        }
    }
}
