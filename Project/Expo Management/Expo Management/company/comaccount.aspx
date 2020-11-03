<%@ Page Title="" Language="C#" MasterPageFile="~/company/company.master" AutoEventWireup="true" CodeFile="comaccount.aspx.cs" Inherits="company_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 253px;
        }
        .style2
        {
            width: 257px;
        }
        .style3
        {
            width: 268px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Label ID="Label1" runat="server" Text="MONEY TRANSACTION DETAILS"></asp:Label>
        </td>
        <td class="style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox"></asp:TextBox>
        </td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="enter name"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server"  Text="Address"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox"></asp:TextBox>
        </td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage=" enter address"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Account Number"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox"></asp:TextBox>
        </td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="account number"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Card No"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox"></asp:TextBox>
        </td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="enter card number"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Label ID="Label6" runat="server" Text="CVV"></asp:Label>
        </td>
        <td class="style2">
            <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox"></asp:TextBox>
        </td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="enter cvv"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Transaction Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server" CssClass="textbox"></asp:TextBox>
        </td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="enter transaction passwor"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label8" runat="server" Text="Balance"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server" CssClass="textbox"></asp:TextBox>
        </td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="TextBox7" ErrorMessage="enter balance"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" style="height:40px;width:120px; border-radius: 5px;
    background-color: sandybrown;" onclick="Button1_Click" Text="SUBMIT" />
        </td>
        <td class="style3">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

