using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class onlineBanking_bank1 : System.Web.UI.Page
{
    data d = new data();
    protected void Page_Load(object sender, EventArgs e)
    {
        string path = "";
        if (!IsPostBack)
        {
            if (Session["amount"] == null)
            {
                path = Session["response"] + "?response=sessionErrorOccured";
                Response.Write("<script>redirectz('" + path + "');</script>");
            }
        }
        else
        {
            //name,cardNo, cvv, amount, paymentToName, paymentToaccountNo,response
            string pwds = pwd.Text;
            string name = Session["name"].ToString();
            string cardNo = Session["cardNo"].ToString();
            string cvv = Session["cvv"].ToString();
            string amount = Session["amount"].ToString();
            string paymentToaccountNo = Session["paymentToaccountNo"].ToString();
            string remarkss = remarks.Text;

            data1 cs = new data1();
            DataTable resultRow1 = cs.datatable("select * from tbl_accountDetails where transactionPassword='" + pwds + "' and  name='" + name + "' and cardNo = '" + cardNo + "' and cvv = '" + cvv + "'");
            if (resultRow1.Rows.Count > 0)
            {
                cs.execute("update tbl_accountDetails set balance= (balance - '" + amount + "') where transactionPassword='" + pwds + "' and  name='" + name + "' and cardNo = '" + cardNo + "' and cvv = '" + cvv + "'");
                cs.execute("update tbl_accountDetails set balance= (balance + '" + amount + "') where accountNo = '" + paymentToaccountNo + "'");
                cs.execute("insert into tbl_transaction (fromAccountNo,toAccountNo,amount,remarks) values ((select accountNo from tbl_accountDetails where cardNo = '" + cardNo + "'),'" + paymentToaccountNo + "','" + amount + "','" + remarkss + "')");
                Response.Write("<script>alert('Processing Payment')</script>");
                Response.Redirect("bank2.aspx?status=paid");
            }
            else
            {
                hfcount.Value = (int.Parse(hfcount.Value) - 1).ToString();
                if (hfcount.Value == "0")
                {
                    Response.Write("<script>alert('Incorrect Password: Maximum Tries over')</script>");
                    path = Session["response"] + "?response=incorrectCredentials";
                    Response.Write("<script>redirectz('" + path + "');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Incorrect Password: You have " + hfcount.Value + " Chances Reamining')</script>");
                }
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        d.execute("delete from userorder where userid='" + Session["userid"] + "'");
        //Response.Write("<script>alert('PURCHASED SUCCESSFULLY')</script/>");
        Response.Redirect("~/User/productorder.aspx");

    }
}