using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Net.Mail;

/// <summary>
/// Summary description for data
/// </summary>
public class data
{
    SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=expomanagement;Integrated Security=True");
    SqlCommand cmd;
    SqlDataReader dr;
    SqlDataAdapter da;
   

    public int execute(string sql)
    {
        con.Close();
        con.Open();
        cmd = new SqlCommand(sql, con);
        int i = cmd.ExecuteNonQuery();
        con.Close();
        return i;
    }
    public int increment(string sql)
    {
        con.Close();
        con.Open();
        int j = 0;
        return j;

    }
     public SqlDataReader dataread(string sql)
    {
        con.Close();
        con.Open();
        cmd = new SqlCommand(sql, con);
        dr = cmd.ExecuteReader();
        return dr;
    }


     public string excuteScalar(string sql)
     {
         con.Close();
         con.Open();
        
         string  j="";
         cmd = new SqlCommand (sql,con);
         if (cmd.ExecuteScalar() != null)
         {
             j = cmd.ExecuteScalar().ToString();
         }
      con.Close();
         return j;
           

     }




     public int autogenLog()
     {
        
         int a;
         cmd = new SqlCommand("select count(*)from login1", con);
         con.Open();
         a = Convert.ToInt32( cmd.ExecuteScalar().ToString());
         int id;
         if (a == 0)
         {
             id = 1;
         }
         else
         {
             id = a + 1;
         }
         return id;        

     }

    public void fileupload(FileUpload fu, string path)
    {
        con.Close();
        con.Open();
        if (fu.HasFile)
        {

            fu.SaveAs(path);
        }


    }

    public void dropdown(string Sql, DropDownList ddl, string datatext, string dataval)
    {
        con.Close();
        con.Open();
        cmd = new SqlCommand(Sql, con);
        DataTable dt = new DataTable();

        da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            ddl.DataSource = dt;
            ddl.DataTextField = datatext;
            ddl.DataValueField = dataval;
            ddl.DataBind();
            ddl.Items.Insert(0,"Select");
        }

    }
    public void gridview(string sql, GridView gv)
    {
        con.Close();
        con.Open();
        DataTable dt = new DataTable();

        cmd = new SqlCommand(sql, con);
        da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            gv.DataSource = dt;
            gv.DataBind();
        }
    }
        public void datalist(string sql,DataList gv)
        {
            con.Close();
            con.Open();
            DataTable dt = new DataTable();

            cmd = new SqlCommand(sql, con);
            da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                gv.DataSource = dt;
                gv.DataBind();
            }
            
        }
        public DataTable datatable(string sql)
        {
            con.Close();
            con.Open();
            DataTable dt = new DataTable();

            cmd = new SqlCommand(sql, con);
            
            da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            
            return dt;
            dt.Clear();
            

         }

        public void detailsview(string sql, DetailsView dv)
        {
            con.Close();
            con.Open();
            DataTable dt = new DataTable();

            cmd = new SqlCommand(sql, con);
            da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                dv.DataSource = dt;
                dv.DataBind();
            }
        }
        public void mail(string to, string sub, string body)
        {
            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                mail.From = new MailAddress("edusat999@gmail.com");
                mail.To.Add(to);
                mail.Subject = sub;
                mail.Body = body;
                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("edusat999@gmail.com", "goodproject");
                SmtpServer.EnableSsl = true;
                SmtpServer.Send(mail);
            }
            catch
            {

            }
        }

            

}
