<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="DIY_Jewelry_Website.About" %>

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

    <div>
        <section class="tutorial-section">

            <h1 class="content">About Knot Fine Co.</h1>

            <div class="content-paragraph">

                <h2 class="subtitle">
                    Made from Scratch, Made to Last
                </h2>
                <p>
                    At Knot Fine Co., jewelry isn't assembled — it's made. Every piece begins as raw material and takes shape entirely in our hands, from the first sketch to the final polish. No shortcuts, no mass production lines, no pieces pulled from a catalog of parts. Just craftsmanship, start to finish.
                </p>

                <h2 class="subtitle">
                    Our Story
                </h2>
                <p>
                    Knot Fine Co. was born from a simple frustration: too much jewelry today is manufactured at scale, stamped out by machines, and sold as if it were something special. We wanted to do things differently. We wanted every ring, necklace, and bracelet that left our hands to actually mean something — to carry the marks of real work and real care.
                </p>
                <p>
                    So we went back to the basics. We learned to melt and pour metal, to cut and set stones, to file, solder, and polish until a piece felt right. What started as a small, stubborn commitment to doing things the hard way has grown into Knot Fine Co. — but the philosophy hasn't changed one bit
                </p>

                <h2 class="subtitle" style="margin-top: 40px;">
                    Why "From Scratch" Matters
                </h2>
                <p>
                    When jewelry is made from scratch, every decision is intentional:
                </p>
                <p style="text-align: left;">
                    • <strong>The material</strong> is chosen, not just sourced — we know exactly where it came from and why it's right for the piece.<br /><br />
                    • <strong>The design</strong> is shaped by hand, allowing for subtle details that give each piece character no mold ever could.<br /><br />
                    • <strong>The construction</strong> is done slowly and carefully, so the final product is built to actually last a lifetime, not just look good in a product photo.
                </p>
                <p>
                    This means every Knot Fine Co. piece is, in its own small way, one of a kind — even when we make more than one.
                </p>

                <h2 class="subtitle" style="margin-top: 40px;">
                    What We Believe
                </h2>
                 <p style="text-align: left;">
                     • <strong>Quality over speed.</strong> We'd rather take the time to get it right than rush something out the door.<br /><br />
                     • <strong>Transparency.</strong> You should know how your jewelry was made and what it's made of.<br /><br />
                     • <strong>Wearable art.</strong> Jewelry should feel personal — something you choose, not something you settle for.
                 </p>

                <h2 class="subtitle" style="margin-top: 40px;">
                    Join the Knot
                </h2>
                <p style="text-align: left;">
                    Every knot tells a story of connection — two threads, tied together, made stronger for it. That's what we hope our jewelry represents: a small, lasting bond between craftsmanship and the person who wears it.
                </p>
                <p style="text-align: left;">
                    Thank you for supporting handmade. Thank you for choosing something made from scratch. <strong>— The Knot Fine Co.</strong>
                </p>

            </div>

        </section>
    </div>
    <footer>

        <h6>&copy; 2026 Knot Fine Co. All Rights Reserved.</h6>

    </footer>

</body>

</html>