<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bank1.aspx.cs" Inherits="onlineBanking_bank1" %>

<!DOCTYPE html>
<head>
    <title>DreamzBank | Payment</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/foundation.min.css">
    <link rel="stylesheet" href="css/superfish.css">
    <link rel="stylesheet" href="css/stylesheet.css">
    <script>
        function redirectz(path) {
            window.location = path;
        }
    </script>
    <!--[if lt IE 9]>
    <link rel="stylesheet" href="css/ie-fixes.css">
    <![endif]-->
</head>
<body>
    <div class="wrapper">
        <div class="header">
            <div class="row">
                <div class="columns large-12  header-inner"> <a href="index.html"><img src="images/logo.png" alt="" class="logo"></a> </div>
                <div class="columns large-12">
                    <nav>
                        <section>
                            <ul class="sf-menu large-12">

                            </ul>
                        </section>
                    </nav>
                </div>
            </div>
            <div class="row">
                <div class="columns large-12 small-top-menu">
                    <div class="row">
                        <div class="columns large-12 plr0 top-nav">
                            <form name="dropdown" class="dropdown" action="#">
                                <nav>
                                    <section>
                                        <select name="selected" id="target" accesskey="E" onChange="goToNewPage(document.dropdown.selected)">
                                            <option value="index.html">home</option>
                                            <option value="about.html">about us</option>
                                            <option value="blog.html">blog</option>
                                            <option value="gallery.html">gallery</option>
                                            <option value="services.html">services</option>
                                            <option value="contact.html">contact us</option>
                                        </select>
                                    </section>
                                </nav>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row content-wrapper">
            <div class="columns large-12">
                <div class="row">
                    <div class="columns large-12 content ">
                        <h1 class="page-title">Make Payment</h1>
                        <div class="row contact-form">
                            <div class="columns large-8">
                                <form id="contactform" runat="server">
                                    <asp:HiddenField ID="hfcount" runat="server" Value="3" />
                                    <%
                                    //name,cardNo, cvv, amount, paymentToName, paymentToaccountNo,response
                                    string name = Session["name"].ToString();
                                    string cardNo = Session["cardNo"].ToString();
                                    string cvv = Session["cvv"].ToString();
                                    System.Data.DataTable resultRow = new data1().datatable("select * from tbl_accountDetails where name='"+ name +"' and cardNo = '"+ cardNo +"' and cvv = '"+ cvv +"'");

                                    if (resultRow.Rows.Count > 0) {
                                        %>
                                        <table style="width: 100%" border="0">
                                            <tr>
                                                <td style="width: 28%">Welcome, </td>
                                                <td><%=resultRow.Rows[0]["name"].ToString()%></td>
                                            </tr>
                                            <tr>
                                                <td>Transfer from Account No</td>
                                                <td><%=resultRow.Rows[0]["accountNo"].ToString()%></td>
                                            </tr>
                                            <tr>
                                                <td>Transfer To</td>
                                                <td><%=Session["paymentToName"].ToString() %> : <%=Session["paymentToaccountNo"].ToString() %></td>
                                            </tr>
                                            <tr>
                                                <td>Amount</td>
                                                <td><%=Session["amount"].ToString() %></td>
                                            </tr>
                                            <tr>
                                                <td>Remarks</td>
                                                <td rowspan="2">
                                                    <asp:TextBox ID="remarks" placeholder="Remarks:" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td>Transaction Password</td>
                                                <td>
                                                    <asp:TextBox  placeholder="Transaction Password"  ID="pwd" runat="server" TextMode="Password"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                        </table>
                                        <%
                                    }
                                    %>
                                    <asp:Button ID="Button1" class="button" name="submit" runat="server" 
                                        Text="Make Payment" onclick="Button1_Click" />
                          </form>
                            </div>
                        </div>
                    </div>
                    <div class="row collapse">
                        <div class="columns large-12"> </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="row">
                <div class="columns large-12 footer-inner">
                    <div class="row">
                        <div class="columns large-3 box">
                            <div class="">
                                <h2 class="footer-title">Resources</h2>
                                <ul>
                                    <li><a href="#">home</a></li>
                                    <li><a href="#">faqs</a></li>
                                    <li><a href="#">contact us</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="columns large-3 box">
                            <div>
                                <h2 class="footer-title">links </h2>
                                <ul>
                                    <li><a href="#">home</a></li>
                                    <li><a href="#">faqs</a></li>
                                    <li><a href="#">contact us</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="columns large-3 box">
                            <div>
                                <h2 class="footer-title">follow us</h2>
                                <ul>
                                    <li><a href="#" class="media tweeter"></a>Follow us on twitter</li>
                                    <li><a href="#" class="media youtube"></a>Follow us on youtube</li>
                                    <li><a href="#" class="media facebook"></a>Follow us on facebook</li>
                                    <li><a href="#" class="media gmail"></a>Follow us on google plus</li>
                                </ul>
                            </div>
                        </div>
                        <div class="columns large-3 box">
                            <div>
                                <h2 class="footer-title">Contact us</h2>
                                <p>Address With Postal Code</p>
                                <p><b>Tel:</b> (Code)Landline, (Code)Mobile</p>
                                <p><b>Fax:</b> (Code)Number, (Code)Number</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <div class="credit-row">
            <div class="row">
                <div class="columns large-11 credit">&copy; 2045 All rights reserved by <a href="#">DreamzBank.</a></div>
            </div>
        </div>
    </div>
</div>

</body>
</html>