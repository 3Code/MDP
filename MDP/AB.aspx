<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AB.aspx.cs" Inherits="MDP.AB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1>Angka Bertahan</h1>
        <p>(dalam satuan persen)</p>
    </div>
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
        <Series>
            <asp:Series Name="Series1" XValueMember="jp" YValueMembers="ab">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DisdikReportConnectionString %>" SelectCommand="SELECT * FROM [ab]"></asp:SqlDataSource>
</asp:Content>
