using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Programming
{
    public partial class ChiTietReview : System.Web.UI.Page
    {
        DataClassesDataContext dt = new DataClassesDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            String masach = Convert.ToString(Request["masach"]);
            rpChiTiet.DataSource = dt.Review_SelectMaTP(masach);
            rpChiTiet.DataBind();
            rpList.DataSource = dt.Review_SelectRanDom(masach);
            rpList.DataBind();
        }
    }
}