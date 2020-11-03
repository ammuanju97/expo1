using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace WebApplication15
{
    public class data
    {
        SqlConnection con = new SqlConnection(@"");
        SqlCommand cmd;
        SqlDataReader dr;
        DataTable dt=new DataTable();
        SqlDataAdapter da=new SqlDataAdapter();
        public void executes(string sql)
        {
            con.Open();
            cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
        }
        public SqlDataReader reader(string sql)
        {
            con.Open();
            cmd = new SqlCommand(sql, con);
            dr = cmd.ExecuteReader();
            return dr;
        
        }
        public void gridbind(string sql, GridView g)
        {
            con.Open();
            cmd = new SqlCommand(sql, con);
            da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            g.DataSource = dt;
            g.DataBind();
        }


    }
}