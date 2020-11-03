<%@ Page Title="" Language="C#" MasterPageFile="~/common/commonmaster.master" AutoEventWireup="true" CodeFile="expos.aspx.cs" Inherits="common_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            color: #FF33CC;
        }
        .auto-style2 {
            margin-left: 35px;
            font-size: small;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            font-size: medium;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style1">
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Expos<br />
        <br />
        </strong>
        <div style="width:600px;height:400px;overflow:auto">
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" 
                CssClass="auto-style2" DataKeyField="expoId" DataSourceID="SqlDataSource2" 
                Width="352px">
                <ItemTemplate>
                    
                    <br />
                    <br />
                    <strong><span class="auto-style4">ExpoTitle</span></strong>: <strong>
                    <asp:Label ID="expotitleLabel" runat="server" CssClass="auto-style4" Text='<%# Eval("expotitle") %>' />
                    </strong>
                    <br />
                    Type:
                    <asp:Label ID="expotypeLabel" runat="server" Text='<%# Eval("expotype") %>' />
                    <br />
                    Category:
                    <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                    <br />
                    SubCategory:
                    <asp:Label ID="subcategoryLabel" runat="server" Text='<%# Eval("subcategory") %>' />
                    <br />
                    Country:
                    <asp:Label ID="countryLabel" runat="server" Text='<%# Eval("country") %>' />
                    &nbsp;
                    <table class="auto-style3">
                        <tr>
                            <td>&nbsp;</td>
                            <td rowspan="2">
                               &nbsp; &nbsp; &nbsp;  <asp:Image ID="Image1" runat="server" CssClass="auto-style4" Height="131px" ImageUrl='<%# "../image/"+Eval("image") %>' Width="145px" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    State:
                    <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                    <br />
                    District:
                    <asp:Label ID="districtLabel" runat="server" Text='<%# Eval("district") %>' />
                    <br />
                    place:
                    <asp:Label ID="placeLabel" runat="server" Text='<%# Eval("place") %>' />
                    <br />
                    Booth No:
                    <asp:Label ID="numberofboothLabel" runat="server" Text='<%# Eval("numberofbooth") %>' />
                    <br />
                    <%--<br />--%>
                    <%--<div style ="position:relative">--%>
                    </div>
                    <%--<br />
                    <br />--%>
                    startingdate:
                    <asp:Label ID="startingdateLabel" runat="server" Text='<%# Eval("startingdate") %>' />
                    <br />
                    endingdate:
                    <asp:Label ID="endingdateLabel" runat="server" Text='<%# Eval("endingdate") %>' />
                    <br />
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:expomanagementConnectionString39 %>" 
                SelectCommand="SELECT * FROM [expodetails] WHERE ([status] = @status)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="approved" Name="status" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:expomanagementConnectionString21 %>" SelectCommand="SELECT * FROM [expodetails]"></asp:SqlDataSource>
    </div>
</asp:Content>

