<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Graph.aspx.cs" Inherits="POE_TASK_3.Reminder" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<script runat="server">
    private void Page_Load(object sender, EventArgs e)
    {

        SessionParameter empid = new SessionParameter();
        empid.Name = "UserID";
        empid.Type = TypeCode.Int32;
        empid.SessionField = "UserID";

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <link href="styles/style.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style3 {
            margin-left: 306px;
            margin-top: 31px;
        }
        .auto-style4 {
            width: 855px;
            height: 518px;
            margin-left: 513px;
        }
        </style>
</head>
<body style="height: 637px; margin-top: 82px; margin-bottom: 129px">
    <div class="main-agileits">
        <div class="login-form">
            <form id="form1" runat="server" class="auto-style4">
                <h1>Module Graph</h1>
                <asp:Chart ID="Chart1" runat="server" CssClass="auto-style1" Style="margin-right: 9; margin-left: 72px; margin-top: 16; margin-bottom: 33;" Width="753px" DataSourceID="SqlDataSource1" Palette="Excel" Height="310px">
                    <Series>
                        <asp:Series Name="Series1" YValuesPerPoint="4" XValueMember="ModuleName" YValueMembers="HoursSpent">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource1"
                    runat="server"
                    ConnectionString="<%$ ConnectionStrings:REGISTRATIONConnectionString %>"
                    SelectCommand="SELECT HoursSpent, ModuleName 
                            FROM Modules 
">
                </asp:SqlDataSource>




                <asp:Button ID="btnModules" runat="server" CssClass="auto-style3" Text="Add Modules" Width="247px" OnClick=" btnModules_Click" />




            </form>

        </div>
    </div>
</body>
</html>
