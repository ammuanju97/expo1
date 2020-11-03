<%@ Page Title="" Language="C#" MasterPageFile="~/Exhibitor/ExhibitorMaster.master" AutoEventWireup="true" CodeFile="invitecompany.aspx.cs" Inherits="Exhibitor_Default" %>

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
        .auto-style2 {
            color: red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" ActiveViewIndex="0" runat="server" 
        onactiveviewchanged="MultiView1_ActiveViewChanged">
    
    <asp:View ID="View1" runat="server">

       <p> <marquee direction="left" class="auto-style2"><asp:Label ID="Label4" runat="server" Text=""></asp:Label></marquee></p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="companyId" DataSourceID="SqlDataSource2" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            onrowcommand="GridView1_RowCommand" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2">
            <Columns>
                <asp:BoundField DataField="companyname" HeaderText="companyname" 
                    SortExpression="companyname" />
                <asp:BoundField DataField="companytype" HeaderText="companytype" 
                    SortExpression="companytype" />
                <asp:BoundField DataField="country" HeaderText="country" 
                    SortExpression="country" />
                <asp:BoundField DataField="landmark" HeaderText="landmark" 
                    SortExpression="landmark" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" 
                            CommandArgument='<%# Eval("companyid") %>' CommandName="invite">Invite</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:expomanagementConnectionString36 %>" 
            DeleteCommand="DELETE FROM [companyregist] WHERE [companyId] = @companyId" 
            InsertCommand="INSERT INTO [companyregist] ([logid], [companyname], [companytype], [companyexperience], [country], [state], [district], [streetaddress], [landmark]) VALUES (@logid, @companyname, @companytype, @companyexperience, @country, @state, @district, @streetaddress, @landmark)" 
            SelectCommand="SELECT * FROM [companyregist]" 
            
            UpdateCommand="UPDATE [companyregist] SET [logid] = @logid, [companyname] = @companyname, [companytype] = @companytype, [companyexperience] = @companyexperience, [country] = @country, [state] = @state, [district] = @district, [streetaddress] = @streetaddress, [landmark] = @landmark WHERE [companyId] = @companyId" 
            onselecting="SqlDataSource2_Selecting">
            <DeleteParameters>
                <asp:Parameter Name="companyId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="logid" Type="Int32" />
                <asp:Parameter Name="companyname" Type="String" />
                <asp:Parameter Name="companytype" Type="String" />
                <asp:Parameter Name="companyexperience" Type="String" />
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="district" Type="String" />
                <asp:Parameter Name="streetaddress" Type="String" />
                <asp:Parameter Name="landmark" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="logid" Type="Int32" />
                <asp:Parameter Name="companyname" Type="String" />
                <asp:Parameter Name="companytype" Type="String" />
                <asp:Parameter Name="companyexperience" Type="String" />
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="district" Type="String" />
                <asp:Parameter Name="streetaddress" Type="String" />
                <asp:Parameter Name="landmark" Type="String" />
                <asp:Parameter Name="companyId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <%--<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:expomanagementConnectionString25 %>" DeleteCommand="DELETE FROM [companyregist] WHERE [companyId] = @companyId" InsertCommand="INSERT INTO [companyregist] ([logid], [companyname], [companytype], [companyexperience], [country], [state], [district], [streetaddress], [landmark]) VALUES (@logid, @companyname, @companytype, @companyexperience, @country, @state, @district, @streetaddress, @landmark)" SelectCommand="SELECT * FROM [companyregist]" UpdateCommand="UPDATE [companyregist] SET [logid] = @logid, [companyname] = @companyname, [companytype] = @companytype, [companyexperience] = @companyexperience, [country] = @country, [state] = @state, [district] = @district, [streetaddress] = @streetaddress, [landmark] = @landmark WHERE [companyId] = @companyId">
            <DeleteParameters>
                <asp:Parameter Name="companyId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="logid" Type="Int32" />
                <asp:Parameter Name="companyname" Type="String" />
                <asp:Parameter Name="companytype" Type="String" />
                <asp:Parameter Name="companyexperience" Type="String" />
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="district" Type="String" />
                <asp:Parameter Name="streetaddress" Type="String" />
                <asp:Parameter Name="landmark" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="logid" Type="Int32" />
                <asp:Parameter Name="companyname" Type="String" />
                <asp:Parameter Name="companytype" Type="String" />
                <asp:Parameter Name="companyexperience" Type="String" />
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="district" Type="String" />
                <asp:Parameter Name="streetaddress" Type="String" />
                <asp:Parameter Name="landmark" Type="String" />
                <asp:Parameter Name="companyId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>--%>
       <%-- <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:expomanagementConnectionString12 %>" 
            DeleteCommand="DELETE FROM [companyregist] WHERE [companyId] = @companyId" 
            InsertCommand="INSERT INTO [companyregist] ([logid], [companyname], [companytype], [country], [landmark]) VALUES (@logid, @companyname, @companytype, @country, @landmark)" 
            SelectCommand="SELECT [companyId], [logid], [companyname], [companytype], [country], [landmark] FROM [companyregist]" 
            UpdateCommand="UPDATE [companyregist] SET [logid] = @logid, [companyname] = @companyname, [companytype] = @companytype, [country] = @country, [landmark] = @landmark WHERE [companyId] = @companyId">
            <DeleteParameters>
                <asp:Parameter Name="companyId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="logid" Type="Int32" />
                <asp:Parameter Name="companyname" Type="String" />
                <asp:Parameter Name="companytype" Type="String" />
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="landmark" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="logid" Type="Int32" />
                <asp:Parameter Name="companyname" Type="String" />
                <asp:Parameter Name="companytype" Type="String" />
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="landmark" Type="String" />
                <asp:Parameter Name="companyId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>--%>
    </asp:View>
        <asp:View ID="View2" runat="server">
            <table class="style1">
                <tr>
                    <td class="style2" colspan="2">
                        INVITE COMPANY</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Select expo</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server"  CssClass="textbox" style="width:250px;height:32px;"
                            DataSourceID="SqlDataSource1" DataTextField="expotitle" 
                            DataValueField="expoId" AutoPostBack="True">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:expomanagementConnectionString37 %>" 
                            SelectCommand="SELECT [expoId], [expotitle] FROM [expodetails]"></asp:SqlDataSource>
                        <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:expomanagementConnectionString11 %>" 
                            DeleteCommand="DELETE FROM [expodetails] WHERE [expoid] = @expoid" 
                            InsertCommand="INSERT INTO [expodetails] ([exhibitorid], [expotitle]) VALUES (@exhibitorid, @expotitle)" 
                            SelectCommand="SELECT [expoid], [exhibitorid], [expotitle] FROM [expodetails] WHERE ([exhibitorid] = @exhibitorid)" 
                            UpdateCommand="UPDATE [expodetails] SET [exhibitorid] = @exhibitorid, [expotitle] = @expotitle WHERE [expoid] = @expoid">
                            <DeleteParameters>
                                <asp:Parameter Name="expoid" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="exhibitorid" Type="Int32" />
                                <asp:Parameter Name="expotitle" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:SessionParameter Name="exhibitorid" SessionField="logid" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="exhibitorid" Type="Int32" />
                                <asp:Parameter Name="expotitle" Type="String" />
                                <asp:Parameter Name="expoid" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>--%>
                        <br />
                        <br />
                        <asp:TextBox ID="TextBox1" runat="server"  CssClass="textbox" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" style="height:40px;width:120px; border-radius: 5px;
    background-color: sandybrown;" onclick="Button1_Click" Text="INVITE" />
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

