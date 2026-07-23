using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace DIY_Jewelry_Website
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSaveEdit_Click(object sender, EventArgs e)
        {
            try
            {
                int id = 0;
                if (!int.TryParse(hfEditId.Value, out id)) return;

                string full = txtEditFullName.Text.Trim();
                string email = txtEditEmail.Text.Trim();
                string username = txtEditUsername.Text.Trim();

                string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    con.Open();
                    string sql = "UPDATE userTable SET FullName=@FullName, EmailAddress=@Email, Username=@Username WHERE Id=@Id";
                    using (SqlCommand cmd = new SqlCommand(sql, con))
                    {
                        cmd.Parameters.AddWithValue("@FullName", full);
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Username", username);
                        cmd.Parameters.AddWithValue("@Id", id);
                        cmd.ExecuteNonQuery();
                    }
                }

                // Refresh grid
                GridViewUsers.DataBind();

                // Close modal via script
                ScriptManager.RegisterStartupScript(this, this.GetType(), "closeModal", "var m = bootstrap.Modal.getInstance(document.getElementById('editModal')); if(m) m.hide();", true);
            }
            catch (Exception)
            {
                // swallow or log
            }
        }

        protected void GridViewUsers_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "OpenEdit")
            {
                int id = 0;
                if (!int.TryParse(Convert.ToString(e.CommandArgument), out id)) return;

                string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    con.Open();
                    string sql = "SELECT FullName, EmailAddress, Username FROM userTable WHERE Id=@Id";
                    using (SqlCommand cmd = new SqlCommand(sql, con))
                    {
                        cmd.Parameters.AddWithValue("@Id", id);
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            if (dr.Read())
                            {
                                hfEditId.Value = id.ToString();
                                txtEditFullName.Text = Convert.ToString(dr["FullName"]);
                                txtEditEmail.Text = Convert.ToString(dr["EmailAddress"]);
                                txtEditUsername.Text = Convert.ToString(dr["Username"]);
                            }
                        }
                    }
                }

                // Show modal
                ScriptManager.RegisterStartupScript(this, this.GetType(), "showModal", "var m = bootstrap.Modal.getOrCreateInstance(document.getElementById('editModal')); if(m) m.show();", true);
            }
        }
    }
}
