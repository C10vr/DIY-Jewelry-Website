<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="DIY_Jewelry_Website.Register" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="/Content/images/Mini_Logo.png">
    <title>Sign Up - Knot Fine Co.</title>

    <link rel="stylesheet" href="../Content/css/header.css"/>    
    <link rel="stylesheet" href="../Content/css/body.css"/> 
    <link rel="stylesheet" href="../Content/css/footer.css"/> 
    <link rel="stylesheet" href="../Content/css/login.css"/> 

    <script src="https://kit.fontawesome.com/cf1d4ca410.js" crossorigin="anonymous"></script>
</head>
<body>
    <header>
        <div class="header-container">
            <div class="logo-box">
                <div>
                    <a href="Home.aspx"><img class="logo" src="/Content/images/Logo.png" /></a>
                </div>
                <div class="top-bar">
                    <a href="Register.aspx" style="text-decoration: none; color: inherit;"><h2>Join Us</h2></a>
                    <a href="#about" style="text-decoration: none; color: inherit;"><h2>About Us</h2></a>
                    <a href="Login.aspx" style="text-decoration: none; color: inherit;"><h2>Log In</h2></a>
                </div>
                <div class="hamburger">
                    <i class="fa-solid fa-bars"></i>
                </div>
            </div>
        </div>
    </header>

    <!-- registration form -->
    <form id="form1" runat="server">
        <div class="login-wrapper">
            <div class="registration-box">
                <h2>Create an Account<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [userTable]"></asp:SqlDataSource>
                </h2>
                
                <div class="form-grid">
                    <div class="input-group">
                        <label>Full Name</label>
                        <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" placeholder="Enter your full name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqFullName" runat="server" ControlToValidate="txtFullName" ErrorMessage="Name is required" ForeColor="Red" Display="Dynamic" CssClass="field-validator"></asp:RequiredFieldValidator>
                    </div>

                    <div class="input-group">
                        <label>Email Address</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter your email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" ForeColor="Red" Display="Dynamic" CssClass="field-validator"></asp:RequiredFieldValidator>
                    </div>

                    <div class="input-group">
                        <label>Username</label>
                        <asp:TextBox ID="txtRegUsername" runat="server" CssClass="form-control" placeholder="Choose a username"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqRegUsername" runat="server" ControlToValidate="txtRegUsername" ErrorMessage="Username is required" ForeColor="Red" Display="Dynamic" CssClass="field-validator"></asp:RequiredFieldValidator>
                    </div>

                    <div class="input-group">
                        <label>Password</label>
                        <asp:TextBox ID="txtRegPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Create a password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqRegPassword" runat="server" ControlToValidate="txtRegPassword" ErrorMessage="Password is required" ForeColor="Red" Display="Dynamic" CssClass="field-validator"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <asp:Button ID="btnRegister" runat="server" Text="Sign Up" CssClass="btn-submit" OnClick="btnRegister_Click" />
                
                <div style="text-align: center; margin-top: 10px;">
                    <asp:Label ID="lblRegMessage" runat="server" ForeColor="Red"></asp:Label>
                </div>

                <p class="link-text">Already have an account? <a href="Login.aspx">Log in here</a></p>
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

    <footer>
        <p><h6>&copy; 2026 Knot Fine Co. Company & Co. All rights reserved.</h6></p>
    </footer>
</body>
</html>
