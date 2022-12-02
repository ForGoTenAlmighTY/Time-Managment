<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="POE_TASK_3.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="styles/style.css" rel="stylesheet" />
    <link href="styles/font-awesome.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 439px;
            margin-left: 9px;
            margin-right: 0px;
            margin-top: 0;
            margin-bottom: 17px;
        }
        .auto-style2 {
            width: 146px;
        }
        .auto-style3 {
            margin-left: 14;
        }
        .auto-style4 {
            width: 453px;
            height: 306px;
            margin-left: 23px;
        }
        .auto-style5 {
            width: 47%;
            margin: 1.5em auto;
        }
    </style>
</head>
<body>
    <!-- main -->
    <div class="main-agileits">
        <h1>Time Management Registration </h1>
        <div class="auto-style5">
            <!-- login form -->
            <div class="login-form">
                <div class="login-agileits-top">
                     <form id="form1" runat="server" class="auto-style4">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <p>Username:</p>
                        </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtUserName" runat="server" Width="266px" CssClass="auto-style3"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <p>Password:</p>
                        </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtPassword" runat="server" Width="266px" CssClass="auto-style3"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <asp:Button ID="btnRegister" runat="server" CssClass="auto-style7" Text="Register" Width="353px" OnClick="btnRegister_Click" style="margin-left: 58px" />

            </form>
                </div>


            </div>
        </div>
    </div>
</body>
</html>
