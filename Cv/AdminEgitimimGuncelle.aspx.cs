using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cv
{
    public partial class AdminEgitimimGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["ID"]);
            TextBox1.Text = x.ToString();

            DataSet1TableAdapters.TBLEGITIMTableAdapter dt = new DataSet1TableAdapters.TBLEGITIMTableAdapter();
            if (Page.IsPostBack == false)
            {
                TextBox2.Text = dt.EgitimGetir(Convert.ToByte(x))[0].BASLIK;
                TextBox3.Text = dt.EgitimGetir(Convert.ToByte(x))[0].ALTBASLIK1;
                TextBox4.Text = dt.EgitimGetir(Convert.ToByte(x))[0].ALTBASLIK2;
                TextBox5.Text = dt.EgitimGetir(Convert.ToByte(x))[0].GNO;
                TextBox6.Text = dt.EgitimGetir(Convert.ToByte(x))[0].TARIH;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLEGITIMTableAdapter dt = new DataSet1TableAdapters.TBLEGITIMTableAdapter();
            dt.EgitimimGuncelle(TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, 
                Convert.ToByte(TextBox1));
            Response.Redirect("AdminEgitimim.aspx");
        }
    }
}