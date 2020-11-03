<%@ Page Title="" Language="C#" MasterPageFile="~/common/commonmaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="common_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table class="style1">
        <tr>
            <td>                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" style="font-weight: 700" 
                    Text="FORGOT PASSWORD"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"  ErrorMessage="Enter Valid Username"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" style="height:40px;width:120px; border-radius: 5px;
    background-color: sandybrown;" onclick="Button1_Click" Text="Sumbit" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

