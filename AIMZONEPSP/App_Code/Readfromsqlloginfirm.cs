using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Readfromsqlloginfirm
/// </summary>
public class Readfromsqlloginfirm
{
   
         public string location { get; set; }
         public string state { get; set; }
         public string firmname { get; set; }
         public string firmid { get; set; }





    string con = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    public void Readfromsqlloginfirmdetails(string username, string password)
    {
        SqlConnection sqlConnection = new SqlConnection(con);
        sqlConnection.Open();
        SqlCommand sqlCommand = new SqlCommand("fetchfirmdetails", sqlConnection);
        sqlCommand.CommandType = CommandType.StoredProcedure;
        sqlCommand.Parameters.AddWithValue("@username", username);
        sqlCommand.Parameters.AddWithValue("@password", password);
        SqlDataReader rdr = sqlCommand.ExecuteReader();
            while (rdr.Read())
        {
            state = rdr["State"].ToString();
            location = rdr["Location"].ToString();
            firmname = rdr["FirmName"].ToString();
            firmid = rdr["RegId"].ToString();
        }
        sqlConnection.Close();


    }
       
}