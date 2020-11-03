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
    data da = new data();
    DataTable dt,dt1;
    SqlDataReader dr;
    int[] a = new int[10];
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Response.Write(Request.QueryString["id"]);
        if (!IsPostBack)
        {
            da.dropdown("select distinct companyregist.companyname,companyregist.*,comrequest.* from companyregist inner join comrequest on comrequest.companyId=companyregist.companyId  and comrequest.expoId='" + Request.QueryString["id"] + "'", ddlcom, "companyname", "companyId");
        }
        //if (Request.QueryString["id"] == null)
        //{


        //    Response.Write("<script>alert('PAID');</script>");

        //}

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //int m = da.execute("insert into userorder (userId,companyId,productId,quantity,total,date,status) values('" + Session["userId"].ToString() + "','" + ddlcom.SelectedItem.Value + "','" + ddlprod.SelectedItem.Value + "','" + quantity.Text + "','" + amount.Text + "',getdate(),'pending')");
        //if (m > 0)
        //{
        //    Response.Write("<script>alert('ORDERED SUCCESSFULLY')</script/>");

        //}
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        da.dropdown("select distinct admincat.categoryname,admincat.categoryId,admincat.*,comprodetails.* from admincat inner join comprodetails on admincat.categoryId=comprodetails.categoryId where comprodetails.companyId='" + ddlcom.SelectedValue + "'", ddlcat, "categoryname", "categoryId");

    }


    protected void rate_TextChanged(object sender, EventArgs e)
    {
        //rate.Text = da.excuteScalar("select  price from comprodetails where productId='" + ddlprod.SelectedItem.Value + "'");

    }


    protected void ddlsubcat_SelectedIndexChanged(object sender, EventArgs e)
    {

        //  da.dropdown("select distinct subcategoryname,categoryname,categoryId from admincat where categoryid='" + ddlsubcat.SelectedItem.Value + "'", ddlsubcat, "subcategoryname", "categoryId");
        da.dropdown("select distinct productname,productId from comprodetails where subcategory='" + ddlsubcat.SelectedItem.Value + "'", ddlprod, "productname", "productId");

    }
    protected void ddlprod_SelectedIndexChanged(object sender, EventArgs e)
    {
        //da.dropdown("select distinct productname,productId from comprodetails where subcategoryname='" + ddlsubcat.SelectedItem.Value + "'", ddlprod, "productname", "productId");
        rate.Text = da.excuteScalar("select  price from comprodetails where productId='" + ddlprod.SelectedItem.Value + "'");

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        int m = da.execute("insert into userorder  values('" + Session["userId"].ToString() + "','" + ddlcom.SelectedItem.Value + "','" + ddlprod.SelectedItem.Value + "','" + quantity.Text + "','" + amount.Text + "','"+DateTime.Now.ToString()+"','pending')");
        int k = da.execute("insert into temtab values('" + Session["userId"].ToString() + "','" + ddlcom.SelectedItem.Value + "','" + ddlprod.SelectedItem.Value + "','" + quantity.Text + "','" + amount.Text + "','" + DateTime.Now.ToString() + "','pending')");
        if (m > 0)
        {
            
            Response.Write("<script>alert('ORDERED SUCCESSFULLY')</script/>");

        }
        ddlcom.SelectedIndex=-1;
        ddlcat.SelectedIndex = -1;
        ddlsubcat.SelectedIndex = -1;
        ddlprod.SelectedIndex = -1;
        rate.Text = "";
        quantity.Text = "";
        amount.Text = "";




    }
    protected void ddlcat_SelectedIndexChanged(object sender, EventArgs e)
    {
        //da.dropdown("select distinct admincat.categoryname,admincat.categoryId,admincat.*,comprodetails.* from admincat inner join comprodetails on admincat.categoryId=comprodetails.categoryId where comprodetails.companyId='" + ddlcom.SelectedValue + "'", ddlcat, "categoryname", "categoryId");
        da.dropdown("select distinct admincat.subcategoryname,admincat.categoryId,admincat.*,comprodetails.* from admincat inner join comprodetails on admincat.categoryId=comprodetails.categoryId where comprodetails.subcategory='" + ddlcat.SelectedItem.Value + "'", ddlsubcat, "subcategoryname", "subcategory");

    }
    protected void quantity_TextChanged(object sender, EventArgs e)
    {
        double a = Convert.ToDouble(rate.Text);
        double b = Convert.ToDouble(quantity.Text);
        amount.Text = (a * b).ToString();
      
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
        int sum = 0;
        dt1=da.datatable("select orderId from userorder where userid='"+Session["userId"]+"'");
        if(dt1.Rows.Count>0)
        {
            for(int j=0;j<dt1.Rows.Count;j++)
            {
                da.execute("update temtab set status='purchase' where orderId='" + dt1.Rows[j]["orderId"] + "'");
        }
        }
        dt= da.datatable("select * from userorder where userid='"+Session["userId"]+"'");
        if (dt.Rows.Count > 0)
        {
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                sum = sum + Convert.ToInt32(dt.Rows[i]["total"]);
            }
        }
        Session["amountTran"] = sum;
        da.execute("insert into purchase values('" + Session["userid"] + "','" + sum + "','" + DateTime.Now.ToString() + "','purchase')");
        Response.Redirect("~/GateWay/paymentGateWay.aspx?amount=" + sum + "&paymentToName=anu&paymentToaccountNo=4514520201017793&response=~/user/productorder.aspx");
       
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        da.gridview("select temtab.*,companyregist.*,comprodetails.* from temtab inner join companyregist on temtab.companyid=companyregist.companyId inner join comprodetails on companyregist.companyId=comprodetails.companyId where temtab.userid='"+Session["userid"]+"'",GridView1);
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
       

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id = e.RowIndex;
        int ordid = Convert.ToInt32(GridView1.DataKeys[id].Value);
        da.execute("delete from temtab where orderid='" + ordid+ "'");
        Response.Write("<script>alert('Order Cancelled')</script>");
        da.gridview("select temtab.*,companyregist.*,comprodetails.* from temtab inner join companyregist on temtab.companyid=companyregist.companyId inner join comprodetails on companyregist.companyId=comprodetails.companyId where temtab.userid='" + Session["userid"] + "'", GridView1);
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
//da.gridview("select * from purchase   where userid='" + Session["userid"] + "'", GridView2);
    
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        //da.gridview("select * from purchase   where userid='" + Session["userid"] + "' and status='paid'" , GridView2);
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}