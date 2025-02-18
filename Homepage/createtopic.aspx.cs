using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.IO;
namespace Homepage
{
    public partial class createtopic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //byte[] content;
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Homepage\Homepage\App_Data\Database.mdf;Integrated Security=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into post (userid,posttitle,postimg,postdetail,postdate) values (@userid,@posttitle,@postimg,@postdetail,@postdate)", conn);
            string date = DateTime.Now.ToString("M/d/yyyy");

            if (Session["userid"] != null)
            {
                string userid = Session["userid"].ToString();
                cmd.Parameters.AddWithValue("userid", userid);
            }

            cmd.Parameters.AddWithValue("posttitle", TextBox1.Text);
            cmd.Parameters.AddWithValue("postdetail", TextBox2.Text);
            cmd.Parameters.AddWithValue("postdate", date);
            if (FileUpload1.HasFile)

            {
                FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(FileUpload1.FileName));
                string path = "images/" + Path.GetFileName(FileUpload1.FileName);
                cmd.Parameters.AddWithValue("postimg", path);

            }
            else
            {
                cmd.Parameters.AddWithValue("postimg", "NULL");
            }
            cmd.ExecuteNonQuery();
            conn.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";

        }
        

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}