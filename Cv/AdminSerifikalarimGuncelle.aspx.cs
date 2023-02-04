using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cv
{
    public partial class AdminSerifikalarimGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["ID"]);
            TextBox1.Text = x.ToString();

            DataSet1TableAdapters.TBLSERTIFIKALARIMTableAdapter dt = new DataSet1TableAdapters.TBLSERTIFIKALARIMTableAdapter();
            if (Page.IsPostBack == false)
            {
                TextBox2.Text = dt.SertifikaGetir(Convert.ToByte(x))[0].SERTIFIKA;
                TextBox3.Text = dt.SertifikaGetir(Convert.ToByte(x))[0].ADRES;
                TextBox4.Text = dt.SertifikaGetir(Convert.ToByte(x))[0].HOCA;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLSERTIFIKALARIMTableAdapter dt = new DataSet1TableAdapters.TBLSERTIFIKALARIMTableAdapter();
            dt.SertifikaGuncelle(TextBox2.Text, TextBox3.Text, TextBox4.Text, Convert.ToByte(TextBox1.Text));
            Response.Redirect("AdminSertifikalarim.aspx");
        }
    }
}