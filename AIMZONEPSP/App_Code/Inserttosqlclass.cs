using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Inserttosqlclass
/// </summary>
public class Inserttosqlclass
{
    string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

    //INSERT ENQUIRY FROM INDEX PAGE
    public int Insert_deal(string state,string location,string ineed,string phone,string contname,string email,string details,string subcategory)
    {
        SqlConnection conn;
        SqlCommand comm;
       
        conn = new SqlConnection(connectionString);
        conn.Open();
        comm = new SqlCommand("insert_Request", conn);
        comm.CommandType = CommandType.StoredProcedure;
        comm.Parameters.AddWithValue("@state",state);
        comm.Parameters.AddWithValue("@location", location);
        comm.Parameters.AddWithValue("@ineed", ineed);
        comm.Parameters.AddWithValue("@phone", phone);
        comm.Parameters.AddWithValue("@contname", contname);
        comm.Parameters.AddWithValue("@email", email);
        comm.Parameters.AddWithValue("@details", details); 
        comm.Parameters.AddWithValue("@subcategory", subcategory);
        int i=  comm.ExecuteNonQuery();
        conn.Close();

        return i;

    }
    //INSERT CUSTOMER REGISTRATION on customer-register.aspx
    public int Insert_register(string state, string location, string organization, string contactperson, string contactnumber, string email,string website,string prod_cat1,string prod_cat2,string prod_cat3,string prod_cat4,string prod_cat5,string username,string password)
    {
        SqlConnection conn;
        SqlCommand comm;

        conn = new SqlConnection(connectionString);
        conn.Open();
        comm = new SqlCommand("insert_firm", conn);
        comm.CommandType = CommandType.StoredProcedure;
        comm.Parameters.AddWithValue("@state", state);
        comm.Parameters.AddWithValue("@location", location);
        comm.Parameters.AddWithValue("@org", organization);
        comm.Parameters.AddWithValue("@conperson", contactperson);
        comm.Parameters.AddWithValue("@contnum", contactnumber);
        comm.Parameters.AddWithValue("@email", email);
        comm.Parameters.AddWithValue("@website", website);
        comm.Parameters.AddWithValue("@prod_cat1", prod_cat1);
        comm.Parameters.AddWithValue("@prod_cat2", prod_cat2);
        comm.Parameters.AddWithValue("@prod_cat3", prod_cat3);
        comm.Parameters.AddWithValue("@prod_cat4", prod_cat4);
        comm.Parameters.AddWithValue("@prod_cat5", prod_cat5);
        comm.Parameters.AddWithValue("@username",username );
        comm.Parameters.AddWithValue("@password",password);
        int i = comm.ExecuteNonQuery();
        conn.Close();

        return i;

    }


}