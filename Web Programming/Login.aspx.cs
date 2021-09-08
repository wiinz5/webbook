using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Web_Programming
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        DataClassesDataContext dt = new DataClassesDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var dl = dt.DangNhap_Check(txtUsername.Text, txtPassword.Text);
            int kt = dl.Count();
            if (kt > 0)
            {
                Session["admin"] = true;
                Response.Redirect("~/MenuTacPham.aspx");
            }
            else
            {
                lblTB.Text = "Không hợp lệ";
                txtUsername.Text = "";
                txtPassword.Text = "";
                txtUsername.Focus();
            }
        }
    }
}