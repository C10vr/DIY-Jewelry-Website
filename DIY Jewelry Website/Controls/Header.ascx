<%@ Control Language="C#" AutoEventWireup="true" %>

<script runat="server">

    public bool ShowQuote { get; set; } = false;

</script>

<header id="header">

    <div class="header-container">
        <div class="logo-box">
            <div>
                <a href="Home.aspx">
                    <img class="logo" src="/Content/images/Logo.png" />
                </a>
            </div>

            <div class="top-bar">
                <h2>Join Us</h2>
                <h2>About Us</h2>
                <a href="Login.aspx" style="text-decoration: none; color: inherit;"><h2>Log In</h2></a>
            </div>

            <!-- Responsive Hamburger --> 

            <div class="hamburger">
                <i class="fa-solid fa-bars"></i>
            </div>

        </div>
    </div>

    <% if (ShowQuote) { %>

    <div class="header-quote">

        <div>
            <h1><b>Knot Fine Co.</b></h1>
            <p class="slogan">The Money That Grows.</p>
        </div>
        <div class="why-us-button">
            <a href="#features" onclick="scrollToInfo()" class="cta-button">Why Us?</a>
        </div>

    </div>
    <% } %>
</header>

<script>

    (function () {

        const header = document.getElementById('header');
        const headerQuote = document.querySelector('.header-quote');
        let sectionPadding = document.querySelector('#content, #section');

        window.onscroll = function () {
            if (!sectionPadding) sectionPadding = document.querySelector('#content, #section');
            if (document.body.scrollTop > 250 || document.documentElement.scrollTop > 250) {

                if (header) header.classList.add("sticky");
                if (headerQuote) headerQuote.classList.add('hidden-quote');
                if (sectionPadding) sectionPadding.classList.add('sectionPadding');

            } else {

                if (header) header.classList.remove("sticky");
                if (headerQuote) headerQuote.classList.remove('hidden-quote');
                if (sectionPadding) sectionPadding.classList.remove('sectionPadding');

            }
        };

        window.onscroll();

    })();

</script>
