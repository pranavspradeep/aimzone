using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CompanyHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {  string location= Session["location"].ToString();
        string state= Session["state"].ToString();
       string firmid= Session["firmid"].ToString();
        firmname_label.Text = Session["firmname"].ToString();
        BindGrid(location, state, firmid);
    }



    private void BindGrid(string location,string state,string firmid)
    {
        DataTable dt = new DataTable();
        string connect = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con1 = new SqlConnection(connect);
        SqlCommand cmd = new SqlCommand("FillEnquiryproc", con1);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@state", state);
        cmd.Parameters.AddWithValue("@location", location);
        cmd.Parameters.AddWithValue("@firmid", firmid);
        con1.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
       // PagedDataSource pds = new PagedDataSource();
        da.Fill(dt);
       // pds.DataSource = dt.DefaultView;
       // pds.AllowPaging = true;


      CustomerEnquiryDatalist.DataSource = dt;
      CustomerEnquiryDatalist.DataBind();
       
    }

}