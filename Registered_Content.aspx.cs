using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        if ((Session["gender"] != null) && (Session["dob"] != null) && (Session["email"] != null) && (Session["pno"] != null) && (Session["address"] != null) && (Session["city"] != null) && (Session["state"] != null) && (Session["bg"] != null) && (Session["weight"] != null))
        {
            string f_name = Server.UrlDecode(Request.QueryString["f_name"]);
            string l_name = Server.UrlDecode(Request.QueryString["l_name"]);
            string pwd = Server.UrlDecode(Request.QueryString["pwd"]);
            string connectionString = WebConfigurationManager.ConnectionStrings["lolita"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "Insert INTO Donor_Details(f_name,l_name,bg,dob,weight,mobile,email,addr,city,state,pwd,gender) VALUES(@f_name,@l_name,@bg,@dob,@weight,@mobile,@email,@addr,@city,@state,@pwd,@gender)"; //pass query.
                    cmd.Connection = con;   //attach a connection object.
                    DateTime oDate = DateTime.ParseExact(Session["dob"].ToString(), "dd/MM/yyyy", null);
                    
                    cmd.Parameters.AddWithValue("@f_name", Server.UrlDecode(Request.QueryString["f_name"]));
                    cmd.Parameters.AddWithValue("@l_name", Server.UrlDecode(Request.QueryString["l_name"]));
                    cmd.Parameters.AddWithValue("@pwd", Server.UrlDecode(Request.QueryString["pwd"]));
                    cmd.Parameters.AddWithValue("@dob", oDate);
                    cmd.Parameters.AddWithValue("@gender", Session["gender"]);
                    cmd.Parameters.AddWithValue("@mobile", Session["pno"]);
                    cmd.Parameters.AddWithValue("@bg", Session["bg"]);
                    cmd.Parameters.AddWithValue("@weight", Session["weight"]);
                    cmd.Parameters.AddWithValue("@email", Session["email"]);
                    cmd.Parameters.AddWithValue("@addr", Session["address"]);
                    cmd.Parameters.AddWithValue("@city", Session["city"]);
                    cmd.Parameters.AddWithValue("@state", Session["state"]);




                    con.Open(); //open the connection as late as possible.
                    //Label2.Text = "yeh toh ho gaya";
                    //Label1.Text = cmd.CommandText.ToString();
                    //DIRECT DATA ACCESS.
                    cmd.ExecuteNonQuery();


                }
            }
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT id from Donor_Details where f_name=@f_name and l_name=@l_name and bg=@bg and dob=@dob and weight=@weight and mobile=@mobile and email=@email and addr=@addr and city=@city and state=@state and pwd=@pwd and gender=@gender";
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@f_name", Server.UrlDecode(Request.QueryString["f_name"]));
                    DateTime oDate = DateTime.ParseExact(Session["dob"].ToString(), "dd/MM/yyyy", null);
                    cmd.Parameters.AddWithValue("@l_name", Server.UrlDecode(Request.QueryString["l_name"]));
                    cmd.Parameters.AddWithValue("@pwd", Server.UrlDecode(Request.QueryString["pwd"]));
                    cmd.Parameters.AddWithValue("@dob", oDate);
                    cmd.Parameters.AddWithValue("@gender", Session["gender"]);
                    cmd.Parameters.AddWithValue("@mobile", Session["pno"]);
                    cmd.Parameters.AddWithValue("@bg", Session["bg"]);
                    cmd.Parameters.AddWithValue("@weight", Session["weight"]);
                    cmd.Parameters.AddWithValue("@email", Session["email"]);
                    cmd.Parameters.AddWithValue("@addr", Session["address"]);
                    cmd.Parameters.AddWithValue("@city", Session["city"]);
                    cmd.Parameters.AddWithValue("@state", Session["state"]);
                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        adapter.Fill(ds, "id_user");
                    }
                    if (ds.Tables.Count > 0 && ds.Tables["id_user"].Rows.Count > 0)
                    { //check if data is there or not.
                        DataRow dr = ds.Tables[0].Rows[0];
                        Label2.Text += dr["id"].ToString();
                    }
                }
            }
        }
        else
        {
            if (PreviousPage == null)
            {
                Label2.Text = "Yeh nahi ho ra" + Session["gender"].ToString() + Session["dob"].ToString() + Session["email"].ToString() + Session["pno"].ToString() + Session["address"].ToString() + Session["city"].ToString() + Session["state"].ToString() + Session["bg"].ToString() + Session["weight"].ToString();
            }
        }
    }
}