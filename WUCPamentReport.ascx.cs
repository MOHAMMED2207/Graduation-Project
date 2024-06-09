using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using CrystalDecisions.CrystalReports.Engine;

public partial class WUCPamentReport : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con;
        string x = null;
        x = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework";
        con = new SqlConnection(x);
        con.Open();

        string SQL = null;
        SQL = "SELECT * FROM PaymentType ";
        SqlDataAdapter y = new SqlDataAdapter(SQL, con);
        con.Close();
        DataSet ds = new DataSet();
        y.Fill(ds, "PaymentType");

        ReportDocument n = new ReportDocument();
        n.Load(Server.MapPath("~\\PaymentTypeReport.rpt"));
        n.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = n;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con;
        string x = null;
        x = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework";
        con = new SqlConnection(x);
        con.Open();

        string SQL = null;
        SQL = "SELECT * FROM PaymentType where Type ='" + TextBox1.Text + "'";
        SqlDataAdapter y = new SqlDataAdapter(SQL, con);
        con.Close();
        DataSet ds = new DataSet();
        y.Fill(ds, "PaymentType");

        ReportDocument n = new ReportDocument();
        n.Load(Server.MapPath("~\\PaymentTypeReportt.rpt"));
        n.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = n;
    }
}