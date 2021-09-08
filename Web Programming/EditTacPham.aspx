<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="EditTacPham.aspx.cs" Inherits="Web_Programming.EditTacPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <link href="Theme/Default.css" rel="stylesheet" />
    <asp:Label ID="Label1" runat="server" BackColor="#FFCC00" BorderColor="#0066FF" Font-Bold="True" Font-Size="20pt" ForeColor="Black" Height="32px" Text="Chỉnh sửa tác phẩm" Width="100%" style="text-align:center"></asp:Label>
    <br />
    <br />
    <div id=div1 style="overflow:scroll;height:738px; width:100%">
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:QLKSConnectionString %>" SelectCommand="SELECT [MaTP], [TenTP], [MaTG], [NamSX], [NoiDung], [MaLV] FROM [TacPham]"></asp:SqlDataSource>
    <asp:GridView ID="dgvTP" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="#FFCC00" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="MaTP" DataSourceID="SqlDataSource3" Font-Bold="False" 
        Font-Italic="False" Font-Overline="False" Font-Size="14pt" ForeColor="Black" style="margin-left: 0px" Width="1482px" OnSelectedIndexChanged="dgvTG_SelectedIndexChanged" CellSpacing="3" HorizontalAlign="Center" PageIndex="2">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="MaTP" HeaderText="Mã tác phẩm" ReadOnly="True" SortExpression="MaTP">
            <ItemStyle Width="50px" />
            </asp:BoundField>
            <asp:ImageField DataImageUrlField="HinhTP" HeaderText="Hình ảnh">
                <ItemStyle Width="200px" />
            </asp:ImageField>
            <asp:BoundField DataField="MaLV" HeaderText="Mã lĩnh vực" SortExpression="MaLV">
            <ItemStyle Width="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="MaTG" HeaderText="Mã tác giả" SortExpression="MaTG">
            <ItemStyle Width="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="TenTP" HeaderText="Tên tác phẩm" SortExpression="TenTP" HtmlEncode="False" HtmlEncodeFormatString="False">
            <ItemStyle Width="60px" />
            </asp:BoundField>
            <asp:BoundField DataField="NamSX" HeaderText="Năm sản xuất" SortExpression="NamSX">
            <ItemStyle Width="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="NoiDungTP" HeaderText="Nội dung" HtmlEncode="False" HtmlEncodeFormatString="False" SortExpression="NoiDung" >
            </asp:BoundField>
            <asp:CommandField ButtonType="Button" SelectText="Chọn" ShowSelectButton="True">
            <ItemStyle Width="10px" />
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
    </div>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:QLKSConnectionString %>" SelectCommand="SELECT [MaLV], [LinhVuc] FROM [ThuVien]"></asp:SqlDataSource>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLKSConnectionString %>" SelectCommand="SELECT [MaTG], [TenTG] FROM [TacGia]"></asp:SqlDataSource>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:Label ID="Label2" runat="server" ForeColor="Black" style="margin-left: 119px" Text="Mã tác phẩm:" Width="156px" Font-Bold="True" Font-Size="15pt"></asp:Label>
    <asp:TextBox ID="txtMaTP" runat="server"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" ForeColor="Black" style="margin-left: 80px" Text="Tên tác giả:" Width="128px" Font-Bold="True" Font-Size="15pt"></asp:Label>
    &nbsp;&nbsp;<asp:DropDownList ID="drpMaTG" runat="server" DataSourceID="SqlDataSource1" DataTextField="TenTG" DataValueField="MaTG" Height="25px" style="margin-left: 29px" Width="168px">
    </asp:DropDownList>
    <asp:Label ID="Label9" runat="server" ForeColor="Black" style="margin-left: 97px" Text="Năm sản xuất:" Width="162px" Font-Bold="True" Font-Size="15pt"></asp:Label>
    <asp:TextBox ID="txtNamSX" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" ForeColor="Black" style="margin-left: 119px" Text="Tên lĩnh vực:" Width="157px" Font-Bold="True" Font-Size="15pt"></asp:Label>
    <asp:DropDownList ID="drpMaLV" runat="server" DataSourceID="SqlDataSource4" DataTextField="LinhVuc" DataValueField="MaLV" Height="25px" style="margin-left: 0px" Width="168px">
    </asp:DropDownList>
    <asp:Label ID="Label8" runat="server" ForeColor="Black" style="margin-left: 80px" Text="Tên tác phẩm:" Width="165px" Font-Bold="True" Font-Size="15pt"></asp:Label>
    <asp:TextBox ID="txtTenTP" runat="server"></asp:TextBox>
    <asp:FileUpload ID="fileupload" runat="server" ForeColor="Black" style="margin-left: 92px" />
    <br />
    <br />
    <br />&nbsp;
    <asp:Label ID="Label6" runat="server" ForeColor="Black" style="margin-left: 593px" Text="Nội dung tác phẩm" Width="211px" Font-Bold="True" Font-Size="15pt"></asp:Label>
    <br />
    <br />
    <CKEditor:CKEditorControl ID ="txtNoiDung" Height="502px" runat="server" ></CKEditor:CKEditorControl>
    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
