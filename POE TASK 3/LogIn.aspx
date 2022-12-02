<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="POE_TASK_3.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
    <link href="styles/style.css" rel="stylesheet" />
    <link href="styles/font-awesome.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 723px;
            height: 126px;
            margin-left: 516px;
        }
        .auto-style3 {
            width: 280px;
        }
        .auto-style5 {
            width: 95px;
        }
        .auto-style7 {
            margin-right: 36px;
            margin-left: 706px;
        }
        .auto-style8 {
            width: 288px;
        }
        .auto-style9 {
            width: 1458px;
            margin-left: 0px;
        }
    </style>
</head>
<body>



    <!-- main -->
    <div class="main-agileits">
        <h1>Time Management Login </h1>
        <div class="login-form">
            <!-- login form -->
            <form id="form1" runat="server" class="auto-style9">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8">
                            <p>Username:</p>
                        </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtUserName" runat="server" Width="266px" CssClass="auto-style3"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <p>Password:</p>
                        </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtPassword" runat="server" Width="266px" CssClass="auto-style3"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <asp:Button ID="btnLogin" runat="server" CssClass="auto-style7" Text="Login" Width="353px" OnClick="btnLogin_Click" />

            </form>
            

            <div class="login-agileits-bottom">
                <h6><a href="Register.aspx">Sign-In</a>
                </h6>
            </div>


        </div>
    </div>

    <!-- //main -->

    <!-- js -->
    <script src="Scripts/superplaceholder.js"></script>
    <script>
        superplaceholder({
            el: txtUserName,
            sentences: ['john.smith11', 'lorem.ipsum55', 'example@name2'],
            options: {
                loop: true,
                startOnFocus: false
            }
        })
        superplaceholder({
            el: txtPassword,
            sentences: ['********', '****', '******'],
            options: {
                loop: true,
                startOnFocus: false
            }
        })
    </script>
    <!-- //js -->
    </form>
</body>
</html>
