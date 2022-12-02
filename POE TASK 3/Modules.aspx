<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modules.aspx.cs" Inherits="POE_TASK_3.Modules" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <link href="styles/font-awesome.css" rel="stylesheet" />
    <link href="styles/style.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        td {
            color:azure;
            font-size: 20px;
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif
        }
        #form1 {
            height: 565px;
        }
        .auto-style1 {
            width: 48%;
            height: 376px;
            border-style: solid;
            border-width: 1px;
            margin-left: 512px;
            margin-top: 40px;
        }
        .auto-style2 {
            width: 328px;
            height: 56px;
        }
        .auto-style3 {
            margin-left: 20px;
        }
        .auto-style4 {
            width: 328px;
            height: 53px;
        }
        .auto-style5 {
            height: 53px;
            width: 364px;
        }
        .auto-style8 {
            margin-left: 31px;
            margin-right: 10px;
            margin-top: 5.6em;
            margin-bottom: 1px;
        }
        .auto-style9 {
            margin-left: 8px;
            margin-right: 10px;
            margin-top: 5.6em;
            margin-bottom: 1px;
        }
        .auto-style10 {
            height: 655px;
            width: 1456px;
            margin-right: 14;
            margin-top: 0;
            margin-bottom: 42px;
        }
        .auto-style11 {
            width: 364px;
            height: 56px;
        }
        .auto-style12 {
            margin-left: 501px;
            margin-right: 17px;
            margin-top: 1.2em;
            margin-bottom: 1px;
        }
        .auto-style13 {
            width: 328px;
            height: 41px;
        }
        .auto-style14 {
            height: 41px;
            width: 364px;
        }
        .auto-style15 {
            width: 328px;
            height: 38px;
        }
        .auto-style16 {
            height: 38px;
            width: 364px;
        }
        .auto-style17 {
            width: 328px;
            height: 35px;
        }
        .auto-style18 {
            width: 364px;
            height: 35px;
        }
        .auto-style19 {
            width: 328px;
            height: 31px;
        }
        .auto-style20 {
            height: 31px;
            width: 364px;
        }
        .auto-style21 {
            width: 328px;
            height: 45px;
        }
        .auto-style22 {
            height: 45px;
            width: 364px;
        }
        .auto-style23 {
            margin-left: 13px;
            margin-right: 26px;
            margin-top: 18px;
            margin-bottom: 1px;
        }
        
    </style>
</head>
<body style="width: 1581px; margin-right: 10px; margin-bottom: 40px; margin-top: 94px; height: 921px;">

    <h1>Module Details</h1>
    <form id="form1" runat="server" class="auto-style10">
        <table class="auto-style1">
            <tr>
                <td class="auto-style19">Enter Module Code:</td>
                <td class="auto-style20">
                    <asp:TextBox ID="txtModCode" runat="server" Width="266px" CssClass="auto-style3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">Enter Module Name:</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtModName" runat="server" Width="266px" CssClass="auto-style3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Enter Module Credits:</td>
                <td class="auto-style16">
                    <asp:TextBox ID="txtModCredit" runat="server" Width="266px" CssClass="auto-style3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Enter Class hours per week:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtClassHour" runat="server" Width="266px" CssClass="auto-style3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Enter Number of weeks in the semester:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtNumWeeks" runat="server" Width="266px" CssClass="auto-style3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">EnterNumber Of Hours Spent On The Module:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtHoursSpent" runat="server" Width="266px" CssClass="auto-style3" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">Enter Start Date of the Semester:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtStrtDate" runat="server" Width="266px" CssClass="auto-style3" placeholder="DD/MM/YYYY"></asp:TextBox>
                </td>
            </tr>
        </table>
       
        <div class="auto-style24">
            <div class="login-form">
                <asp:Button ID="btnSubmit" runat="server" CssClass="auto-style12" Height="45px" Text="Submit" Width="125px" OnClick="btnSubmit_Click" />
                <asp:Button ID="btnModules" runat="server" CssClass="auto-style9" Height="46px" Text="Show Modules" Width="136px" OnClick="btnShowModules_Click" />
                <asp:Button ID="btnGraphs" runat="server" CssClass="auto-style8" Height="47px" Text="Show Graphs" Width="132px" OnClick="btnGraph_Click" />
                <asp:Button ID="btnLogOut" runat="server" CssClass="auto-style23" Height="45px" Text="Log Out" Width="125px" OnClick="btnLogOut_Click" />
            </div>
        </div>
    </form>
   

</body>
</html>
