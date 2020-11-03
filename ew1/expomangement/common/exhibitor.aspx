<%@ Page Title="" Language="C#" MasterPageFile="~/common/common.master" AutoEventWireup="true" CodeFile="exhibitor.aspx.cs" Inherits="common_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        height: 21px;
    }
    .style5
    {
        }
    .style6
    {
            height: 21px;
            width: 236px;
        }
        .style7
        {
            font-size: medium;
            color: #FF0066;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style7" colspan="2">
            <strong>EXHIBITOR REGISTRATION</strong></td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Label ID="Label1" runat="server" Text="exhibitorname"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:Label ID="Label2" runat="server" Text="age"></asp:Label>
        </td>
        <td class="style2">
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:Label ID="Label3" runat="server" Text="gender"></asp:Label>
        </td>
        <td class="style2">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>male</asp:ListItem>
                <asp:ListItem>female</asp:ListItem>
            </asp:RadioButtonList>
            </td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Label ID="Label4" runat="server" Text="experience"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>select</asp:ListItem>
                <asp:ListItem>one year</asp:ListItem>
                <asp:ListItem>less than one year</asp:ListItem>
                <asp:ListItem>more than one year</asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>more than two year</asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Label ID="Label5" runat="server" Text="address"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Label ID="Label6" runat="server" Text="country"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Label ID="Label7" runat="server" Text="state"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>select</asp:ListItem>
                <asp:ListItem>kerala</asp:ListItem>
                <asp:ListItem>thamil nadu</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Label ID="Label8" runat="server" Text="district"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>seelct</asp:ListItem>
                <asp:ListItem>kannur</asp:ListItem>
                <asp:ListItem>vayanad</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Label ID="Label9" runat="server" Text="mobile no"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:Label ID="Label10" runat="server" Text="email id"></asp:Label>
        </td>
        <td class="style2">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Label ID="Label11" runat="server" Text="user name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:Label ID="Label12" runat="server" Text="password"></asp:Label>
        </td>
        <td class="style2">
            <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
            </td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Label ID="Label13" runat="server" Text="photos"></asp:Label>
        </td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="submit" />
        </td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

