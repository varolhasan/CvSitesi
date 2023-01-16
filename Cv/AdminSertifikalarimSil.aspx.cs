using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cv
{
    public partial class AdminSertifikalarimSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["ID"]);

            DataSet1TableAdapters.TBLSERTIFIKALARIMTableAdapter dt = new DataSet1TableAdapters.TBLSERTIFIKALARIMTableAdapter();
            dt.SertifikaSil(Convert.ToByte(x));
            Response.Redirect("AdminSertifikalarim.aspx");
        }
    }
}