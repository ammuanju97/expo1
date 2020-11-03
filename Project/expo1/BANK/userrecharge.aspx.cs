using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class user_userrecharge : System.Web.UI.Page
{
    data1 cs = new data1();
    SqlConnection con = new SqlConnection(@"Data Source=ADMIN-PC;Initial Catalog=dreamzBank;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["response"] != null)
        {
            string logId = Session["logid"].ToString();
            string resp = Request.QueryString["response"].ToString();
            if (resp == "paid")
            {
                SqlCommand cmd = new SqlCommand("update tbl_vehicle set balance = balance + '" + Session["amountTran"].ToString() + "' where logid = '" + logId + "'", con);
                cmd.ExecuteNonQuery();
            }
            else
            {
                Response.Write("<script>alert('"+ resp +"');</script>");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand( "select * from tbl_adminaccount", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["amountTran"] = txtAmount.Text;

            Response.Redirect("../GateWay/paymentGateWay.aspx?amount=" + txtAmount.Text + "&paymentToName=" + dt.Rows[0]["name"].ToString() + "&paymentToaccountNo=" + dt.Rows[0]["accountno"].ToString() + "&response=../user/userrecharge.aspx");
        }
        else
        {
            Response.Write("<script>alert(Add Admin Account);</script>");
        }
}
    protected void txtAmount_TextChanged(object sender, EventArgs e)
    {

    }
}