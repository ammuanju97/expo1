<%@ Page Title="" Language="C#" MasterPageFile="~/Exhibitor/ExhibitorMaster.master" AutoEventWireup="true" CodeFile="exbacc.aspx.cs" Inherits="Exhibitor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Label ID="Label1" runat="server" Text="MONEY TRANSACTION DETAILS" 
                ForeColor="#CC0000"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server"  Text="Address"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Account Number"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Card No"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Label ID="Label6" runat="server" Text="CVV"></asp:Label>
        </td>
        <td class="style2">
        </td>
        <td class="style2">
            <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Transaction Password"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server" CssClass="textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label8" runat="server" Text="Balance"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server" CssClass="textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" style="width:120px; border-radius: 5px;
    background-color: sandybrown;" onclick="Button1_Click" Text="SUBMIT" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

