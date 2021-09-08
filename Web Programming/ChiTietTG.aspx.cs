using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Programming
{
    public partial class ChiTiet : System.Web.UI.Page
    {
        DataClassesDataContext dt = new DataClassesDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            String matg = Convert.ToString(Request["matg"]);
            rpChiTiet.DataSource = dt.TacGia_SelectMaTG(matg);
            rpChiTiet.DataBind();
            rpList.DataSource = dt.TacPham_SelectTP(matg);
            rpList.DataBind();

        }
    }
}