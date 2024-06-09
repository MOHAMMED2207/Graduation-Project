using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUClLooogein : System.Web.UI.UserControl
{
    DatabaseEntities2 db = new DatabaseEntities2();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        var x = from st in db.Employee where st.Name == txtname.Text && st.password == txtpassword.Text select st;
        if (x.Any())
        {
            HttpCookie c = new HttpCookie("login");
            c.Values.Add("User", txtname.Text);
            Response.Cookies.Add(c);
            if (CheckBox1.Checked)
            {
                c.Expires = DateTime.Now.AddYears(2);
                Response.Cookies.Add(c);
                if (txtname.Text.ToLower() == "admin")
                {
                    Response.Redirect("~/Employee.aspx");
                }
                else
                {
                    Response.Redirect("~/Customer.aspx");
                }
            }
            else
            {
                if (txtname.Text.ToLower() == "admin")
                {
                    Response.Redirect("~/Employee.aspx");
                }
                else
                {
                    Response.Redirect("~/Customer.aspx");
                }
            }


        }
        else
        {
            iblmsg.Text = "Is Not valid data , Please try again";
        }
    
}

    protected void txtname_TextChanged(object sender, EventArgs e)
    {

    }
}