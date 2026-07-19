<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="DIY_Jewelry_Website.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Reset Password"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label" runat="server" Text="username"></asp:Label>
            <asp:TextBox ID="username" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="email" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="New Password"></asp:Label>
            <asp:TextBox ID="newPass" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Confirm New Password"></asp:Label>
            <asp:TextBox ID="CnewPass" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Reset" />
        </div>
    </form>
</body>
</html>
