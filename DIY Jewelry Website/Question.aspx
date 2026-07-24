<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Question.aspx.cs" Inherits="DIY_Jewelry_Website.Question" %>
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
        <link rel="stylesheet" href="/Content/css/Tutorial.css" />

        <%-- Scripts --%>
        <script src="https://kit.fontawesome.com/cf1d4ca410.js" crossorigin="anonymous"></script>

    </head>

    <body>

        <form id="form1" runat="server">

        <%-- Header --%>

        <%@ Register Src="~/Controls/Header.ascx" TagPrefix="uc" TagName="Header" %>

        <uc:Header runat="server" ID="SiteHeader" />

        <%-- End of Header --%>

        <!-- Quiz panels -->

        <div id="content">
            <asp:Panel ID="pnlAccessDenied" runat="server" Visible="false" CssClass="access-denied">
                <h2 style="padding-left: 10vw; padding-top: 10vw; padding-bottom: 5px; font-size: 2vw;">Access Denied</h2>
                <p style="padding-left: 10vw; font-size: 1vw;">You must be a registered member to take this quiz.</p>
            </asp:Panel>

            <asp:Panel ID="pnlQuiz" runat="server">
                <asp:Literal ID="litInstructions" runat="server" Text="<h2>Jewelry Making Quiz — 10 Questions</h2><p>Select the best answer for each question, then click Submit to see your score.</p>"></asp:Literal>

                <asp:Panel ID="pnlQuestions" runat="server">
                    <!-- Q1 -->
                    <asp:Label ID="lblQ1" runat="server" Text="1. What is a commonly used metal for handmade jewelry due to its affordability and workability?"></asp:Label>
                    <asp:RadioButtonList ID="rblQ1" runat="server" RepeatDirection="Vertical">
                        <asp:ListItem Value="A">Platinum</asp:ListItem>
                        <asp:ListItem Value="B">Copper</asp:ListItem>
                        <asp:ListItem Value="C">Silver</asp:ListItem>
                        <asp:ListItem Value="D">Titanium</asp:ListItem>
                    </asp:RadioButtonList>

                    <!-- Q2 -->
                    <asp:Label ID="lblQ2" runat="server" Text="2. Which tool pair is essential for opening and closing jump rings and bending wire?"></asp:Label>
                    <asp:RadioButtonList ID="rblQ2" runat="server" RepeatDirection="Vertical">
                        <asp:ListItem Value="A">Wire cutter and hammer</asp:ListItem>
                        <asp:ListItem Value="B">Two pairs of pliers (chain-nose and round-nose)</asp:ListItem>
                        <asp:ListItem Value="C">File and drill</asp:ListItem>
                        <asp:ListItem Value="D">Soldering iron and torch</asp:ListItem>
                    </asp:RadioButtonList>

                    <!-- Q3 -->
                    <asp:Label ID="lblQ3" runat="server" Text="3. Before starting a piece, what's a recommended first step?"></asp:Label>
                    <asp:RadioButtonList ID="rblQ3" runat="server" RepeatDirection="Vertical">
                        <asp:ListItem Value="A">Heat the metal</asp:ListItem>
                        <asp:ListItem Value="B">Lay out and plan a jewelry design</asp:ListItem>
                        <asp:ListItem Value="C">Apply finishing lacquer</asp:ListItem>
                        <asp:ListItem Value="D">Polish gemstones</asp:ListItem>
                    </asp:RadioButtonList>

                    <!-- Q4 -->
                    <asp:Label ID="lblQ4" runat="server" Text="4. Which gemstone is known for its hardness and is often used in durable jewelry?"></asp:Label>
                    <asp:RadioButtonList ID="rblQ4" runat="server" RepeatDirection="Vertical">
                        <asp:ListItem Value="A">Opal</asp:ListItem>
                        <asp:ListItem Value="B">Pearl</asp:ListItem>
                        <asp:ListItem Value="C">Sapphire</asp:ListItem>
                        <asp:ListItem Value="D">Turquoise</asp:ListItem>
                    </asp:RadioButtonList>

                    <!-- Q5 -->
                    <asp:Label ID="lblQ5" runat="server" Text="5. When selecting gold for jewelry, what does the karat indicate?"></asp:Label>
                    <asp:RadioButtonList ID="rblQ5" runat="server" RepeatDirection="Vertical">
                        <asp:ListItem Value="A">The type of clasp used</asp:ListItem>
                        <asp:ListItem Value="B">Purity of gold</asp:ListItem>
                        <asp:ListItem Value="C">The manufacturer</asp:ListItem>
                        <asp:ListItem Value="D">The color finish</asp:ListItem>
                    </asp:RadioButtonList>

                    <!-- Q6 -->
                    <asp:Label ID="lblQ6" runat="server" Text="6. Which finish creates a matte look on metal?"></asp:Label>
                    <asp:RadioButtonList ID="rblQ6" runat="server" RepeatDirection="Vertical">
                        <asp:ListItem Value="A">High polish</asp:ListItem>
                        <asp:ListItem Value="B">Brushed</asp:ListItem>
                        <asp:ListItem Value="C">Mirror finish</asp:ListItem>
                        <asp:ListItem Value="D">Plating</asp:ListItem>
                    </asp:RadioButtonList>

                    <!-- Q7 -->
                    <asp:Label ID="lblQ7" runat="server" Text="7. What is a safe way to clean most finished costume jewelry?"></asp:Label>
                    <asp:RadioButtonList ID="rblQ7" runat="server" RepeatDirection="Vertical">
                        <asp:ListItem Value="A">Soak in bleach</asp:ListItem>
                        <asp:ListItem Value="B">Use mild soap and a soft cloth</asp:ListItem>
                        <asp:ListItem Value="C">Use toothpaste and a brush</asp:ListItem>
                        <asp:ListItem Value="D">Polish with abrasive powder</asp:ListItem>
                    </asp:RadioButtonList>

                    <!-- Q8 -->
                    <asp:Label ID="lblQ8" runat="server" Text="8. When soldering small pieces, which safety steps are important?"></asp:Label>
                    <asp:RadioButtonList ID="rblQ8" runat="server" RepeatDirection="Vertical">
                        <asp:ListItem Value="A">Work in a cramped space</asp:ListItem>
                        <asp:ListItem Value="B">Wear eye protection and ensure ventilation</asp:ListItem>
                        <asp:ListItem Value="C">Solder with bare hands</asp:ListItem>
                        <asp:ListItem Value="D">Use gasoline as a cleaner</asp:ListItem>
                    </asp:RadioButtonList>

                    <!-- Q9 -->
                    <asp:Label ID="lblQ9" runat="server" Text="9. Which material is commonly used for stretch bracelets? "></asp:Label>
                    <asp:RadioButtonList ID="rblQ9" runat="server" RepeatDirection="Vertical">
                        <asp:ListItem Value="A">Wire cable</asp:ListItem>
                        <asp:ListItem Value="B">Elastic cord</asp:ListItem>
                        <asp:ListItem Value="C">Leather strip</asp:ListItem>
                        <asp:ListItem Value="D">Ribbon</asp:ListItem>
                    </asp:RadioButtonList>

                    <!-- Q10 -->
                    <asp:Label ID="lblQ10" runat="server" Text="10. Where is a good place to learn new jewelry-making techniques?"></asp:Label>
                    <asp:RadioButtonList ID="rblQ10" runat="server" RepeatDirection="Vertical">
                        <asp:ListItem Value="A">In the dark</asp:ListItem>
                        <asp:ListItem Value="B">By guessing</asp:ListItem>
                        <asp:ListItem Value="C">Tutorials/Courses section</asp:ListItem>
                        <asp:ListItem Value="D">Breaking tools intentionally</asp:ListItem>
                    </asp:RadioButtonList>

                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                </asp:Panel>

                <asp:Panel ID="pnlResults" runat="server" Visible="false">
                    <asp:Label ID="lblScore" runat="server" Text=""></asp:Label>
                    <asp:PlaceHolder ID="phAnswers" runat="server"></asp:PlaceHolder>
                </asp:Panel>
            </asp:Panel>
        </div>

        <footer>
            <p><h6>&copy; 2026 Knot Fine Co. Company &amp; Co. All rights reserved.</h6></p>
        </footer>

        </form>

    </body>

</html>



