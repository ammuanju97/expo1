using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GateWay_paymentGateWay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            //amount, paymentToName, paymentToaccountNo, response
            //name, cardNo, cvv, amount, paymentToName, paymentToaccountNo, response

        string toAmount = Request.QueryString["amount"].ToString();
        string toAccountName = Request.QueryString["paymentToName"].ToString();
        string toaccountNo = Request.QueryString["paymentToaccountNo"].ToString();
        string req = Request.QueryString["response"].ToString();

        string qry = "name=" +  name_on_card.Text + "&cardNo=" + card_number.Text + "&cvv=" + cvv.Text + "&amount=" + toAmount + "&paymentToName=" + toAccountName + "&paymentToaccountNo=" + toaccountNo + "&response=" + req;
        Response.Redirect("~/onlineBanking/bank.aspx?" + qry);
    }
}