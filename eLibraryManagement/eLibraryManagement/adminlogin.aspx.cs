using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eLibraryManagement
{
    public partial class adminlogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM admin_login_tbl WHERE username = @userName AND password = @Password", con))
                    {
                        cmd.Parameters.AddWithValue("@userName", TextBox1.Text.Trim());
                        cmd.Parameters.AddWithValue("@Password", TextBox2.Text.Trim());
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            if (dr.HasRows)
                            {
                                while (dr.Read())
                                {
                                   // Response.Write("<script>alert('Login Successful');</script>");
                                    Session["username"] = dr.GetValue(0).ToString();
                                    Session["fullname"] = dr.GetValue(2).ToString();
                                    Session["role"] = "admin";
                                    //Session["status"] = dr.GetValue(10).ToString();
                                    //Response.Write("<script>alert('" + dr.GetValue(8).ToString() + "');</script>");
                                }
                                Response.Redirect("homepage.aspx");
                            }
                            else
                            {
                                Response.Write("<script>alert('Invalid credentials');</script>");
                            }
                        }
                    }

                }
            }
            catch (Exception ex)
            {
                //Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");

                Response.Write(ex.Message);
            }

        }
    }
}