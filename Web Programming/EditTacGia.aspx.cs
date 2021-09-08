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

namespace Web_Programming.EditData
{
    public partial class TacGia : System.Web.UI.Page
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
                cmd.CommandText = "TacGia_SelectAll";
                cmd.Connection = cnn;
                cnn.Open();
                dgvTG.DataSourceID = null;
                dgvTG.DataSource = cmd.ExecuteReader();
                dgvTG.DataBind();
                cnn.Close();
        }

        protected void dgvTG_SelectedIndexChanged(object sender, EventArgs e)
        {
            int i;
            i = dgvTG.SelectedIndex;
            txtMaTG.Text = dgvTG.Rows[i].Cells[0].Text.ToString();
            txtTenTG.Text = dgvTG.Rows[i].Cells[2].Text.ToString();
            txtNoiDung.Text = dgvTG.Rows[i].Cells[4].Text.ToString();
            txtNamSinh.Text = dgvTG.Rows[i].Cells[3].Text.ToString();
        }


        protected void btnThem_Click(object sender, EventArgs e)
        {
            if (checkTG(txtMaTG.Text) == true)
            {
                string filename = Path.GetFileName(fileupload.PostedFile.FileName);
                fileupload.SaveAs(Server.MapPath("~/Images/" + filename));
                dt.TacGia_Insert(txtMaTG.Text, txtTenTG.Text, txtNoiDung.Text,"Images/"+filename,txtNamSinh.Text);
                LoadData();
            }else{
                Response.Write("<script LANGUAGE='JavaScript' >alert('Mã tác giả bị trùng! Mời nhập lại')</script>");
                txtMaTG.Focus();
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
                string filename = Path.GetFileName(fileupload.PostedFile.FileName);
                fileupload.SaveAs(Server.MapPath("~/Images/" + filename));
                dt.TacGia_Update(txtMaTG.Text, txtTenTG.Text, txtNoiDung.Text, "Images/" + filename, txtNamSinh.Text);
                LoadData();
        }

        private bool checkTG(string text)
        {

            int r = (dt.TacGia_SelectMaTG(text).Count());
            if (r > 0)
                return false;
            return true;
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            dt.TacGia_Delete(txtMaTG.Text);
            LoadData();
        }


    }
}