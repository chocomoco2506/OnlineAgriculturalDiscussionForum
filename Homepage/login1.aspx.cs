using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Homepage
{
    public partial class login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signin.aspx");
        }
        

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Homepage\Homepage\App_Data\Database.mdf;Integrated Security=True");
            con.Open();
            String st = "select * from usertable";
            SqlCommand cmd = new SqlCommand(st, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                if (rd["username"].Equals(TextBox1.Text) && rd["pwd"].Equals(TextBox2.Text))
                {
                    string id = rd["userid"].ToString();
                    // Label3.Text = "Successful";
                    Session["userid"] = id;
                    Response.Redirect("home2.aspx");
                }
                else if ("admin".Equals(TextBox1.Text) && "admin".Equals(TextBox2.Text))
                {
                    Response.Redirect("PageManagement.aspx");
                }
                else
                {
                    string url = "login1.aspx";
                    ClientScript.RegisterStartupScript(this.GetType(), "callfunction", "alert('Username or Password is Something Wrong');window.location.href = '" + url + "';", true);
                }



            }
            con.Close();
        }
    }
}