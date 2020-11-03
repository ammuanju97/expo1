

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication14.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
    <p>
        NAME:<asp:TextBox ID="TextBox1" runat="server" BackColor="Aqua" Height="31px" 
            style="margin-left: 15px; margin-top: 9px" TextMode="Password" Width="347px"></asp:TextBox>

        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Lable1" runat="server" Text="LOGGIN"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="CLICK" onclick="Button1_Click" />
    </p>
    <p>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <asp:Button ID="Button2" runat="server" Height="38px" onclick="Button2_Click" 
                    style="margin-left: 13px; margin-top: 0px" Text="Button" Width="162px" />
                <asp:Image ID="Image1" runat="server" Height="140px" ImageUrl="~/bo12.jpg" 
                    style="margin-left: 38px; margin-top: 7px" Width="167px" />
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:Button ID="Button3" runat="server" Text="Button" Width="186px" />
                <asp:Image ID="Image2" runat="server" Height="136px" 
                    ImageUrl="~/The-Rose-of-Love-roses-.jpg" 
                    style="margin-left: 62px; margin-right: 0px; margin-top: 142px" />
            </asp:View>
            <asp:View ID="View3" runat="server">
                <asp:Button ID="Button4" runat="server" Text="Button" Height="27px" 
                    Width="59px" onclick="Button4_Click" />
                <asp:Image ID="Image3" runat="server" Height="614px" 
                    ImageUrl="~/flower-picture-gallery.jpg" 
                    style="margin-left: 851px; margin-top: 500px; margin-bottom: 128px" />
            </asp:View>
        </asp:MultiView>

       
        <asp:Label ID="Label2" runat="server" ForeColor="#663300" TabIndex="5" 
            Text="Language :"></asp:Label>
            
       
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        Height="16px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
        style="margin-left: 63px; margin-top: 77px" Width="233px">
            <asp:ListItem>SELECT</asp:ListItem>
            <asp:ListItem>malayalam</asp:ListItem>
            <asp:ListItem>hindi</asp:ListItem>
            <asp:ListItem>tamil</asp:ListItem>
            <asp:ListItem>english</asp:ListItem>
            <asp:ListItem>telung</asp:ListItem>
            <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
&nbsp;<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    <asp:FileUpload ID="FileUpload1" runat="server" Height="16px" 
            style="margin-left: 31px" Width="282px" />
            
       
        <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="Upload" />

            
       
        <p>
            &nbsp;</p>

            
       
        </form>
        </body>
