<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="ChiTietTG.aspx.cs" Inherits="Web_Programming.ChiTiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Content">
        <link href="Theme/Detail.css" rel="stylesheet" />
        <asp:Repeater ID="rpChiTiet" runat="server">
            <ItemTemplate>
                <div class="Profile">
                    <div class="left">
                        <asp:HyperLink ID="hpl" runat="server">
                                <asp:Image Height="170" Width="140" ID="Image" runat="server" ImageUrl='<%# string.Format("~/{0}",Eval("HinhAnh"))%>' />
                        </asp:HyperLink>
                    </div>
                    <div class="right">
                        <a href ="ChiTietTG.aspx?matg=<%# Eval("MaTG") %>"><%# Eval("TenTG") %></a>
                    </div>
                </div>
                <p1><%# Eval("NoiDung") %></p1>
            </ItemTemplate>
        </asp:Repeater>
        <br />
        <p2> Các tác phẩm: </p2>
        <ul id="List">
            <asp:Repeater ID="rpList" runat="server">
                <ItemTemplate>
                    <li>
                        <a href ="ChiTietTP.aspx?matp=<%# Eval("MaTP") %>"><%# Eval("TenTP") %></a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
</asp:Content>

