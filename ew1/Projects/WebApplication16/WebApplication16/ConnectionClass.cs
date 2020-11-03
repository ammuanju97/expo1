using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Web.UI.WebControls;
/// <summary>
/// Summary description for ConnectionClass
/// </summary>
public class ConnectionClass
{
    SqlConnection con;

    public ConnectionClass()
    {
        con = new SqlConnection(@"data source =ROOT-PC\SQLSERVER2008;integrated security=true;initial catalog=CrimeReport");
        //
        // TODO: Add constructor logic here
        //
    }
    public SqlConnection open()
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        return con;
    }

    public SqlConnection close()
    {
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        return con;
    }

    public int dbExecuteNonQuery(string query)
    {
        int z = 0;
        //try
        //{
        SqlCommand cmd = new SqlCommand(query, open());
        z = cmd.ExecuteNonQuery();
        close();

        //}
        //catch
        //{
        //    z = -1;
        //}
        return z;
    }

    public DataTable dbExecuteDatatable(string query)
    {
        DataTable table = new DataTable();

        //try
        //{
        SqlCommand cmd = new SqlCommand(query, open());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(table);
        close();

        //}
        //catch
        //{

        //}
        return table;
    }

    public string dbExecuteScalar(string query)
    {
        string count = "";
        //try
        //{
        SqlCommand cmd = new SqlCommand(query, open());
        count = cmd.ExecuteScalar().ToString();
        close();
        //}
        //catch
        //{

        //}
        return count;
    }

    public decimal ToDec(String no)
    {
        decimal number = 0;
        try
        {
            number = decimal.Parse(no);
        }
        catch
        {
            number = 0;
        }
        return number;
    }
    public string todate(string oldate)
    {
        string newdate;
        try
        {

            newdate = oldate.Substring(6, 4) + "-" + oldate.Substring(3, 2) + "-" + oldate.Substring(0, 2);

        }
        catch
        {
            newdate = DateTime.Now.ToString("yyyy-MM-dd");

        }
        return newdate;
    }
    public void sendmail(string toemail, string subject, string body)
    {
        try
        {
            SmtpClient smpt = new SmtpClient("smtp.gmail.com", 587);
            smpt.EnableSsl = true;
            smpt.Credentials = new System.Net.NetworkCredential("greeninfoprojectmail@gmail.com", "greenadmin");
            smpt.Send("greeninfoprojectmail@gmail.com", toemail, subject, body);
        }
        catch
        {

        }

    }

    public void fileupload(FileUpload fu, string path)
    {
        if (fu.HasFile)
        {
            fu.SaveAs(path);
        }
    }


    public void mail(string p1, string p2, string p3)
    {
        throw new NotImplementedException();
    }
}