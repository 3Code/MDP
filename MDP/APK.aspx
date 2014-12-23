<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="APK.aspx.cs" Inherits="MDP.APK" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1>Angka Partisipasi Kasar</h1>
        <p>(dalam satuan persen)</p>
    </div>
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
        <Series>
            <asp:Series Name="Series1" XValueMember="jenjang_pendidikan" YValueMembers="apk">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DisdikReportConnectionString %>" SelectCommand="SELECT * FROM [apk]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="PandaDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:PandaConnectionString %>" SelectCommand="SELECT * FROM [apk]"></asp:SqlDataSource>
</asp:Content>
