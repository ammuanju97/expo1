<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bank2.aspx.cs" Inherits="onlineBanking_bank2" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src ="js/jquery-1.4.2.min.js"></script>
        <script>
            $(document).ready(function () {
                redrctz();
            });
            function redirectz(path) {
                redrct(path);
            }
            function redrctz() {
                setInterval(function () {
                    $('#dd').html($('#dd').html() + '.');
                }, 500);

            }
            function redrct(path) {
                setInterval(function () {
                    window.location = path;
                }, 3000);
            }
        </script>
    </head>
    <body>
        <h1>Processing Your Details</h1>
        <h1><div id="dd"></div></h1>
            <% 
            string path = Session["response"] + "?response=paid";
            Response.Write("<script>alert('PAID')</script>");
            Response.Write("<script>redirectz(~/User/userhome.aspx);</script>");
            %>
    </body>
</html>
