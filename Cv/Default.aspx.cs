using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cv
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLILETISIMTableAdapter db = new DataSet1TableAdapters.TBLILETISIMTableAdapter();
            Repeater1.DataSource = db.IletisimListele();
            Repeater1.DataBind();

            DataSet1TableAdapters.TBLYETENEKLERIMTableAdapter db1 = new DataSet1TableAdapters.TBLYETENEKLERIMTableAdapter();
            Repeater2.DataSource = db1.YeteneklerimListele();
            Repeater2.DataBind();

            DataSet1TableAdapters.TBLEGITIMTableAdapter db2 = new DataSet1TableAdapters.TBLEGITIMTableAdapter();
            Repeater3.DataSource = db2.EgitimListele();
            Repeater3.DataBind();

            DataSet1TableAdapters.TBLSERTIFIKALARIMTableAdapter db3 = new DataSet1TableAdapters.TBLSERTIFIKALARIMTableAdapter();
            Repeater4.DataSource = db3.SertifikalarListele();
            Repeater4.DataBind();
        }
    }
}