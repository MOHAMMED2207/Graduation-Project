using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUEmployee : System.Web.UI.UserControl
{
    DatabaseEntities2 db = new DatabaseEntities2();
    public void clear()
    {
        txtEmpioyeeID.Text = "";
        txtName.Text = "";
        txtAddress.Text = "";
        txtphone.Text = "";
        txtAddress.Text = "";
        txtBirthdate.Text = "";
        txtEmail.Text = "";
       DropDownList1.Text = "";
        RadioButtonList1.Text = "";
        txtPassword.Text = "";
        txtsalary.Text = "";


        try
        {
            txtEmpioyeeID.Text = (db.Employee.OrderByDescending(p => p.EmployeeID).FirstOrDefault().EmployeeID + 1).ToString();
}
        catch
        {

            txtEmpioyeeID.Text = "1";

        }
    }







protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource = db.Employee.ToList();
        GridView1.DataBind();


        if (!IsPostBack)

        {

            try
            {
                txtEmpioyeeID.Text = (db.Employee.OrderByDescending(p => p.EmployeeID).FirstOrDefault().EmployeeID + 1).ToString();

            }
            catch
            {
                txtEmpioyeeID.Text = "1";
            }


        }
       

         
    }









    protected void btnAdd_Click1(object sender, EventArgs e)
    {
        try
        {
            txtEmpioyeeID.Text = (db.Employee.OrderByDescending(p => p.EmployeeID).FirstOrDefault().EmployeeID + 1).ToString();

        }
        catch
        {
            txtEmpioyeeID.Text = "1";
        }
        Employee E = new Employee()
        {
            EmployeeID = Convert.ToInt32(txtEmpioyeeID.Text),
            Name = txtName.Text,
            Salary = txtsalary.Text,
            Address = txtAddress.Text,
            job = DropDownList1.SelectedValue,
            Gender = RadioButtonList1.SelectedValue,
            Email = txtEmail.Text,
            Birthdate = txtBirthdate.Text,
            Phone = txtphone.Text,
            password = txtPassword.Text
        };
        db.Employee.Add(E);
        db.SaveChanges();
        clear();
        iblmsg.Text = "Added Successfully";


    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        var x = db .Employee.Find(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text.ToString()));
        x.Name = txtName.Text;
        x.Phone = txtphone.Text;
        x.Address =txtAddress.Text;
        x.job = DropDownList1.SelectedValue;
        x.Salary = txtsalary.Text;
        x.Email = txtEmail.Text;
        x.password = txtPassword.Text;
        x.Gender = RadioButtonList1.SelectedValue;


        db.SaveChanges();
        iblmsg.Text = "Data Has Been Modified";
        clear();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtEmpioyeeID.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
        txtName.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
        txtphone.Text = GridView1.SelectedRow.Cells[3].Text.ToString();
        txtAddress.Text = GridView1.SelectedRow.Cells[4].Text.ToString();
         txtBirthdate.Text = GridView1.SelectedRow.Cells[5].Text.ToString();
        DropDownList1.SelectedValue = GridView1.SelectedRow.Cells[6].Text.ToString();
        txtsalary.Text = GridView1.SelectedRow.Cells[7].Text.ToString();
        txtEmail.Text = GridView1.SelectedRow.Cells[8].Text.ToString();
        txtPassword.Text = GridView1.SelectedRow.Cells[9].Text.ToString();
        RadioButtonList1.SelectedValue = GridView1.SelectedRow.Cells[10].Text;

        btnAdd.Visible = false;
        btnDelete.Visible = true;
        btnUpdate.Visible = true;
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        GridView1.DataSource = db.Employee.Select(b => new { b.EmployeeID, b.Name, b.Phone, b.Address, b.Birthdate, b.job, b.Salary, b.Email, b.password, b.Gender, }).Where(x => x.Name.Contains(TextBox1.Text)).ToList();
        GridView1.DataBind();
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        var x = db.Employee.Find(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text.ToString()));
        db.Employee.Remove(x);
        db.SaveChanges();
        iblmsg.Text = "Deleted Successfully";
        clear();
    }
}   