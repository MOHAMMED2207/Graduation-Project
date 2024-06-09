using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUCdelivery : System.Web.UI.UserControl
{
    DatabaseEntities2 db = new DatabaseEntities2();
    public void clear()
    {
        TxtDeliveryID.Text = "";
        TxtName.Text = "";
        TxtPhone.Text = "";
        TxtAddress.Text = "";
        TxtEmail.Text = "";


        try
        {
            TxtDeliveryID.Text = (db.Delivery.OrderByDescending(p => p.DeliveryID).FirstOrDefault().DeliveryID + 1).ToString();
        }
        catch
        {

            TxtDeliveryID.Text = "1";

        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource = db.Delivery.ToList();
        GridView1.DataBind();

        if (!IsPostBack)

            {

                try
                {
                TxtDeliveryID.Text = (db.Delivery.OrderByDescending(p => p.DeliveryID).FirstOrDefault().DeliveryID + 1).ToString();

                }
                catch
                {
                TxtDeliveryID.Text = "1";
                }


            }
           
        }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            TxtDeliveryID.Text = (db.Delivery.OrderByDescending(p => p.DeliveryID).FirstOrDefault().DeliveryID + 1).ToString();

        }
        catch
        {
            TxtDeliveryID.Text = "1";
        }
        Delivery D = new Delivery()
        {
            DeliveryID = Convert.ToInt32(TxtDeliveryID.Text),
            Name = TxtName.Text,
            Email = TxtEmail.Text,
            Address  = TxtAddress.Text,
            phone = TxtPhone.Text,
        };
        db.Delivery.Add(D);
        db.SaveChanges();
        clear();
        iblmsg.Text = "Added Successfully";




    }


    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
     GridView1.DataSource = db.Delivery.Select(b => new { b.DeliveryID, b.Name, b.phone, b.Address, b.Email,}).Where(x => x.Name.Contains(TxtSearch.Text)).ToList();
        GridView1.DataBind();
    }

    protected void TxtSearch_TextChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
         TxtDeliveryID.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
         TxtName.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
         TxtPhone.Text = GridView1.SelectedRow.Cells[3].Text.ToString();
         TxtAddress.Text = GridView1.SelectedRow.Cells[4].Text.ToString();
         TxtEmail.Text = GridView1.SelectedRow.Cells[5].Text.ToString();
        Button2.Visible = false;
        Button3.Visible = true;
        Button4.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        var x = db.Delivery.Find(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text.ToString()));
        db.Delivery.Remove(x);
        db.SaveChanges();
        iblmsg.Text = "Deleted Successfully";
        clear();

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        var x = db.Delivery.Find(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text.ToString()));
        x.Name = TxtName.Text;
        x.phone = TxtPhone.Text;
        x.Address = TxtAddress.Text;
        x.Email = TxtEmail.Text;
        db.SaveChanges();
        iblmsg.Text = "Data Has Been Modified";
        clear();

    }
}   
    
