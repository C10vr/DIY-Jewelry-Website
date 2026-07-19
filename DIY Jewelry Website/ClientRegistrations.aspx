<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientRegistrations.aspx.cs" Inherits="DIY_Jewelry_Website.ClientRegistrations" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Registration Page"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="First Name: "></asp:Label>
            <asp:TextBox ID="fname" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="last Name: "></asp:Label>
            <asp:TextBox ID="lname" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
            <asp:DropDownList ID="gender" runat="server">
                <asp:ListItem>F</asp:ListItem>
                <asp:ListItem>M</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Country: "></asp:Label>
            <asp:TextBox ID="country" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Email: "></asp:Label>
            <asp:TextBox ID="email" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="UserName: "></asp:Label>
            <asp:TextBox ID="username" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Password: "></asp:Label>
            <asp:TextBox ID="pwd" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="errMsg" runat="server"></asp:Label>
&nbsp;<asp:Label ID="usertype" runat="server" Text="member"></asp:Label>
            <br />
            <br />
            <div>
                <h2><a href="ForgotPassword.aspx">Forgot Password?</a></h2>
            </div>
            <asp:Button ID="Button1" runat="server" Text="SignUp" OnClick="Button1_Click" />
            <br />
        </div>
    </form>
</body>
</html>
