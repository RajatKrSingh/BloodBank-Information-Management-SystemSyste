using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPSnippets.SmsAPI;
using System.Net;
using System.Threading.Tasks;
using Twilio;
using Twilio.Rest.Api.V2010.Account;
using Twilio.Types;
using Twilio.Clients;
using System.Text;
using System.IO;
using System.Net.Mail;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;
//+18638374084

public partial class _Default : System.Web.UI.Page
{
    string uid;
    string password;
    string message;
    string no;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text += Session["t_id"];

    }

    protected void SendEmail()
    {
        using (MailMessage mm = new MailMessage("krajat1995@gmail.com", "krajat1995@gmail.com"))
        {
            mm.Subject = "Blood Bank";
            mm.Body = "Please go through";
            
            mm.IsBodyHtml = false;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential("krajat1995@gmail.com", "deadmanhere69");
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);
        }
    }

    public void sendEmail(string body)
    {
        if (String.IsNullOrEmpty("krajat1995@gmail.com"))
            return;
        try
        {
            MailMessage mail = new MailMessage();

            DataSet ds = new DataSet();
            string connectionString = WebConfigurationManager.ConnectionStrings["lolita"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT email FROM [Donor_Details]"; //pass query.
                    cmd.Connection = con;   //attach a connection object.

                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        con.Open();
                        adapter.Fill(ds, "email_list");
                    }
                }
            }
            if (ds.Tables.Count > 0 && ds.Tables["email_list"].Rows.Count > 0)
            { //check if data is there or not.
                foreach (DataRow dr in ds.Tables["email_list"].Rows)
                {
                    mail.To.Add(dr["email"].ToString());
                }
            }

            mail.From = new MailAddress("subtlediplomat@gmail.com");
            mail.Subject = "Blood Donations";

            mail.Body = body;

            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
            smtp.Credentials = new System.Net.NetworkCredential
                 ("subtlediplomat@gmail.com", "deadmanhere69"); // ***use valid credentials***
            smtp.Port = 587;

            //Or your Smtp Email ID and Password
            smtp.EnableSsl = true;
            smtp.Send(mail);
        }
        catch (Exception ex)
        {

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            sendEmail(TextBox1.Text);
        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
        Response.Redirect("Index_Content.aspx");
    }
}