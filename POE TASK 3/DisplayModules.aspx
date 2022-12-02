<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayModules.aspx.cs" Inherits="POE_TASK_3.DisplayModules" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="styles/font-awesome.css" rel="stylesheet" />
    <link href="styles/style.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 433px;
            margin-top: 0px;
        }
        .auto-style2 {
            margin-left: 88px;
            margin-right: 35px;
            margin-top: 1.4em;
            margin-bottom: 13px;
        }
        .auto-style3 {
            margin-left: 586px;
            margin-right: 35px;
            margin-top: 20px;
            margin-bottom: 13px;
        }
        .auto-style4 {
            height: 66px;
            margin-top: 127px;
            margin-bottom: 44px;
        }
        </style>
</head>
<body style="height: 381px; margin-bottom: 123px">
    <div class="main-agileits">
        <div class="login-form">
            <form id="form1" runat="server">

                <h1 class="auto-style4">Your Modules<asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ModuleCode" DataValueField="Numweeks"></asp:ListBox>
                </h1>


                <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1" Height="177px" Width="979px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:BoundField DataField="ModuleCode" HeaderText="Module Code" SortExpression="ModuleCode" />
                        <asp:BoundField DataField="ModuleName" HeaderText="Module Name" SortExpression="ModuleName" />
                        <asp:BoundField DataField="ModuleCredit" HeaderText="Module Credit" SortExpression="ModuleCredit" />
                        <asp:BoundField DataField="Classhour" HeaderText="Class hour" SortExpression="Classhour" />
                        <asp:BoundField DataField="Numweeks" HeaderText="Number of weeks in semester" SortExpression="Numweeks" />
                        <asp:BoundField DataField="Date" HeaderText="Start Date of the semester" SortExpression="Date" />
                        <asp:BoundField DataField="HoursSpent" HeaderText="Hours Spent in a module" SortExpression="HoursSpent" />
                        <asp:BoundField DataField="SelfStudy" HeaderText="Self Study" SortExpression="SelfStudy" />
                        <asp:BoundField DataField="Remaining" HeaderText="Remaining hours" SortExpression="Remaining" />
                    </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>


                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:REGISTRATIONConnectionString %>" SelectCommand="SELECT m.ModuleCode, m.ModuleName, m.ModuleCredit, m.Classhour, m.Numweeks, m.Date, m.HoursSpent, m.SelfStudy, m.Remaining FROM Modules AS m INNER JOIN USERS u ON m.UserID = u.UserID"></asp:SqlDataSource>


                <asp:Button ID="btnModules" runat="server" Height="57px" Text="Add Modules" Width="197px" CssClass="auto-style3" OnClick="btnModules_Click" />

                <asp:Button ID="btnGraph" runat="server" Height="53px" Text="Show Graph" Width="197px" CssClass="auto-style2" OnClick="btnGraph_Click" />

            </form>

        </div>
    </div>
</body>
</html>
