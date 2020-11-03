<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="viewexhibitorrequests.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 70px;
        background-color: #000000;
    }
    .style3
    {
        width: 111px;
        background-color: #000000;
    }
    .style4
    {
        width: 120px;
    }
    .style5
    {
        width: 135px;
    }
    .style6
    {
        width: 121px;
    }
    .style7
    {
        width: 132px;
    }
    .style8
    {
        width: 102px;
    }
    .style12
    {
        width: 111px;
        height: 21px;
    }
    .style13
    {
        width: 120px;
        height: 21px;
    }
    .style14
    {
        width: 135px;
        height: 21px;
    }
    .style15
    {
        width: 121px;
        height: 21px;
    }
    .style16
    {
        width: 132px;
        height: 21px;
    }
    .style17
    {
        width: 102px;
        height: 21px;
    }
    .style18
    {
        width: 70px;
        height: 21px;
    }
    .style19
    {
        width: 70px;
        height: 19px;
        background-color: #000000;
    }
    .style20
    {
        width: 111px;
        height: 19px;
        background-color: #000000;
    }
    .style21
    {
        width: 120px;
        height: 19px;
    }
    .style22
    {
        width: 135px;
        height: 19px;
    }
    .style23
    {
        width: 121px;
        height: 19px;
    }
    .style24
    {
        width: 132px;
        height: 19px;
    }
    .style25
    {
        width: 102px;
        height: 19px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:LinkButton ID="LinkButton1" runat="server">view approved exhibitors</asp:LinkButton>
        <table class="style1">
    <tr>
        <td class="style19">
            <asp:Label ID="Label1" runat="server" Text="name" style="color: #0000FF"></asp:Label>
        </td>
        <td class="style20">
            <asp:Label ID="Label2" runat="server" Text="gender" 
                style="background-color: #0000FF"></asp:Label>
        </td>
        <td class="style21">
            <asp:Label ID="Label3" runat="server" Text="experience" 
                style="background-color: #0000FF"></asp:Label>
        </td>
        <td class="style22">
            <asp:Label ID="Label4" runat="server" Text="country" 
                style="background-color: #0000FF"></asp:Label>
        </td>
        <td class="style23">
            <asp:Label ID="Label5" runat="server" Text="mobile" 
                style="background-color: #0000FF"></asp:Label>
        </td>
        <td class="style24">
            <asp:Label ID="Label10" runat="server" Text="email" 
                style="background-color: #0000FF"></asp:Label>
        </td>
        <td class="style25">
            <asp:Label ID="Label11" runat="server" Text="photos" 
                style="background-color: #0000FF"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style18">
            </td>
        <td class="style12">
            </td>
        <td class="style13">
            </td>
        <td class="style14">
            </td>
        <td class="style15">
            </td>
        <td class="style16">
            </td>
        <td class="style17">
            </td>
    </tr>
    <tr>
        <td class="style2">
            <asp:LinkButton ID="LinkButton2" runat="server">View Approved Expos</asp:LinkButton>
        </td>
        <td class="style3">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

