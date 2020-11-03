<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="approveexpo.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">.s
        {
            position:relative; left:-35%;
        }
       
    .auto-style1 {
        color: #FF0000;
    }
</style>
</asp:Content>
<%--DataSourceID="SqlDataSource1"--%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p><marquee direction="left" class="auto-style1"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></marquee>
    <asp:GridView ID="GridView1" CssClass="s" runat="server" AutoGenerateColumns="False" 
        onrowcommand="GridView1_RowCommand" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
    CellPadding="4" ForeColor="#333333" GridLines="None" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="exhibitorname" HeaderText="EXHIBITOR" />
            <asp:BoundField DataField="expotitle" HeaderText="EXPO" />
            <asp:BoundField DataField="expotype" HeaderText="TYPE" />
            <asp:BoundField DataField="country" HeaderText="COUNTRY" />
            <asp:BoundField DataField="startingdate" HeaderText="START" />
            <asp:BoundField DataField="endingdate" HeaderText="END" />
            <asp:TemplateField HeaderText="Approve">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        CommandArgument='<%# Eval("exhibitorid") %>' CommandName="Approve">Approve</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Reject">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="reject" 
                        CommandArgument='<%# Eval("expoId") %>'>Reject</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:expomanagementConnectionString32 %>" 
        SelectCommand="SELECT * FROM [admincat]"></asp:SqlDataSource>
</asp:Content>

