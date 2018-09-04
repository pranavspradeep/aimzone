using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for loginclass
/// </summary>
public class loginclass
{
    string con = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
   //LOGIN REGISTERED FIRMS
    public int LoginFirm(string username,string password)
    {
        SqlConnection sqlConnection = new SqlConnection(con);
        sqlConnection.Open();
        SqlCommand sqlCommand = new SqlCommand("loginFIRM", sqlConnection);
        sqlCommand.CommandType= CommandType.StoredProcedure;
        sqlCommand.Parameters.AddWithValue("@username", username);
        sqlCommand.Parameters.AddWithValue("@password", password);
        int i = Convert.ToInt32(sqlCommand.ExecuteScalar());
        sqlConnection.Close();
        return i;

    }
}