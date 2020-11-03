<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="viewapprov.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .auto-style1 {
            width: 575px;
        }
        .ss {
       position:relative;
       left:-125px;

             }
            .s1
            {
                position:relative; left:-125px;
            }
      
        .auto-style2 {
            font-size: x-large;
        }
      
        .auto-style3 {
            font-size: medium;
        }
        .auto-style4 {
            width: 575px;
            color: #FF0000;
        }
      
    .auto-style5 {
        width: 464px;
        color: #FF0000;
    }
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="auto-style1">
              <%--  <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                    <asp:View ID="View1" runat="server">--%>
               <%--     DataSourceID="SqlDataSource2" --%>
                        <h1 class="auto-style2">APPROVED EXHIBITOR</h1>
                <p class="auto-style3"><marquee direction="left" class="auto-style4"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></marquee></p>
                <p class="auto-style3">&nbsp;</p>
                        <asp:GridView ID="GridView1" CssClass="ss" runat="server" AutoGenerateColumns="False" 
                            BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                            CellPadding="3" GridLines="Vertical" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:BoundField DataField="exhibitorname" HeaderText="Name" />
                                <asp:BoundField DataField="gender" HeaderText="Gender" />
                                <asp:BoundField DataField="experience" HeaderText="Experience" />
                                <asp:BoundField DataField="country" HeaderText="Country" />
                                <asp:BoundField DataField="mobilenumber" HeaderText="Mobile" />
                                <asp:BoundField DataField="emailid" HeaderText="Email" />
                                <asp:TemplateField HeaderText="Image">
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "../image/"+Eval("photo") %>' Width="100px" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#0000A9" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#000065" />
                        </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:expomanagementConnectionString41 %>" 
                    SelectCommand="SELECT * FROM [admincat]"></asp:SqlDataSource>
                <%--    </asp:View>
                    <asp:View ID="View2" runat="server">--%>
                        <h1 class="auto-style2">&nbsp;</h1>
                <h1 class="auto-style2">APPROVED EXPOS</h1>
               <%--  DataSourceID="SqlDataSource1"--%>
                <p class="auto-style3"><marquee direction="left" class="auto-style5"><asp:Label ID="Label2" runat="server" Text=""></asp:Label></marquee></p>
                        <asp:GridView ID="GridView2" CssClass="s1" runat="server" AutoGenerateColumns="False" 
                            BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                            CellPadding="3" CellSpacing="1" GridLines="None" 
                   >
                            <Columns>
                                <asp:BoundField DataField="exhibitorname" HeaderText="Exhibitor Name" />
                                <asp:BoundField DataField="expotitle" HeaderText="Expo Name" />
                                <asp:BoundField DataField="expotype" HeaderText="Expo Type" />
                                <asp:BoundField DataField="country" HeaderText="Country" />
                                <asp:BoundField DataField="numberofbooth" HeaderText="No of Booth" />
                                <asp:BoundField DataField="Image" HeaderText="Image" />
                            </Columns>
                            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                        </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:expomanagementConnectionString40 %>" 
                    SelectCommand="SELECT * FROM [admincat]"></asp:SqlDataSource>
                 <%--   </asp:View>
                </asp:MultiView>--%>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

