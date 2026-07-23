<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>

<html lang="en">

<head runat="server">

    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Courses - Knot Fine Co.</title>

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

    <script runat="server">
        protected void Page_Load(object sender, EventArgs e)
        {
            var watched = Session["WatchedCourses"] as System.Collections.Generic.HashSet<string>;
            int count = watched != null ? watched.Count : 0;
            if (lblWatchedCount != null) lblWatchedCount.Text = $"Courses watched this session: {count}";
        }
    </script>

    <uc:Header runat="server" ID="SiteHeaderCourses" ShowQuote="false" />

    <section class="tutorial-section">

        <h2 class="content">DIY Jewelry Courses</h2>

        <asp:Label ID="lblWatchedCount" runat="server" CssClass="subtitle" />

        <p class="subtitle">
            Choose a course below and start creating your own handmade accessories.
        </p>

        <div class="card-container">

            <!-- Bracelet -->
            <div class="tutorial-card">

                <img src="/Content/images/bracelet.png" alt="Bracelet" />

                <div class="card-body">

                    <h3>DIY Bracelet</h3>

                    <p>
                        Learn how to make a beautiful beaded bracelet using simple materials.
                    </p>

                    <a href="Watch.aspx?url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Ft%3D147%26v%3D2Sws1xKG9Yw&id=bracelet" target="_blank" class="btn">
                        Watch Course
                    </a>

                </div>

            </div>

            <!-- Necklace -->
            <div class="tutorial-card">

                <img src="/Content/images/necklace.png" alt="Necklace" />

                <div class="card-body">

                    <h3>DIY Necklace</h3>

                    <p>
                        Design your own stylish necklace with easy step-by-step instructions.
                    </p>

                    <a href="Watch.aspx?url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Ft%3D233%26v%3D2Sws1xKG9Yw&id=necklace" target="_blank" class="btn">
                        Watch Course
                    </a>

                </div>

            </div>

            <!-- Earrings -->
            <div class="tutorial-card">

                <img src="/Content/images/earings.png" alt="Earrings" />

                <div class="card-body">

                    <h3>DIY Earrings</h3>

                    <p>
                        Create elegant handmade earrings suitable for beginners.
                    </p>

                    <a href="Watch.aspx?url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Ft%3D133%26v%3D2Sws1xKG9Yw&id=earrings"  target="_blank" class="btn">
                        Watch Course
                    </a>

                </div>

            </div>

            <!-- Ring -->
            <div class="tutorial-card">

                <img src="/Content/images/ring.png" alt="Ring" />

                <div class="card-body">

                    <h3>DIY Ring</h3>

                    <p>
                        Make your own beautiful ring with simple crafting techniques.
                    </p>

                    <a href="Watch.aspx?url=https%3A%2F%2Fyoutube.com%2Fshorts%2FVMsVSlaWQ5k%3Fsi%3DYJEBt5h-dUr8ouuR&id=ring" target="_blank" class="btn">
                        Watch Course
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
