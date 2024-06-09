using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUCcustomer : System.Web.UI.UserControl
{
    DatabaseEntities2 DB = new DatabaseEntities2();

    public void clear()
    {
        txtcustomerid.Text = "";
        txtname.Text = "";
        txtPhone.Text = "";
        txtemail.Text = "";
        txtAddress.Text = "";
      

        try
        {
            txtcustomerid.Text = (DB.Customer.OrderByDescending(I => I.CustomerID).FirstOrDefault().CustomerID + 1).ToString();
        }
        catch
        {
            txtcustomerid.Text = "1";
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource = DB.Customer.ToList();
        GridView1.DataBind();


       
        if (!IsPostBack)
        {
            try
            {
                txtcustomerid.Text = (DB.Customer.OrderByDescending(I => I.CustomerID).FirstOrDefault().CustomerID + 1).ToString();
            }
            catch
            {
                txtcustomerid.Text = "1";
            }
        }




    }

    protected void Textsearch_TextChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
         txtcustomerid.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
         txtname.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
         txtPhone.Text = GridView1.SelectedRow.Cells[3].Text.ToString();
         txtemail.Text = GridView1.SelectedRow.Cells[4].Text.ToString();
         txtAddress.Text = GridView1.SelectedRow.Cells[5].Text.ToString();
         BtnAdd.Visible = false;
         BtnDelet.Visible = true;
         btnUpDate.Visible = true;

    }

   

    protected void txtcustomerid_TextChanged(object sender, EventArgs e)
    {

    }



    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            txtcustomerid.Text = (DB.Customer.OrderByDescending(I => I.CustomerID).FirstOrDefault().CustomerID + 1).ToString();
        }
        catch
        {
            txtcustomerid.Text = "1";
        }

        Customer C = new Customer()
        {
            CustomerID = Convert.ToInt32(txtcustomerid.Text),
            Name = txtname.Text,
            Address = txtAddress.Text,
            Email = txtemail.Text,
            Phone = txtPhone.Text,

        };
        DB.Customer.Add(C);
        DB.SaveChanges();
        clear();
        iblmsg.Text = "Added Successfully";
    }

    protected void BtnSearch_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = DB.Customer.Select(b => new { b.CustomerID, b.Name, b.Phone, b.Email, b.Address, }).Where(x => x.Name.Contains(TxtSearch.Text)).ToList();
        GridView1.DataBind();
    }

    protected void TxtSearch_TextChanged(object sender, EventArgs e)
    {

    }

    protected void BtnDelet_Click(object sender, EventArgs e)
    {
        var x = DB.Customer.Find(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text.ToString()));
        DB.Customer.Remove(x);
        DB.SaveChanges();
        iblmsg.Text = "Deleted Successfully";
        clear();

    }

    protected void btnUpDate_Click(object sender, EventArgs e)
    {
        var x = DB.Customer.Find(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text.ToString()));
        x.Name = txtname.Text;
        x.Phone = txtPhone.Text;
        x. Email = txtemail.Text;
        x. Address = txtAddress.Text;
        DB.SaveChanges();
        iblmsg.Text = "Data Has Been Modified";
        clear();

    }
}