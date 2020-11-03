<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="userhome.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            Welcome&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            The CANN expos welcomes you .........</td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" style="height:40px;width:120px; border-radius: 5px;
    background-color: sandybrown;" onclick="Button1_Click" 
                Text="EDIT PROFILE&gt;&gt;" />
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                DataKeyNames="userId" DataSourceID="SqlDataSource1" Height="50px" 
                Width="125px" Visible="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
                BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="userId" HeaderText="userId" InsertVisible="False" 
                        ReadOnly="True" SortExpression="userId" />
                    <asp:BoundField DataField="logid" HeaderText="logid" SortExpression="logid" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                    <asp:BoundField DataField="housename" HeaderText="housename" 
                        SortExpression="housename" />
                    <asp:BoundField DataField="country" HeaderText="country" 
                        SortExpression="country" />
                    <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                    <asp:BoundField DataField="district" HeaderText="district" 
                        SortExpression="district" />
                    <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
                    <asp:BoundField DataField="mobileno" HeaderText="mobileno" 
                        SortExpression="mobileno" />
                    <asp:BoundField DataField="emailid" HeaderText="emailid" 
                        SortExpression="emailid" />
                    <asp:CommandField ShowEditButton="True" />
                </Fields>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:expomanagementConnectionString19 %>" 
                DeleteCommand="DELETE FROM [userreg] WHERE [userId] = @userId" 
                InsertCommand="INSERT INTO [userreg] ([logid], [name], [age], [housename], [country], [state], [district], [place], [mobileno], [emailid]) VALUES (@logid, @name, @age, @housename, @country, @state, @district, @place, @mobileno, @emailid)" 
                SelectCommand="SELECT * FROM [userreg] WHERE ([logid] = @logid)" 
                
                UpdateCommand="UPDATE [userreg] SET [logid] = @logid, [name] = @name, [age] = @age, [housename] = @housename, [country] = @country, [state] = @state, [district] = @district, [place] = @place, [mobileno] = @mobileno, [emailid] = @emailid WHERE [userId] = @userId">
                <DeleteParameters>
                    <asp:Parameter Name="userId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="logid" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="age" Type="Int32" />
                    <asp:Parameter Name="housename" Type="String" />
                    <asp:Parameter Name="country" Type="String" />
                    <asp:Parameter Name="state" Type="String" />
                    <asp:Parameter Name="district" Type="String" />
                    <asp:Parameter Name="place" Type="String" />
                    <asp:Parameter Name="mobileno" Type="Int64" />
                    <asp:Parameter Name="emailid" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="logid" SessionField="logid" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="logid" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="age" Type="Int32" />
                    <asp:Parameter Name="housename" Type="String" />
                    <asp:Parameter Name="country" Type="String" />
                    <asp:Parameter Name="state" Type="String" />
                    <asp:Parameter Name="district" Type="String" />
                    <asp:Parameter Name="place" Type="String" />
                    <asp:Parameter Name="mobileno" Type="Int64" />
                    <asp:Parameter Name="emailid" Type="String" />
                    <asp:Parameter Name="userId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button2" runat="server" style="height:40px;width:120px; border-radius: 5px;
    background-color: sandybrown;" onclick="Button2_Click" 
                Text="Change Password" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
<br />
</asp:Content>

