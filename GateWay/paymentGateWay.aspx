<%@ Page Language="C#" AutoEventWireup="true" CodeFile="paymentGateWay.aspx.cs" Inherits="GateWay_paymentGateWay" %>

<!DOCTYPE html>
<html lang="en-GB">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
        <title>Payment GateWay</title>
        <link rel="canonical" href="./creditCard_files/creditCard.htm">
        <link rel="stylesheet" href="creditCard_files/demo.css">

        <script type="text/javascript" async="" src="./creditCard_files/ga.js"></script><script type="text/javascript" src="./creditCard_files/jquery.min.js"></script>
        <script type="text/javascript" src="./creditCard_files/jquery.creditCardValidator.js"></script>
        <script type="text/javascript" src="./creditCard_files/demo.js"></script>

        <script>
            function validz() {
                if (!document.getElementsByName("card_number")[0].hasAttribute("class")) {
                    alert('Enter Card Number');
                    document.getElementsByName("card_number")[0].focus();
                    return false;
                }
                else {
                    var a = document.getElementsByName("card_number")[0].getAttribute("class");
                    if (a.length == 0) {
                        alert('Enter Proper Card Number');
                        document.getElementsByName("card_number")[0].focus();
                        return false;
                    }
                    if (!(document.getElementsByName("cvv")[0].value.length == 3)) {
                        alert('Enter 3 Digit CVV');
                        document.getElementsByName("cvv")[0].focus();
                        return false;
                    }
                    if (document.getElementsByName("name_on_card")[0].value.length == 0) {
                        alert('Enter Name On Card');
                        document.getElementsByName("name_on_card")[0].focus();
                        return false;
                    }
                }

            }
        </script>
    </head>
    <body>
        <% 
//        localhost:81/onlinePaymentGateway/paymentGateWay.php?amount=1000&paymentToName=Faraz&paymentToaccountNo=9897564654&response=myPage.php

            string toaccountNo = Request.QueryString["paymentToaccountNo"].ToString();
            string toAccountName = Request.QueryString["paymentToName"].ToString();
            string toAmount = Request.QueryString["amount"].ToString();
            string toResponse = Request.QueryString["response"].ToString();

       
        %>
        <form  method="POST" runat="server">
            <div id="container">
                <div class="demo">
                    <h2>Payment details</h2>
                    <ul>
                        <li>
                            <ul class="cards">
                                <li class="visa">Visa</li>
                                <li class="visa_electron">Visa Electron</li>
                                <li class="mastercard">MasterCard</li>
                                <li class="maestro">Maestro</li>
                                <li class="discover">Discover</li>
                            </ul>
                        </li>

                        <li>
                            <label for="card_number">Card number</label>
                            <asp:TextBox ID="card_number" placeholder="Card Number" name="card_number" runat="server"></asp:TextBox>
                        </li>

                        <li class="vertical">
                            <ul>
                                <li>
                                    <label for="expiry_date">Expiry date <small>mmyy</small></label>
                                    <asp:TextBox placeholder="MMYY" name="expiry_date" ID="expiry_date" maxlength="5" runat="server"></asp:TextBox>
                                </li>

                                <li style="float: left">
                                    <label for="cvv">CVV</label>
                                    <asp:TextBox ID="cvv" placeholder="CVV" name="cvv" maxlength="3" runat="server"></asp:TextBox>
                                </li>
                            </ul>
                        </li>

                        <li class="vertical maestro" style="display: none; opacity: 0;">
                            <ul>
                                <li>
                                    <label for="issue_date">Issue date <small>mmyy</small></label>
                                    <input type="text"  placeholder="MMYY"  name="issue_date" id="issue_date" maxlength="5">
                                </li>

                                <li>
                                    <span class="orx">or</span>
                                    <label for="issue_number">Issue number</label>
                                    <input type="text" name="issue_number" id="issue_number" maxlength="2">
                                </li>
                            </ul>
                        </li>
                        <li>
                            <label for="name_on_card">Name on card</label>
                            <asp:TextBox ID="name_on_card"  placeholder="Name as on Card:" name="name_on_card" runat="server"></asp:TextBox>
                        </li>
                        <li>
                            <asp:Button OnClientClick="return validz();" ID="Button1" runat="server" Text="Make Payment" OnClick="Button1_Click" />
                        </li>
                    </ul>

                </div>
            </div>
        </form>
    </body>
</html>