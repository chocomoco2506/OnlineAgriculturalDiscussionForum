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
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Homepage\Homepage\App_Data\Database.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select ptitle,pimg,pcontent from pagetable where pid=1", con);

            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                img1.ImageUrl = rd["pimg"].ToString();
                l1.Text = rd["pcontent"].ToString();
                t1.Text = rd["ptitle"].ToString();
            }
            con.Close();
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select ptitle,pimg,pcontent from pagetable where pid=2", con);
            SqlDataReader rd1 = cmd1.ExecuteReader();
            while (rd1.Read())
            {
                img2.ImageUrl = rd1["pimg"].ToString();
                l2.Text = rd1["pcontent"].ToString();
                t2.Text = rd1["ptitle"].ToString();
            }
            con.Close();
            con.Open();
            SqlCommand cmd2 = new SqlCommand("select ptitle,pimg,pcontent from pagetable where pid=3", con);

            SqlDataReader rd2 = cmd2.ExecuteReader();
            while (rd2.Read())
            {
                img3.ImageUrl = rd2["pimg"].ToString();
                l3.Text = rd2["pcontent"].ToString();
                t3.Text = rd2["ptitle"].ToString();
            }
            con.Close();
        }
    }
}