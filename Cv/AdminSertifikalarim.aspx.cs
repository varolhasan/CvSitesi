using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cv
{
    public partial class AdminSertifikalarim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLSERTIFIKALARIMTableAdapter dt = new DataSet1TableAdapters.TBLSERTIFIKALARIMTableAdapter();
            Repeater1.DataSource = dt.SertifikalarListele();
            Repeater1.DataBind();
        }
    }
}