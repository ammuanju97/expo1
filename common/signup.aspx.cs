using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class common_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "Exhibitor")
        {
            Response.Redirect("exhibitor.aspx");

        }
        else if (DropDownList1.SelectedValue == "Company")
        {
            Response.Redirect("companyreg.aspx");
        }
        else if (DropDownList1.SelectedValue == "User")
        {
            Response.Redirect("userreg.aspx");
        }
    }
}