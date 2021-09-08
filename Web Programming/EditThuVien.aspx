<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="EditThuVien.aspx.cs" Inherits="Web_Programming.EditThuVien" %>
<%@ Register assembly="CKEditor.NET" namespace="CKEditor.NET" tagprefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <link href="Theme/Default.css" rel="stylesheet" />
    <asp:Label ID="Label1" runat="server" BackColor="#FFCC00" BorderColor="#0066FF" Font-Bold="True" Font-Size="20pt" ForeColor="Black" Height="32px" Text="Chỉnh sửa thư viện" Width="100%" style="text-align:center"></asp:Label>
    <br />
    <br />
    <div id=div1 style="overflow:scroll;height:338px; width:100%">
    <asp:GridView ID="dgvTV" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="#FFCC00" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="MaLV" DataSourceID="SqlDataSource2" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="14pt" ForeColor="Black" style="margin-left: 0px" Width="1503px" OnSelectedIndexChanged="dgvTG_SelectedIndexChanged" CellSpacing="3" HorizontalAlign="Center" PageIndex="2">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="MaLV" HeaderText="Mã lĩnh vực" SortExpression="MaLV" >
            <ItemStyle Width="200px" />
            </asp:BoundField>
            <asp:BoundField DataField="LinhVuc" HeaderText="Tên lĩnh vực" SortExpression="LinhVuc" HtmlEncode="False" HtmlEncodeFormatString="False" >
            </asp:BoundField>
            <asp:CommandField ButtonType="Button" SelectText="Chọn" ShowSelectButton="True">
            <ItemStyle Width="200px" />
            </asp:CommandField>
        </Columns>
        <EmptyDataRowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="5px" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerSettings FirstPageText="" LastPageText="" NextPageText="" PreviousPageText="" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <RowStyle HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
</asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QLKSConnectionString %>" SelectCommand="SELECT [LinhVuc], [MaLV] FROM [ThuVien]"></asp:SqlDataSource>
    </div>
    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:Label ID="Label2" runat="server" ForeColor="Black" style="margin-left: 436px" Text="Mã lĩnh vực:" Width="140px" Font-Bold="True" Font-Size="15pt"></asp:Label>
    <asp:TextBox ID="txtMaLV" runat="server"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" ForeColor="Black" style="margin-left: 65px" Text="Tên lĩnh vực:" Width="147px" Font-Bold="True" Font-Size="15pt"></asp:Label>
    <asp:TextBox ID="txtTenLV" runat="server"></asp:TextBox>
    <br />
    <br />&nbsp;
    <br />
    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnThem" runat="server" style="margin-left: 0px" Text="Thêm" Width="115px" OnClick="btnThem_Click" BackColor="#EEB422" Height="43px" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnSua" runat="server" Text="Sửa" Width="115px" OnClick="btnSua_Click" BackColor="#EEB422" Height="43px" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnXoa" runat="server" Text="Xóa" Width="115px" OnClick="btnXoa_Click" BackColor="#EEB422" Height="43px" />
    <br />
    <br />
</asp:Content>
