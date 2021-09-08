using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Programming
{
    public partial class TheLoai1 : System.Web.UI.Page
    {
        DataClassesDataContext dt = new DataClassesDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            String maloai = Convert.ToString(Request["maloai"]);
            rpChiTiet.DataSource = dt.TheLoai_SelectSTL(maloai);
            rpChiTiet.DataBind();
        }
    }
}