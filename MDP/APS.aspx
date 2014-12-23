<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="APS.aspx.cs" Inherits="MDP.APS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div>
        <h1>Angka Putus Sekolah</h1>
        <p>(dalam satuan persen)</p>
    </div>
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
        <Series>
            <asp:Series Name="Series1" XValueMember="jp" YValueMembers="aps">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DisdikReportConnectionString %>" SelectCommand="SELECT * FROM [aps]"></asp:SqlDataSource>
</asp:Content>
