using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Homepage
{
    public partial class mytopic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Homepage\Homepage\App_Data\Database.mdf;Integrated Security=True");
            con.Open();
            if (Session["userid"] != null)
            {
                string uid = Session["userid"].ToString();
                SqlDataAdapter da = new SqlDataAdapter("select postid,postimg,posttitle,postdetail,postdate from post where userid=@uid", con);
                da.SelectCommand.Parameters.AddWithValue("@uid", uid);
                DataTable dt = new DataTable();
                da.Fill(dt);
                gridview1.DataSource = dt;
                gridview1.DataBind();
            }*/
            BindData();
        }
        protected void BindData()
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Homepage\Homepage\App_Data\Database.mdf;Integrated Security=True");
            con.Open();
            if (Session["userid"] != null)
            {
                string uid = Session["userid"].ToString();
                SqlCommand cmd = new SqlCommand("select postid,postimg,posttitle,postdetail,postdate from post where userid=@uid ORDER BY postid DESC", con);
                cmd.Parameters.AddWithValue("@uid", uid);
                cmd.ExecuteNonQuery();
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                gridview1.DataSource = ds;
                gridview1.DataBind();
            }
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
        protected void edit_Click(object sender, EventArgs e)
        {
            String postid = Convert.ToString((sender as LinkButton).CommandArgument);
            Session["postid"] = postid;
            Response.Redirect("editpost.aspx");
        }
        protected void delete_Click(object sender, EventArgs e)
        {
            String postid = Convert.ToString((sender as LinkButton).CommandArgument);
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Homepage\Homepage\App_Data\Database.mdf;Integrated Security=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete from post where postid=@postid", conn);
            cmd.Parameters.AddWithValue("@postid", postid);
            cmd.ExecuteNonQuery();
            SqlCommand cmd1 = new SqlCommand("delete from comment where postid=@postid", conn);
            cmd1.Parameters.AddWithValue("@postid", postid);
            cmd1.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("mytopic.aspx");

        }

        protected void gridview1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}