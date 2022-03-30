using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadData();
        }
    }

    SqlConnection con = new SqlConnection("Server= Kris; Database=CRUD ; Integrated Security= True");
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open(); 
        SqlCommand comm = new SqlCommand("Insert into datos values('" + int.Parse(TextBox1.Text) + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')", con);
        comm.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Insert completado');", true);
        LoadData();
    }
    void LoadData()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        SqlCommand cmm = new SqlCommand("select * from datos", con);
        SqlDataAdapter adapter = new SqlDataAdapter(cmm);
        DataTable dt = new DataTable();
        adapter.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand comm = new SqlCommand("update datos set Nombre = '" + TextBox2.Text + "',Apellido = '" + TextBox3.Text + "',Correo = '" + TextBox4.Text + "',Cedula = '" + TextBox5.Text + "',Telefono = '" + TextBox6.Text + "' where id = '" + int.Parse(TextBox1.Text) + "'", con);
        comm.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Actualizacion completada');", true);
        LoadData();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand comm = new SqlCommand("delete datos where id = '" + int.Parse(TextBox1.Text) + "'", con);
        comm.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Usuario Removido exitosamente');", true);
        LoadData();
    }
}
