using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication15
{
    public partial class userform : System.Web.UI.Page
    {
        data d = new data();
        protected void Page_Load(object sender, EventArgs e)
        {
            d.gridbind("select * from sample", GridView1);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "approve")
            {
            }
        }

        protected void approve(object sender, CommandEventArgs e)
        {

        }
    }
}