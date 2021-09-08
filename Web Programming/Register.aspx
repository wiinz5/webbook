<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="~/Admin/Register.aspx.cs" Inherits="Web_Programming.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="Theme/Default.css" rel="stylesheet" />
        <div class="Login">
        <div>
            <h1 style="width: 356px; color:black; margin-left: 638px">Đăng ký thành viên</h1>
        </div>
        <div id="formlogin" style="margin-left: 120px">
            <br /><asp:Panel ID="Panel2" ForeColor="Black" runat="server" style="margin-left: 481px" Width="351px">
                    Tên đăng nhập:
                    <asp:TextBox ID="txtUsername" runat="server" style="margin-left: 26px" Width="176px"></asp:TextBox>
            </asp:Panel><br />
            <asp:Panel ID="Panel3" runat="server" ForeColor="Black" style="margin-left: 481px" Width="353px">
                    Mật khẩu:
                    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" style="margin-left: 60px" Width="176px"></asp:TextBox>
            </asp:Panel><br />
            <asp:Panel ID="Panel4" runat="server" ForeColor="Black" style="margin-left: 481px" Width="353px">
                    Nhập lại mật khẩu:
                    <asp:TextBox ID="txtRePassword" TextMode="Password" runat="server" style="margin-left: 3px" Width="176px"></asp:TextBox>
            </asp:Panel><br />
            <asp:Panel ID="Panel5" runat="server" ForeColor="Black" style="margin-left: 481px; margin-right: 2px" Width="351px">
                    Họ &amp; tên:
                    <asp:TextBox ID="txtName" runat="server" style="margin-left: 61px" Width="176px"></asp:TextBox>
            </asp:Panel><br />
            <asp:Panel ID="Panel6" runat="server" ForeColor="Black" style="margin-left: 481px; margin-right: 0px" Width="347px">
                    Email:
                    <asp:TextBox ID="txtMail" runat="server" style="margin-left: 82px" Width="176px"></asp:TextBox>
            </asp:Panel>
            <br />
        </div>
            <asp:Button ID="btnRegister" runat="server" Text="Đăng Ký" BackColor="#FFCC00" Font-Bold="True" Height="32px" OnClick="btnRegister_Click" Width="174px" UseSubmitBehavior="False" style="margin-left: 701px" />
            <br />
            <asp:Panel ID="Panel1" runat="server" style="text-align:center; margin-left: 672px; margin-top: 17px;" Width="224px">
                <asp:Label ID="lblTB" ForeColor="Black" runat="server"></asp:Label>
            </asp:Panel>
            <br />
        </div>
</asp:Content>
