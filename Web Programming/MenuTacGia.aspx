﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="MenuTacGia.aspx.cs" Inherits="Web_Programming.MainTacGia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Theme/List.css" rel="stylesheet" />
    <div class="List">
        <asp:Repeater ID="rpChiTiet" runat="server">
            <ItemTemplate>
                <ul>
                    <li class="href">
                        <div class="left">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="#">
                            <asp:Image Height="140" Width="110" ID="Image" runat="server" ImageUrl='<%# string.Format("~/{0}",Eval("HinhAnh"))%>' />
                            </asp:HyperLink>
                        </div>
                        <div class="right">
                            <a href ="ChiTietTG.aspx?matg=<%# Eval("MaTG") %>"><%# Eval("TenTG") %></a>
                            <p>&ensp;<%# Eval("NamSinh") %></p>
                        </div>
                    </li>
                </ul>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
