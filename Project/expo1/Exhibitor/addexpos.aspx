<%@ Page Title="" Language="C#" MasterPageFile="~/Exhibitor/ExhibitorMaster.master" AutoEventWireup="true" CodeFile="addexpos.aspx.cs" Inherits="Exhibitor_Default2" %>

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
        .style3
        {
            height: 28px;
        }
        .style4
        {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style2" colspan="2">
            EXPO&nbsp; REGISTRATION</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="EXPO TITLE"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="title name required" 
                MaximumValue="z" MinimumValue="a"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="EXPO TYPE"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="type required" MaximumValue="z" 
                MinimumValue="a"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="type required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="CATEGORY"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="textbox" AutoPostBack="True" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Label ID="Label4" runat="server" Text="SUBCATEGORY"></asp:Label>
        </td>
        <td class="style3">
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="textbox">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Label ID="Label5" runat="server" Text="COUNTRY"></asp:Label>
        </td>
        <td class="style3">
            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="textbox" AutoPostBack="True" 
                onselectedindexchanged="DropDownList3_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="STATE"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList4" runat="server" CssClass="textbox" AutoPostBack="True" 
                onselectedindexchanged="DropDownList4_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="DISTRICT"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList5" runat="server" CssClass="textbox" AutoPostBack="True" 
                onselectedindexchanged="DropDownList5_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label8" runat="server" Text="PLACE"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList6" runat="server" CssClass="textbox">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style4">
            <asp:Label ID="Label9" runat="server" Text="NUMBER OF BOOTH"></asp:Label>
        </td>
        <td class="style4">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="number required" MaximumValue="100" 
                MinimumValue="1" Type="Integer"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="booth required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label10" runat="server" Text="IMAGE"></asp:Label>
        </td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label11" runat="server" Text="PLAN"></asp:Label>
        </td>
        <td>
            <asp:FileUpload ID="FileUpload2" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label12" runat="server" Text="STARTING DATE"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="date required" 
                ValidationExpression="^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="date required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label13" runat="server" Text="ENDINGDATE"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="date required" 
                ValidationExpression="^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="ending date requird"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" style="height:40px;width:120px; border-radius: 5px;
    background-color: sandybrown;" onclick="Button1_Click" 
                Text="ADD EXPO" />
        </td>
    </tr>
</table>
</asp:Content>

