using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cv
{
    public partial class Admin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.TBLILETISIMTableAdapter dt = new DataSet1TableAdapters.TBLILETISIMTableAdapter();
                TextBox1.Text = dt.IletisimListele()[0].ADSOYAD;
                TextBox2.Text = dt.IletisimListele()[0].MESLEK;
                TextBox3.Text = dt.IletisimListele()[0].DOGUMTARIH.ToString();
                TextBox4.Text = dt.IletisimListele()[0].ADRES;
                TextBox5.Text = dt.IletisimListele()[0].MAIL;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLILETISIMTableAdapter dt = new DataSet1TableAdapters.TBLILETISIMTableAdapter();
            dt.IletisimGuncelle(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text);
            Response.Redirect("Default.aspx");
        }
    }
}