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
    public partial class EditTacPham : System.Web.UI.Page
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
        cmd.CommandText = "TacPham_SelectAll";
        cmd.Connection = cnn;
        cnn.Open();
        dgvTP.DataSourceID = null;
        dgvTP.DataSource = cmd.ExecuteReader();
        dgvTP.DataBind();
        cnn.Close();
        }

    protected void dgvTG_SelectedIndexChanged(object sender, EventArgs e)
    {
        int i;
        i = dgvTP.SelectedIndex;
        txtMaTP.Text = dgvTP.Rows[i].Cells[0].Text.ToString();
        drpMaLV.Text = dgvTP.Rows[i].Cells[2].Text.ToString();
        drpMaTG.Text = dgvTP.Rows[i].Cells[3].Text.ToString();
        txtTenTP.Text = dgvTP.Rows[i].Cells[4].Text.ToString();
        txtNoiDung.Text = dgvTP.Rows[i].Cells[6].Text.ToString();
        txtNamSX.Text = dgvTP.Rows[i].Cells[5].Text.ToString();
    }

    protected void btnThem_Click(object sender, EventArgs e)
    {
            if (checkTP(txtMaTP.Text) == true)
            {
                string filename = Path.GetFileName(fileupload.PostedFile.FileName);
                fileupload.SaveAs(Server.MapPath("~/Images/" + filename));
                dt.TacPham_Insert(txtMaTP.Text, txtTenTP.Text, drpMaTG.Text, drpMaLV.Text, txtNamSX.Text, txtNoiDung.Text, "Images/" + filename);
                LoadData();
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Mã tác phẩm bị trùng! Mời nhập lại')</script>");
                txtMaTP.Focus();
            }
        }
        private bool checkTP(string text)
        {

            int r = (dt.TacPham_SelectMaTP(text).Count());
            if (r > 0)
                return false;
            return true;
        }

        protected void btnSua_Click(object sender, EventArgs e)
    {
            string filename = Path.GetFileName(fileupload.PostedFile.FileName);
            fileupload.SaveAs(Server.MapPath("~/Images/" + filename));
            dt.TacPham_Update(txtMaTP.Text, txtTenTP.Text, drpMaTG.Text, drpMaLV.Text, txtNamSX.Text, txtNoiDung.Text, "Images/" + filename);
            LoadData();
    }

    protected void btnXoa_Click(object sender, EventArgs e)
    {
        dt.TacPham_Delete(txtMaTP.Text);
        LoadData();
    }
    }
}