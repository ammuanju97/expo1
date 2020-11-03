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
            <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox"></asp:TextBox>
            
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Name required"></asp:RequiredFieldValidator>
            
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Age</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox"></asp:TextBox>
            
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required"></asp:RequiredFieldValidator>
            
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
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox7" ErrorMessage="Required"></asp:RequiredFieldValidator>
            
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Country</td>
        <td>
            <asp:DropDownList ID="DropDownList7" runat="server">
                <asp:ListItem>select</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>US</asp:ListItem>
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
                <asp:ListItem>Kannur</asp:ListItem>
                <asp:ListItem>Kasargod</asp:ListItem>
                <asp:ListItem>Wayanad</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">Mobile Number</td>
        <td>
            <asp:TextBox ID="TextBox11" runat="server" CssClass="textbox"></asp:TextBox>
            
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox11" ErrorMessage="Required"></asp:RequiredFieldValidator>
            
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Email Id</td>
        <td>
            <asp:TextBox ID="TextBox12" runat="server" CssClass="textbox"></asp:TextBox>
            
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox12" ErrorMessage="Incorrect Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Username</td>
        <td>
            <asp:TextBox ID="TextBox13" runat="server" CssClass="textbox" style="height: 22px"></asp:TextBox>
            
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox13" ErrorMessage="Required"></asp:RequiredFieldValidator>
            
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Password</td>
        <td>
            <asp:TextBox ID="TextBox14" runat="server" CssClass="textbox"></asp:TextBox>
            
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox14" ErrorMessage="Required"></asp:RequiredFieldValidator>
            
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Photo</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
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

