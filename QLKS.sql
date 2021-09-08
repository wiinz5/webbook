Create database QLKS

create table ThuVien(
	LinhVuc nvarchar(50),
	MaLV nvarchar(50) primary key
)

create table TheLoai(
	TenLoai nvarchar(50),
	MaLoai nvarchar(50) primary key,
)

create table TacGia(
	MaTG nvarchar(50) primary key,
	TenTG nvarchar(50),
	NoiDung nvarchar(max),
	NamSinh nvarchar(50),
	HinhAnh nvarchar(50)
)

create table TacPham(
	MaTP nvarchar(50) primary key,
	TenTP nvarchar(50),
	MaTG nvarchar(50),
	NoiDungTP nvarchar(max),
	MaLV nvarchar(50),
	NamSX nvarchar(50),
	HinhTP nvarchar(50),
	foreign key(MaTG) references TacGia(MaTG),
	foreign key(MaLV) references ThuVien(MaLV)
)

create table DangNhap(
	UserName nvarchar(50) primary key,
	PassWord nvarchar(50),
	Email nvarchar(50),
	HoTen nvarchar(50)
)

create table Review(
	MaSach nvarchar(50) primary key,
	TenSach nvarchar(50),
	MaLoai nvarchar(50),
	NoiDungRv nvarchar(max),
	HinhRv nvarchar(50),
	MoTa nvarchar(max),
	foreign key(MaLoai) references TheLoai(MaLoai)
)

--Kiểm tra đăng nhập.
create Proc DangNhap_Check(
	@uname nvarchar(50),
	@pass nvarchar(50)
)
as 
begin
	Select * from DangNhap where UserName = @uname and PassWord = @pass
end
--
create Proc DangNhap_Exist(
	@uname nvarchar(50)
)
as 
begin
	Select * from DangNhap where UserName = @uname 
end

--Đăng ký thành viên.
Create Proc DangNhap_Insert(
	@uname nvarchar(50),
	@pass nvarchar(50),
	@hoten nvarchar(50),
	@email nvarchar(50)
)
as 
begin
	Insert into DangNhap(UserName,PassWord,HoTen,Email) values (@uname,@pass,@hoten,@email)
end

--Thư Viện
Create Proc ThuVien_SelectAll
as 
begin
	select * from ThuVien 
end
--
Create Proc ThuVien_SelectMaLV
(
	@MaLV nvarchar(50)
)
as 
begin
	select * from ThuVien where MaLV = @MaLV
end
--
Create Proc ThuVien_Insert(
	@MaLV nvarchar(50),
	@LinhVuc nvarchar(50)
)
as 
begin
	Insert into ThuVien(MaLV,LinhVuc) values (@MaLV,@LinhVuc) 
end
--
Create Proc ThuVien_Delete(
	@MaLV nvarchar(50)
)
as 
begin
	Delete from ThuVien Where MaLV =@MaLV 
end
--
create Proc ThuVien_Update(
	@MaLV nvarchar(50),
	@LinhVuc nvarchar(50)
)
as 
begin
	Update ThuVien set LinhVuc = @LinhVuc where MaLV =@MaLV
end
--
create Proc ThuVien_SelectRanDom
as 
begin
	select top 4 * from ThuVien tablesample (4 rows) 
end
--
Create Proc ThuVien_SelectTPLV
(
	@MaLV nvarchar(50)
)
as 
begin
	select * from ThuVien,TacGia,TacPham where ThuVien.MaLV = @MaLV and TacPham.MaTG =TacGia.MaTG and ThuVien.MaLV =TacPham.MaLV
end
--Tác giả
create Proc TacGia_Insert(
	@MaTG nvarchar(50),
	@TenTG nvarchar(50),
	@NoiDung nvarchar(max),
	@HinhAnh nvarchar(50),
	@NamSinh nvarchar(50)
)
as 
begin
	Insert into TacGia(TenTG,MaTG,NoiDung,HinhAnh,NamSinh) values (@TenTG,@MaTG,@NoiDung,@HinhAnh,@NamSinh)
end
--
Create Proc TacGia_SelNamePic
as 
begin
	select TenTG,HinhAnh,NamSinh,MaTG from TacGia
end
--
Create Proc TacGia_SelectAll
as 
begin
	select * from TacGia
end
--
create Proc TacGia_Update(
	@MaTG nvarchar(50),
	@TenTG nvarchar(50),
	@NoiDung nvarchar(max),
	@HinhAnh nvarchar(50),
	@NamSinh nvarchar(50)
)
as 
begin
	Update TacGia set TenTG = @TenTG, NoiDung = @NoiDung, HinhAnh = @HinhAnh, NamSinh=@NamSinh where MaTG =@MaTG
end
--
Create Proc TacGia_Delete(
	@MaTG nvarchar(50)
)
as 
begin
	Delete from TacGia where MaTG = @MaTG
end
--
Create Proc TacGia_SelectMaTG(
	@MaTG nvarchar(50)
)
as 
begin
	select * from TacGia where MaTG = @MaTG
end
--
create Proc TacGia_SelectRanDom
as 
begin
	select top 5 * from TacGia 
end
--Tác Phẩm
Create Proc TacPham_SelNamePic
as 
begin
	select MaTP,TenTP,HinhTP,TenTG,TacGia.MaTG,NamSX from TacGia,TacPham where TacPham.MaTG =TacGia.MaTG and [Status] = 1
