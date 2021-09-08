<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="ChiTietReview.aspx.cs" Inherits="Web_Programming.ChiTietReview" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Content">
        <link href="Theme/Detail.css" rel="stylesheet" />
        <asp:Repeater ID="rpChiTiet" runat="server">
            <ItemTemplate>
                <div class="Profile">
                    <div class="left">
                        <asp:HyperLink ID="hpl" runat="server">
                                <asp:Image Height="150" Width="200" ID="Image" runat="server" ImageUrl='<%# string.Format("~/{0}",Eval("HinhRv"))%>' />
                        </asp:HyperLink>
                    </div>
                    <div class="right">
                        <a href ="ChiTietReview.aspx?masach=<%# Eval("MaSach") %>"><%# Eval("TenSach") %></a>
                    </div>
                </div>
                <p1><%# Eval("NoiDungRv") %></p1>
            </ItemTemplate>
        </asp:Repeater>
        <br />
        <p2> Các tác phẩm khác: </p2>
        <ul id="List">
            <asp:Repeater ID="rpList" runat="server">
                <ItemTemplate>
                    <li>
                        <a href ="ChiTietReview.aspx?masach=<%# Eval("MaSach") %>"><%# Eval("TenSach") %></a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
</asp:Content>
