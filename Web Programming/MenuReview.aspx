<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="MenuReview.aspx.cs" Inherits="Web_Programming.MenuReview" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Theme/ListRV.css" rel="stylesheet" />
    <div class="ListRv">
        <asp:Repeater ID="rpChiTiet" runat="server">
            <ItemTemplate>
                <ul>
                    <li class="hrefRv">
                        <div class="leftRv">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="#">
                            <asp:Image Height="149" Width="200" ID="Image" runat="server" ImageUrl='<%# string.Format("~/{0}",Eval("HinhRv"))%>' />
                            </asp:HyperLink>
                        </div>
                        <div class="rightRv">
                            <a href ="ChiTietReview.aspx?masach=<%# Eval("MaSach") %>"><%# Eval("TenSach") %></a>
                            <p><%# Eval("MoTa") %></p>
                        </div>
                    </li>
                </ul>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
