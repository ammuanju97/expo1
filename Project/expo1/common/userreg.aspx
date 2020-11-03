<%@ Page Title="" Language="C#" MasterPageFile="~/common/commonmaster.master" AutoEventWireup="true" CodeFile="userreg.aspx.cs" Inherits="common_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        text-align: center;
    }
        .style1
        {
            height: 39px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="auto-style1" colspan="2">NEW REGISTRATION<br />
        </td>
    </tr>
    <tr>
        <td>NAME</td>
        <td>
            <asp:TextBox ID="txtName" runat="server" CssClass="textbox" Height="34px" 
                Width="189px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtName" ErrorMessage="name required"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator3" runat="server" 
                ControlToValidate="txtName" ErrorMessage="enter name" MaximumValue="z" 
                MinimumValue="a"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td>AGE</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox" Height="31px" 
                Width="188px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="age rrequired"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator7" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="age must between 25 and 100" MaximumValue="150" 
                MinimumValue="25" Type="Integer"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td>HOUSENAME</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox" Height="30px" 
                Width="190px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="housename reqrd"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator4" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="enetr hsnme" MaximumValue="z" 
                MinimumValue="a"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td>COUNTRY</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="textbox" 
                Height="18px">
                <asp:ListItem>select</asp:ListItem>
                <asp:ListItem>india</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>STATE</td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="textbox">
                <asp:ListItem>select</asp:ListItem>
                <asp:ListItem>kerala</asp:ListItem>
                <asp:ListItem>karnataka</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>DISTRICT</td>
        <td>
            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="textbox">
                <asp:ListItem>select</asp:ListItem>
                <asp:ListItem>calicut</asp:ListItem>
                <asp:ListItem>gudallor</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>PLACE</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server" CssClass="textbox" Height="32px" 
                Width="178px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage=" place required"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator5" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="enter your place" MaximumValue="z" 
                MinimumValue="a"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td>MOBILE NUMBER</td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server" CssClass="textbox" Height="30px" 
                Width="178px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ControlToValidate="TextBox7" ErrorMessage="mob no requrd"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator8" runat="server" 
                ControlToValidate="TextBox7" ErrorMessage="Range is invalid" 
                MaximumValue="9999999999" MinimumValue="1000000000" Type="Double"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td>EMAIL ID</td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server" CssClass="textbox" Height="31px" 
                Width="177px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox8" ErrorMessage="Enter your Emailid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style1">USERNAME</td>
        <td class="style1">
            <asp:TextBox ID="TextBox9" runat="server" CssClass="textbox" Height="31px" 
                Width="178px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="TextBox9" ErrorMessage=" username required"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator6" runat="server" 
                ControlToValidate="TextBox9" ErrorMessage="enter username" MaximumValue="z" 
                MinimumValue="a"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td>PASSWORD</td>
        <td>
            <asp:TextBox ID="TextBox10" runat="server" CssClass="textbox" Height="30px" 
                Width="176px" ontextchanged="TextBox10_TextChanged" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox10" ErrorMessage="Enter Password">password required</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" style="height:40px;width:120px; border-radius: 5px;
    background-color: sandybrown; " Text="REGISTER" />
        </td>
    </tr>
</table>
</asp:Content>

