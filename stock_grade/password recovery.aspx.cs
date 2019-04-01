using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Data;
namespace stock_grade
{
    public partial class password_recovery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string querys = "select password from student where email='"+ TextBoxmail.Text +"'";
           
               
           
            string connString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename='C:\Users\oshri\Documents\Stock scores.mdf';Integrated Security=True;Connect Timeout=30";
            SqlConnection conn = new SqlConnection(connString);
            SqlCommand cmds = new SqlCommand(querys, conn);
            conn.Open();
            string s= Convert.ToString(cmds.ExecuteScalar());
            conn.Close();
            if (s == "")
            { Labeleror.Visible = true; }
            else {
                NetworkCredential login = new NetworkCredential("oshri2aloni@gmail.com", "oshri2007");

            System.Net.Mail.MailMessage email = new System.Net.Mail.MailMessage();

            email.To.Add(new MailAddress(TextBoxmail.Text));
            email.From = new MailAddress("oshri2aloni@gmail.com");
            email.Subject = "שחזור ססמא";

            email.Body =s+" סיסמתך היא";

            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.EnableSsl = true;
            client.Credentials = login;
            client.Send(email);
            }
        }
        }
    }
