<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tutorial.aspx.cs" Inherits="DIY_Jewelry_Website.Tutorial" %>

<!DOCTYPE html>

<html lang="en">

<head runat="server">

    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>DIY Tutorials - Knot Fine Co.</title>

    <link rel="icon" href="/Content/images/Mini_Logo.png" />

    <!-- CSS -->
    <link rel="stylesheet" href="/Content/css/header.css" />
    <link rel="stylesheet" href="/Content/css/body.css" />
    <link rel="stylesheet" href="/Content/css/footer.css" />
    <link rel="stylesheet" href="/Content/css/Tutorial.css" />

    <script src="https://kit.fontawesome.com/cf1d4ca410.js" crossorigin="anonymous"></script>

</head>

<body>

    <%@ Register Src="~/Controls/Header.ascx" TagPrefix="uc" TagName="Header" %>

    <uc:Header runat="server" ID="SiteHeader" ShowQuote="false" />

    <section class="tutorial-section">

        <h2 class="content">DIY Jewelry Tutorials</h2>

        <p class="subtitle">
            Choose a jewelry tutorial below and start creating your own handmade accessories.
        </p>

        <div class="card-container">

            <!-- Bracelet -->
            <div class="tutorial-card">

                <img src="Content/images/bracelet.jpg" alt="Bracelet" />

                <div class="card-body">

                    <h3>DIY Bracelet</h3>

                    <p>
                        Learn how to make a beautiful beaded bracelet using simple materials.
                    </p>

                    <a href="Bracelet.aspx" class="btn">
                        Start Tutorial
                    </a>

                </div>

            </div>

            <!-- Necklace -->
            <div class="tutorial-card">

                <img src="Content/images/necklace.jpg" alt="Necklace" />

                <div class="card-body">

                    <h3>DIY Necklace</h3>

                    <p>
                        Design your own stylish necklace with easy step-by-step instructions.
                    </p>

                    <a href="Necklace.aspx" class="btn">
                        Start Tutorial
                    </a>

                </div>

            </div>

            <!-- Earrings -->
            <div class="tutorial-card">

                <img src="Content/images/earrings.jpg" alt="Earrings" />

                <div class="card-body">

                    <h3>DIY Earrings</h3>

                    <p>
                        Create elegant handmade earrings suitable for beginners.
                    </p>

                    <a href="Earrings.aspx" class="btn">
                        Start Tutorial
                    </a>

                </div>

            </div>

            <!-- Ring -->
            <div class="tutorial-card">

                <img src="Content/images/ring.jpg" alt="Ring" />

                <div class="card-body">

                    <h3>DIY Ring</h3>

                    <p>
                        Make your own beautiful ring with simple crafting techniques.
                    </p>

                    <a href="Ring.aspx" class="btn">
                        Start Tutorial
                    </a>

                </div>

            </div>

        </div>

    </section>

    <footer>

        <h6>&copy; 2026 Knot Fine Co. All Rights Reserved.</h6>

    </footer>

</body>

</html>