<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChatPage.aspx.cs" Inherits="ChatPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    <script type="text/javascript" src="Scripts/Helper.js"></script>
    <script type="text/javascript" src="Scripts/ChatCtrl.js"></script>
    <style type="text/css">
        .Messages
        {
            overflow:auto;
            height:320px;
            width:350px;
            text-align:left;
            color:Gray;
            font-family:@Arial Unicode MS;
            margin:0 auto
        }
        
        #txtMessage
        {
            height: 40px;
        }
        
    </style>
</head>
<body ng-app style="background-color:#8BB7F1">
    <form id="form1" runat="server">
    <div id = "container" style = " text-align:center">
        <%--<div>
            <textarea id = "txtGlobalChat" rows = "20" cols = "80"></textarea>
        </div>--%>
        <div style="width:350px;border:2px solid blue;z-index:1px;margin:auto;background-color:White" runat="server" id="chatdiv">
        <div id = "divMessages" ng-controller = "ChatCtrl"  class="Messages">
        <span style="height:30px;background-color:blue;float:right;text-align:right;width:350px">
            <asp:Button ID="Button1" runat="server" Text="X" onclick="Button1_Click" /></span>
            <table width = "100%">
                <tr ng-repeat = "msg in globalChat">
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="255px" style="margin-left: 49px" TextMode="MultiLine" Width="220px"></asp:TextBox>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" Height="50px" OnTextChanged="TextBox1_TextChanged" TextMode="MultiLine" Width="256px"></asp:TextBox>
&nbsp;</div>
    </div>
    </div>

    <div style="text-align:center;padding:40px;">
        <asp:Button ID="Button2" runat="server" Text="Back to Home" Height="33px" 
            onclick="Button2_Click" Width="148px" /></div>
    <script type ="text/javascript">
        var scrollToBottom = false;
        $('#txtMessage').bind("keypress", function (e) {
            if (e.keyCode == 13) {
                AddGlobalChatMsg();
                $('#txtMessage').val("");                
                return false;
            }
        });

        function AddGlobalChatMsg() {
            var chatService = new ServiceCall("AddGlobalChat", "{'message':'" + $('#txtMessage').val() + "'}");
            chatService.callService(addGlobalChat_Complete);
            scrollToBottom = true;
            //getGlobalChat();
        }

        function addGlobalChat_Complete() {}

        function ContentLoaded() {
            updateChatArea();
            scrollToBottom = true;
        }

        function updateChatArea() {
            getGlobalChat();
        }

        function getGlobalChat() {
            var chatService = new ServiceCall("GetGlobalChat", "{}");
            chatService.callService(getGlobalChat_Complete);
        }

        function getGlobalChat_Complete(msg) {
            //$("#txtGlobalChat").val(msg.d);
            var scope = AngularScope();
            scope.globalChat = [];
            var i = 0;
            for (; i < msg.d.length; i++) {
                scope.globalChat.push(msg.d[i]);
            }
            scope.$apply();
            if (scrollToBottom === true) {
                setTimeout("$('#divMessages').scrollTop($('#divMessages')[0].scrollHeight);", 50);
            }
            setTimeout("getGlobalChat(false);", 100);
        }

        function AngularScope() {
            return angular.element($("#divMessages")).scope();
        }

        window.addEventListener("DOMContentLoaded", ContentLoaded, false); 
    </script>


                            </form>
</body>
</html>
