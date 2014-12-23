<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InKab.aspx.cs" Inherits="MDP.InKab" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Chart ID="Chart1" runat="server" DataSourceID="KabDataSource">
        <Series>
            <asp:Series ChartArea="ChartArea1" ChartType="Bar" Name="Series1" XValueMember="status_kepegawaian" YValueMembers="usia">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    <asp:SqlDataSource ID="KabDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:PandaConnectionString %>" SelectCommand="SELECT * FROM [guru]"></asp:SqlDataSource>
</asp:Content>
