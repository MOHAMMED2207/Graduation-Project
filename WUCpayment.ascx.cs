using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUCpayment : System.Web.UI.UserControl
{
    DatabaseEntities2 db = new DatabaseEntities2();
    protected void clear()
    {
        TxtpaymentID.Text = "";
        Txttype.Text = "";
        try
        {
            TxtpaymentID.Text = (db.PaymentType.OrderByDescending(I => I.PayID).FirstOrDefault().PayID + 1).ToString();
        }
        catch
        {
            TxtpaymentID.Text = "1";
        }

    }
    protected void Page_Load(object sender, EventArgs e)

    {

        GridView1.DataSource = db.PaymentType.ToList();
        GridView1.DataBind();

        if (!IsPostBack)
        {
            try
            {
                TxtpaymentID.Text = (db.PaymentType.OrderByDescending(I => I.PayID).FirstOrDefault().PayID + 1).ToString();
            }
            catch
            {
               TxtpaymentID.Text = "1";
            }
        }
       
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {

    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            TxtpaymentID.Text = (db.PaymentType.OrderByDescending(I => I.PayID).FirstOrDefault().PayID + 1).ToString();
        }
        catch
        {
            TxtpaymentID.Text = "1";
        }

        PaymentType pa = new PaymentType()
        {
            PayID = Convert.ToInt32(TxtpaymentID.Text),
            Type= Txttype.Text,
          
        };
        db.PaymentType.Add(pa);
        db.SaveChanges();
        clear();
        iblmsg.Text = "Added Successfully";
    }

    protected void btnSearch_Click1(object sender, EventArgs e)
    {
       GridView1.DataSource = db.PaymentType.Select(b => new { b.PayID, b.Type,}).Where(x => x.Type.Contains(TxtSearch.Text)).ToList();
        GridView1.DataBind();
    }

    protected void TxtSearch_TextChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TxtpaymentID .Text = GridView1.SelectedRow.Cells[1].Text.ToString();
         Txttype.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
        btnAdd.Visible = false;
        btnDelete.Visible = true;
        btnUpdate.Visible = true;
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        var x = db.PaymentType.Find(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text.ToString()));
        db.PaymentType.Remove(x);
        db.SaveChanges();
        iblmsg.Text = "Deleted Successfully";
        clear();


    }

    protected void btnUpdate_Click1(object sender, EventArgs e)
    {
        var x = db.PaymentType.Find(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text.ToString()));
   
        x.Type = Txttype.Text;

        db.SaveChanges();
        iblmsg.Text = "Data Has Been Modified";
        clear();
    }
}