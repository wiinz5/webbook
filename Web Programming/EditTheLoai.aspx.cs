using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace Web_Programming
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        DataClassesDataContext dt = new DataClassesDataContext();
        SqlConnection cnn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=QLKS;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadData();
        }
        protected void LoadData()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "TheLoai_SelectAll";
            cmd.Connection = cnn;
            cnn.Open();
            dgvTL.DataSourceID = null;
            dgvTL.DataSource = cmd.ExecuteReader();
            dgvTL.DataBind();
            cnn.Close();
        }
        protected void dgvTG_SelectedIndexChanged(object sender, EventArgs e)
        {
            int i;
            i = dgvTL.SelectedIndex;
            txtMaTL.Text = dgvTL.Rows[i].Cells[0].Text.ToString();
            txtTenTL.Text = dgvTL.Rows[i].Cells[1].Text.ToString();
        }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            if (checkTL(txtMaTL.Text) == true)
            {
                dt.TheLoai_Insert(txtMaTL.Text, txtTenTL.Text);
                LoadData();
            }else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Mã thể loại bị trùng! Mời nhập lại')</script>");
                txtMaTL.Focus();
            }
        }

        private bool checkTL(string text)
        {

            int r = (dt.TheLoai_SelectMaTL(text).Count());
            if (r > 0)
                return false;
            return true;
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            dt.TheLoai_Update(txtMaTL.Text, txtTenTL.Text);
            LoadData();
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            dt.TheLoai_Delete(txtMaTL.Text);
            LoadData();
        }

    }
}