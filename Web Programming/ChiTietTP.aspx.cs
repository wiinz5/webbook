using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Programming
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DataClassesDataContext dt = new DataClassesDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            String matp = Convert.ToString(Request["matp"]);
            rpChiTiet.DataSource = dt.TacPham_SelectMaTP(matp);
            rpChiTiet.DataBind();
            rpList.DataSource = dt.TacPham_SelectRanDom(matp);
            rpList.DataBind();
        }
    }
}