using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { if (!IsPostBack)
        {
            fillstatedrop();
            fillprodcategory1();
            fillprodcategory2();
            fillprodcategory3();
            fillprodcategory4();
            fillprodcategory5();
            sucessonasp.Visible = false;
            failedasp.Visible = false;
            failedlogin_div.Visible = false;
            emptyfielderrordiv.Visible = false;
            validationmsg.Visible = false;
        }
    }


    public void fillstatedrop()//===FILL STATE DROPDOWN FN=====;
    {
        Filldropdownclass filldropdownclass = new Filldropdownclass();

        DataTable statedatatable = filldropdownclass.dropdownfillState();

        state_drp.DataSource = statedatatable;
        state_drp.DataTextField = "StateName";
        state_drp.DataBind();
        state_drp.Items.Insert(0, new ListItem("--SELECT--", "0"));

    }
    public void filllocationdrop()//===FILL LOCATION DROPDOWN FN=====;
    {
        Filldropdownclass filldropdownclass = new Filldropdownclass();

        DataTable statedatatable = filldropdownclass.dropdownfilllocation(state_drp.SelectedItem.Value);
        location_drp.DataSource = statedatatable;
        location_drp.DataTextField = "Location";
        location_drp.DataBind();
        location_drp.Items.Insert(0, new ListItem("--SELECT--", "0"));
    }

    public void fillprodcategory1()//===FILL prodcat1 DROPDOWN FN=====;
    {
        Filldropdownclass filldropdownclass = new Filldropdownclass();

        DataTable statedatatable = filldropdownclass.dropdownfilllNEED();
        prod_cat_drop1.DataSource = statedatatable;
        prod_cat_drop1.DataValueField = "KeyID";
        prod_cat_drop1.DataTextField = "KeyWord";
        prod_cat_drop1.DataBind();
        prod_cat_drop1.Items.Insert(0, new ListItem("--SELECT--", "0"));
    }
    public void fillprodcategory2()//===FILL prodcat1 DROPDOWN FN=====;
    {
        Filldropdownclass filldropdownclass = new Filldropdownclass();

        DataTable statedatatable = filldropdownclass.dropdownfilllNEED();
        prod_cat_drop2.DataSource = statedatatable;
        prod_cat_drop2.DataValueField = "KeyID";
        prod_cat_drop2.DataTextField = "KeyWord";
        prod_cat_drop2.DataBind();
        prod_cat_drop2.Items.Insert(0, new ListItem("--SELECT--", "0"));
    }
    public void fillprodcategory3()//===FILL prodcat1 DROPDOWN FN=====;
    {
        Filldropdownclass filldropdownclass = new Filldropdownclass();

        DataTable statedatatable = filldropdownclass.dropdownfilllNEED();
        prod_cat_drop3.DataSource = statedatatable;
        prod_cat_drop3.DataValueField = "KeyID";
        prod_cat_drop3.DataTextField = "KeyWord";
        prod_cat_drop3.DataBind();
        prod_cat_drop3.Items.Insert(0, new ListItem("--SELECT--", "0"));
    }
    public void fillprodcategory4()//===FILL prodcat1 DROPDOWN FN=====;
    {
        Filldropdownclass filldropdownclass = new Filldropdownclass();

        DataTable statedatatable = filldropdownclass.dropdownfilllNEED();
        prod_cat_drop4.DataSource = statedatatable;
        prod_cat_drop4.DataValueField = "KeyID";
        prod_cat_drop4.DataTextField = "KeyWord";
        prod_cat_drop4.DataBind();
        prod_cat_drop4.Items.Insert(0, new ListItem("--SELECT--", "0"));
    }
    public void fillprodcategory5()//===FILL prodcat1 DROPDOWN FN=====;
    {
        Filldropdownclass filldropdownclass = new Filldropdownclass();

        DataTable statedatatable = filldropdownclass.dropdownfilllNEED();
        prod_cat_drop5.DataSource = statedatatable;
        prod_cat_drop5.DataValueField = "KeyID";
        prod_cat_drop5.DataTextField = "KeyWord";
        prod_cat_drop5.DataBind();
        prod_cat_drop5.Items.Insert(0, new ListItem("--SELECT--", "0"));
    }
    protected void state_drp_SelectedIndexChanged(object sender, EventArgs e)
    {
        filllocationdrop();
    }

    protected void savefirmdetails_btn_Click(object sender, EventArgs e)
    {  if (state_drp.SelectedItem.Text == "--SELECT--" || location_drp.SelectedItem.Text == "--SELECT--" || Organ_txtbox.Text == "" || cont_person_txtbox.Text == "" || email_txtbox.Text == "" || username_txtbox.Text == "" || password_txtbox.Text == "")
        {
            validationmsg.Visible = true;
            emptyfielderrordiv.Visible = false;       }
        else
        {
            validationmsg.Visible = false;

            Inserttosqlclass inserttosqlclass = new Inserttosqlclass();
            int i = inserttosqlclass.Insert_register(state_drp.SelectedItem.Text, location_drp.SelectedItem.Text, Organ_txtbox.Text, cont_person_txtbox.Text, con_number_txtbox.Text, email_txtbox.Text, website_txtbox.Text, prod_cat_drop1.SelectedValue.ToString(), prod_cat_drop2.SelectedValue.ToString(), prod_cat_drop3.SelectedValue.ToString(), prod_cat_drop4.SelectedValue.ToString(), prod_cat_drop5.SelectedValue.ToString(), username_txtbox.Text, password_txtbox.Text);

            if (i != 0)
            {
                sucessonasp.Visible = true;
            }
            else
            {
                failedasp.Visible = true;
            }
        }
    }

    protected void reganotherfirm_Click(object sender, EventArgs e)
    {
        Response.Redirect("customer-register.aspx");
    }

    protected void loginsubmit_Click(object sender, EventArgs e)
    {  if(usernamelogin_txtbox.Text==""|| passwordlogin_txtbox.Text=="")
        {
            emptyfielderrordiv.Visible = true;
            validationmsg.Visible = false;
        }
        else
        {
           
            loginclass loginclass = new loginclass();
            int i = loginclass.LoginFirm(usernamelogin_txtbox.Text, passwordlogin_txtbox.Text);
            if (i == 1)
            {
                Readfromsqlloginfirm readfromsqlloginfirm = new Readfromsqlloginfirm();
                readfromsqlloginfirm.Readfromsqlloginfirmdetails(usernamelogin_txtbox.Text, passwordlogin_txtbox.Text);
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