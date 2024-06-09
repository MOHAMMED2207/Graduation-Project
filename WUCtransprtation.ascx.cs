using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUCtransprtation : System.Web.UI.UserControl
{
    DatabaseEntities2 DB = new DatabaseEntities2();

    public void clear()
    {
        TxttransID.Text = "";
        Txttype.Text = "";
        TxtPrice.Text = "";
        
       btnUpdate.Visible = true;
        btnDelete.Visible = true;

        try
        {
            TxttransID.Text = (DB.Transpiration.OrderByDescending(I => I.TransID).FirstOrDefault().TransID + 1).ToString();
        }
        catch
        {
            TxttransID.Text = "1";
        }
    }
    public void View_Grid()
    {
        GridView1.DataSource = DB.Transpiration.ToList();
        GridView1.DataBind();
    }

    protected void Page_Load(object sender, EventArgs e)
    {


        View_Grid();

        if (!IsPostBack)
        {
            try
            {
                TxttransID.Text = (DB.Transpiration.OrderByDescending(I => I.TransID).FirstOrDefault().TransID + 1).ToString();
            }
            catch
            {
               TxttransID.Text = "1";
            }
        }
       
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TxttransID.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
        Txttype.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
        TxtPrice.Text = GridView1.SelectedRow.Cells[3].Text.ToString();
        btnAdd.Visible = false;
        btnDelete.Visible = true;
        btnUpdate.Visible = true;
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            TxttransID.Text = (DB.Transpiration.OrderByDescending(I => I.TransID).FirstOrDefault().TransID + 1).ToString();
        }
        catch
        {
            TxttransID.Text = "1";
        }

        Transpiration t = new Transpiration()
        {
            TransID = Convert.ToInt32(TxttransID.Text),
            type = Txttype.Text,
            price = TxtPrice.Text,
        };
        DB.Transpiration.Add(t);
        DB.SaveChanges();
        clear();
        iblmsg.Text = "Added Successfully";
        View_Grid();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = DB.Transpiration.Select(b => new { b.TransID, b.type, b.price, }).Where(x => x.type.Contains(TxtSearch.Text)).ToList();
        GridView1.DataBind();
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        var x = DB.Transpiration.Find(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text.ToString()));
        x.type = Txttype.Text;
        x.price = TxtPrice.Text;
        DB.SaveChanges();
        clear();
        View_Grid();
        btnAdd.Visible = true;
        iblmsg.Text = "Data Has Been Modified";
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        var x = DB.Transpiration.Find(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text.ToString()));
        DB.Transpiration.Remove(x);
        DB.SaveChanges();
        iblmsg.Text = "Deleted Successfully";
        clear();
        View_Grid();
        btnAdd.Visible = true;
    }
}