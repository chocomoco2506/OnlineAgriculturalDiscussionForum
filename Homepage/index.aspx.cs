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
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindData();

        }
        protected void BindData()
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Homepage\Homepage\App_Data\Database.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select postid,username,postimg,posttitle,postdetail,postdate from post join usertable on post.userid=usertable.userid ORDER BY postid DESC", con);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            gridview1.DataSource = ds;
            gridview1.DataBind();
            con.Close();
        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridview1.PageIndex = e.NewPageIndex;
            BindData();
        }

        protected void lnk_Click(object sender, EventArgs e)
        {
            String postid = Convert.ToString((sender as LinkButton).CommandArgument);
            Session["postid"] = postid;
            Response.Redirect("comment.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Homepage\Homepage\App_Data\Database.mdf;Integrated Security=True");
            con.Open();
            string s = TextBox1.Text;
            SqlDataAdapter da = new SqlDataAdapter("select postid,username,postimg,posttitle,postdetail,postdate from post join usertable on post.userid=usertable.userid where posttitle LIKE @search", con);
            da.SelectCommand.Parameters.AddWithValue("@search", "%" + s + "%");

            DataTable dt = new DataTable();
            da.Fill(dt);
            gridview1.DataSource = dt;
            gridview1.DataBind();
        }
    }
}