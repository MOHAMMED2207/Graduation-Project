using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebUserControl : System.Web.UI.UserControl
{

    DatabaseEntities2 DB = new DatabaseEntities2();

    public void clear()
    {
            txtProductCode.Text = "";
            txtName.Text = "";
            txtWeight.Text = "";
            txtDescription.Text = "";
            txtQty.Text = "";
            btnUpdate.Visible = true;
            btnDelete.Visible = true;

        try
        {
            txtProductCode.Text = (DB.Product.OrderByDescending(I => I.Productcode).FirstOrDefault().Productcode + 1).ToString();
        }
        catch
        {
            txtProductCode.Text = "1";
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

        GridView1.DataSource = DB.Product.ToList();
        GridView1.DataBind();

        if (!IsPostBack)
       {
            try
            {
                txtProductCode.Text = (DB.Product.OrderByDescending(I => I.Productcode).FirstOrDefault().Productcode + 1).ToString();
            }
            catch
            {
                txtProductCode.Text = "1";
            }

        }
            btnUpdate.Visible = true;
            btnDelete.Visible = true;



    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
         txtProductCode.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
         txtName.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
         txtWeight.Text = GridView1.SelectedRow.Cells[3].Text.ToString();
         txtDescription.Text = GridView1.SelectedRow.Cells[4].Text.ToString();
         txtQty.Text = GridView1.SelectedRow.Cells[5].Text.ToString();
        btnAdd.Visible = false;
        btnDelete.Visible = true;
        btnUpdate.Visible = true;
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            txtProductCode.Text = (DB.Product.OrderByDescending(I => I.Productcode).FirstOrDefault().Productcode + 1).ToString();
        }
        catch
        {
            txtProductCode.Text = "1";
        }

        Product Pr = new Product()
        {
            Productcode = Convert.ToInt32(txtProductCode.Text),
            name = txtName.Text,
            weight = txtWeight.Text,
            Description = txtDescription.Text,
            Qty = Convert.ToInt32(txtQty.Text),
        };
           DB.Product.Add(Pr);
           DB.SaveChanges();
           clear();
            iblmsg.Text = "Added Successfully";

    }

    protected void txtProductCode_TextChanged(object sender, EventArgs e)
    {


       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = DB.Product.Select(b => new { b.Productcode, b.name, b.weight, b.Description, b.Qty }).Where(x => x.name.Contains(TextBox1.Text)).ToList();
        GridView1.DataBind();
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        var x = DB.Product.Find(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text.ToString()));
        DB.Product.Remove(x);
        DB.SaveChanges();
        iblmsg.Text = "Deleted Successfully";
        clear();
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        var x = DB.Product.Find(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text.ToString()));
        x.name = txtName.Text;
        x.weight = txtWeight.Text;
        x.Description = txtDescription.Text;
        x.Qty = Convert.ToInt32(txtQty.Text);
        DB.SaveChanges();
        iblmsg.Text = "Data Has Been Modified";
        clear();
    }
}