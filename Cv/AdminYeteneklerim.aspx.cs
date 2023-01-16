using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cv
{
    public partial class AdminYeteneklerim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLYETENEKLERIMTableAdapter dt = new DataSet1TableAdapters.TBLYETENEKLERIMTableAdapter();
            Repeater1.DataSource = dt.YeteneklerimListele();
            Repeater1.DataBind();
        }
    }
}