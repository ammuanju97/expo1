<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="productorder.aspx.cs" Inherits="User_Default" %>

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
    .style4
    {
        height: 44px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
   
    <table class="style1">
        <tr>
            <td class="style2" colspan="2">
&nbsp;&nbsp;&nbsp; PRODUCT ORDER</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="SELECT COMPANY"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlcom" runat="server" CssClass="textbox" AutoPostBack="True" 
                 onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="SELECT CATEGORY"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlcat" runat="server" CssClass="textbox" style="width:250px;height:32px;" AutoPostBack="True" 
                    onselectedindexchanged="ddlcat_SelectedIndexChanged">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="SELECT SUBCATEGORY"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlsubcat"  runat="server"  CssClass="textbox" AutoPostBack="True" 
                    onselectedindexchanged="ddlsubcat_SelectedIndexChanged">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr> 
            <td class="style4">
                <asp:Label ID="Label4" runat="server" Text="SELECT PRODUCT"></asp:Label>
            </td>
            <td class="style4">
                <asp:DropDownList ID="ddlprod" runat="server"  CssClass="textbox" AutoPostBack="True" 
                    onselectedindexchanged="ddlprod_SelectedIndexChanged" >
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label5" runat="server" Text="RATE"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="rate" runat="server" CssClass="textbox" ontextchanged="rate_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="rate" ErrorMessage="enter rate"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="NO OF QUANTITY"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="quantity" runat="server" CssClass="textbox" AutoPostBack="True" 
                    ontextchanged="quantity_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="quantity" ErrorMessage="Enter the quantity"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="TOTAL AMOUNT"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="amount" runat="server" CssClass="textbox" 
                    ontextchanged="amount_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="amount" ErrorMessage="eter amount"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" style="height:40px;width:120px; border-radius: 5px;
    background-color: sandybrown;" onclick="Button1_Click1" Text="ORDER" />
            &nbsp;<asp:Label ID="Label8" runat="server" 
                    Text="Click the purchase button after order" ForeColor="Red"></asp:Label>
                <asp:Button ID="Button2" runat="server" style="height:40px;width:120px; border-radius: 5px;
    background-color: sandybrown;" onclick="Button2_Click" 
                    Text="PURCHASE" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button3" runat="server" style="height:40px;width:120px; border-radius: 5px;
    background-color: sandybrown;" Text="View Order History" 
                    onclick="Button3_Click" CausesValidation="False" />
                &nbsp;<asp:Button ID="Button7" runat="server" style="border-radius: 32px;
    background-color: sandybrown;" onclick="Button7_Click" 
                    Text="View Purchase History" CausesValidation="False" Width="149px" />
            </td>
        </tr>
    </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                AutoGenerateDeleteButton="True" DataKeyNames="orderid" 
                onrowcommand="GridView1_RowCommand" onrowdeleting="GridView1_RowDeleting" 
                BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" CellSpacing="2">
                <Columns>
                    <asp:BoundField DataField="companyname" HeaderText="Company Name" />
                    <asp:BoundField DataField="productname" HeaderText="Product Name" />
                    <asp:BoundField DataField="productquantity" HeaderText="Product Quantity" />
                    <asp:BoundField DataField="price" HeaderText="Rate" />
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
            <br />
            <asp:Button ID="Button4" runat="server" style="height:40px;width:120px; border-radius: 5px;
    background-color: sandybrown;" onclick="Button4_Click" 
                Text="Back To Order" />
        </asp:View>
        <asp:View ID="View3" runat="server">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" CellSpacing="2">
                <Columns>
                    <asp:BoundField DataField="date" HeaderText="Date" />
                    <asp:BoundField DataField="total" HeaderText="Total" />
                    <asp:BoundField DataField="status" HeaderText="Status" />
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
            <asp:Button ID="Button6" runat="server" style="height:40px;width:120px; border-radius: 5px;
    background-color:sandybrown;" onclick="Button6_Click" 
                Text="Back To Order" />
            <br />
        </asp:View>
    </asp:MultiView>
</asp:Content>

