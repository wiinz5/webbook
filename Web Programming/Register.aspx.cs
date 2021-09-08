using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace Web_Programming
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        DataClassesDataContext dt = new DataClassesDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtUsername.Text))
            {
                lblTB.Text="Tên đăng nhập không được rỗng !";
                txtUsername.Focus();
            }
            else
            {
                var dl = dt.DangNhap_Exist(txtUsername.Text);
                int kt = dl.Count();
                if (kt > 0)
                {
                    lblTB.Text = "Tài khoản đã tồn tại !";
                }
                else
                {
                    if (string.IsNullOrWhiteSpace(txtPassword.Text))
                    {
                        lblTB.Text = "Mật khẩu không được rỗng !";
                        txtPassword.Focus();
                    }
                    else
                    {
                        if (string.IsNullOrWhiteSpace(txtRePassword.Text))
                        {
                            lblTB.Text = "Mật khẩu nhập lại không được rỗng !";
                            txtRePassword.Focus();
                        }
                        else
                        {
                            if (txtPassword.Text != txtRePassword.Text)
                            {
                                lblTB.Text = "Mật khẩu nhập lại không khớp !";
                                txtRePassword.Focus();
                            }
                            else
                            {
                                if (string.IsNullOrWhiteSpace(txtName.Text))
                                {
                                    lblTB.Text = "Họ tên không được rỗng !";
                                    txtName.Focus();
                                }
                                else
                                {
                                    if (isEmail(txtMail.Text) == false)
                                    {
                                        lblTB.Text = "Mail không hợp lệ !";
                                    }
                                    else
                                    {
                                        lblTB.Text = "Đăng ký thành công !";
                                        dt.DangNhap_Insert(txtUsername.Text, txtPassword.Text, txtName.Text, txtMail.Text);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        public static bool isEmail(string inputEmail)
        {
            inputEmail = inputEmail ?? string.Empty;
            string strRegex = @"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}" +
                  @"\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\" +
                  @".)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$";
            Regex re = new Regex(strRegex);
            if (re.IsMatch(inputEmail))
                return (true);
            else
                return (false);
        }
    }
}