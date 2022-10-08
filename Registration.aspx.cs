using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;



public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from LoginData where UserName='" + TextBoxuname.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            
            conn.Close();

            if (temp == 1)
            {
                Response.Write("User Already Exits");


            }

            

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGuid = Guid.NewGuid();


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into LoginData(ID,FirstName,LastName,UserName,Email,Password,Contry)values (@ID ,@fname ,@lname , @uname ,@email ,@pass ,@contry)";
            SqlCommand com = new SqlCommand(insertQuery, conn);

            com.Parameters.AddWithValue("@ID", newGuid.ToString());
            com.Parameters.AddWithValue("@fname", TextBoxfname.Text);
            com.Parameters.AddWithValue("@lname", TextBoxlname.Text);
            com.Parameters.AddWithValue("@uname", TextBoxuname.Text);
            com.Parameters.AddWithValue("@email", TextBoxemail.Text);
            com.Parameters.AddWithValue("@pass", TextBoxpass.Text);
            com.Parameters.AddWithValue("@contry", DropDownListcontry.SelectedItem.ToString());

            com.ExecuteScalar();
            Response.Redirect("Admin.aspx");
            Response.Write("Registration is successfully");

            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error:"+ex.ToString());
        }
        
    }
}