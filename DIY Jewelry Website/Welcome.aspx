<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="DIY_Jewelry_Website.Welcome" %>
<!DOCTYPE html>
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

        <%-- Scripts --%>
        <script src="https://kit.fontawesome.com/cf1d4ca410.js" crossorigin="anonymous"></script>

    </head>

    <body>

        <%-- Header --%>

        <%@ Register Src="~/Controls/Header.ascx" TagPrefix="uc" TagName="Header" %>

        <uc:Header runat="server" id="SiteHeader" />

        <%-- End of Header --%>

        <div id="content">
            <div class="welcome-container">
                <div class="welcome-message">Welcome, Dumbfuck</div>
            </div>
        </div>

        <footer>
            <p><h6>&copy; 2026 Knot Fine Co. Company & Co. All rights reserved.</h6></p>
        </footer>

    </body>

</html>



