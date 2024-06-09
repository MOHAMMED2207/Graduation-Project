using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUCReservationnn : System.Web.UI.UserControl
{
    DatabaseEntities2 db = new DatabaseEntities2();
    public void clear()
    {
        try
        {
            txtReservationID.Text = (db.Reservation.OrderByDescending(b => b.ReservationID).FirstOrDefault().ReservationID + 1).ToString();
        }
        catch
        {

            txtReservationID.Text = "1";
        }

        txtReservationID.Text = "";
        txtReciveDate.Text = "";
        txtReservationDate.Text = "";
        txtPrice.Text = "";
        txtType.Text = "";




        btnAdd.Visible = true;
        btnDelete.Visible = true;
        btnUpdate.Visible = true;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                txtReservationID.Text = (db.Reservation.OrderByDescending(b => b.ReservationID).FirstOrDefault().ReservationID + 1).ToString();
            }
            catch
            {

                txtReservationID.Text = "1";
            }
            btnAdd.Visible = true;
            btnDelete.Visible = true;
            btnUpdate.Visible = true;
        }
    }

    protected void btnAdd_Click1(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            txtReservationID.Text = (db.Reservation.OrderByDescending(b => b.ReservationID).FirstOrDefault().ReservationID + 1).ToString();
        }
        catch
        {

            txtReservationID.Text = "1";
        }
        Reservation Rs = new Reservation()

        {
            ReservationID = Convert.ToInt32(txtReservationID.Text),
            ReservationDate = txtReservationDate.Text,
            ReciveDtate = txtReciveDate.Text,
            Price = Convert.ToDecimal(txtPrice.Text),
            Qty = txtOty.Text,
            Type = txtType.Text,
            EmployeeID = Convert.ToInt32(DropDownList1.SelectedValue),
            CustomerID = Convert.ToInt32(DropDownList2.SelectedValue),
            Productcode = Convert.ToInt32(DropDownList3.SelectedValue),
            DeliveryID = Convert.ToInt32(DropDownList4.SelectedValue),
            TransID = Convert.ToInt32(DropDownList5.SelectedValue),
            PayID = Convert.ToInt32(DropDownList6.SelectedValue),

        };

        db.Reservation.Add(Rs);
        db.SaveChanges();
        clear();
        iblmsg.Text = "add scssed";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = db.DataView.Select(b => new { b.ReservationID, b.ReservationDate, b.ReciveDtate, b.Price, b.Qty, b.Type, b.empname, b.custname, b.procName, b.delname, b.transTAYPE, b.paytype, }).Where(x => x.Type.Contains(TextBox1.Text)).ToList();
        GridView1.DataBind();

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        var x = db.DataView.Find(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text.ToString()));
        db.DataView.Remove(x);
        db.SaveChanges();
        iblmsg.Text = "Deleted Successfully";
        clear();
    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        txtReservationID.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
        txtReservationDate.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
        txtReciveDate.Text = GridView1.SelectedRow.Cells[3].Text.ToString();
        txtPrice.Text = GridView1.SelectedRow.Cells[4].Text.ToString();
        txtOty.Text = GridView1.SelectedRow.Cells[5].Text.ToString();
        txtType.Text = GridView1.SelectedRow.Cells[6].Text.ToString();
        DropDownList6.SelectedValue = GridView1.SelectedRow.Cells[11].Text.ToString();
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        var x = db.DataView.Find(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text.ToString()));
        x.ReservationDate = txtReservationDate.Text;
        x.ReciveDtate = txtReciveDate.Text;
        x.Price = Convert.ToDecimal(txtPrice.Text);
        x.Qty = txtOty.Text;
        x.Type = txtType.Text;
        x.empname = DropDownList1.SelectedValue;
        db.SaveChanges();
        iblmsg.Text = "Data Has Been Modified";
        clear();

    }
}