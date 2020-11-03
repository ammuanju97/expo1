<%@ Page Title="" Language="C#" MasterPageFile="~/common/commonmaster.master" AutoEventWireup="true" CodeFile="show.aspx.cs" Inherits="common_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
    AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource1" 
    ForeColor="#333333" GridLines="None" Height="435px" style="margin-left: 167px" 
    Width="469px">
    <AlternatingRowStyle BackColor="White" />
    <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
    <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
    <Fields>
        <asp:BoundField DataField="expotitle" HeaderText="expotitle" 
            SortExpression="expotitle" />
        <asp:BoundField DataField="expotype" HeaderText="expotype" 
            SortExpression="expotype" />
        <asp:BoundField DataField="country" HeaderText="country" 
            SortExpression="country" />
        <asp:BoundField DataField="subcategory" HeaderText="subcategory" 
            SortExpression="subcategory" />
        <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
        <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
        <asp:BoundField DataField="startingdate" HeaderText="startingdate" 
            SortExpression="startingdate" />
    </Fields>
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:expomanagementConnectionString21 %>" 
    SelectCommand="SELECT [expotitle], [expotype], [country], [subcategory], [place], [image], [startingdate] FROM [expodetails]">
</asp:SqlDataSource>
</asp:Content>

