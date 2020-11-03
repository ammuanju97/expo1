<%@ Page Title="" Language="C#" MasterPageFile="~/common/common.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="common_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 103%;
    }
    .style3
    {
        text-align: center;
    }
    .style5
    {
        height: 16px;
    }
    .style6
    {
        height: 16px;
        width: 31px;
    }
    .style7
    {
        width: 31px;
    }
    .style8
    {
        width: 31px;
        height: 53px;
    }
    .style9
    {
        height: 53px;
    }
        .style10
        {
            font-size: medium;
            color: #FF0066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Button ID="Button1" runat="server" Text="Button" />
<table class="style1">
    <tr>
        <td class="style3" colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
                class="style10"><strong>&nbsp;LOGIN&nbsp;</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            USERNAME</td>
        <td class="style5">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style7">
            PASSWORD</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td>
            <asp:Button ID="Button2" runat="server" Text="LOGIN" 
                style="margin-left: 38px" />
        </td>
    </tr>
    <tr>
        <td class="style8">
            <asp:LinkButton ID="LinkButton1" runat="server">NEW REGISTRATION?</asp:LinkButton>
        </td>
        <td class="style9">
            </td>
    </tr>
    <tr>
        <td class="style7">
            <asp:LinkButton ID="LinkButton2" runat="server">FORGET PASSWORD</asp:LinkButton>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

