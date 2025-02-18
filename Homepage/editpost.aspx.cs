using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Homepage
{
    public partial class editpost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["postid"] != null)
                {
                    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Homepage\Homepage\App_Data\Database.mdf;Integrated Security=True");
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select * from post where postid=@postid", con);
                    cmd.Parameters.AddWithValue("@postid", Session["postid"]);
                    cmd.ExecuteNonQuery();
                    SqlDataReader rd = cmd.ExecuteReader();
                    while (rd.Read())
                    {
                        TextBox1.Text = rd["posttitle"].ToString();
                        TextBox2.Text = rd["postdetail"].ToString();
                    }
                    con.Close();
                }

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Session["postid"] != null)
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Homepage\Homepage\App_Data\Database.mdf;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from post where postid=@postid", con);
                cmd.Parameters.AddWithValue("@postid", Session["postid"]);
                cmd.ExecuteNonQuery();
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    TextBox1.Text = rd["posttitle"].ToString();
                    TextBox2.Text = rd["postdetail"].ToString();
                }
                con.Close();
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (Session["postid"] != null)
            {
                if (FileUpload1.HasFile)
                {
                    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Homepage\Homepage\App_Data\Database.mdf;Integrated Security=True");
                    con.Open();
                    SqlCommand cmd2 = new SqlCommand("update post set posttitle=@posttitle,postdetail=@postdetail,postimg=@postimg where postid=@postid", con);
                    FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(FileUpload1.FileName));
                    string path = "images/" + Path.GetFileName(FileUpload1.FileName);
                    cmd2.Parameters.AddWithValue("@postimg", path);
                    cmd2.Parameters.AddWithValue("@posttitle", TextBox1.Text);
                    cmd2.Parameters.AddWithValue("@postdetail", TextBox2.Text);
                    cmd2.Parameters.AddWithValue("@postid", Session["postid"]);
                    cmd2.ExecuteNonQuery();
                    con.Close();




                }
                else
                {
                    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Homepage\Homepage\App_Data\Database.mdf;Integrated Security=True");
                    con.Open();
                    SqlCommand cmd1 = new SqlCommand("update post set posttitle=@posttitle,postdetail=@postdetail where postid=@postid", con);
                    cmd1.Parameters.AddWithValue("@posttitle", TextBox1.Text);
                    cmd1.Parameters.AddWithValue("@postdetail", TextBox2.Text);
                    cmd1.Parameters.AddWithValue("@postid", Session["postid"]);
                    cmd1.ExecuteNonQuery();


                }


            }
        }
    }
}
