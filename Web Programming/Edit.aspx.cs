using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Programming
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditTacGia.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditTheLoai.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditThuVien.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditReview.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditTacPham.aspx");
        }
    }
}