<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="ChiTietTP.aspx.cs" Inherits="Web_Programming.WebForm1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Theme/Detail.css" rel="stylesheet" />
    <div class="Content">
        <asp:Repeater ID="rpChiTiet" runat="server">
            <ItemTemplate>
                <div class="Profile">
                    <div class="left">
                        <asp:HyperLink ID="hpl" runat="server">
                                <asp:Image Height="170" Width="140" ID="Image" runat="server" ImageUrl='<%# string.Format("~/{0}",Eval("HinhTP"))%>' />
                        </asp:HyperLink>
                    </div>
                    <div class="right">
                        <a href ="ChiTietTP.aspx?matp=<%# Eval("MaTP") %>"><%# Eval("TenTP") %></a>
                        <p>&ensp;&ensp;&ensp;- xuất bản năm <%# Eval("NamSX") %> của <br /><br /> <a href ="ChiTietTG.aspx?matg=<%# Eval("MaTG") %>"><%# Eval("TenTG") %></a></p>
                    </div>
                </div>
                <p1><%# Eval("NoiDungTP") %></p1>
            </ItemTemplate>
        </asp:Repeater>
        <br />
        <p2> Các tác phẩm khác: </p2>
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
