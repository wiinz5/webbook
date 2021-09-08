<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="EditTacGia.aspx.cs" Inherits="Web_Programming.EditData.TacGia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <link href="Theme/Default.css" rel="stylesheet" />
    <asp:Label ID="Label1" runat="server" BackColor="#FFCC00" BorderColor="#0066FF" Font-Bold="True" Font-Size="20pt" ForeColor="Black" Height="32px" Text="Chỉnh sửa tác giả" Width="100%" style="text-align:center"></asp:Label>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLKSConnectionString %>" SelectCommand="SELECT [MaTG], [TenTG], [NoiDung], [HinhAnh], [NamSinh] FROM [TacGia]"></asp:SqlDataSource>
    <div id=div1 style="overflow:scroll;height:737px; width:100%">
    <asp:GridView ID="dgvTG" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="#FFCC00" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="MaTG" DataSourceID="SqlDataSource1" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="14pt" ForeColor="Black" style="margin-left: 0px" Width="100%" OnSelectedIndexChanged="dgvTG_SelectedIndexChanged" CellSpacing="3" HorizontalAlign="Center" PageIndex="2">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="MaTG" HeaderText="Mã Tác Giả" ReadOnly="True" SortExpression="MaTG" />
            <asp:ImageField DataImageUrlField="HinhAnh" HeaderText="Hình Ảnh">
            </asp:ImageField>
            <asp:BoundField DataField="TenTG" HeaderText="Tên Tác Giả" SortExpression="TenTG" HtmlEncode="False" HtmlEncodeFormatString="False" />
            <asp:BoundField DataField="NamSinh" HeaderText="Năm Sinh" SortExpression="NamSinh" />
            <asp:BoundField DataField="NoiDung" HeaderText="Nội Dung" HtmlEncode="False" HtmlEncodeFormatString="False" SortExpression="NoiDung">
            </asp:BoundField>
            <asp:CommandField ButtonType="Button" SelectText="Chọn" ShowSelectButton="True" />
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
</div>
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
    <asp:FileUpload ID="fileupload" ForeColor="Black" runat="server" />
<asp:Label ID="Label2" runat="server" ForeColor="Black" style="margin-left: 57px" Text="Mã tác giả:" Width="125px" Font-Bold="True" Font-Size="15pt"></asp:Label>
<asp:TextBox ID="txtMaTG" runat="server"></asp:TextBox>
<asp:Label ID="Label3" runat="server" ForeColor="Black" style="margin-left: 65px" Text="Tên tác giả:" Width="128px" Font-Bold="True" Font-Size="15pt"></asp:Label>
<asp:TextBox ID="txtTenTG" runat="server"></asp:TextBox>
<asp:Label ID="Label7" runat="server" ForeColor="Black" style="margin-left: 65px" Text="Năm sinh:" Width="128px" Font-Bold="True" Font-Size="15pt"></asp:Label>
<asp:TextBox ID="txtNamSinh" runat="server"></asp:TextBox>
<br />
    <br />
    &nbsp;
<asp:Label ID="Label6" runat="server" ForeColor="Black" style="margin-left: 623px" Text="Nội dung tác giả" Width="190px" Font-Bold="True" Font-Size="15pt"></asp:Label>
    <br />
    <br />
<CKEditor:CKEditorControl ID="txtNoiDung" runat="server" Height="502px" style="width:100%"></CKEditor:CKEditorControl>
&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnThem" runat="server" style="margin-left: 0px" Text="Thêm" Width="115px" OnClick="btnThem_Click" BackColor="#EEB422" Height="43px" />
&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnSua" runat="server" Text="Sửa" Width="115px" OnClick="btnSua_Click" BackColor="#EEB422" Height="43px" />
&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnXoa" runat="server" Text="Xóa" Width="115px" OnClick="btnXoa_Click" BackColor="#EEB422" Height="43px" />
<br />
    <br />
    
</asp:Content>
