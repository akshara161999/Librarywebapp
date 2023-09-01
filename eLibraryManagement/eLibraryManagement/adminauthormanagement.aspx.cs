using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eLibraryManagement
{
    public partial class authormanagementaspx : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();

        }
        //add function implementation
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Checkifauthorexists())
            {
                Response.Write("<script>alert('Member already exists with this authorid,You cannot add another Author with the same AuthorID');</script>");
            }
            else {
                AddNewAuthor();
                }
            
        }
        //update function implementation
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Checkifauthorexists())
            {
                UpdateAuthor();
                
            }
            else
            {
                Response.Write("<script>alert('Author does not exist');</script>");
            }
        }
        //delete function implementation
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (Checkifauthorexists())
            {
               deleteAuthor();

            }
            else
            {
                Response.Write("<script>alert('Author does not exist');</script>");
            }


        }
             //go button implementation
        protected void Button2_Click(object sender, EventArgs e)
        {
            

        }
        void UpdateAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("Update author_master_tbl set author_name=@authorname where author_id='"+TextBox1.Text.Trim()+"'", con);

                
                cmd.Parameters.AddWithValue("@authorname", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Author updated succesfully ');</script>");

                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                //Response.Write("<script>alert('" + ex.Message + "');</script>");
                Response.Write("" + ex.Message);
            }


        }
        void AddNewAuthor()
        {
            try
            
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO author_master_tbl(author_id,author_name) values(@authorid,@authorname)", con);

                cmd.Parameters.AddWithValue("@authorid", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@authorname", TextBox2.Text.Trim());
                
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Author succesfully added ');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                //Response.Write("<script>alert('" + ex.Message + "');</script>");
                Response.Write("" + ex.Message);
            }


        }
        //deleteAuthor
        void deleteAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from author_master_tbl WHERE author_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author Deleted Successfully');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }

        //user defined function to check if the user exists
        bool Checkifauthorexists()
        {
            //return false;
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from author_master_tbl where author_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }



                //con.Close();

                //Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");

            }
            catch (Exception ex)
            {
                //Response.Write("<script>alert('" + ex.Message + "');</script>");
                Response.Write("" + ex.Message);
                return false;
            }

        }
       
    }
}