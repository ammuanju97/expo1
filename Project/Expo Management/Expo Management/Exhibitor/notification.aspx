<%@ Page Title="" Language="C#" MasterPageFile="~/Exhibitor/ExhibitorMaster.master" AutoEventWireup="true" CodeFile="notification.aspx.cs" Inherits="Exhibitor_Default" %>

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
    <table class="style1">
    <tr>
        <td class="style2" colspan="2">
            SEND NOTIFICATIONS</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="DETAILS"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" 
                TextMode="MultiLine" Height="100px" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                Text="SEND" />
        </td>
    </tr>
</table>
</asp:Content>

