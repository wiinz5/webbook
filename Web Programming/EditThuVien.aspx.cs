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
    public partial class EditThuVien : System.Web.UI.Page
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
                cmd.CommandText = "ThuVien_SelectAll";
                cmd.Connection = cnn;
                cnn.Open();
                dgvTV.DataSourceID = null;
                dgvTV.DataSource = cmd.ExecuteReader();
                dgvTV.DataBind();
                cnn.Close();
        }

        protected void dgvTG_SelectedIndexChanged(object sender, EventArgs e)
        {
            int i;
            i = dgvTV.SelectedIndex;
            txtMaLV.Text = dgvTV.Rows[i].Cells[0].Text.ToString();
            txtTenLV.Text = dgvTV.Rows[i].Cells[1].Text.ToString();
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            if (checkLV(txtMaLV.Text) == true)
            {
                dt.ThuVien_Insert(txtMaLV.Text, txtTenLV.Text);
                LoadData();
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Mã lĩnh vực bị trùng! Mời nhập lại')</script>");
                txtMaLV.Focus();
            }
        }
        private bool checkLV(string text)
        {

            int r = (dt.ThuVien_SelectMaLV(text).Count());
            if (r > 0)
                return false;
            return true;
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            dt.ThuVien_Update(txtMaLV.Text, txtTenLV.Text);
            LoadData();
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            dt.ThuVien_Delete(txtMaLV.Text);
            LoadData();
        }
    }
}