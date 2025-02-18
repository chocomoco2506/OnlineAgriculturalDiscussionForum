using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Homepage
{
    public partial class comment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["postid"] != null)
            {
                string postid = Session["postid"].ToString();
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Homepage\Homepage\App_Data\Database.mdf;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from post join usertable on post.userid=usertable.userid where postid=@postid", con);
                cmd.Parameters.AddWithValue("@postid", postid);
                cmd.ExecuteNonQuery();
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    Label8.Text = rd["posttitle"].ToString();
                    Label9.Text = rd["postdetail"].ToString();
                    Label10.Text = rd["username"].ToString();
                    Label11.Text = rd["postdate"].ToString();
                    Image1.ImageUrl = rd["postimg"].ToString();
                }
                con.Close();

            }
            /*if (Session["postid"] != null)
            {
                //comment view
               SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Homepage\Homepage\App_Data\Database.mdf;Integrated Security=True");
                SqlDataAdapter da = new SqlDataAdapter("select commentdetail,username,commentdate from comment join usertable on comment.userid=usertable.userid where postid=@postid", conn);
                da.SelectCommand.Parameters.AddWithValue("@postid", Session["postid"].ToString());
                DataTable dt = new DataTable();
                da.Fill(dt);
                Gridview1.DataSource = dt;
                Gridview1.DataBind();
                
            }*/
            BindData();
        }
        protected void BindData()
        {
            if (Session["postid"] != null)
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Homepage\Homepage\App_Data\Database.mdf;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("select commentdetail,username,commentdate from comment join usertable on comment.userid=usertable.userid where postid=@postid ORDER BY commentid DESC", con);
                cmd.Parameters.AddWithValue("@postid", Session["postid"].ToString());
                cmd.ExecuteNonQuery();
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                Gridview1.DataSource = ds;
                Gridview1.DataBind();
                con.Close();
            }
        }
        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            Gridview1.PageIndex = e.NewPageIndex;
            BindData();
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Homepage\Homepage\App_Data\Database.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into comment(postid,userid,commentdetail,commentdate) values(@postid,@userid,@commentdetail,@commentdate)", con);
            cmd.Parameters.AddWithValue("@commentdetail", TextBox1.Text);
            if (Session["userid"] != null)
            {
                cmd.Parameters.AddWithValue("@userid", Session["userid"].ToString());
            }
            if (Session["postid"] != null)
            {
                cmd.Parameters.AddWithValue("@postid", Session["postid"].ToString());
            }
            string date = DateTime.Now.ToString("M/d/yyyy");
            cmd.Parameters.AddWithValue("@commentdate", date);
            cmd.ExecuteNonQuery();
            TextBox1.Text = "";
            Response.Redirect("comment.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
        }
    }
}