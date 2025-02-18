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
    public partial class PageManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Homepage\Homepage\App_Data\Database.mdf;Integrated Security=True");
                con.Open();
                
                    
                    SqlCommand cmd = new SqlCommand("select * from pagetable", con);
                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(ds);
                    gridview1.DataSource = ds;
                    gridview1.DataBind();
                
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["pid"] != null)
            {
                if (FileUpload1.HasFile)
                {
                    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Homepage\Homepage\App_Data\Database.mdf;Integrated Security=True");
                    con.Open();
                    SqlCommand cmd2 = new SqlCommand("update pagetable set ptitle=@ptitle, pimg=@pimg, pcontent=@pcontent where pid=@pid", con);
                    FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(FileUpload1.FileName));
                    string path = "images/" + Path.GetFileName(FileUpload1.FileName);
                    cmd2.Parameters.AddWithValue("@pimg", path);
                    cmd2.Parameters.AddWithValue("@ptitle", TextBox1.Text);
                    cmd2.Parameters.AddWithValue("@pcontent", TextBox2.Text);
                    cmd2.Parameters.AddWithValue("@pid",Session["pid"].ToString());
                    cmd2.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("PageManagement.aspx");

                }
            }
            

        }
        protected void edit_Click(object sender, EventArgs e)
        {
            String pid = Convert.ToString((sender as LinkButton).CommandArgument);
            Session["pid"] = pid;
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Homepage\Homepage\App_Data\Database.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select ptitle,pcontent from pagetable where pid=@pid", con);
            cmd.Parameters.AddWithValue("@pid",pid);
            cmd.ExecuteNonQuery();
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            { 
                TextBox2.Text = rd["pcontent"].ToString();
                TextBox1.Text = rd["ptitle"].ToString();
            }
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}