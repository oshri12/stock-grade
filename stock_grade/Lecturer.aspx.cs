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
    public partial class Lecturer : System.Web.UI.Page
    {
        private DataTable dataTableGrades = new DataTable();
        DataTable subjects = new DataTable();
        string s = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string connString = @" Data Source=(LocalDB)\v11.0;AttachDbFilename='C:\Users\oshri\Documents\Stock scores.mdf';Integrated Security=True;Connect Timeout=30";
                string queryLecturer = "select id_student from student";
                string queryP = "select name_profession from profession";

                //SqlConnection conn = new SqlConnection(connString);
                //SqlCommand cmdL = new SqlCommand(queryLecturer, conn);
                //conn.Open();
                //SqlCommand SQLCommand = new SqlCommand();
                //cmdL.CommandType = CommandType.Text;
                //SQLCommand.CommandText = queryLecturer;
                //conn.Close();

                using (var conn = new SqlConnection(connString))
                using (var cmd = new SqlCommand(queryLecturer, conn))
                {
                    //SqlDataReader reader = new SqlDataReader();
                    conn.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        var list = new List<int>();
                        while (reader.Read())
                        {
                            list.Add(reader.GetInt32(0)); // 0 is the column index.
                        }
                        //DropDownList1.DataSource = list;
                        //DropDownList1.DataBind();
                        DropDownListID.DataSource = list;
                        DropDownListID.DataBind();
                        //s =Convert.ToString( DropDownList1.SelectedItem);  

                        conn.Close();
                        //list.Clear();
                    }
                }
                using (var conn = new SqlConnection(connString))
                using (var cmp = new SqlCommand(queryP, conn))
                {
                    //SqlDataReader reader = new SqlDataReader();
                    conn.Open();
                    using (SqlDataReader reader = cmp.ExecuteReader())
                    {
                        var list = new List<string>();
                        while (reader.Read())
                        {
                            list.Add(reader.GetString(0)); // 0 is the column index.
                        }
                        DropDownListP.DataSource = list;
                        //DropDownList1.DataSource = list;
                        //DropDownList1.DataSource = list;
                        DropDownListP.DataBind();
                        //DropDownList1.DataBind();
                        //DropDownList1.DataBind();
                        conn.Close();
                        //DropDownListP.Items.Clear();
                    }
                }
                DropDownListP.Items.Insert(0, new ListItem("בחר מקצוע", ""));
                DropDownListID.Items.Insert(0, new ListItem("בחר ת.ז", ""));
            }
        
}

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ss = Convert.ToString(Session["studentid"]);
            string queryP = "select id_profession from profession where name_profession like N'" + Convert.ToString(Session["professionNAME"]) + "%'";
            string connString = @" Data Source=(LocalDB)\v11.0;AttachDbFilename='C:\Users\oshri\Documents\Stock scores.mdf';Integrated Security=True;Connect Timeout=30";

            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            SqlCommand cmdp = new SqlCommand(queryP, conn);
            Int32 idP = Convert.ToInt32(cmdp.ExecuteScalar());
          string queryg;
            Boolean c =ChekProffession(idP, ss);
            if (c==true)       
                    queryg = "UPDATE Grades set grade=" + TextBoxg.Text + "where id_student=" + Convert.ToString(Session["studentid"]) + "and id_profession="+idP;
            else
                    queryg = "INSERT INTO Grades (id_student,id_profession, grade)VALUES (" + Convert.ToString(Session["studentid"]) + "," + idP + "," + TextBoxg.Text + ");";

            
                int x = 3;
            SqlCommand cmdg = new SqlCommand(queryg, conn);
            cmdg.ExecuteReader();
            conn.Close();
        }
        

   
            //SqlDataAdapter adapter = new SqlDataAdapter(queryLecturer, conn);
            //adapter.Fill(subjects);

            //DropDownListID.DataSource = subjects;
            //DropDownListID.DataBind();
            //DropDownListID.DataTextField = connString;
            //DropDownListID.DataValueField = connString;
            //DropDownListID.DataBind();  
            //conn.Close();
        

        protected void ButtonOk_Click1(object sender, EventArgs e)
        {
            string querys = "INSERT INTO student (id_student,name_student,password)VALUES (" + TextBoxId.Text + ",N'" + TextBoxname.Text + "','" + TextBoxpas.Text +"');";

            string connString = @" Data Source=(LocalDB)\v11.0;AttachDbFilename='C:\Users\oshri\Documents\Stock scores.mdf';Integrated Security=True;Connect Timeout=30";
            SqlConnection conn = new SqlConnection(connString);
            SqlCommand cmds = new SqlCommand(querys, conn);
            conn.Open();
            cmds.ExecuteReader();
            conn.Close();
            //string queryp = "INSERT INTO profession (id_profession,name_profession)VALUES (" + TextBoxidp.Text + ",N'" + TextBoxnp.Text + "');";

            //SqlCommand cmdp = new SqlCommand(queryp, conn);
            //conn.Open();
            //cmds.ExecuteReader();
            //conn.Close();
        }

        protected void Buttonokp_Click(object sender, EventArgs e)
        {
            string queryp = "INSERT INTO profession (id_profession,name_profession)VALUES (" + TextBoxidp.Text + ",N'" + TextBoxnp.Text + "');";
            string connString = @" Data Source=(LocalDB)\v11.0;AttachDbFilename='C:\Users\oshri\Documents\Stock scores.mdf';Integrated Security=True;Connect Timeout=30";
            SqlConnection conn = new SqlConnection(connString);
            SqlCommand cmdp = new SqlCommand(queryp, conn);
            conn.Open();
            cmdp.ExecuteReader();
            conn.Close();
        }
        protected void DropDownListID_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["studentid"] = DropDownListID.SelectedItem.Text;
         
        }

        //protected void DropDownListP_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    Session["professionid"] = DropDownListP.SelectedItem.Text;
        //}

        protected void DropDownListP_SelectedIndexChanged1(object sender, EventArgs e)
        {
            Session["professionNAME"] = DropDownListP.SelectedItem.Text;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int x = 5;
        }

        //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    int x = 5;
        //}

        public Boolean ChekProffession(Int32 idp,string ids)
        {
            
            string connString = @" Data Source=(LocalDB)\v11.0;AttachDbFilename='C:\Users\oshri\Documents\Stock scores.mdf';Integrated Security=True;Connect Timeout=30";
            string queryGrades = "select id_profession from Grades where id_student=" + ids;
           
            SqlConnection conn = new SqlConnection(connString);
            SqlCommand cmdG = new SqlCommand(queryGrades, conn);
     
            conn.Open();

            // create data adapter
            SqlDataAdapter daG = new SqlDataAdapter(cmdG);
            
            // this will query your database and return the result to your datatable
            daG.Fill(dataTableGrades);
            Int32 professionId;
            foreach (DataRow dataRow in dataTableGrades.Rows)
            {
                professionId = Convert.ToInt32(dataRow[0]);
                //userPass = Convert.ToString(dataRow[2]);
                //StudentPass.Replace("  ", "");
                if (professionId == idp )
                {
                    return true;
                }

                //foreach (DataColumn column in dataTable.Columns)
                //{

                //    if (dataRow[0]==TextBoxID && dataRow[column]==TextBoxPas)
                //    {
                //        Response.Redirect("Students.aspx");
                //    }
                //}
            }
            return false;
        }
        
        }


    }
