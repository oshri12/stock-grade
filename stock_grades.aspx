using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System;
using System.Data;
namespace stock_grade
{
    public partial class stock_grades : System.Web.UI.Page
    {
        private DataTable dataTable = new DataTable();
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
            //datareader = command.ExecuteReader();
            //cnn.Close();
            string connString = @" Data Source=(LocalDB)\v11.0;AttachDbFilename='C:\Users\oshri\Documents\Stock scores.mdf';Integrated Security=True;Connect Timeout=30";
            string query = "select * from student";

            SqlConnection conn = new SqlConnection(connString);
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();

            // create data adapter
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            // this will query your database and return the result to your datatable
            da.Fill(dataTable);
            conn.Close();
            da.Dispose();

        }
    }
}