end
--
Create Proc TacPham_SelectAll
as 
begin
	select * from TacPham where [Status] = 1
end
--
create Proc TacPham_Update(
	@MaTP nvarchar(50),
	@TenTP nvarchar(50),
	@MaTG nvarchar(50),
	@MaLV nvarchar(50),
	@NamSX nvarchar(50),
	@NoiDungTP nvarchar(max),
	@HinhTP nvarchar(50)
)
as 
begin
	Update TacPham set TenTP =@TenTP,MaTG = @MaTG,MaLV = @MaLV,NamSX = @NamSX, NoiDungTP = @NoiDungTP, HinhTP=@HinhTP where MaTP =@MaTP
end
--
create Proc TacPham_Insert(
	@MaTP nvarchar(50),
	@TenTP nvarchar(50),
	@MaTG nvarchar(50),
	@MaLV nvarchar(50),
	@NamSX nvarchar(50),
	@NoiDungTP nvarchar(max),
	@HinhTP nvarchar(50)
)
as 
begin
	Insert into TacPham(TenTP,MaTP,MaTG,MaLV,NamSX,NoiDungTP,HinhTP) values (@TenTP,@MaTP,@MaTG,@MaLV,@NamSX,@NoiDungTP,@HinhTP)
end
--
Create Proc TacPham_Delete(
	@MaTP nvarchar(50)
)
as 
begin
	Update dbo.TacPham set [Status] = 0 from TacPham where MaTP = @MaTP
end
--
Create Proc TacGia_SelectMaTP(
	@MaTP nvarchar(50)
)
as 
begin
	select * from TacPham,TacGia where MaTP = @MaTP and TacPham.MaTG =TacGia.MaTG
end
--
Create Proc TacPham_SelectTP(
	@MaTG nvarchar(50)
)
as 
begin
	select TenTP,MaTP from TacPham,TacGia where TacGia.MaTG = @MaTG and TacPham.MaTG =TacGia.MaTG
end
--
create Proc TacPham_SelectMaTP(
	@MaTP nvarchar(50)
)
as 
begin
	select * from TacPham,TacGia where MaTP = @MaTP and TacPham.MaTG =TacGia.MaTG
end
--
create Proc TacPham_SelectRanDom(
	@MaTP nvarchar(50)
)
as 
begin
	select top 5 * from TacPham,TacGia  where TacPham.MaTG =TacGia.MaTG
end
--Thể Loại
Create Proc TheLoai_SelectAll
as 
begin
	select * from TheLoai
end
--
Create Proc TheLoai_Insert(
	@MaLoai nvarchar(50),
	@TenLoai nvarchar(50)
)
as 
begin
	Insert into TheLoai(MaLoai,TenLoai) values (@MaLoai,@MaLoai) 
end
--
Create Proc TheLoai_Delete(
	@MaTL nvarchar(50)
)
as 
begin
	Delete from TheLoai where MaLoai = @MaTL
end
--
Create Proc TheLoai_SelectMaTL(
	@MaTL nvarchar(50)
)
as 
begin
	select * from TheLoai where MaLoai = @MaTL
end
--
create Proc TheLoai_Update(
	@MaTL nvarchar(50),
	@TenTL nvarchar(50)
)
as 
begin
	Update TheLoai set TenLoai = @TenTL where MaLoai =@MaTL
end
--
Create Proc TheLoai_SelectSTL
(
	@MaLoai nvarchar(50)
)
as 
begin
	select * from Review,TheLoai where Review.MaLoai = TheLoai.MaLoai and TheLoai.MaLoai = @MaLoai
end
-- Review
Create Proc Review_SelectAll
as 
begin
	select * from Review
end
--
Create Proc Review_Delete(
	@MaSach nvarchar(50)
)
as 
begin
	Delete from Review where MaSach = @MaSach
end
--
create Proc Review_Insert(
	@MaSach nvarchar(50),
	@TenSach nvarchar(50),
	@Maloai nvarchar(50),
	@MoTa nvarchar(max),
	@NoiDungRv nvarchar(max),
	@HinhRv nvarchar(50)
)
as 
begin
	Insert into Review(MaSach,TenSach,MaLoai,MoTa,NoiDungRv,HinhRv) values (@MaSach,@TenSach,@MaLoai,@MoTa,@NoiDungRv,@HinhRv)
end
--
create Proc Review_Update(
	@MaSach nvarchar(50),
	@TenSach nvarchar(50),
	@Maloai nvarchar(50),
	@MoTa nvarchar(max),
	@NoiDungRv nvarchar(max),
	@HinhRv nvarchar(50)
)
as 
begin
	Update Review set TenSach = @TenSach,MaLoai = @MaLoai, MoTa = @MoTa, NoiDungRv = @NoiDungRv, HinhRv=@HinhRv where MaSach =@MaSach
end
--
Create Proc Review_SelNamePic
as 
begin
	select MaSach,TenSach,HinhRv,MoTa from Review 
end
--
create Proc Review_SelectRanDom(
	@MaSach nvarchar(50)
)
as 
begin
	select top 5 * from Review ORDER BY NEWID() 
end
--
create Proc Review_SelectMaTP(
	@MaSach nvarchar(50)
)
as 
begin
	select * from Review where MaSach =@MaSach
end

alter table dbo.TacPham add [Status] [bit] NULL CONSTRAINT [DF_Diem_Status]  DEFAULT ((1))