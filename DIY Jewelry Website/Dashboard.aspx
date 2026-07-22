<!DOCTYPE html>
<%@ Page Language="C#" AutoEventWireup="true" %>
<html lang="en">

    <head runat="server">

        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="icon" href="/Content/images/Mini_Logo.png" />
        <title>Knot Fine Co.</title>

        <%-- CSS --%>
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

        <%-- Scripts --%>
        <script src="https://kit.fontawesome.com/cf1d4ca410.js" crossorigin="anonymous"></script>
        <style>
            /* Make bordered table scroll when more than 7 rows */
            .table-scroll-container {
                /* overflow-y will be set dynamically when needed */
                overflow-y: visible;
            }
            .table-scroll-container table {
                margin-bottom: 0; /* avoid extra gap inside scroll area */
            }
            /* Small fixed-width action buttons in grid */
            .grid-action-btn {
                padding: .15rem .35rem;
                font-size: .78rem;
                width: 48px;
                min-width: 48px;
                text-align: center;
            }
        </style>

    </head>

    <body>

        <%-- Header --%>

        <%@ Register Src="~/Controls/Header.ascx" TagPrefix="uc" TagName="Header" %>

        <uc:Header runat="server" id="SiteHeader" />

        <%-- End of Header --%>

        <form id="form1" runat="server">

        <div class="container-scroller">
        <!-- partial -->
        <div class="container-fluid page-body-wrapper">
            <!-- partial:/Content/partials/_settings-panel.html -->
            <div class="theme-setting-wrapper">
            </div>
            <div id="right-sidebar" class="settings-panel">
            <i class="settings-close ti-close"></i>
            <ul class="nav nav-tabs border-top" id="setting-panel" role="tablist">
                <li class="nav-item">
                <a class="nav-link active" id="todo-tab" data-bs-toggle="tab" href="#todo-section" role="tab" aria-controls="todo-section" aria-expanded="true">TO DO LIST</a>
                </li>
                <li class="nav-item">
                <a class="nav-link" id="chats-tab" data-bs-toggle="tab" href="#chats-section" role="tab" aria-controls="chats-section">CHATS</a>
                </li>
            </ul>
            <div class="tab-content" id="setting-content">
                <div class="tab-pane fade show active scroll-wrapper" id="todo-section" role="tabpanel" aria-labelledby="todo-section">
                <div class="add-items d-flex px-3 mb-0">
                    <form class="form w-100">
                    <div class="form-group d-flex">
                        <input type="text" class="form-control todo-list-input" placeholder="Add To-do">
                        <button type="submit" class="add btn btn-primary todo-list-add-btn" id="add-task">Add</button>
                    </div>
                    </form>
                </div>
                <div class="list-wrapper px-3">
                    <ul class="d-flex flex-column-reverse todo-list">
                    <li>
                        <div class="form-check">
                        <label class="form-check-label">
                            <input class="checkbox" type="checkbox">
                            Team review meeting at 3.00 PM
                        </label>
                        </div>
                        <i class="remove ti-close"></i>
                    </li>
                    <li>
                        <div class="form-check">
                        <label class="form-check-label">
                            <input class="checkbox" type="checkbox">
                            Prepare for presentation
                        </label>
                        </div>
                        <i class="remove ti-close"></i>
                    </li>
                    <li>
                        <div class="form-check">
                        <label class="form-check-label">
                            <input class="checkbox" type="checkbox">
                            Resolve all the low priority tickets due today
                        </label>
                        </div>
                        <i class="remove ti-close"></i>
                    </li>
                    <li class="completed">
                        <div class="form-check">
                        <label class="form-check-label">
                            <input class="checkbox" type="checkbox" checked>
                            Schedule meeting for next week
                        </label>
                        </div>
                        <i class="remove ti-close"></i>
                    </li>
                    <li class="completed">
                        <div class="form-check">
                        <label class="form-check-label">
                            <input class="checkbox" type="checkbox" checked>
                            Project review
                        </label>
                        </div>
                        <i class="remove ti-close"></i>
                    </li>
                    </ul>
                </div>
                <h4 class="px-3 text-muted mt-5 fw-light mb-0">Events</h4>
                <div class="events pt-4 px-3">
                    <div class="wrapper d-flex mb-2">
                    <i class="ti-control-record text-primary me-2"></i>
                    <span>Feb 11 2018</span>
                    </div>
                    <p class="mb-0 font-weight-thin text-gray">Creating component page build a js</p>
                    <p class="text-gray mb-0">The total number of sessions</p>
                </div>
                <div class="events pt-4 px-3">
                    <div class="wrapper d-flex mb-2">
                    <i class="ti-control-record text-primary me-2"></i>
                    <span>Feb 7 2018</span>
                    </div>
                    <p class="mb-0 font-weight-thin text-gray">Meeting with Alisa</p>
                    <p class="text-gray mb-0 ">Call Sarah Graves</p>
                </div>
                </div>
                <!-- To do section tab ends -->
                <div class="tab-pane fade" id="chats-section" role="tabpanel" aria-labelledby="chats-section">
                <div class="d-flex align-items-center justify-content-between border-bottom">
                    <p class="settings-heading border-top-0 mb-3 pl-3 pt-0 border-bottom-0 pb-0">Friends</p>
                    <small class="settings-heading border-top-0 mb-3 pt-0 border-bottom-0 pb-0 pr-3 fw-normal">See All</small>
                </div>
                <ul class="chat-list">
                    <li class="list active">
                    <div class="profile"><img src="/Content/images/faces/face1.jpg" alt="image"><span class="online"></span></div>
                    <div class="info">
                        <p>Thomas Douglas</p>
                        <p>Available</p>
                    </div>
                    <small class="text-muted my-auto">19 min</small>
                    </li>
                    <li class="list">
                    <div class="profile"><img src="/Content/images/faces/face2.jpg" alt="image"><span class="offline"></span></div>
                    <div class="info">
                        <div class="wrapper d-flex">
                        <p>Catherine</p>
                        </div>
                        <p>Away</p>
                    </div>
                    <div class="badge badge-success badge-pill my-auto mx-2">4</div>
                    <small class="text-muted my-auto">23 min</small>
                    </li>
                    <li class="list">
                    <div class="profile"><img src="/Content/images/faces/face3.jpg" alt="image"><span class="online"></span></div>
                    <div class="info">
                        <p>Daniel Russell</p>
                        <p>Available</p>
                    </div>
                    <small class="text-muted my-auto">14 min</small>
                    </li>
                    <li class="list">
                    <div class="profile"><img src="/Content/images/faces/face4.jpg" alt="image"><span class="offline"></span></div>
                    <div class="info">
                        <p>James Richardson</p>
                        <p>Away</p>
                    </div>
                    <small class="text-muted my-auto">2 min</small>
                    </li>
                    <li class="list">
                    <div class="profile"><img src="/Content/images/faces/face5.jpg" alt="image"><span class="online"></span></div>
                    <div class="info">
                        <p>Madeline Kennedy</p>
                        <p>Available</p>
                    </div>
                    <small class="text-muted my-auto">5 min</small>
                    </li>
                    <li class="list">
                    <div class="profile"><img src="/Content/images/faces/face6.jpg" alt="image"><span class="online"></span></div>
                    <div class="info">
                        <p>Sarah Graves</p>
                        <p>Available</p>
                    </div>
                    <small class="text-muted my-auto">47 min</small>
                    </li>
                </ul>
                </div>
                <!-- chat tab ends -->
            </div>
            </div>
            <!-- partial -->
            <!-- partial:/Content/partials/_sidebar.html -->
            
            <!-- partial -->
            <div class="main-panel main-panel-override">
            <div class="content-wrapper">  
                <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Welcome Back, Admin</h4>
                        <p class="card-description">
                        List of Users <code> Descending Order</code>
                        </p>
                        <div class="table-responsive pt-3 table-scroll-container">
                            <!-- SqlDataSource filtered to UserType = 1 -->
                            <asp:SqlDataSource ID="SqlDataSourceUsers" runat="server"
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                SelectCommand="SELECT Id, FullName, EmailAddress, Username, UserType FROM userTable WHERE UserType = @UserType ORDER BY Username DESC"
                                DeleteCommand="DELETE FROM userTable WHERE Id = @Id">
                                <SelectParameters>
                                    <asp:Parameter Name="UserType" Type="Int32" DefaultValue="1" />
                                </SelectParameters>
                                <DeleteParameters>
                                    <asp:Parameter Name="Id" Type="Int32" />
                                </DeleteParameters>
                            </asp:SqlDataSource>

                            <asp:GridView ID="GridViewUsers" runat="server" DataSourceID="SqlDataSourceUsers" AutoGenerateColumns="false" CssClass="table table-bordered" DataKeyNames="Id">
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="true" />
                                    <asp:BoundField DataField="FullName" HeaderText="Full Name" />
                                    <asp:BoundField DataField="EmailAddress" HeaderText="Email" />
                                    <asp:BoundField DataField="Username" HeaderText="Username" />
                                    <asp:BoundField DataField="UserType" HeaderText="User Type" />

                                    <%-- Edit opens modal to edit user inline --%>
                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:Button ID="btnOpenEdit" runat="server" Text="Edit" CssClass="btn btn-sm btn-primary grid-action-btn" OnClientClick="openEditModal(this); return false;" />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <%-- Delete button uses SqlDataSource DeleteCommand and the DataKey (Id) --%>
                                    <asp:TemplateField HeaderText="Delete">
                                        <ItemTemplate>
                                            <asp:Button ID="btnDelete" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-sm btn-danger grid-action-btn" OnClientClick="return confirm('Are you sure you want to delete this user?');" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                    </div>
                </div>
                <!-- Edit Modal -->
                <div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="editModalLabel">Edit User</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <asp:HiddenField ID="hfEditId" runat="server" />
                                <div class="mb-3">
                                    <label class="form-label">Full Name</label>
                                    <asp:TextBox ID="txtEditFullName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Email</label>
                                    <asp:TextBox ID="txtEditEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Username</label>
                                    <asp:TextBox ID="txtEditUsername" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                <asp:Button ID="btnSaveEdit" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSaveEdit_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- content-wrapper ends -->
            </div>
        </div>
            <footer>
                <p><h6>&copy; 2026 Knot Fine Co. Company & Co. All rights reserved.</h6></p>
            </footer>

            </div>
            <!-- main-panel ends -->
        </div>
        <!-- page-body-wrapper ends -->
        </div>
        <!-- container-scroller -->
        </form>

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
        <script>
            // Enable vertical scrolling for the bordered table when rows > 7
            document.addEventListener('DOMContentLoaded', function () {
                try {
                    var container = document.querySelector('.table-scroll-container');
                    if (!container) return;
                    var tbody = container.querySelector('tbody');
                    if (!tbody) return;
                    var rows = tbody.querySelectorAll('tr');
                    if (rows.length > 7) {
                        // measure a single row height and header height
                        var rowHeight = rows[0].offsetHeight || 48;
                        var thead = container.querySelector('thead');
                        var theadHeight = thead ? thead.offsetHeight : 56;
                        // set max-height to show 7 rows + the header
                        container.style.maxHeight = (rowHeight * 7 + theadHeight) + 'px';
                        container.style.overflowY = 'auto';
                    }
                } catch (e) {
                    // fail silently
                }
            });

            // Open edit modal and populate fields from the clicked row
            function openEditModal(btn) {
                try {
                    var tr = btn.closest('tr');
                    if (!tr) return;
                    var cells = tr.querySelectorAll('td');
                    if (!cells || cells.length < 4) return;

                    // Cells order: ID, FullName, EmailAddress, Username, UserType, Edit, Delete
                    var id = cells[0].innerText.trim();
                    var fullName = cells[1].innerText.trim();
                    var email = cells[2].innerText.trim();
                    var username = cells[3].innerText.trim();

                    // Set values to server controls by ClientID
                    var hf = document.getElementById('<%= hfEditId.ClientID %>');
                    if (hf) hf.value = id;
                    var txtFull = document.getElementById('<%= txtEditFullName.ClientID %>');
                    if (txtFull) txtFull.value = fullName;
                    var txtEmail = document.getElementById('<%= txtEditEmail.ClientID %>');
                    if (txtEmail) txtEmail.value = email;
                    var txtUser = document.getElementById('<%= txtEditUsername.ClientID %>');
                    if (txtUser) txtUser.value = username;

                    // Show bootstrap modal (Bootstrap 5)
                    var modalEl = document.getElementById('editModal');
                    if (modalEl && typeof bootstrap !== 'undefined') {
                        var bsModal = bootstrap.Modal.getOrCreateInstance(modalEl);
                        bsModal.show();
                    }
                } catch (e) {
                    // fail silently
                }
            }
        </script>
        <script runat="server">
            protected void btnSaveEdit_Click(object sender, EventArgs e)
            {
                try
                {
                    int id = 0;
                    if (!int.TryParse(hfEditId.Value, out id)) return;

                    string full = txtEditFullName.Text.Trim();
                    string email = txtEditEmail.Text.Trim();
                    string username = txtEditUsername.Text.Trim();

                    string cs = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    using (System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(cs))
                    {
                        con.Open();
                        string sql = "UPDATE userTable SET FullName=@FullName, EmailAddress=@Email, Username=@Username WHERE Id=@Id";
                        using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, con))
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
                    System.Web.UI.ScriptManager.RegisterStartupScript(this, this.GetType(), "closeModal", "var m = bootstrap.Modal.getInstance(document.getElementById('editModal')); if(m) m.hide();", true);
                }
                catch (Exception)
                {
                    // swallow or log
                }
            }
        </script>
        <script src="/Content/js/settings.js"></script>
        <script src="/Content/js/todolist.js"></script>
        <!-- endinject -->
        <!-- Custom js for this page-->
        <!-- End custom js for this page-->

    </body>

</html>