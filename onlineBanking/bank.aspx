<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bank.aspx.cs" Inherits="onlineBanking_bank" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dreams Bank Welcome Page</title>
        <script src ="js/jquery-1.4.2.min.js"></script>
        <script>
            $(document).ready(function () {
                redrctz();
            });
            function redirect() {
                redrct();
            }
            function redrctz() {
                setInterval(function () {
                    $('#dd').html($('#dd').html() + '.');
                }, 500);
            }
            function redrct() {
                setInterval(function () {
                    window.location = "bank1.aspx";
                }, 3000);
            }
        </script>
    </head>
    <body>
    <center>
        <h1>Redirecting to Your Bank Website</h1>
        <h1><div id="dd"></div></h1>
    </center>
    <%
    //name,cardNo, cvv, amount, paymentToName, paymentToaccountNo,response
        string cardNo = Request.QueryString["cardNo"].ToString();
        string cvv = Request.QueryString["cvv"].ToString();
        string amount = Request.QueryString["amount"].ToString();
        string paymentToName = Request.QueryString["paymentToName"].ToString();
        string paymentToAccount = Request.QueryString["paymentToaccountNo"].ToString();
        string response = Request.QueryString["response"].ToString();
        string name = Request.QueryString["name"].ToString();

        Session["cardNo"] = cardNo;
        Session["cvv"] = cvv;
        Session["amount"] = amount;
        Session["paymentToName"] = paymentToName;
        Session["paymentToaccountNo"] = paymentToAccount;
        Session["response"] = response;
        Session["name"] = name;

        data1 cs = new data1();
        System.Data.DataTable result = cs.datatable("select * from tbl_accountDetails where name='" + name + "' and cardNo = '" + cardNo + "' and cvv = '" + cvv + "'");
        if (result.Rows.Count > 0)
        {
            decimal currentBalance = Decimal.Parse(result.Rows[0]["balance"].ToString());
            decimal paymentAmount = Decimal.Parse(amount);
            if (currentBalance > paymentAmount)
            {
                Response.Write("<script>redirect();</script>");
            }
            else
            {
                Response.Write("<script>window.location.href = '" + response + "?response=insufficientBalance';</script>");
            }
        }
        else
        {
            Response.Write("<script>window.location.href = '" + response + "?response=incorrectCredentials';</script>");
        }
     %>
</body>
</html>