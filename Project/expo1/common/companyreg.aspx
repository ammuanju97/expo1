<%@ Page Title="" Language="C#" MasterPageFile="~/common/commonmaster.master" AutoEventWireup="true" CodeFile="companyreg.aspx.cs" Inherits="common_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="auto-style1" colspan="3">COMPANY REGISTRATION</td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
    <tr>
        <td>Company Name</td>
        <td>&nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox15" runat="server" CssClass="textbox"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox15" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ControlToValidate="TextBox15" ErrorMessage="enter cmpny name" MaximumValue="z" 
                MinimumValue="a"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td>Company Type</td>
        <td>&nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox17" runat="server" CssClass="textbox"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox17" ErrorMessage="Type Required"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator2" runat="server" 
                ControlToValidate="TextBox17" ErrorMessage="enter type" MaximumValue="z" 
                MinimumValue="a"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td>Company Experience</td>
        <td>&nbsp;</td>
        <td>
            <asp:DropDownList ID="DropDownList5" runat="server" CssClass="textbox">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>One year</asp:ListItem>
                <asp:ListItem>Less than one year</asp:ListItem>
                <asp:ListItem>More than one year</asp:ListItem>
                <asp:ListItem>More than two years</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>Country</td>
        <td>&nbsp;</td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="textbox">
                <asp:ListItem>select</asp:ListItem>
                <asp:ListItem>india</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>State</td>
        <td>&nbsp;</td>
        <td>
            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="textbox">
                <asp:ListItem>select</asp:ListItem>
                <asp:ListItem>kerala</asp:ListItem>
                <asp:ListItem>Tamilnadu</asp:ListItem>
                <asp:ListItem>Karnataka</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>District</td>
        <td>&nbsp;</td>
        <td>
            <asp:DropDownList ID="DropDownList4" runat="server" CssClass="textbox">
                <asp:ListItem>select</asp:ListItem>
                <asp:ListItem>calicut</asp:ListItem>
                <asp:ListItem>madhurai</asp:ListItem>
                <asp:ListItem>gudallur</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>Street Address</td>
        <td>&nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox22" runat="server" CssClass="textbox" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox22" ErrorMessage="Address Required"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator3" runat="server" 
                ControlToValidate="TextBox22" ErrorMessage="enter addres" MaximumValue="z" 
                MinimumValue="a"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td>Landmark</td>
        <td>&nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox23" runat="server" CssClass="textbox"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox23" ErrorMessage="Landmark Required"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator4" runat="server" 
                ControlToValidate="TextBox23" ErrorMessage="enter landmark" MaximumValue="z" 
                MinimumValue="a"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td>E-mail</td>
        <td>&nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox26" runat="server" CssClass="textbox"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="TextBox26" ErrorMessage="email required"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBox26" ErrorMessage="Format Incorrect" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>Username</td>
        <td>&nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox24" runat="server" CssClass="textbox"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox24" ErrorMessage="Required"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator5" runat="server" 
                ControlToValidate="TextBox24" ErrorMessage="enter username" MaximumValue="z" 
                MinimumValue="a"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td>Passsword</td>
        <td>&nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox25" runat="server" CssClass="textbox"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox25" ErrorMessage="Required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" style="height:40px;width:120px; border-radius: 5px;
    background-color: sandybrown;" Text="Sumbit" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

