using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cv
{
    public partial class AdminYeteneklerimSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);

            DataSet1TableAdapters.TBLYETENEKLERIMTableAdapter dt = new DataSet1TableAdapters.TBLYETENEKLERIMTableAdapter();
            dt.YeteneklerimSil(Convert.ToByte(x));
            Response.Redirect("AdminYeteneklerim.aspx");
        }
    }
}