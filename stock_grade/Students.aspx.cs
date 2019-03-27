using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using ClosedXML.Excel;
using System.IO;
namespace stock_grade
{
    public partial class Students : System.Web.UI.Page
    {
        private DataTable dataTableStudent = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataRow row = dataTableStudent.NewRow(); 
            //Label1.Text =Convert.ToString( Session["userId"]);
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "MyFunction()", true);
            string connString = @" Data Source=(LocalDB)\v11.0;AttachDbFilename='C:\Users\oshri\Documents\Stock scores.mdf';Integrated Security=True;Connect Timeout=30";
            string queryAvg = "SELECT AVG(grade) FROM Grades  where id_student='" + Convert.ToString(Session["userId"]) + "'";
            string querySudent = "select grade,profession.name_profession from Grades INNER JOIN profession ON Grades.id_profession = profession.id_profession where id_student='" + Convert.ToString(Session["userId"]) + "'";
            string queryLecturer = "select * from Lecturer";
            SqlConnection conn = new SqlConnection(connString);
            SqlCommand cmdS = new SqlCommand(querySudent, conn);
            SqlCommand cmdAvg = new SqlCommand(queryAvg, conn);
            conn.Open();
            SqlCommand SQLCommand = new SqlCommand();
            cmdAvg.CommandType  = CommandType.Text;
            SQLCommand.CommandText = queryAvg;
            Int32 USRole = (Int32)cmdAvg.ExecuteScalar();
            //LabelAVG.Text = Convert.ToString(USRole);
            //cmdAvg.Parameters.AddWithValue(connString, conn);
          
            //// create data adapter
            SqlDataAdapter daS = new SqlDataAdapter(cmdS);
            //SqlDataAdapter daAvg = new SqlDataAdapter(cmdAvg);
            daS.Fill(dataTableStudent);
            Session["ss"] = dataTableStudent;
            GridView1.DataSource = dataTableStudent;
            dataTableStudent.Columns[0].ColumnName = "ציון";
            dataTableStudent.Columns[1].ColumnName = "מקצוע";
            row[0] = Convert.ToString(USRole);
            row[1] = "ממוצע";
            dataTableStudent.Rows.Add(row);
            GridView1.DataBind();
            conn.Close();
            daS.Dispose();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (XLWorkbook wb = new XLWorkbook())
            {
                wb.Worksheets.Add(dataTableStudent, "Student");

                Response.Clear();
                Response.Buffer = true;
                Response.Charset = "";
                Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                Response.AddHeader("content-disposition", "attachment;filename=SqlExport.xlsx");
                using (MemoryStream MyMemoryStream = new MemoryStream())
                {
                    wb.SaveAs(MyMemoryStream);
                    MyMemoryStream.WriteTo(Response.OutputStream);
                    Response.Flush();
                    Response.End();
                }
            }
        }


    }
}