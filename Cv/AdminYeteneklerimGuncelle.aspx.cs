using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cv
{
    public partial class AdminYeteneklerimGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["ID"]);

            DataSet1TableAdapters.TBLYETENEKLERIMTableAdapter dt = new DataSet1TableAdapters.TBLYETENEKLERIMTableAdapter();
            if (Page.IsPostBack == false)
            {
                TextBox1.Text = dt.YeteneklerimGetir(Convert.ToInt16(x))[0].ID.ToString();
                TextBox2.Text = dt.YeteneklerimGetir(Convert.ToInt16(x))[0].YETENEK;
                TextBox3.Text = dt.YeteneklerimGetir(Convert.ToInt16(x))[0].ORAN.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLYETENEKLERIMTableAdapter dt = new DataSet1TableAdapters.TBLYETENEKLERIMTableAdapter();
            dt.YeteneklerimGuncelle(TextBox2.Text, Convert.ToByte(TextBox3.Text), Convert.ToByte(TextBox1.Text));
            Response.Redirect("AdminYeteneklerim.aspx");
        }
    }
}