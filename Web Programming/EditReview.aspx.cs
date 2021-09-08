using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Web_Programming
{
    public partial class EditReview : System.Web.UI.Page
    {
        DataClassesDataContext dt = new DataClassesDataContext();
        SqlConnection cnn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=QLKS;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }
        protected void LoadData()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "Review_SelectAll";
            cmd.Connection = cnn;
            cnn.Open();
            dgvRV.DataSourceID = null;
            dgvRV.DataSource = cmd.ExecuteReader();
            dgvRV.DataBind();
            cnn.Close();
        }

        protected void dgvTG_SelectedIndexChanged(object sender, EventArgs e)
        {
            int i;
            i = dgvRV.SelectedIndex;
            txtMaSach.Text = dgvRV.Rows[i].Cells[0].Text.ToString();
            txtTenSach.Text = dgvRV.Rows[i].Cells[1].Text.ToString();
            drpMaLoai.Text = dgvRV.Rows[i].Cells[2].Text.ToString();
            txtMoTa.Text = dgvRV.Rows[i].Cells[4].Text.ToString();
            txtNoiDung.Text = dgvRV.Rows[i].Cells[5].Text.ToString();
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            if (checkReview(txtMaSach.Text) == true)
            {
                string filename = Path.GetFileName(fileupload.PostedFile.FileName);
                fileupload.SaveAs(Server.MapPath("~/Images/" + filename));
                dt.Review_Insert(txtMaSach.Text, txtTenSach.Text, drpMaLoai.Text, txtMoTa.Text, txtNoiDung.Text, "Images/" + filename);
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Mã sách bị trùng! Mời nhập lại')</script>");
                txtMaSach.Focus();
            }
            LoadData();
        }
        private bool checkReview(string text)
        {

            int r = (dt.Review_SelectMaTP(text).Count());
            if (r > 0)
                return false;
            return true;
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            string filename = Path.GetFileName(fileupload.PostedFile.FileName);
            fileupload.SaveAs(Server.MapPath("~/Images/" + filename));
            dt.Review_Update(txtMaSach.Text, txtTenSach.Text, drpMaLoai.Text, txtMoTa.Text, txtNoiDung.Text, "Images/" + filename);
            LoadData();
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            dt.Review_Delete(txtMaSach.Text);
            LoadData();
        }
    }
}