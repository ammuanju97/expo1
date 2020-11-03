<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="admincatsubcat.aspx.cs" Inherits="Admin_Default" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
               
<asp:View ID="View1" runat="server">

               
    <table class="style1">
        <tr>
            <td class="style2" colspan="2">
               
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                Categoery Details</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Categoery Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Subcategoery Name</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<asp:Button ID="Button1" runat="server" style="
    height:40px;
    width:120px;
        border-radius: 5px;
    background-color: sandybrown;" onclick="Button1_Click" Text="Submit" 
                    Width="52px" />
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" style="
    height:40px;
    width:120px;
        border-radius: 5px;
    background-color: sandybrown;" onclick="Button2_Click" Text="Edit" 
                    Width="49px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
               
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>
     </asp:View>
      
       <asp:View ID="View2" runat="server">





                &nbsp; &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="categoryId" DataSourceID="SqlDataSource1" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                    CellPadding="2" ForeColor="Black" GridLines="None">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="categoryId" HeaderText="categoryId" InsertVisible="False" 
                            ReadOnly="True" SortExpression="categoryId" />
                        <asp:BoundField DataField="categoryname" HeaderText="categoryname" 
                            SortExpression="categoryname" />
                        <asp:BoundField DataField="subcategoryname" HeaderText="subcategoryname" 
                            SortExpression="subcategoryname" />
                    </Columns>
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:expomanagementConnectionString8 %>" 
                    DeleteCommand="DELETE FROM [admincat] WHERE [categoryId] = @categoryId" 
                    InsertCommand="INSERT INTO [admincat] ([categoryname], [subcategoryname]) VALUES (@categoryname, @subcategoryname)" 
                    SelectCommand="SELECT * FROM [admincat]" 
                    UpdateCommand="UPDATE [admincat] SET [categoryname] = @categoryname, [subcategoryname] = @subcategoryname WHERE [categoryId] = @categoryId">
                    <DeleteParameters>
                        <asp:Parameter Name="categoryId" Type="Int64" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="categoryname" Type="String" />
                        <asp:Parameter Name="subcategoryname" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="categoryname" Type="String" />
                        <asp:Parameter Name="subcategoryname" Type="String" />
                        <asp:Parameter Name="categoryId" Type="Int64" />
                    </UpdateParameters>
                </asp:SqlDataSource>





                </asp:View>
                </asp:MultiView>
</asp:Content>

