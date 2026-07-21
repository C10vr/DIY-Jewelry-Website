<%@ Control Language="C#" AutoEventWireup="true" %>
<header id="site-header">

    <div class="header-container">
        <div class="logo-box">
            <div>
                <a href="#">
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
    <div class="header-quote">
        <div>
            <h1><b>Knot Fine Co.</b></h1>
            <p class="slogan">The Money That Grows.</p>
        </div>
        <div class="why-us-button">
            <a href="#features" onclick="scrollToInfo()" class="cta-button">Why Us?</a>
        </div>
    </div>
</header>

<script>
    // Simple header-only sticky helper. Include this control on pages where header is needed.
    document.addEventListener('DOMContentLoaded', function () {
        const header = document.getElementById('site-header');
        if (!header) return;
        const headerQuote = document.querySelector('.header-quote');
        const sectionPadding = document.getElementById('products');

        function update() {
            const y = window.scrollY || document.documentElement.scrollTop;
            if (y > 400) {
                header.classList.add('sticky');
                if (headerQuote) headerQuote.classList.add('hidden-quote');
                if (sectionPadding) sectionPadding.classList.add('sectionPadding');
            } else {
                header.classList.remove('sticky');
                if (headerQuote) headerQuote.classList.remove('hidden-quote');
                if (sectionPadding) sectionPadding.classList.remove('sectionPadding');
            }
        }

        window.addEventListener('scroll', update, { passive: true });
        // initialize
        update();
    });
</script>
