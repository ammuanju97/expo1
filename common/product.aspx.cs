using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class common_Default : System.Web.UI.Page
{
    data d = new data();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            d.datalist("select * from comprodetails inner join companyregist on comprodetails.companyId=companyregist.companyId inner join admincat on comprodetails.categoryId=admincat.categoryId",DataList1);
            if (DataList1.Items.Count <= 0)
            {
                Label1.Text = "No Products Were Added";
            }
        }
    }
}