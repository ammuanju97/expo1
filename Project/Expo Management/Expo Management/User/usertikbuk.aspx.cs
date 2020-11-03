using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_Default : System.Web.UI.Page
{
    data da= new data();
    DataTable dt, dt1;
    SqlDataReader dr;
    int[] a = new int[10];
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            da.dropdown("select distinct expotitle,expoid from expodetails", ddlexpo, "expotitle", "expoId");
            da.dropdown("select distinct tickettype,ticketId from exbaddticket", ddlticket, "tickettype", "ticketId");
        }
        da.gridview("select expodetails.*,userticketbuk.*,exbaddticket.* from expodetails inner join userticketbuk  on expodetails.expoId=userticketbuk.expoId inner join exbaddticket on exbaddticket.ticketId=userticketbuk.ticketId where userticketbuk.status='booked' and userticketbuk.userId='" + Session["userId"] + "'", GridView1);
      
        //if (Request.QueryString["id"] == null)
        //{


        //    Response.Write("<script>alert('PAID');</script>");

        //}
        
    }
    
    
    protected void Button1_Click(object sender, EventArgs e)
    {
                
                int m = da.execute("insert into userticketbuk (userId,expoId,date,ticketId,amount,status) values('"+Session["userId"].ToString()+"','"+ddlexpo.SelectedItem.Value+"','"+date.Text+"','"+ddlticket.SelectedItem.Value+"','"+TextBox1.Text+"','booked')");
                if (m > 0)
        {
            Response.Write("<script>alert('BOOKED SUCCESSFULLY')</script/>");
            da.execute("update userticketbuk  set status ='issued' where ticketbookid='" + Session["userid"] + "'");

        }
                Session["amountTran"] = TextBox1.Text;
                ddlexpo.SelectedIndex = -1;
                ddlticket.SelectedIndex = -1;
                TextBox1.Text = "";
    }
    protected void ddlexpo_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = da.excuteScalar("select  ticketrate from exbaddticket where ticketId='" + ddlticket.SelectedItem.Value + "'");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        da.gridview("select expodetails.*,userticketbuk.*,exbaddticket.* from expodetails inner join userticketbuk  on expodetails.expoId=userticketbuk.expoId inner join exbaddticket on exbaddticket.ticketId=userticketbuk.ticketId where userticketbuk.status='booked' and userticketbuk.userId='" + Session["userId"] + "'", GridView1);
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int index = e.RowIndex;
        int id = Convert.ToInt32(GridView1.DataKeys[index].Value);
        Response.Write(id);
        da.execute("delete from userticketbuk where ticketid='" + id + "'");
        
        da.gridview("select expodetails.*,userticketbuk.*,exbaddticket.* from expodetails inner join userticketbuk  on expodetails.expoId=userticketbuk.expoId inner join exbaddticket on exbaddticket.ticketId=userticketbuk.ticketId where userticketbuk.status='booked'", GridView1);
        Response.Write("<script>alert('Deleted Succesfully')</script>");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        int sum = 0;
        dt1 = da.datatable("select ticketbookid from userticketbuk where userid='" + Session["userId"] + "'");
        if (dt1.Rows.Count > 0)
        {
            for (int j = 0; j < dt1.Rows.Count; j++)
            {
                da.execute("update userticketbuk set status='paid' where ticketbookId='" + dt1.Rows[j]["ticketbookId"] + "'");
            }
        }
        dt = da.datatable("select * from userticketbuk where userid='" + Session["userId"] + "'");
        if (dt.Rows.Count > 0)
        {
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                sum = sum + Convert.ToInt32(dt.Rows[i]["amount"]);
            }
        }
       // Session["amountTran"] = TextBox1.Text;
        da.execute("insert into userticketbuk values('" + Session["userid"] + "','"+Session["expoid"]+"','" + DateTime.Now.ToString() + "','"+Session["ticketid"]+"','" + sum + "','booked')");
        Response.Redirect("~/GateWay/paymentGateWay.aspx?amount=" + Session["amountTran"].ToString() + "&paymentToName=anu&paymentToaccountNo=4514520201017793&response=~/user/userticketbuk.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void ddlticket_SelectedIndexChanged(object sender, EventArgs e)
    {
      //  Session["amountTran"] = da.excuteScalar("select ticketrate from exbaddticket where");
    }
}
