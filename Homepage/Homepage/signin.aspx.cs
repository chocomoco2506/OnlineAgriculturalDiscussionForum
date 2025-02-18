using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Homepage
{
    public partial class signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Homepage\Homepage\App_Data\Database.mdf;Integrated Security=True");
            con.Open();
            String s = "insert into usertable(username,pwd,email,gender) values(@name,@password,@email,@gender)";
            SqlCommand cmd = new SqlCommand(s, con);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox3.Text);
            cmd.Parameters.AddWithValue("@email", TextBox2.Text);
            if (RadioButton1.Checked)

                cmd.Parameters.AddWithValue("@gender", "Male");

            else if (RadioButton2.Checked)

                cmd.Parameters.AddWithValue("@gender", "Female");

            cmd.ExecuteNonQuery();
            con.Close();
            string url = "login1.aspx";
            ClientScript.RegisterStartupScript(this.GetType(), "callfunction", "alert('Your Registration is Successful,Please Login Back');window.location.href = '" + url + "';", true);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = " ";
            TextBox3.Text = " ";
            TextBox2.Text = " ";
        }
    }
}