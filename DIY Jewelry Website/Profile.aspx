<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="DIY_Jewelry_Website.Profile" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="/Content/images/Mini_Logo.png">
    <title>My Profile - Knot Fine Co.</title>

    <link rel="stylesheet" href="../Content/css/header.css"/>    
    <link rel="stylesheet" href="../Content/css/body.css"/> 
    <link rel="stylesheet" href="../Content/css/footer.css"/> 
    <link rel="stylesheet" href="../Content/css/login.css"/>
    <link rel="stylesheet" href="../Content/css/profile.css"/>

    <script src="https://kit.fontawesome.com/cf1d4ca410.js" crossorigin="anonymous"></script>
</head>
<body>
    <%-- Header --%>

    <%@ Register Src="~/Controls/Header.ascx" TagPrefix="uc" TagName="Header" %>

    <%-- End of Header --%>

    <div id="section">
        <uc:Header runat="server" id="SiteHeader" />
        <form id="form1" runat="server">
            <div class="login-wrapper">
                <div class="registration-box">
                    <h2>My Profile (Member)</h2>

                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Style="display: block; margin-bottom: 15px;"></asp:Label>

                    <!-- Username Section -->
                    <div class="profile-section">
                        <div id="usernameDisplay" class="profile-display">
                            <span class="profile-label">Username:</span>
                            <span class="profile-value">
                                <asp:Label ID="lblUsername" runat="server"></asp:Label>
                            </span>
                            <button type="button" class="edit-btn" onclick="toggleUsernameEdit()">Edit</button>
                        </div>

                        <div id="usernameForm" class="form-section">
                            <div class="input-group">
                                <label>New Username</label>
                                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter new username"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required" ForeColor="Red" Display="Dynamic" CssClass="field-validator" ValidationGroup="UsernameUpdate"></asp:RequiredFieldValidator>
                            </div>
                            <div class="button-group">
                                <asp:Button ID="btnUpdateUsername" runat="server" Text="Update Username" CssClass="btn-submit" OnClick="btnUpdateUsername_Click" ValidationGroup="UsernameUpdate" />
                                <button type="button" class="btn-cancel" onclick="toggleUsernameEdit()">Cancel</button>
                            </div>
                        </div>
                    </div>

                    <!-- email Section -->
                    <div class="profile-section">
                        <div id="emailDisplay" class="profile-display">
                            <span class="profile-label">Email:</span>
                            <span class="profile-value">
                                <asp:Label ID="lblEmail" runat="server"></asp:Label>
                            </span>
                            <button type="button" class="edit-btn" onclick="toggleEmailEdit()">Edit</button>
                        </div>

                        <div id="emailForm" class="form-section">
                            <div class="input-group">
                                <label>New Email</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter new email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" ForeColor="Red" Display="Dynamic" CssClass="field-validator" ValidationGroup="EmailUpdate"></asp:RequiredFieldValidator>
                            </div>
                            <div class="button-group">
                                <asp:Button ID="btnUpdateEmail" runat="server" Text="Update Email" CssClass="btn-submit" OnClick="btnUpdateEmail_Click" ValidationGroup="EmailUpdate" />
                                <button type="button" class="btn-cancel" onclick="toggleEmailEdit()">Cancel</button>
                            </div>
                        </div>
                    </div>

                    <!-- password Section -->
                    <div class="profile-section">
                        <div class="profile-display">
                            <span class="profile-label">Password:</span>
                            <span class="profile-value">*****</span>
                            <button type="button" class="edit-btn" onclick="togglePasswordEdit()">Edit</button>
                        </div>

                        <div id="passwordForm" class="form-section">
                            <div class="input-group">
                                <label>New Password</label>
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter new password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="New password is required" ForeColor="Red" Display="Dynamic" CssClass="field-validator" ValidationGroup="PasswordUpdate"></asp:RequiredFieldValidator>
                            </div>

                            <div class="input-group">
                                <label>Confirm New Password</label>
                                <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Confirm new password"></asp:TextBox>
                                <asp:CompareValidator ID="cmpPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Passwords do not match" ForeColor="Red" Display="Dynamic" CssClass="field-validator" ValidationGroup="PasswordUpdate"></asp:CompareValidator>
                            </div>

                            <div class="button-group">
                                <asp:Button ID="btnUpdatePassword" runat="server" Text="Update Password" CssClass="btn-submit" OnClick="btnUpdatePassword_Click" ValidationGroup="PasswordUpdate" />
                                <button type="button" class="btn-cancel" onclick="togglePasswordEdit()">Cancel</button>
                            </div>
                        </div>
                    </div>

                    <p class="link-text"><a href="Home.aspx">Back to Home</a></p>
                </div>
            </div>
        </form>

        <div class="footer">
            <div class="col-1">
                <h3>USEFUL LINKS</h3>
                <a href="#about"><p>About</p></a>
                <a href="#products"><p>Products</p></a>
            </div>
            <div class="col-2">
                <h3>NEWSLETTER</h3>
                <p>Subscribe for updates!</p>
            </div>
            <div class="col-3">
                <h3>CONTACT</h3>
                <p>123, XYZ Road <br>Kuala Lumpur, Malaysia, MY</p>
                <div class="social-icons">
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-x-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <p><h6>&copy; 2026 Knot Fine Co. Company & Co. All rights reserved.</h6></p>
    </footer>

    <script>
        function toggleUsernameEdit() {
            const display = document.getElementById('usernameDisplay');
            const form = document.getElementById('usernameForm');
            display.style.display = display.style.display === 'none' ? 'flex' : 'none';
            form.classList.toggle('show');
        }

        function toggleEmailEdit() {
            const display = document.getElementById('emailDisplay');
            const form = document.getElementById('emailForm');
            display.style.display = display.style.display === 'none' ? 'flex' : 'none';
            form.classList.toggle('show');
        }

        function togglePasswordEdit() {
            const form = document.getElementById('passwordForm');
            form.classList.toggle('show');
        }
    </script>
</body>
</html>
