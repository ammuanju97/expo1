<%@ Page Title="" Language="C#" MasterPageFile="~/company/company.master" AutoEventWireup="true" CodeFile="comrequest.aspx.cs" Inherits="company_Default" %>

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
            COMPANY REQUEST</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Exhibor Name"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlexhibitor" runat="server" CssClass="textbox" 
                AutoPostBack="True" 
                onselectedindexchanged="ddlexhibitor_SelectedIndexChanged"  >
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Expo Name"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlexpo" runat="server" CssClass="textbox">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" style="height:40px;width:120px; border-radius: 5px;
    background-color: sandybrown;" onclick="Button1_Click" 
                Text="REQUEST" />
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

