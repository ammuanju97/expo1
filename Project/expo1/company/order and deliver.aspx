<%@ Page Title="" Language="C#" MasterPageFile="~/company/company.master" AutoEventWireup="true" CodeFile="order and deliver.aspx.cs" Inherits="company_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 445px;
        color: #FF0000;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <p><marquee direction="left" class="auto-style1"><asp:Label ID="Label10" runat="server" Text=""></asp:Label></marquee></p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        onrowcommand="GridView1_RowCommand" BackColor="LightGoldenrodYellow" 
    BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" 
    GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
    <Columns>
        <asp:BoundField DataField="name" HeaderText=" User Name" />
        <asp:BoundField DataField="country" HeaderText="Country" />
        <asp:BoundField DataField="place" HeaderText="Place" />
        <asp:BoundField DataField="emailid" HeaderText="Email" />
        <asp:BoundField DataField="mobileno" HeaderText="Phone" />
        <asp:BoundField DataField="total" HeaderText="Total" />
        <asp:TemplateField HeaderText="Deliver">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton2" runat="server" 
                    CommandArgument='<%# Eval("orderdetailsid") %>' CommandName="deliver">Deliver</asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
        <EmptyDataTemplate>
            <asp:LinkButton ID="LinkButton1" runat="server" 
                CommandArgument='<%# Eval("orderdetailsid") %>' CommandName="deliver">Deliver</asp:LinkButton>
        </EmptyDataTemplate>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
</asp:GridView>
</asp:Content>

