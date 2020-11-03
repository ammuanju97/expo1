<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="userrecharge.aspx.cs" Inherits="user_userrecharge" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .active
        {
            font-family: Algerian;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Recharge Amount" 
        style="font-size: medium; font-family: Algerian"></asp:Label>
&nbsp;
    <asp:TextBox ID="txtAmount" onkeypress="return  isNumberKey(event,this.value)" runat="server" CssClass="myTxt" 
        ontextchanged="txtAmount_TextChanged"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" CssClass="myBtn" 
        onclick="Button1_Click" Text="RECHARGE" />
</asp:Content>

