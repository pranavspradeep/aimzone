using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Filldropdownclass
/// </summary>
public class Filldropdownclass
{


    // FILL DROPDOWN--STATE IN INDEX PAGE
    public DataTable dropdownfillState()
    {

        SqlConnection conn;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        conn = new SqlConnection(connectionString);
        comm = new SqlCommand("filldropstate", conn);
        comm.CommandType = CommandType.StoredProcedure;
        DataTable dataTable;
        try
        {
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = comm;
            dataTable = new DataTable();
            da.Fill(dataTable);
        }
        finally
        {
            conn.Close();
        }
        return dataTable;
    }
    // FILL DROPDOWN--LOCATION IN INDEX PAGE
    public DataTable dropdownfilllocation(string state)
    {

        SqlConnection conn;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        conn = new SqlConnection(connectionString);
        comm = new SqlCommand("filldroplocation", conn);
        comm.CommandType = CommandType.StoredProcedure;
        comm.Parameters.AddWithValue("@state", state);
        DataTable dataTable;
        try
        {
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = comm;
            dataTable = new DataTable();
            da.Fill(dataTable);
        }
        finally
        {
            conn.Close();
        }
        return dataTable;
    }

    // FILL DROPDOWN--NEED IN INDEX PAGE
    public DataTable dropdownfilllNEED()
    {

        SqlConnection conn;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        conn = new SqlConnection(connectionString);
        comm = new SqlCommand("filldropNEED", conn);
        comm.CommandType = CommandType.StoredProcedure;
        
        DataTable dataTable;
        try
        {
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = comm;
            dataTable = new DataTable();
            da.Fill(dataTable);
        }
        finally
        {
            conn.Close();
        }
        return dataTable;
    }

    //SUB CATEGORY DROP 
    public DataTable dropdownfillsubcategory( string category)
    {

        SqlConnection conn;
        SqlCommand comm;
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        conn = new SqlConnection(connectionString);
        comm = new SqlCommand("subcatfill_proc", conn);

        comm.CommandType = CommandType.StoredProcedure;
        comm.Parameters.AddWithValue("@category", category);
        DataTable dataTable;
        try
        {
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = comm;
            dataTable = new DataTable();
            da.Fill(dataTable);
        }
        finally
        {
            conn.Close();
        }
        return dataTable;
    }

}


