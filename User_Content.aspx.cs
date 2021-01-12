using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login_id"] != null)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["lolita"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT f_name,l_name FROM [Donor_Details] WHERE id=" + Session["login_id"]; //pass query.
                    cmd.Connection = con;   //attach a connection object.
                    con.Open(); //open the connection as late as possible.

                    //DIRECT DATA ACCESS.
                    SqlDataReader reader = cmd.ExecuteReader(); //ExecuteReader returns a reader object.
                    if (reader.Read())
                    {
                        Label17.Text = reader["f_name"] + " " + reader["l_name"];
                    }
                }
            }
        }
        else
            Response.Redirect("Logout_Content.aspx");

    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(DropDownList1.SelectedValue.Equals("View Personal Details"))
        {
            DataSet ds = new DataSet();
            string connectionString = WebConfigurationManager.ConnectionStrings["lolita"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT * FROM [Donor_Details] WHERE id=" + Session["login_id"]; //pass query.
                    cmd.Connection = con;   //attach a connection object.

                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        con.Open();
                        adapter.Fill(ds, "user_details");
                    }
                }
            }

            if (ds.Tables.Count > 0 && ds.Tables["user_details"].Rows.Count > 0)
            { //check if data is there or not.
                DataRow dr = ds.Tables[0].Rows[0];
                Label2.Text = dr["f_name"].ToString();
                Label3.Text = dr["l_name"].ToString();
                Label4.Text = dr["bg"].ToString();
                Label5.Text = dr["weight"].ToString();
                Label6.Text = dr["pwd"].ToString();
                Label8.Text = dr["gender"].ToString();
                Label9.Text = dr["dob"].ToString();
                Label10.Text = dr["email"].ToString();
                Label11.Text = dr["mobile"].ToString();
                Label12.Text = dr["addr"].ToString();
                Label13.Text = dr["city"].ToString();
                Label14.Text = dr["state"].ToString();
            }

            divnew1.Visible = true;
            div1.Visible = false;
        }
        else if (DropDownList1.SelectedValue.Equals("Donate Blood"))
        {
            
        }
        else if(DropDownList1.SelectedValue.Equals("View Last Donation"))
        {
            divnew1.Visible = false;
            div1.Visible = true;
        }
    }

    protected void Unnamed_Click(object sender, EventArgs e)
    {
        Session["city"] = DropDownList2.SelectedValue;
        Session["bg"] = DropDownList3.SelectedValue;
        GridView1.Visible = true;
    }
}