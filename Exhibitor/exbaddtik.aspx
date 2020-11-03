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
        .s2
        {
            position:relative; left:-80px;
        top: -4px;
    }
    .style3
    {
        height: 24px;
    }
        .auto-style2 {
            color: red;
        }
    .auto-style3 {
        font-size: x-large;
        text-align: center;
    }
    .auto-style4 {
        text-align: center;
        font-size: large;
    }
    .auto-style5 {
        font-size: medium;
    }
        .auto-style6 {
            color: red;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0" 
        onactiveviewchanged="MultiView1_ActiveViewChanged">
        <asp:View ID="View1" runat="server">
      <p> <marquee direction="left" class="auto-style2"><asp:Label ID="Label4" runat="server" Text=""></asp:Label></marquee></p>
    <h1 class="auto-style3">ISSUE TICKETS</h1>
            <asp:GridView ID="GridView1" CssClass="s2" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="expoid" 
        onrowcommand="GridView1_RowCommand" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" CellPadding="4" 
                ForeColor="#333333" GridLines="None" DataSourceID="SqlDataSource3">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowEditButton="True" />
        <asp:BoundField DataField="expotitle" ControlStyle-Width="80px" HeaderText="expotitle" 
            SortExpression="expotitle" />
        <asp:BoundField DataField="expotype" ControlStyle-Width="80px" HeaderText="expotype" 
            SortExpression="expotype" />
        <asp:BoundField DataField="subcategory" ControlStyle-Width="80px" HeaderText="subcategory" 
            SortExpression="subcategory" />
        <asp:BoundField DataField="country" ControlStyle-Width="60px" HeaderText="country" 
            SortExpression="country" />
        <asp:BoundField DataField="place" ControlStyle-Width="80px" HeaderText="place" 
            SortExpression="place" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" 
                    CommandArgument='<%# Eval("expoid") %>' CommandName="ticket">Issue Tickets</asp:LinkButton>
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:expomanagementConnectionString42 %>" 
                SelectCommand="SELECT * FROM [expodetails] WHERE (([status] = @status) AND ([exhibitorId] = @exhibitorId))" 
                onselecting="SqlDataSource3_Selecting">
                <SelectParameters>
                    <asp:Parameter DefaultValue="approved" Name="status" Type="String" />
                    <asp:SessionParameter Name="exhibitorId" SessionField="userid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:expomanagementConnectionString23 %>" DeleteCommand="DELETE FROM [expodetails] WHERE [expoId] = @expoId" InsertCommand="INSERT INTO [expodetails] ([exhibitorId], [expotitle], [expotype], [category], [subcategory], [country], [state], [district], [place], [numberofbooth], [image], [plans], [startingdate], [endingdate], [status]) VALUES (@exhibitorId, @expotitle, @expotype, @category, @subcategory, @country, @state, @district, @place, @numberofbooth, @image, @plans, @startingdate, @endingdate, @status)" SelectCommand="SELECT * FROM [expodetails] WHERE ([exhibitorId] = @exhibitorId)" UpdateCommand="UPDATE [expodetails] SET [exhibitorId] = @exhibitorId, [expotitle] = @expotitle, [expotype] = @expotype, [category] = @category, [subcategory] = @subcategory, [country] = @country, [state] = @state, [district] = @district, [place] = @place, [numberofbooth] = @numberofbooth, [image] = @image, [plans] = @plans, [startingdate] = @startingdate, [endingdate] = @endingdate, [status] = @status WHERE [expoId] = @expoId">
                <DeleteParameters>
                    <asp:Parameter Name="expoId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="exhibitorId" Type="Int32" />
                    <asp:Parameter Name="expotitle" Type="String" />
                    <asp:Parameter Name="expotype" Type="String" />
                    <asp:Parameter Name="category" Type="String" />
                    <asp:Parameter Name="subcategory" Type="String" />
                    <asp:Parameter Name="country" Type="String" />
                    <asp:Parameter Name="state" Type="String" />
                    <asp:Parameter Name="district" Type="String" />
                    <asp:Parameter Name="place" Type="String" />
                    <asp:Parameter Name="numberofbooth" Type="String" />
                    <asp:Parameter Name="image" Type="String" />
                    <asp:Parameter Name="plans" Type="String" />
                    <asp:Parameter Name="startingdate" Type="String" />
                    <asp:Parameter Name="endingdate" Type="String" />
                    <asp:Parameter Name="status" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="exhibitorId" SessionField="userid" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="exhibitorId" Type="Int32" />
                    <asp:Parameter Name="expotitle" Type="String" />
                    <asp:Parameter Name="expotype" Type="String" />
                    <asp:Parameter Name="category" Type="String" />
                    <asp:Parameter Name="subcategory" Type="String" />
                    <asp:Parameter Name="country" Type="String" />
                    <asp:Parameter Name="state" Type="String" />
                    <asp:Parameter Name="district" Type="String" />
                    <asp:Parameter Name="place" Type="String" />
                    <asp:Parameter Name="numberofbooth" Type="String" />
                    <asp:Parameter Name="image" Type="String" />
                    <asp:Parameter Name="plans" Type="String" />
                    <asp:Parameter Name="startingdate" Type="String" />
                    <asp:Parameter Name="endingdate" Type="String" />
                    <asp:Parameter Name="status" Type="String" />
                    <asp:Parameter Name="expoId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
<%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
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
</asp:SqlDataSource>--%>
            
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
                <tr>
                    <td class="auto-style4" colspan="2">VIEW TICKETS<br />
                        <marquee class="auto-style6" direction="left"><asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                        </marquee><br />
                        <br />
                        <asp:GridView ID="GridView2" runat="server" CssClass="auto-style5" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" DataKeyNames="ticketId" OnRowDeleting="GridView2_RowDeleting" Width="438px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="expotitle" HeaderText="ExpoName" SortExpression="expoId" />
                                <asp:BoundField DataField="tickettype" HeaderText="tickettype" SortExpression="tickettype" />
                                <asp:BoundField DataField="ticketrate" HeaderText="ticketrate" SortExpression="ticketrate" />
                                <asp:CommandField HeaderText="DELETE" ShowDeleteButton="True" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:expomanagementConnectionString24 %>" SelectCommand="SELECT * FROM [exbaddticket] inner join [expodetails] on exbaddticket.expoId=expodetails.expoId" DeleteCommand="delete from exbaddticket where ticketId=@ticketId">
                          <DeleteParameters>
        <asp:Parameter Name="ticketId" Type="Int32" />
    </DeleteParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            </asp:View>
</asp:MultiView>
    </asp:Content>

