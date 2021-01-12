using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string connectionString = WebConfigurationManager.ConnectionStrings["lolita"].ConnectionString;
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "SELECT * FROM [Donor_Details] WHERE id=@id and pwd=@pwd"; //pass query.
                cmd.Connection = con;   //attach a connection object.
                cmd.Parameters.AddWithValue("@id", UserId.Text);
                cmd.Parameters.AddWithValue("@pwd", Password.Text);
                con.Open(); //open the connection as late as possible.

                //DIRECT DATA ACCESS.
                SqlDataReader reader = cmd.ExecuteReader(); //ExecuteReader returns a reader object.
                if (reader.Read())
                {
                    Session["login_id"] = reader["Id"].ToString();
                    Response.Redirect("User_Content.aspx");
                }
                else
                    Label3.Visible = true;

            }
        }
    }
}