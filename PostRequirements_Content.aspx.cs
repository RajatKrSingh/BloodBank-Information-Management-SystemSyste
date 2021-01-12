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

    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        string f_name = TextBox1.Text;
        string l_name = TextBox5.Text;
        string gender = RadioButtonList1.SelectedValue;
        string bg = DropDownList1.SelectedValue;
        string reason = TextBox3.Text;
        string dob = TextBox10.Text;
        string d_name = TextBox4.Text;
        string h_name = TextBox11.Text;
        string pno = TextBox9.Text;
        string h_addr = TextBox2.Text;
        string h_city = TextBox8.Text;
        string h_state = TextBox6.Text;


        if (gender.Equals("Male"))
            gender = "M";
        else
            gender = "F";

        string connectionString = WebConfigurationManager.ConnectionStrings["lolita"].ConnectionString;
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "Insert INTO Requirement(f_name,l_name,bg,reason,dob,pno,d_name,h_name,h_addr,h_city,h_state,gender) VALUES(@f_name,@l_name,@bg,@reason,@dob,@pno,@d_name,@h_name,@h_addr,@h_city,@h_state,@gender)"; //pass query.
                cmd.Connection = con;   //attach a connection object.
                DateTime oDate = DateTime.ParseExact(dob, "dd/MM/yyyy", null);
                cmd.Parameters.AddWithValue("@f_name", f_name);
                cmd.Parameters.AddWithValue("@l_name", l_name);
                cmd.Parameters.AddWithValue("@reason", reason);
                cmd.Parameters.AddWithValue("@dob", oDate);
                cmd.Parameters.AddWithValue("@gender", gender);
                cmd.Parameters.AddWithValue("@pno", pno);
                cmd.Parameters.AddWithValue("@bg", bg);
                cmd.Parameters.AddWithValue("@d_name", d_name);
                cmd.Parameters.AddWithValue("@h_name", h_name);
                cmd.Parameters.AddWithValue("@h_addr", h_addr);
                cmd.Parameters.AddWithValue("@h_city", h_city);
                cmd.Parameters.AddWithValue("@h_state", h_state);




                con.Open(); //open the connection as late as possible.
                //Label1.Text = cmd.CommandText.ToString();
                //DIRECT DATA ACCESS.
                cmd.ExecuteNonQuery();

            }
        }
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "SELECT id from Requirement where f_name=@f_name and l_name=@l_name and bg=@bg and reason=@reason and dob=@dob and pno=@pno and d_name=@d_name and h_name=@h_name and h_addr=@h_addr and h_city=@h_city and h_state=@h_state and gender=@gender";
                cmd.Connection = con;   //attach a connection object.
                DateTime oDate = DateTime.ParseExact(dob, "dd/MM/yyyy", null);
                cmd.Parameters.AddWithValue("@f_name", f_name);
                cmd.Parameters.AddWithValue("@l_name", l_name);
                cmd.Parameters.AddWithValue("@reason", reason);//
                cmd.Parameters.AddWithValue("@dob", oDate);
                cmd.Parameters.AddWithValue("@gender", gender);
                cmd.Parameters.AddWithValue("@pno", pno);//
                cmd.Parameters.AddWithValue("@bg", bg);
                cmd.Parameters.AddWithValue("@d_name", d_name);
                cmd.Parameters.AddWithValue("@h_name", h_name);
                cmd.Parameters.AddWithValue("@h_addr", h_addr);
                cmd.Parameters.AddWithValue("@h_city", h_city);
                cmd.Parameters.AddWithValue("@h_state", h_state);
                using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                {
                    adapter.Fill(ds, "t_id");
                }
                if (ds.Tables.Count > 0 && ds.Tables["t_id"].Rows.Count > 0)
                { //check if data is there or not.
                    DataRow dr = ds.Tables[0].Rows[0];
                    Session["t_id"] = dr["id"].ToString();
                }
            }
        }
        Response.Redirect("PostedRequirements.aspx");
    }
}