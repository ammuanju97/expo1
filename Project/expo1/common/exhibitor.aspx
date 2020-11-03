<%@ Page Title="" Language="C#" MasterPageFile="~/common/commonmaster.master" AutoEventWireup="true" CodeFile="exhibitor.aspx.cs" Inherits="common_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 153px;
    }
    .auto-style2 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="auto-style2" colspan="2">EXIBITOR REGISTRATION</td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">Exhibitor Name</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" Height="32px" 
                Width="131px"></asp:TextBox>
            
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="name Required"></asp:RequiredFieldValidator>
            
            <asp:RangeValidator ID="RangeValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="enter name" MaximumValue="z" 
                MinimumValue="a"></asp:RangeValidator>
            
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Age</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox" Height="28px" 
                Width="132px"></asp:TextBox>
            
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="Required"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator2" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="age must between 25 and 100" MaximumValue="100" 
                MinimumValue="25" Type="Integer"></asp:RangeValidator>
            
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Gender</td>
        <td>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">Experience</td>
        <td>
            <asp:DropDownList ID="DropDownList6" runat="server">
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
        <td class="auto-style1">Address</td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server" CssClass="textbox" 
                TextMode="MultiLine" ontextchanged="TextBox7_TextChanged"></asp:TextBox>
            
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="TextBox7" ErrorMessage="Required"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator4" runat="server" 
                ControlToValidate="TextBox7" ErrorMessage="enter adrs" MaximumValue="z" 
                MinimumValue="a"></asp:RangeValidator>
            
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Country</td>
        <td>
            <asp:DropDownList ID="DropDownList7" runat="server">
                <asp:ListItem>select</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">State</td>
        <td>
            <asp:DropDownList ID="DropDownList8" runat="server">
                <asp:ListItem>select</asp:ListItem>
                <asp:ListItem>kerala</asp:ListItem>
                <asp:ListItem>karnataka</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">District</td>
        <td>
            <asp:DropDownList ID="DropDownList9" runat="server" onselectedindexchanged="DropDownList9_SelectedIndexChanged">
                <asp:ListItem>select</asp:ListItem>
                <asp:ListItem>calicut</asp:ListItem>
                <asp:ListItem>gudallur</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">Mobile Number</td>
        <td>
            <asp:TextBox ID="TextBox11" runat="server" CssClass="textbox" Height="30px" 
                Width="143px"></asp:TextBox>
            
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                ControlToValidate="TextBox11" ErrorMessage="mob no rqurd"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator6" runat="server" 
                ControlToValidate="TextBox11" ErrorMessage="10 digit required" 
                MaximumValue="9999999999" MinimumValue="1000000000" Type="Double"></asp:RangeValidator>
            
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Email Id</td>
        <td>
            <asp:TextBox ID="TextBox12" runat="server" CssClass="textbox" Height="26px" 
                Width="143px"></asp:TextBox>
            
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                ControlToValidate="TextBox12" ErrorMessage="email requrd"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBox12" ErrorMessage="Incorrect Format" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Username</td>
        <td>
            <asp:TextBox ID="TextBox13" runat="server" CssClass="textbox" Height="27px" 
                Width="143px"></asp:TextBox>
            
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox13" ErrorMessage="Required"></asp:RequiredFieldValidator>
            
            <asp:RangeValidator ID="RangeValidator5" runat="server" 
                ControlToValidate="TextBox13" ErrorMessage="enter password" MaximumValue="z" 
                MinimumValue="a"></asp:RangeValidator>
            
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Password</td>
        <td>
            <asp:TextBox ID="TextBox14" runat="server" CssClass="textbox" Height="29px" 
                Width="143px"></asp:TextBox>
            
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox14" ErrorMessage="Required"></asp:RequiredFieldValidator>
            
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TextBox13" ControlToValidate="TextBox14" 
                ErrorMessage="doesnot match"></asp:CompareValidator>
            
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Photo</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" style="margin-bottom: 5px" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" style="height:40px;width:120px; border-radius: 5px;
    background-color: sandybrown;" Text="Sumbit" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

