using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            fillstatedrop();
            sucessonasp.Visible = false;
            errormsg.Visible = false;
            validationmsg.Visible = false;
            emptyfielderrordiv.Visible = false;
            failedlogin_div.Visible = false;
            fillineeddrop();
            fetchalladv();
        }

       
            
    }

    public void fillstatedrop()//===FILL STATE DROPDOWN FN=====;
    {
        Filldropdownclass filldropdownclass = new Filldropdownclass();

       DataTable statedatatable= filldropdownclass.dropdownfillState();
        
        state_drp.DataSource = statedatatable;
        state_drp.DataTextField = "StateName";
        state_drp.DataBind();
        state_drp.Items.Insert(0, new ListItem("--SELECT--", "NA"));

    }
    public void filllocationdrop()//===FILL LOCATION DROPDOWN FN=====;
    {
        Filldropdownclass filldropdownclass = new Filldropdownclass();

        DataTable statedatatable = filldropdownclass.dropdownfilllocation(state_drp.SelectedItem.Value);
        location_drp.DataSource = statedatatable;
        location_drp.DataTextField = "Location";
        location_drp.DataBind();
        location_drp.Items.Insert(0, new ListItem("--SELECT--", "NA"));
    }

    public void fillineeddrop()//===FILL NEED DROPDOWN FN=====;
    {
        Filldropdownclass filldropdownclass = new Filldropdownclass();

        DataTable statedatatable = filldropdownclass.dropdownfilllNEED();
        i_need_drp.DataSource = statedatatable;
        i_need_drp.DataValueField = "KeyID";
        i_need_drp.DataTextField = "KeyWord";
        i_need_drp.DataBind();
        i_need_drp.Items.Insert(0, new ListItem("--SELECT--", "NA"));
    }

    public void subcategory()//===FILL SUBCATEGORY DROPDOWN FN=====;
    {
        Filldropdownclass filldropdownclass = new Filldropdownclass();

        DataTable statedatatable = filldropdownclass.dropdownfillsubcategory(i_need_drp.SelectedValue);
        subcategory_drop.DataSource = statedatatable;
        subcategory_drop.DataValueField = "SubKey";
        subcategory_drop.DataTextField = "SubItem";
        subcategory_drop.DataBind();
        subcategory_drop.Items.Insert(0, new ListItem("--SELECT--", "NA"));
    }





    protected void state_drp_SelectedIndexChanged(object sender, EventArgs e)
    {
        filllocationdrop();
    }

    public void fetchalladv()
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Fetch_adv_all", con);
        cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("@state", state);
       // cmd.Parameters.AddWithValue("@dist", district);

        SqlDataReader rdr = cmd.ExecuteReader();
        DataTable dt = new DataTable();
        dt.Load(rdr);
      repeatercard.DataSource = dt;
       repeatercard.DataBind();
        repeaterfeatuedads.DataSource = dt;
        repeaterfeatuedads.DataBind();




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
        repeaterfeatuedads.DataSource = dt;
        repeaterfeatuedads.DataBind();




    }


    protected void location_drp_SelectedIndexChanged(object sender, EventArgs e)
    {
        fillineeddrop();
        fetchlocationbasedads(state_drp.Text,location_drp.Text);
 

        
    }

    protected void getbestdeal_btn_Click(object sender, EventArgs e)
    {
        if (state_drp.SelectedItem.Text == "--SELECT--" || location_drp.SelectedItem.Text == "--SELECT--" || i_need_drp.SelectedItem.Text == "--SELECT--" || PhoneNumber_txtbox.Text == "" || contact_name_txtbox.Text == "" || email_txtbox.Text == "" || details_txtbox.Text == "" || subcategory_drop.SelectedItem.Text == "")
        {
            validationmsg.Visible = true;
        }
        else
        {
            validationmsg.Visible = false;

            Inserttosqlclass inserttosqlclass = new Inserttosqlclass();
            int i = inserttosqlclass.Insert_deal(state_drp.SelectedItem.Text, location_drp.SelectedItem.Text, i_need_drp.SelectedValue.ToString(), PhoneNumber_txtbox.Text, contact_name_txtbox.Text, email_txtbox.Text, details_txtbox.Text, subcategory_drop.SelectedValue.ToString());
            if (i != 0)

            {
                sucessonasp.Visible = true;

            }
            else
            {
                errormsg.Visible = true;
            }
        }
    }

    protected void Reload_Page_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }

    protected void i_need_drp_SelectedIndexChanged(object sender, EventArgs e)
    {
        subcategory();
    }

    protected void Login_btn_Click(object sender, EventArgs e)
    {   if (userid_textlogin.Text == "" || passwor_textlogin.Text == "")
        {
            emptyfielderrordiv.Visible = true;

        

        }
        else
        {


            loginclass loginclass = new loginclass();
            int i = loginclass.LoginFirm(userid_textlogin.Text, passwor_textlogin.Text);
            if (i == 1)
            {
                Readfromsqlloginfirm readfromsqlloginfirm = new Readfromsqlloginfirm();
                readfromsqlloginfirm.Readfromsqlloginfirmdetails(userid_textlogin.Text, passwor_textlogin.Text);
                Session["location"] = readfromsqlloginfirm.location.ToString();
                Session["state"] = readfromsqlloginfirm.state.ToString();
                Session["firmname"] = readfromsqlloginfirm.firmname.ToString();
                Session["firmid"] = readfromsqlloginfirm.firmid.ToString();
                Response.Redirect("CompanyHome.aspx");
            }
            else
            {
                failedlogin_div.Visible = true;
           
            }
        }
    }
}