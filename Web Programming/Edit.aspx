<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Web_Programming.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" BackColor="White" BorderColor="#0066FF" Font-Bold="True" Font-Size="20pt" ForeColor="Black" Height="32px" Text="Chỉnh sửa thông tin website" Width="422px" style="margin-left: 437px"></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" BackColor="#FFCC00" BorderColor="#FFCC00" Font-Bold="True" Height="41px" OnClick="Button1_Click" Text="Tác giả" Width="221px" style="margin-left: 400px" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" BackColor="#FFCC00" BorderColor="#FFCC00" Font-Bold="True" Height="41px" OnClick="Button2_Click" Text="Thể loại" Width="221px" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" BackColor="#FFCC00" BorderColor="#FFCC00" Font-Bold="True" Height="41px" OnClick="Button3_Click" Text="Thư Viện" Width="221px" />
    <br />
    <br />
    <asp:Button ID="Button4" runat="server" BackColor="#FFCC00" BorderColor="#FFCC00" Font-Bold="True" Height="41px" OnClick="Button4_Click" Text="Review" Width="221px" style="margin-left: 400px" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button5" runat="server" BackColor="#FFCC00" BorderColor="#FFCC00" Font-Bold="True" Height="41px" OnClick="Button5_Click" Text="Tác phẩm" Width="221px" />
    <br />
    <br />
    <br />
    <br />
    <br />
    </asp:Content>
