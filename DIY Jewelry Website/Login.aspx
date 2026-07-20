<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DIY_Jewelry_Website.Login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="/Content/images/Mini_Logo.png">
    <title>Log In - Knot Fine Co.</title>

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
                    <h2>Join Us</h2>
                    <h2>About Us</h2>
                    <a href="Login.aspx" style="text-decoration: none; color: inherit;"><h2>Log In</h2></a>
                </div>
                <div class="hamburger">
                    <i class="fa-solid fa-bars"></i>
                </div>
            </div>
        </div>
    </header>

    <!-- login form -->
    <form id="form1" runat="server">
        <div class="login-wrapper">
            <div class="login-box">
                <h2>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [userTable]"></asp:SqlDataSource>
                    Account Login</h2>
                
                <div class="input-group">
                    <label>Username</label>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter username"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required" ForeColor="Red" Display="Dynamic" CssClass="field-validator"></asp:RequiredFieldValidator>
                </div>

                <div class="input-group">
                    <label>Password</label>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="Red" Display="Dynamic" CssClass="field-validator"></asp:RequiredFieldValidator>
                </div>

                <asp:Button ID="btnLogin" runat="server" Text="Log In" CssClass="btn-submit" OnClick="btnLogin_Click" />
                
                <div style="text-align: center; margin-top: 10px;">
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                </div>

                <p class="link-text">Don't have an account? <a href="Register.aspx">Sign up here</a></p>
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