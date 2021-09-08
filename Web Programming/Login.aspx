<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="~/Login.aspx.cs" Inherits="Web_Programming.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    #formlogin {
        width: 1507px;
        margin-left: 0px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Login">
        <div>
            <h1 style="width: 377px; color:black; margin-left: 585px">Đăng nhập hệ thống</h1>
        </div>
        <div id="formlogin">
            <br /><asp:Panel ID="Panel2" runat="server" ForeColor="Black" style="margin-left: 580px" Width="345px">
                    Tên đăng nhập:
                    <asp:TextBox ID="txtUsername" runat="server" style="margin-left: 26px" Width="178px"></asp:TextBox>
            </asp:Panel><br />
            <asp:Panel ID="Panel3" runat="server"  ForeColor="Black" style="margin-left: 580px" Width="353px">
                    Mật khẩu:
                    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" style="margin-left: 60px" Width="178px"></asp:TextBox>
            </asp:Panel><br />
            <asp:Panel ID="Panel4" runat="server" style="margin-left: 850px" Width="97px">
                <a href="Register.aspx">Đăng ký</a></asp:Panel>
            <br />
        </div>
        <div id="buttonlogin">
            <asp:Button ID="btnLogin" runat="server" Text="Đăng nhập" BackColor="#FFCC00" Font-Bold="True" Height="32px" OnClick="btnLogin_Click" Width="124px" UseSubmitBehavior="False" style="margin-left: 707px" />
        </div>
        <label>
            <asp:Label ID="lblTB" runat="server" Height="39px" ForeColor="Black" style="text-align: center; margin-left: 715px" Width="111px"></asp:Label>
        </label>
    </div>
</asp:Content>
