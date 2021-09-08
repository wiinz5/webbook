using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Programming
{
    public partial class ThuVien1 : System.Web.UI.Page
    {
        DataClassesDataContext dt = new DataClassesDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            String malv = Convert.ToString(Request["malv"]);
            rpChiTiet.DataSource = dt.ThuVien_SelectTPLV(malv);
            rpChiTiet.DataBind();
        }
    }
}