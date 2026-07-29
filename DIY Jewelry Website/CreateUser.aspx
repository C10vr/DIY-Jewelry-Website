<%@ Page Language="C#" AutoEventWireup="true" %>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" href="/Content/images/Mini_Logo.png" />
    <title>Create User - Knot Fine Co.</title>

    <%-- CSS (match Dashboard) --%>
    <link rel="stylesheet" href="/Content/css/header.css" />
    <link rel="stylesheet" href="/Content/css/body.css" />
    <link rel="stylesheet" href="/Content/css/footer.css" />
    <link rel="stylesheet" href="/Content/css/welcome.css" />
    <link rel="stylesheet" href="/Content/css/bootstrap_override.css" />

    <!-- plugins:css -->
    <link rel="stylesheet" href="/Content/vendors/feather/feather.css">
    <link rel="stylesheet" href="/Content/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="/Content/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="/Content/vendors/typicons/typicons.css">
    <link rel="stylesheet" href="/Content/vendors/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="/Content/vendors/css/vendor.bundle.base.css">

    <!-- inject:css -->
    <link rel="stylesheet" href="/Content/css/vertical-layout-light/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="/Content/images/favicon.png" />
</head>
<body>
    <%@ Register Src="~/Controls/Header.ascx" TagPrefix="uc" TagName="Header" %>
    <uc:Header runat="server" id="SiteHeader" />

    <form id="form1" runat="server">
        <div class="container-scroller">
            <div class="container-fluid page-body-wrapper">
                <div class="main-panel main-panel-override">
                    <div class="content-wrapper">
                        <div class="col-lg-12 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Create User</h4>
                                    <p class="card-description">Add a new user account.</p>

                                    <asp:Label ID="lblMessage" runat="server" CssClass="text-danger"></asp:Label>
                                    <div class="mb-3">
                                        <label class="form-label">Full Name</label>
                                        <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Email</label>
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Username</label>
                                        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Password</label>
                                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">User Type</label>
                                        <asp:DropDownList ID="ddlUserType" runat="server" CssClass="form-select">
                                            <asp:ListItem Value="1">User</asp:ListItem>
                                            <asp:ListItem Value="2">Admin</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>

                                    <div class="mb-3">
                                        <asp:Button ID="btnCreate" runat="server" CssClass="btn btn-success" Text="Create" OnClick="btnCreate_Click" />
                                        <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-secondary ms-2" Text="Cancel" OnClick="btnCancel_Click" />
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <footer>
                        <p><h6>&copy; 2026 Knot Fine Co. Company & Co. All rights reserved.</h6></p>
                    </footer>
                </div>
            </div>
        </div>
    </form>

    <script runat="server">
        protected void btnCreate_Click(object sender, EventArgs e) //Create new user
        {
            try
            {
                string full = txtFullName.Text.Trim();
                string email = txtEmail.Text.Trim();
                string username = txtUsername.Text.Trim();
                string password = txtPassword.Text.Trim();
                int userType = int.Parse(ddlUserType.SelectedValue);

                string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                using (System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(cs))
                {
                    con.Open();
                    string sql = "INSERT INTO userTable (FullName, EmailAddress, Username, Password, UserType) VALUES (@FullName, @Email, @Username, @Password, @UserType)";
                    using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, con))
                    {
                        cmd.Parameters.AddWithValue("@FullName", full);
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Username", username);
                        cmd.Parameters.AddWithValue("@Password", password);
                        cmd.Parameters.AddWithValue("@UserType", userType);
                        cmd.ExecuteNonQuery();
                    }
                }

                Response.Redirect("Dashboard.aspx");
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }
    </script>

    <!-- plugins:js -->
    <script src="/Content/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="/Content/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="/Content/js/off-canvas.js"></script>
    <script src="/Content/js/hoverable-collapse.js"></script>
    <script src="/Content/js/template.js"></script>
    <script src="/Content/js/settings.js"></script>
    <script src="/Content/js/todolist.js"></script>
    <!-- endinject -->
</body>
</html>