<%@ Page Title="" Language="C#" MasterPageFile="~/company/company.master" AutoEventWireup="true" CodeFile="companyproddetails.aspx.cs" Inherits="company_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        margin-left: 0px;
    }
        .style2
    {
        width: 12px;
    }
        .auto-style1 {
            color: red;
        }
        .style3
        {
            height: 39px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>

                <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                    <asp:View ID="View1" runat="server">
                    <table class="style1">
        <tr>
            <td class="style2" colspan="2">
                COMPANY PRODUCT DETAILS</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Category"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlcategory" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddlcategory_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Subcategory"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlsubcat" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label7" runat="server" Text="Product Name"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="name required" MaximumValue="z" 
                    MinimumValue="a"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Product Quantity"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator2" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="quatity required" MaximumValue="1000000" 
                    MinimumValue="1" Type="Integer"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Description"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" TextMode="MultiLine"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator3" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage=" descrptn required" MaximumValue="z" 
                    MinimumValue="a"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Price per piece"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" 
                    ontextchanged="TextBox3_TextChanged"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator4" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="price  required" 
                    MaximumValue="1000000" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" style="height:40px;width:120px; border-radius: 5px;
    background-color: sandybrown;" onclick="Button1_Click" Text="ADD" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" style="width:120px; border-radius: 5px;
    background-color: sandybrown;" onclick="Button2_Click" Text="EDIT" />
            </td>
        </tr>
    </table>


                    </asp:View>
                    <asp:View ID="View2" runat="server">
                       <p> <marquee direction="left" class="auto-style1"><asp:Label ID="Label10" runat="server" Text=""></asp:Label></marquee></p>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            DataKeyNames="productId" DataSourceID="SqlDataSource1" BackColor="#DEBA84" 
                            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                            CellSpacing="2" Width="591px" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="subcategory" HeaderText="subcategory" 
                                    SortExpression="subcategory" />
                                <asp:BoundField DataField="productname" HeaderText="productname" 
                                    SortExpression="productname" />
                                <asp:BoundField DataField="productquantity" HeaderText="productquantity" 
                                    SortExpression="productquantity" />
                                <asp:BoundField DataField="description" HeaderText="description" 
                                    SortExpression="description" />
                                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:expomanagementConnectionString47 %>" DeleteCommand="DELETE FROM [comprodetails] WHERE [productId] = @productId" InsertCommand="INSERT INTO [comprodetails] ([companyId], [categoryId], [subcategory], [productname], [productquantity], [description], [price], [status]) VALUES (@companyId, @categoryId, @subcategory, @productname, @productquantity, @description, @price, @status)" SelectCommand="SELECT * FROM [comprodetails] WHERE ([companyId] = @companyId)" UpdateCommand="UPDATE [comprodetails] SET [companyId] = @companyId, [categoryId] = @categoryId, [subcategory] = @subcategory, [productname] = @productname, [productquantity] = @productquantity, [description] = @description, [price] = @price, [status] = @status WHERE [productId] = @productId">
                            <DeleteParameters>
                                <asp:Parameter Name="productId" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="companyId" Type="Int32" />
                                <asp:Parameter Name="categoryId" Type="Int32" />
                                <asp:Parameter Name="subcategory" Type="String" />
                                <asp:Parameter Name="productname" Type="String" />
                                <asp:Parameter Name="productquantity" Type="Int32" />
                                <asp:Parameter Name="description" Type="String" />
                                <asp:Parameter Name="price" Type="Decimal" />
                                <asp:Parameter Name="status" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:SessionParameter Name="companyId" SessionField="companyId" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="companyId" Type="Int32" />
                                <asp:Parameter Name="categoryId" Type="Int32" />
                                <asp:Parameter Name="subcategory" Type="String" />
                                <asp:Parameter Name="productname" Type="String" />
                                <asp:Parameter Name="productquantity" Type="Int32" />
                                <asp:Parameter Name="description" Type="String" />
                                <asp:Parameter Name="price" Type="Decimal" />
                                <asp:Parameter Name="status" Type="String" />
                                <asp:Parameter Name="productId" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:expomanagementConnectionString20 %>" 
                            DeleteCommand="DELETE FROM [comprodetails] WHERE [productId] = @productId" 
                            InsertCommand="INSERT INTO [comprodetails] ([companyId], [categoryId], [subcategory], [productname], [productquantity], [description], [price], [status]) VALUES (@companyId, @categoryId, @subcategory, @productname, @productquantity, @description, @price, @status)" 
                            SelectCommand="SELECT * FROM [comprodetails]" 
                            UpdateCommand="UPDATE [comprodetails] SET [companyId] = @companyId, [categoryId] = @categoryId, [subcategory] = @subcategory, [productname] = @productname, [productquantity] = @productquantity, [description] = @description, [price] = @price, [status] = @status WHERE [productId] = @productId">
                            <DeleteParameters>
                                <asp:Parameter Name="productId" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="companyId" Type="Int32" />
                                <asp:Parameter Name="categoryId" Type="Int32" />
                                <asp:Parameter Name="subcategory" Type="String" />
                                <asp:Parameter Name="productname" Type="String" />
                                <asp:Parameter Name="productquantity" Type="Int32" />
                                <asp:Parameter Name="description" Type="String" />
                                <asp:Parameter Name="price" Type="Decimal" />
                                <asp:Parameter Name="status" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="companyId" Type="Int32" />
                                <asp:Parameter Name="categoryId" Type="Int32" />
                                <asp:Parameter Name="subcategory" Type="String" />
                                <asp:Parameter Name="productname" Type="String" />
                                <asp:Parameter Name="productquantity" Type="Int32" />
                                <asp:Parameter Name="description" Type="String" />
                                <asp:Parameter Name="price" Type="Decimal" />
                                <asp:Parameter Name="status" Type="String" />
                                <asp:Parameter Name="productId" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>--%>
                    </asp:View>
                </asp:MultiView>
            </td>
        </tr>
        </table>
    
</asp:Content>

