using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string f_name = Server.UrlEncode(TextBox1.Text);
            string l_name = Server.UrlEncode(TextBox5.Text);
            string  pwd = Server.UrlEncode(TextBox2.Text);

            string gender = RadioButtonList1.SelectedValue;
            string dob = TextBox10.Text;
            string email = TextBox4.Text;
            string pno = TextBox9.Text;
            string address = TextBox7.Text;
            string city = TextBox8.Text;
            string state = TextBox6.Text;
            string bg = DropDownList1.SelectedValue;
            string weight = TextBox11.Text;

            if (gender.Equals("Male"))
                Session["gender"] = 'M';
            else
                Session["gender"] = 'F';
            Session["dob"] = dob;
            Session["email"] = email;
            Session["pno"] = pno;
            Session["address"] = address;
            Session["city"] = city;
            Session["state"] = state;
            Session["bg"] = bg;
            Session["weight"] = weight;

            Response.Redirect("Registered_Content.aspx?" + "f_name=" + f_name + "&l_name=" + l_name + "&pwd=" + pwd);
        }
    }

    protected void AgeVld_ServerValidate(object source, ServerValidateEventArgs args)
    {
        System.Globalization.DateTimeFormatInfo dtf = new System.Globalization.DateTimeFormatInfo();
        dtf.ShortDatePattern = "dd/MM/yyyy";
        string input = TextBox10.Text;
        DateTime result = DateTime.Parse(input, dtf);
        DateTime d1 = DateTime.Now;
        TimeSpan diff = d1 - result;
        int years = diff.Days / 365;
        Label1.Text = years.ToString();
        Label1.Visible = true;
        if (years > 18 && years < 60)
        { args.IsValid = true; }
        else
            args.IsValid = false;
    }


    protected void TextBox10_TextChanged(object sender, EventArgs e)
    {
        Page.Validate();
    }

    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (TextBox3.Text.Equals(TextBox2.Text))
        {
            args.IsValid = true;
        }
        else
            args.IsValid = false;
    }

    protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
    {
        Label1.Text = "Hello";
        Label1.Text = RadioButtonList1.SelectedIndex.ToString();
        if (RadioButtonList1.SelectedIndex != -1)
            args.IsValid = true;
        else
            args.IsValid = false;
    }


    protected void CustomValidator3_ServerValidate1(object source, ServerValidateEventArgs args)
    {
        float nm = 0;
        if (float.TryParse(TextBox11.Text, out nm))
        {
            args.IsValid = true;
        }
        else
            args.IsValid = false;
    }
}