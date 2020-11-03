<%@ Page Title="" Language="C#" MasterPageFile="~/common/commonmaster.master" AutoEventWireup="true" CodeFile="commonsignup.aspx.cs" Inherits="common_Default" %>

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
            height: 24px;
            text-align: center;
        }
        .style4
        {
            height: 28px;
        }
        .style5
        {
            height: 30px;
        }
    .style6
    {
        text-align: left;
    }
    .style7
    {
        height: 30px;
        text-align: left;
    }
    .style8
    {
        height: 28px;
        text-align: left;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-color:White">
    <table class="style1">
        <tr>
            <td colspan="2">
                <table class="style1">
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0" 
                                onactiveviewchanged="MultiView1_ActiveViewChanged">
                                <asp:View ID="View1" runat="server">
                               
                           
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Type</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                                AutoPostBack="True">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Exhibitor</asp:ListItem>
                                <asp:ListItem>Company</asp:ListItem>
                                <asp:ListItem>User</asp:ListItem>
                            </asp:DropDownList>
                             </asp:View>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                                <asp:View ID="View2" runat="server">
                                    <table class="style1">
                                        <tr>
                                            <td class="style2" colspan="2">
                                                EXIBITOR REGISTRATION</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td class="style6">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Exhibitor Name</td>
                                            <td class="style6">
                                                <asp:TextBox ID="TextBox3" runat="server"  CssClass="textbox" 
                                                    ontextchanged="TextBox3_TextChanged"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                    ControlToValidate="TextBox3" ErrorMessage="enter exhibitor name"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Age</td>
                                            <td class="style6">
                                                <asp:TextBox ID="TextBox4" runat="server"  CssClass="textbox"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                    ControlToValidate="TextBox4" ErrorMessage="enter age"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Gender</td>
                                            <td class="style6">
                                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
                                                    <asp:ListItem>Male</asp:ListItem>
                                                    <asp:ListItem>Female</asp:ListItem>
                                                </asp:RadioButtonList>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Experience</td>
                                            <td class="style6">
                                                <asp:DropDownList ID="DropDownList6" runat="server">
                                                    <asp:ListItem>Select</asp:ListItem>
                                                    <asp:ListItem>One year</asp:ListItem>
                                                    <asp:ListItem>Less than one year</asp:ListItem>
                                                    <asp:ListItem>More than one year</asp:ListItem>
                                                    <asp:ListItem>More than two years</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Address</td>
                                            <td class="style6">
                                                <asp:TextBox ID="TextBox7" runat="server"  CssClass="textbox" TextMode="MultiLine"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                    ControlToValidate="TextBox7" ErrorMessage="enter address"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Country</td>
                                            <td class="style6">
                                                <asp:DropDownList ID="DropDownList7" runat="server">
                                                    <asp:ListItem>select</asp:ListItem>
                                                    <asp:ListItem>India</asp:ListItem>
                                                    <asp:ListItem>US</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                State</td>
                                            <td class="style6">
                                                <asp:DropDownList ID="DropDownList8" runat="server">
                                                    <asp:ListItem>select</asp:ListItem>
                                                    <asp:ListItem>kerala</asp:ListItem>
                                                    <asp:ListItem>karnataka</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                District</td>
                                            <td class="style6">
                                                <asp:DropDownList ID="DropDownList9" runat="server" 
                                                    onselectedindexchanged="DropDownList9_SelectedIndexChanged">
                                                    <asp:ListItem>select</asp:ListItem>
                                                    <asp:ListItem>calicut</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Mobile Number</td>
                                            <td class="style6">
                                                <asp:TextBox ID="TextBox11" runat="server"  CssClass="textbox"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                    ControlToValidate="TextBox11" ErrorMessage="enter mobile number" 
                                                    ValidationExpression="(D-)?\d{10}"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Email Id</td>
                                            <td class="style6">
                                                <asp:TextBox ID="TextBox12" runat="server"  CssClass="textbox"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                    ControlToValidate="TextBox12" ErrorMessage="enter email id" 
                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Username</td>
                                            <td class="style6">
                                                <asp:TextBox ID="TextBox13" runat="server"  CssClass="textbox" style="height: 22px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                                    ControlToValidate="TextBox13" ErrorMessage="enter username"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style5">
                                                Password</td>
                                            <td class="style7">
                                                <asp:TextBox ID="TextBox14" runat="server"  CssClass="textbox"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                                                    ControlToValidate="TextBox14" ErrorMessage="enter password"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Photo</td>
                                            <td class="style6">
                                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td class="style6">
                                                <asp:Button ID="Button1" runat="server" Text="Sumbit" style="height:40px;width:120px; border-radius: 5px;
    background-color: sandybrown;" onclick="Button1_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View3" runat="server">
                                    <table class="style1">
                                        <tr>
                                            <td class="style3" colspan="2">
                                                COMPANY REGISTRATION</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Company Name</td>
                                            <td class="style6">
                                                <asp:TextBox ID="TextBox15" runat="server"  CssClass="textbox"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                                    ControlToValidate="TextBox15" ErrorMessage="enter company name"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Company Type</td>
                                            <td class="style6">
                                                <asp:TextBox ID="TextBox17" runat="server"  CssClass="textbox" 
                                                    ontextchanged="TextBox17_TextChanged"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                                    ControlToValidate="TextBox17" ErrorMessage="enter company type"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Company Experience</td>
                                            <td class="style6">
                                                <asp:DropDownList ID="DropDownList5" runat="server"  CssClass="textbox">
                                                    <asp:ListItem>Select</asp:ListItem>
                                                    <asp:ListItem>One year</asp:ListItem>
                                                    <asp:ListItem>Less than one year</asp:ListItem>
                                                    <asp:ListItem>More than one year</asp:ListItem>
                                                    <asp:ListItem>More than two years</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style4">
                                                Country</td>
                                            <td class="style8">
                                                <asp:DropDownList ID="DropDownList2" runat="server"  CssClass="textbox">
                                                    <asp:ListItem>select</asp:ListItem>
                                                    <asp:ListItem>india</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                State</td>
                                            <td class="style6">
                                                <asp:DropDownList ID="DropDownList3" runat="server"  CssClass="textbox">
                                                    <asp:ListItem>select</asp:ListItem>
                                                    <asp:ListItem>kerala</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                District</td>
                                            <td class="style6">
                                                <asp:DropDownList ID="DropDownList4" runat="server"  CssClass="textbox">
                                                    <asp:ListItem>select</asp:ListItem>
                                                    <asp:ListItem>calicut</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Street Address</td>
                                            <td class="style6">
                                                <asp:TextBox ID="TextBox22" runat="server"  CssClass="textbox" TextMode="MultiLine"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                                                    ControlToValidate="TextBox22" ErrorMessage="enter address"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Landmark</td>
                                            <td class="style6">
                                                <asp:TextBox ID="TextBox23" runat="server"  CssClass="textbox"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                                                    ControlToValidate="TextBox23" ErrorMessage="enter landmark"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Username</td>
                                            <td class="style6">
                                                <asp:TextBox ID="TextBox24" runat="server"  CssClass="textbox"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                                                    ControlToValidate="TextBox24" ErrorMessage="enter user name"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Passsword</td>
                                            <td class="style6">
                                                <asp:TextBox ID="TextBox25" runat="server"  CssClass="textbox"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                                                    ControlToValidate="TextBox25" ErrorMessage="enter password"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td class="style6">
                                                <asp:Button ID="Button2" runat="server" Text="Sumbit" style="height:40px;width:120px; border-radius: 5px;
    background-color: sandybrown;" onclick="Button2_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <br />
                                <br />
                                <br />
                 </asp:MultiView>

    </table>
    </div>
</div>
</asp:Content>

