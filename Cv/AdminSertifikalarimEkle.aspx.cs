using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cv
{
    public partial class AdminSertifikalarimEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLSERTIFIKALARIMTableAdapter dt = new DataSet1TableAdapters.TBLSERTIFIKALARIMTableAdapter();
            dt.SertifikaEkle(TextBox2.Text, TextBox3.Text, TextBox4.Text);
            Response.Redirect("AdminSertifikalarim.aspx");
        }
    }
}