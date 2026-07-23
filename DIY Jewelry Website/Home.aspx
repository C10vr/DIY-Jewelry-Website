<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DIY_Jewelry_Website.Home" %>
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

        <%-- Scripts --%>
        <script src="https://kit.fontawesome.com/cf1d4ca410.js" crossorigin="anonymous"></script>

    </head>

    <body>

        <%-- Header --%>

        <%@ Register Src="~/Controls/Header.ascx" TagPrefix="uc" TagName="Header" %>

        <uc:Header runat="server" id="SiteHeader" ShowQuote="true" />

        <%-- End of Header --%>

        <div id="content">
            <section id="products">
                <h2 class="content">Our Products</h2>
                <br>
                <div class="feature_box" href="#eplant">
                    <img src="Content/images/wood.jpg" alt="Why Choose Knot Fine Co." class="feature-img">
                    <div class="feature-box-content">
                        <h3>Local Made Bracelet</h3>
                        <p>$67</p>
                    </div>
                </div>
                <div class="feature_box" href="#eplant">
                    <img src="Content/images/earings.png" alt="Why Choose Knot Fine Co." class="feature-img">
                    <div class="feature-box-content">
                        <h3>Natural Pearl Earring</h3>
                        <p>$99</p>
                    </div>
                </div>
                <div class="feature_box" href="#eplant">
                    <img src="Content/images/box.png" alt="Why Choose Knot Fine Co." class="feature-img">
                    <div class="feature-box-content">
                        <h3>Wedding Jewelry Box</h3>
                        <p>$120</p>
                    </div>
                </div>
            </section>
            <br>
            <section id="features">
                <h2 class="content">Our Courses</h2>
                <div class="feature_box">
                    <img src="/Content/images/bracelet.png" alt="Bracelet" class="feature-img">
                    <h3>DIY Bracelet</h3>
                    <p>Create your own handmade bracelet with easy step-by-step instructions.</p>
                </div>
                <div class="feature_box">
                    <img src="/Content/images/earings.png" alt="Earrings" class="feature-img">
                    <h3>DIY Earrings</h3>
                    <p>Create your own handmade earrings with easy step-by-step instructions.</p>
                </div>
                <div class="feature_box">
                    <img src="/Content/images/ring.png" alt="Rings" class="feature-img">
                    <h3>DIY Rings</h3>
                    <p>Create your own handmade rings with easy step-by-step instructions.</p>
                </div>
            </section>

            <div class="footer">

                <div class="col-1">
                    <h3>USEFUL LINKS</h3>
                    <a href="About.aspx">
                        <p>About</p>
                    </a>
                    <a href="#blog">
                        <p>Blog</p>
                    </a>
                </div>

                <div class="col-2">
                    <h3>NEWSLETTER</h3>
                    <form>
                        <input type="email" placeholder="Your Email Address:" required>
                        <br>
                        <button type="submit">Subscribe Now</button>
                    </form>
                </div>
                <div class="col-3">
                    <h3>CONTACT</h3>
                    <p>123, XYZ Road <br>Kualar Lumpur, Malaysia, MY</p>
                    <div class="social-icons">
                        <a href="https://www.facebook.com/"><i class="fab fa-facebook"></i></a>
                        <a href="https://x.com/?&"><i class="fab fa-x-twitter"></i></a>
                        <a href="https://www.instagram.com/ethan.jz/"><i class="fab fa-instagram"></i></a>
                        <a href="#snapchat"><i class="fab fa-snapchat"></i></a>
                    </div>
                </div>
            </div>
        </div>

        <footer>
            <p><h6>&copy; 2026 Knot Fine Co. Company & Co. All rights reserved.</h6></p>
        </footer>

    </body>

</html>



