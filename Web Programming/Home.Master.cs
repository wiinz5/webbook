using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Programming
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        DataClassesDataContext dt = new DataClassesDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                rpThuVien.DataSource = dt.ThuVien_SelectAll();
                rpThuVien.DataBind();
                rpTheLoai.DataSource = dt.TheLoai_SelectAll();
                rpTheLoai.DataBind();
                rpfooterleft.DataSource = dt.TacGia_SelectRanDom();
                rpfooterleft.DataBind();
                String matp = Convert.ToString(Request["matp"]);
                rpfooterright.DataSource = dt.TacPham_SelectRanDom(matp);
                rpfooterright.DataBind();

            }   
        }
    }
}