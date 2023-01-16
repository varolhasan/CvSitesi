using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cv
{
    public partial class AdminYeteneklerimEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLYETENEKLERIMTableAdapter dt = new DataSet1TableAdapters.TBLYETENEKLERIMTableAdapter();
            dt.YeteneklerimEkle(TextBox2.Text, Convert.ToByte(TextBox3.Text));
            Response.Redirect("AdminYeteneklerim.aspx");
        }
    }
}