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
    public partial class PostManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindData();
        }
        protected void BindData()
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Homepage\Homepage\App_Data\Database.mdf;Integrated Security=True");
            con.Open();


            SqlCommand cmd = new SqlCommand("select * from post ORDER BY postid DESC", con);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

            con.Close();
        }
        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindData();
        }
        protected void delete_Click(object sender, EventArgs e)
        {
            String postid = Convert.ToString((sender as LinkButton).CommandArgument);
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Homepage\Homepage\App_Data\Database.mdf;Integrated Security=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete from post where postid=@postid ", conn);
            cmd.Parameters.AddWithValue("@postid", postid);
            cmd.ExecuteNonQuery();
            //SqlCommand cmd1 = new SqlCommand("delete from comment where postid=@postid", conn);
            // cmd1.Parameters.AddWithValue("@postid", postid);
            //cmd1.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("PostManagement.aspx");

        }
    }
}