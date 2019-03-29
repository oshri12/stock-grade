using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace stock_grade
{
    public partial class stock_grades : System.Web.UI.Page
    {
        private DataTable dataTableStudent = new DataTable();
        private DataTable dataTableLecturer = new DataTable();//
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //string connetionString;
            //SqlConnection cnn;

            //connetionString = @" Data Source=(LocalDB)\v11.0;AttachDbFilename='C:\Users\oshri\Documents\Stock scores.mdf';Integrated Security=True;Connect Timeout=30";
            //cnn = new SqlConnection(connetionString);
            //cnn.Open();
            //Console.WriteLine("Press any key to exit.");
            //cnn.Close();
            //cnn.Open();
            //SqlCommand command;
            //SqlDataReader datareader;
            //string sql, output = "";
            //sql = "INSERT INTO profession values(14,'c++')";
            //command = new SqlCommand(sql, cnn);
            //datareader = command.ExecuteReader( );
            //cnn.Close();
            Label1.Visible = true;
            string connString = @" Data Source=(LocalDB)\v11.0;AttachDbFilename='C:\Users\oshri\Documents\Stock scores.mdf';Integrated Security=True;Connect Timeout=30";
            string querySudent = "select * from student";
            string queryLecturer = "select * from Lecturer";
            SqlConnection conn = new SqlConnection(connString);
            SqlCommand cmdS = new SqlCommand(querySudent, conn);
            SqlCommand cmdL = new SqlCommand(queryLecturer, conn);
            conn.Open();

            // create data adapter
            SqlDataAdapter daS = new SqlDataAdapter(cmdS);
            SqlDataAdapter daL = new SqlDataAdapter(cmdL);
            // this will query your database and return the result to your datatable
            daS.Fill(dataTableStudent);
            daL.Fill(dataTableLecturer);
            string userId, userPass = "";
            foreach (DataRow dataRow in dataTableStudent.Rows)
            {
                userId = Convert.ToString(dataRow[0]);
                userPass = Convert.ToString(dataRow[2]);
                //StudentPass.Replace("  ", "");
                if (userId == TextBoxID.Text && userPass == TextBoxPas.Text)
                {
                    Session["userId"] = userId;
                    Session["userPass"] = userPass;
                    Response.Redirect("Students.aspx");
                }

                //foreach (DataColumn column in dataTable.Columns)
                //{

                //    if (dataRow[0]==TextBoxID && dataRow[column]==TextBoxPas)
                //    {
                //        Response.Redirect("Students.aspx");
                //    }
                //}
            }
            foreach (DataRow dataRow in dataTableLecturer.Rows)
            {
                userId = Convert.ToString(dataRow[0]);
                userPass = Convert.ToString(dataRow[2]);
                //StudentPass.Replace("  ", "");
                if (userId == TextBoxID.Text && userPass == TextBoxPas.Text)
                {
                    Session["userId"] = userId;
                    Session["userPass"] = userPass;
                    Response.Redirect("Lecturer.aspx");
                    
                }

                //foreach (DataColumn column in dataTable.Columns)
                //{

                //    if (dataRow[0]==TextBoxID && dataRow[column]==TextBoxPas)
                //    {
                //        Response.Redirect("Students.aspx");
                //    }
                //}

                //Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "MyFunction()", true);
                Label1.Visible = true;
                conn.Close();
                daL.Dispose();
                daS.Dispose();
            }
        }

        protected void TextBoxID_TextChanged(object sender, System.EventArgs e)
        {

        }
    }
}
