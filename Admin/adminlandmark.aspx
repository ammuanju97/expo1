<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="adminlandmark.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: center;
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
         <table class="style1">
        <tr>
            <td class="style2" colspan="2">
                LAND MARK DETAILS</td>
        </tr>
        <tr>
            <td>
                Country</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="enter country"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                State</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="enter state"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                District</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="enter district"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Place</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="enter place"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" style="
    height:40px;
    width:120px;
        border-radius: 5px;
    background-color: sandybrown;"  onclick="Button1_Click" Text="Submit" />
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<asp:Button ID="Button2" runat="server" style="
    height:40px;
    width:120px;
        border-radius: 5px;
    background-color: sandybrown;" onclick="Button2_Click" Text="Edit" />
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
        <asp:View ID="View2" runat="server">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="landmarkid" DataSourceID="SqlDataSource1" Width="198px" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" 
                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="country" HeaderText="country" 
                        SortExpression="country" >
                    <ItemStyle Width="20px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                    <asp:BoundField DataField="district" HeaderText="district" 
                        SortExpression="district" />
                    <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:expomanagementConnectionString7 %>" 
                DeleteCommand="DELETE FROM [adminland] WHERE [landmarkid] = @landmarkid" 
                InsertCommand="INSERT INTO [adminland] ([country], [state], [district], [place]) VALUES (@country, @state, @district, @place)" 
                SelectCommand="SELECT * FROM [adminland]" 
                UpdateCommand="UPDATE [adminland] SET [country] = @country, [state] = @state, [district] = @district, [place] = @place WHERE [landmarkid] = @landmarkid">
                <DeleteParameters>
                    <asp:Parameter Name="landmarkid" Type="Int64" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="country" Type="String" />
                    <asp:Parameter Name="state" Type="String" />
                    <asp:Parameter Name="district" Type="String" />
                    <asp:Parameter Name="place" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="country" Type="String" />
                    <asp:Parameter Name="state" Type="String" />
                    <asp:Parameter Name="district" Type="String" />
                    <asp:Parameter Name="place" Type="String" />
                    <asp:Parameter Name="landmarkid" Type="Int64" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:View>
    </asp:MultiView>
   
</asp:Content>

