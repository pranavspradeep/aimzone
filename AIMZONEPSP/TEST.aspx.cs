using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TEST : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        fetchlocationbasedads("kerala", "kollam");
    }
    public void fetchlocationbasedads(string state, string district)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Fetch_adv_basedon_location", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@state", state);
        cmd.Parameters.AddWithValue("@dist", district);

        SqlDataReader rdr = cmd.ExecuteReader();
        DataTable dt = new DataTable();
        dt.Load(rdr);
        repeatercard.DataSource = dt;
        repeatercard.DataBind();




    }
}