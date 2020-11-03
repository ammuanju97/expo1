<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="approveexb.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .sss {
        position:relative;
        left:-180px;
            top: 17px;
        }
        .auto-style1 {
            text-align: center;
            font-size: x-large;
        }
    .auto-style2 {
        color: #FF0000;
    }
    </style>

   <%-- onselectedindexchanged="GridView1_SelectedIndexChanged"--%>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="auto-style1">Exhibitor Request</h1><br />
    <p><marquee direction="left" class="auto-style2"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></marquee></p>
    <asp:GridView ID="GridView1" runat="server" CssClass="sss" AutoGenerateColumns="False" 
        onrowcommand="GridView1_RowCommand" BackColor="White" 
    BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" onselectedindexchanged="GridView1_SelectedIndexChanged" 
        >
        <Columns>
            <asp:BoundField DataField="exhibitorname" HeaderText="name" />
            <asp:BoundField DataField="gender" HeaderText="gender" />
            <asp:BoundField DataField="experience" HeaderText="experience" />
            <asp:BoundField DataField="country" HeaderText="country" />
            <asp:BoundField DataField="mobilenumber" HeaderText="mobilenumber" />
            <asp:BoundField DataField="emailid" HeaderText="emailid" />
            <asp:TemplateField HeaderText="photo">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "../image/"+Eval("photo") %>' Width="50px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Approve">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        CommandArgument='<%# Eval("logid") %>' CommandName="Approve">Approve</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;
                    <br/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Reject">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" 
                        CommandArgument='<%# Eval("logid") %>' CommandName="reject">reject</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
</asp:Content>

