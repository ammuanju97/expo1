<%@ Page Title="" Language="C#" MasterPageFile="~/common/commonmaster.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="common_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 553px;
        height: 173px;
    }
        .auto-style2 {
            text-align: center;
            font-size: x-large;
            color: #FF00FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
       <tr>
           <td class="auto-style2" colspan="2">

               Register Here</td>
       </tr>
         <tr>
            <td>Select User Type</td>
<td>
       
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged" style="height: 22px">
        <asp:ListItem>Select</asp:ListItem>
        <asp:ListItem>Exhibitor</asp:ListItem>
        <asp:ListItem>Company</asp:ListItem>
        <asp:ListItem>User</asp:ListItem>
    </asp:DropDownList>
    </td>
             </tr>
        </table>
</asp:Content>

