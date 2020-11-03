<%@ Page Title="" Language="C#" MasterPageFile="~/Exhibitor/ExhibitorMaster.master" AutoEventWireup="true" CodeFile="notification.aspx.cs" Inherits="Exhibitor_Default" %>

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
        .auto-style2 {
            background: white;
            border: 1px double#DDD;
            border-radius: 5px;
            box-shadow: 0 0 5px #333;
            color: #666;
            outline: none;
        }
        .auto-style3 {
            text-align: center;
            font-size: medium;
        }
        .auto-style4 {
            margin-bottom: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="auto-style3" colspan="2">
            SET NOTIFICATIONS </td>
    </tr>
    <tr>
        <td class="style2" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="DETAILS"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2" TextMode="MultiLine" Columns="6" Height="74px" Rows="6" Width="238px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="notification required"></asp:RequiredFieldValidator>
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
            &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                Text="SEND" />
            <br />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CssClass="auto-style4" DataKeyNames="notifyId" DataSourceID="SqlDataSource1" 
                Height="183px" Width="442px" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="notifyId" HeaderText="NotificationId" InsertVisible="False" ReadOnly="True" SortExpression="notifyId" />
                    <asp:BoundField DataField="details" HeaderText="Details" SortExpression="details" />
                    <asp:BoundField DataField="type" HeaderText="Send To  " SortExpression="type" />
                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:expomanagementConnectionString44 %>" 
                SelectCommand="SELECT * FROM [sendnotify] WHERE ([sendersid] = @sendersid)">
                <SelectParameters>
                    <asp:SessionParameter Name="sendersid" SessionField="userid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

