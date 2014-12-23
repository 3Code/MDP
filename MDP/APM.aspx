<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="APM.aspx.cs" Inherits="MDP.APM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div>
        <h1>Angka Partisipasi Murni</h1>
        <p>(dalam satuan persen)</p>
    </div>
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource2">
        <Series>
            <asp:Series Name="Series1" XValueMember="jenjang_pendidikan" YValueMembers="apm">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DisdikReportConnectionString %>" SelectCommand="SELECT * FROM [apm]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PandaConnectionString %>" SelectCommand="SELECT * FROM [apm]"></asp:SqlDataSource>
</asp:Content>
