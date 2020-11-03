<%@ Page Title="" Language="C#" MasterPageFile="~/common/commonmaster.master" AutoEventWireup="true" CodeFile="usernewregs.aspx.cs" Inherits="common_Default" %>

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
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%-- <div style="background-color:White">--%> <p>
    &nbsp;<table class="style1">
        <tr>
            <td class="style2" colspan="2">
                NEW REGISTRATION</td>
        </tr>
        <tr>
            <td>
                NAME</td>
            <td>
                <asp:TextBox ID="txtName" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtName" ErrorMessage="Enter your name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                AGE</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Enter your age" MaximumValue="150" 
                    MinimumValue="1" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>
                HOUSENAME</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Enter your housename"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                COUNTRY</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server"  CssClass="textbox">
                    <asp:ListItem>select</asp:ListItem>  
                    <asp:ListItem>india</asp:ListItem>
                    <asp:ListItem>us</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                STATE</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="textbox" >
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>kerala</asp:ListItem>
                    <asp:ListItem>karnataka</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                DISTRICT</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server"  CssClass="textbox">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>calicut</asp:ListItem>
                    <asp:ListItem>cannanore</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                PLACE</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Enter your place"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                MOBILE NUMBER</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator2" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="Enter your mobile number" 
                    MaximumValue="9999999999" MinimumValue="1000000000" Type="Double"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>
                EMAIL ID</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="Enter your Emailid" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                USERNAME</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="Enter your username"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                PASSWORD</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server" CssClass="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox10" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server"   style="height:40px;width:120px; border-radius: 5px;
    background-color: sandybrown; " onclick="Button1_Click" 
                    Text="REGISTER" />
            </td>
        </tr>
    </table>
    &nbsp;</p></div>
</asp:Content>

