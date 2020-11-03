<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="viewnotify.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            left: 200px;
            top: 34px;
            height: 113px;
        }
        .auto-style2 {
            height: 57px;
            margin-top: 51px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style1"><marquee direction="up" class="auto-style2"></marquee></div>  <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" 
    Text='<%# Eval("details") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

