using System;

using System.Collections;

using System.Configuration;

using System.Data;

using System.Linq;

using System.Web;

using System.Web.Security;

using System.Web.UI;

using System.Web.UI.HtmlControls;

using System.Web.UI.WebControls;

using System.Web.UI.WebControls.WebParts;

using System.Xml.Linq;

using System.IO;

using System.Data.SqlClient;

using System.Xml;



public partial class Advimageupload : System.Web.UI.Page

{

    SqlConnection con;

    SqlCommand cmd;

    SqlDataReader dr;



    protected void Button_Click(object sender, EventArgs e)

    {

        String x = FileUpload1.FileName;

        Session["temp"] = x;

        String y = Path.Combine(Server.MapPath("AdvImage/"));

        String z = y + x;

        FileUpload1.SaveAs(z);

        Response.Write(z);

    }

    protected void Save_Click(object sender, EventArgs e)

    {

        String url = "AdvImage/" + Session["temp"].ToString();

        int imp = Convert.ToInt32(TextBox3.Text);

        con = new SqlConnection(@"Data Source=DESKTOP-JOI96VO\SQLEXPRESS;Initial Catalog=AiMZone;Integrated Security=True");

        cmd = new SqlCommand("insert into Advertisement values('" + url + "','" + TextBox1.Text + "','" + TextBox2.Text + "'," + imp + ",'" + TextBox4.Text + "')", con);

        con.Open();

        cmd.ExecuteNonQuery(); cmd = new SqlCommand("select * from Advertisement", con);

        con.Close();

        con.Open();

        dr = cmd.ExecuteReader();

        XmlWriter xwrite = XmlWriter.Create(Path.Combine(Server.MapPath("~/Text.xml"))); 

        xwrite.WriteStartDocument();

        xwrite.WriteStartElement("Advertisements");

        while (dr.Read())

        {

            xwrite.WriteStartElement("Ad");

            xwrite.WriteElementString("ImageUrl", dr[1].ToString());

            xwrite.WriteElementString("NavigateUrl", dr[2].ToString());

            xwrite.WriteElementString("AlternateText", dr[3].ToString());

            xwrite.WriteElementString("Impressions", dr[4].ToString());

            xwrite.WriteElementString("Keyword", dr[5].ToString());

            xwrite.WriteEndElement();

        }

        xwrite.WriteEndElement();

        xwrite.WriteEndDocument();

        xwrite.Close();

    }

    protected void navi(object sender, EventArgs e)

    {

        Response.Redirect("Default.aspx");

    }

}