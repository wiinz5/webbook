<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="EditReview.aspx.cs" Inherits="Web_Programming.EditReview" %>
<%@ Register assembly="CKEditor.NET" namespace="CKEditor.NET" tagprefix="CKEditor" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <link href="Theme/Default.css" rel="stylesheet" />
    <asp:Label ID="Label1" runat="server" BackColor="#FFCC00" BorderColor="#0066FF" Font-Bold="True" Font-Size="20pt" ForeColor="Black" Height="32px" Text="Chỉnh sửa Review" Width="100%" style="text-align:center"></asp:Label>
    <br />
    <br />
    <div id=div1 style="overflow:scroll;height:738px; width:100%">
        <asp:GridView ID="dgvRV" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="#FFCC00" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="MaSach" DataSourceID="SqlDataSource1" Font-Bold="False" 
        Font-Italic="False" Font-Overline="False" Font-Size="14pt" ForeColor="Black" style="margin-left: 0px" Width="1482px" OnSelectedIndexChanged="dgvTG_SelectedIndexChanged" CellSpacing="3" HorizontalAlign="Center" PageIndex="2">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="MaSach" HeaderText="Mã sách" ReadOnly="True" SortExpression="MaSach">
                <ItemStyle Width="50px" />
                </asp:BoundField>
                <asp:BoundField DataField="TenSach" HeaderText="Tên sách" SortExpression="TenSach" HtmlEncode="False" HtmlEncodeFormatString="False">
                <ItemStyle Width="50px" />
                </asp:BoundField>
                <asp:BoundField DataField="MaLoai" HeaderText="Mã loại" SortExpression="MaLoai">
                <ItemStyle Width="50px" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="HinhRv" HeaderText="Hình">
                    <ItemStyle Width="200px" />
                </asp:ImageField>
                <asp:BoundField DataField="MoTa" HeaderText="Mô tả" HtmlEncode="False" HtmlEncodeFormatString="False" SortExpression="MoTa"></asp:BoundField>
                <asp:BoundField DataField="NoiDungRv" HeaderText="Nội dung" SortExpression="NoiDungRv" HtmlEncode="False" HtmlEncodeFormatString="False"></asp:BoundField>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLKSConnectionString %>" SelectCommand="SELECT * FROM [Review]"></asp:SqlDataSource>
    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QLKSConnectionString %>" SelectCommand="SELECT [MaLoai], [TenLoai] FROM [TheLoai]"></asp:SqlDataSource>
    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:Label ID="Label2" runat="server" ForeColor="Black" style="margin-left: 170px" Text="Mã sách:" Width="116px" Font-Bold="True" Font-Size="15pt"></asp:Label>
    <asp:TextBox ID="txtMaSach" runat="server"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" ForeColor="Black" style="margin-left: 80px" Text="Tên sách:" Width="128px" Font-Bold="True" Font-Size="15pt"></asp:Label>
    <asp:TextBox ID="txtTenSach" runat="server" style="margin-left: 0px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label9" runat="server" ForeColor="Black" style="margin-left: 3px" Text="Mã loại:" Width="106px" Font-Bold="True" Font-Size="15pt"></asp:Label>
    <asp:DropDownList ID="drpMaLoai" runat="server" DataSourceID="SqlDataSource2" DataTextField="TenLoai" DataValueField="MaLoai" Height="25px" style="margin-left: 0px" Width="168px">
    </asp:DropDownList>
    <br />
    <br />
    <asp:FileUpload ID="fileupload" runat="server" ForeColor="Black" style="margin-left: 561px" />
    <br />
    <br />
    <asp:Label ID="Label10" runat="server" ForeColor="Black" style="margin-left: 600px" Text="Mô tả" Width="128px" Font-Bold="True" Font-Size="15pt"></asp:Label>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtMoTa" runat="server" style="margin-left: 0px" Height="20px" Width="519px"></asp:TextBox>
    <br />
    <br />
    <br />&nbsp;
    <asp:Label ID="Label6" runat="server" ForeColor="Black" style="margin-left: 593px" Text="Nội dung tác phẩm" Width="211px" Font-Bold="True" Font-Size="15pt"></asp:Label>
    <br />
    <br />
    <CKEditor:CKEditorControl ID ="txtNoiDung" runat="server" Height="502px"></CKEditor:CKEditorControl>
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
