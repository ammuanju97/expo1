<%@ Page Title="" Language="C#" MasterPageFile="~/Exhibitor/ExhibitorMaster.master" AutoEventWireup="true" CodeFile="exbaddtik.aspx.cs" Inherits="Exhibitor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: center;
        }
    .style3
    {
        height: 24px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0" 
        onactiveviewchanged="MultiView1_ActiveViewChanged">
        <asp:View ID="View1" runat="server">
       
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="expoid" DataSourceID="SqlDataSource1" 
        onrowcommand="GridView1_RowCommand" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" CellPadding="4" 
                ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowEditButton="True" />
        <asp:BoundField DataField="expotitle" HeaderText="expotitle" 
            SortExpression="expotitle" />
        <asp:BoundField DataField="expotype" HeaderText="expotype" 
            SortExpression="expotype" />
        <asp:BoundField DataField="subcategory" HeaderText="subcategory" 
            SortExpression="subcategory" />
        <asp:BoundField DataField="country" HeaderText="country" 
            SortExpression="country" />
        <asp:BoundField DataField="place" HeaderText="place" 
            SortExpression="place" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" 
                    CommandArgument='<%# bind("expoid") %>' CommandName="ticket">Issue Tickets</asp:LinkButton>
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:expomanagementConnectionString10 %>" 
    
                SelectCommand="SELECT [expoid], [exhibitorid], [expotitle], [expotype], [subcategory], [country], [place], [numberofbooth], [startingdate] FROM [expodetails] WHERE ([exhibitorid] = @exhibitorid)" 
                DeleteCommand="DELETE FROM [expodetails] WHERE [expoid] = @expoid" 
                InsertCommand="INSERT INTO [expodetails] ([exhibitorid], [expotitle], [expotype], [subcategory], [country], [place], [numberofbooth], [startingdate]) VALUES (@exhibitorid, @expotitle, @expotype, @subcategory, @country, @place, @numberofbooth, @startingdate)" 
                UpdateCommand="UPDATE [expodetails] SET [exhibitorid] = @exhibitorid, [expotitle] = @expotitle, [expotype] = @expotype, [subcategory] = @subcategory, [country] = @country, [place] = @place, [numberofbooth] = @numberofbooth, [startingdate] = @startingdate WHERE [expoid] = @expoid">
    <DeleteParameters>
        <asp:Parameter Name="expoid" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="exhibitorid" Type="Int32" />
        <asp:Parameter Name="expotitle" Type="String" />
        <asp:Parameter Name="expotype" Type="String" />
        <asp:Parameter Name="subcategory" Type="String" />
        <asp:Parameter Name="country" Type="String" />
        <asp:Parameter Name="place" Type="String" />
        <asp:Parameter Name="numberofbooth" Type="String" />
        <asp:Parameter Name="startingdate" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:SessionParameter Name="exhibitorid" SessionField="logid" Type="Int32" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="exhibitorid" Type="Int32" />
        <asp:Parameter Name="expotitle" Type="String" />
        <asp:Parameter Name="expotype" Type="String" />
        <asp:Parameter Name="subcategory" Type="String" />
        <asp:Parameter Name="country" Type="String" />
        <asp:Parameter Name="place" Type="String" />
        <asp:Parameter Name="numberofbooth" Type="String" />
        <asp:Parameter Name="startingdate" Type="String" />
        <asp:Parameter Name="expoid" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
            
<br /> </asp:View>
<asp:View ID="View2" runat="server">
            <table class="style1">
                <tr>
                    <td class="style2" colspan="2">
                        TICKET DETAILS</td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp; <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="TICKET TYPE"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="textbox">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Single</asp:ListItem>
                            <asp:ListItem>Family(4)</asp:ListItem>
                            <asp:ListItem>Children</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label3" runat="server" Text=" RATE"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="enter rate"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                            Text="ADD TICKET DETAILS" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            </asp:View>
</asp:MultiView>
    </asp:Content>

