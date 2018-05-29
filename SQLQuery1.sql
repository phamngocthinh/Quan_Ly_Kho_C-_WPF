CREATE DATABASE TAPHOA
GO
USE TAPHOA
GO
--=====================================================================================================
--=====================================================================================================
--===================================TẠO BẢNG==========================================================
--1
CREATE TABLE HANGHOA
(
	MaHH VARCHAR(6) NOT NULL PRIMARY KEY,
	TenHH NVARCHAR(30),

)
--2
CREATE TABLE KHACHHANG
(	
	MaKH VARCHAR(5) NOT NULL PRIMARY KEY, 
	TenKH NVARCHAR(30),
	SDT VARCHAR(12),
	DiaChi NVARCHAR(50),
	NgaySinh DATE,
)
--3
CREATE TABLE TONDAUKI
(
	MaHH VARCHAR(6) PRIMARY KEY,
	SLTon INT,
	GiaTien DECIMAL(10,3),
)
--4
CREATE TABLE PHIEUNHAPHANG
(
	MaKH VARCHAR(5),
	MaHH VARCHAR(6),
	SoChungTu VARCHAR(10) NOT NULL UNIQUE,
	NgayNhap DATE,
	SoLuong int,
	GiaTien DECIMAL(10,3),
	DienGiai NVARCHAR(50),
	PRIMARY KEY(MaKH,MaHH,SoChungTu),
)

--5
CREATE TABLE PHIEUXUATHANG
(
	MaKH VARCHAR(5),
	MaHH VARCHAR(6),
	SoChungTu VARCHAR(10) NOT NULL UNIQUE,
	NgayXuat DATE,
	SoLuong int,
	GiaTien DECIMAL(10,3),
	DienGiai NVARCHAR(50),
	PRIMARY KEY(MaKH,MaHH,SoChungTu),
)



----=====================================================================================================
--=======================================================================================================
--===================================TẠO KHÓA NGOẠI======================================================
--PHIẾU NHẬP HÀNG
ALTER TABLE dbo.PHIEUNHAPHANG ADD
CONSTRAINT FK_PHIEUNHAPHANG_HANGHOA FOREIGN KEY (MaHH) REFERENCES dbo.HANGHOA(MaHH)

ALTER TABLE dbo.PHIEUNHAPHANG ADD
CONSTRAINT FK_PHIEUNHAPHANG_KHACHHANG FOREIGN KEY (MaKH) REFERENCES dbo.KHACHHANG(MaKH)

--PHIẾU XUẤT HÀNG
ALTER TABLE dbo.PHIEUXUATHANG ADD
CONSTRAINT FK_PHIEUXUATHANG_KHACHHANG FOREIGN KEY (MaKH) REFERENCES dbo.KHACHHANG(MaKH)

ALTER TABLE dbo.PHIEUXUATHANG ADD
CONSTRAINT FK_PHIEUXUATHANG_HANGHOA FOREIGN KEY (MaHH) REFERENCES dbo.HANGHOA(MaHH)

-- TỒN ĐẦU KÌ
ALTER TABLE dbo.TONDAUKI ADD
CONSTRAINT FK_TONDAUKI_HANGHOA FOREIGN KEY (MaHH) REFERENCES dbo.HANGHOA(MaHH)

---DROP DATABASE TAPHOA

--=====================================================================================================
--=====================================================================================================
--===================================NHẬP DỮ LIỆU======================================================

--BẢNG KHÁCH HÀNG
INSERT INTO dbo.KHACHHANG
VALUES('KH001',N'Phạm Văn A','01633716500',N'Quận 1, TP. Hồ Chí Minh', '12/04/1997' )
INSERT INTO dbo.KHACHHANG
VALUES('KH002',N'Phạm Văn B','01633716501',N'Quận 10, TP. Hồ Chí Minh', '09/04/1996' )
INSERT INTO dbo.KHACHHANG
VALUES('KH003',N'Phạm Văn C','01633716502',N'Quận 9, TP. Hồ Chí Minh', '01/25/1998' )
INSERT INTO dbo.KHACHHANG
VALUES('KH004',N'Phạm Văn D','01633716503',N'Quận 12, TP. Hồ Chí Minh', '09/02/1999' )


--BẢNG HÀNG HÓA
INSERT INTO dbo.HANGHOA
VALUES('MHH112',N'Nước suối' )
INSERT INTO dbo.HANGHOA
VALUES('MHH113',N'Bia' )
INSERT INTO dbo.HANGHOA
VALUES('MHH114',N'Bánh quế' )
INSERT INTO dbo.HANGHOA
VALUES('MHH115',N'Dầu gội đầu' )
INSERT INTO dbo.HANGHOA
VALUES('MHH116',N'Dầu ăn' )


--BẢNG TỒN ĐẦU KÌ
INSERT INTO dbo.TONDAUKI
VALUES(  'MHH112', 12, 5000 )
INSERT INTO dbo.TONDAUKI
VALUES(   'MHH113', 20, 300000 )
INSERT INTO dbo.TONDAUKI
VALUES(   'MHH114', 7, 15000.500 )
INSERT INTO dbo.TONDAUKI
VALUES(   'MHH115', 12, 5000 )
INSERT INTO dbo.TONDAUKI
VALUES(   'MHH116', 9, 5000 )

--DROP TABLE dbo.TONDAUKI
--BẢNG PHIẾU NHẬP HÀNG
INSERT INTO dbo.PHIEUNHAPHANG
VALUES( 'KH001', 'MHH112','PN001/04','04/01/2018', 90, 1000000, N'Nhập lô hàng lễ' )
INSERT INTO dbo.PHIEUNHAPHANG
VALUES( 'KH002', 'MHH113','PN002/04','04/02/2018', 100, 2000000, N'Nhập lô hàng lễ' )
INSERT INTO dbo.PHIEUNHAPHANG
VALUES( 'KH003', 'MHH114','PN003/04','04/03/2018', 20, 3500000, N'Nhập lô hàng lễ' )
INSERT INTO dbo.PHIEUNHAPHANG
VALUES( 'KH004', 'MHH115','PN004/04','04/04/2018', 50, 5000000, N'Nhập lô hàng lễ' )





--BẢNG PHIẾU XUẤT HÀNG
INSERT INTO dbo.PHIEUXUATHANG
VALUES( 'KH001', 'MHH112','PX025/04','04/22/2018', 90, 2000000, N'Bán dịp lễ 30/4' )
INSERT INTO dbo.PHIEUXUATHANG
VALUES( 'KH001', 'MHH112','PX029/04','04/30/2018', 90, 2000000, N'Bán dịp lễ 30/4' )
INSERT INTO dbo.PHIEUXUATHANG 
VALUES( 'KH002', 'MHH113','PX026/04','04/23/2018', 100, 4000000, N'Bán dịp lễ 30/4' )
INSERT INTO dbo.PHIEUXUATHANG 
VALUES( 'KH003', 'MHH114','PX027/04','04/22/2018', 20, 6500000, N'Bán dịp lễ 30/4' )
INSERT INTO dbo.PHIEUXUATHANG
VALUES( 'KH004', 'MHH115','PX028/04','04/23/2018', 50, 7000000, N'Bán dịp lễ 30/4' )



--=====================================================================================================
--=====================================================================================================
--=========================================QUERY======================================================


--=====================================================================================================
--=====================================================================================================
--===================================STORED PROCEDURE==================================================
-- Thêm Khách Hàng
--CREATE PROCEDURE sp_ThemKhachHang @makh VARCHAR(5) ,@tenkh NVARCHAR(30),@sdt VARCHAR(12),@diachi NVARCHAR(50),@ngaysinh DATE
--	IF (EXISTS (SELECT * FROM dbo.KHACHHANG	WHERE MaKH = @makh))	
--		PRINT N'Mã khách hàng đã tồn tại! Vui lòng kiểm tra lại';
--	ELSE IF (EXISTS (SELECT * FROM dbo.KHACHHANG WHERE SDT = @sdt))
--		PRINT N'Số điện thoại đã tồn tại! Vui lòng kiểm tra lại';
--	ELSE
--		INSERT INTO KHACHHANG VALUES (@makh,@tenkh,@sdt,@diachi,@ngaysinh)
GO


--Bảng nhà cung cấp:
--tìm nhà cung cấp:
CREATE PROCEDURE sp_TimKiemNhaCungCapTheoTenNhaCungCap @tenncc NVARCHAR(30)
AS
	SELECT *
	FROM dbo.KHACHHANG
	WHERE dbo.KHACHHANG.TenKH = @tenncc
GO

EXEC dbo.sp_TimKiemNhaCungCapTheoTenNhaCungCap @tenncc = N'Phạm Văn A' -- nvarchar(30)

-------------------------------------------------------------------------------------------------
--Bảng Hàng Hóa:
CREATE PROCEDURE sp_TimKiemHangHoaTheoTenHH @tenhh NVARCHAR(30)
AS
	SELECT *
	FROM dbo.HANGHOA
	WHERE dbo.HANGHOA.TenHH = @tenhh
GO

EXEC sp_TimKiemHangHoaTheoTenHH @tenhh = N'Dầu gội đầu'

----------------------------------------------------------------------------------------------------
--Bảng Phiếu nhập hàng
--Tìm kiếm phiếu nhập hàng bằng số chứng từ
CREATE PROCEDURE sp_TimKiemPhieuNhapTheoSoChungTu @sochungtu VARCHAR(10)
AS
	
	SELECT * 
	FROM dbo.PHIEUNHAPHANG 
	WHERE dbo.PHIEUNHAPHANG.SoChungTu=@sochungtu
GO
--DROP PROCEDURE dbo.sp_TimKiemPhieuNhapTheoSoChungTu
EXEC sp_TimKiemPhieuNhapTheoSoChungTu @sochungtu = 'PN002/04' --xem lại kết chỗ from



-------------------------------------------------------------------------------------------------------------
--Bảng phiếu xuất hàng
--Tìm kiếm phiếu xuất hàng bằng số chứng từ
CREATE PROCEDURE sp_TimKiemPhieuXuatTheoSoChungTu @sochungtu VARCHAR(10)
AS
	
	SELECT * 
	FROM dbo.PHIEUXUATHANG 
	WHERE dbo.PHIEUXUATHANG.SoChungTu=@sochungtu
GO
--DROP PROCEDURE dbo.sp_TimKiemPhieuXuatTheoSoChungTu
EXEC sp_TimKiemPhieuXuatTheoSoChungTu @sochungtu = 'PX028/04' --xem lại kết chỗ from

----------------------------------------------------------------------------------------------------------
--Bảng kê nhập hàng
-- xuất bảng nhập hàng
CREATE PROCEDURE sp_XuatBangNhapHang @ngaynhaphang1 date,  @ngaynhaphang2 date
                 
AS
	SELECT * 
	FROM dbo.PHIEUNHAPHANG AS nh
	WHERE nh.NgayNhap BETWEEN @ngaynhaphang1 AND @ngaynhaphang2
GO
EXEC sp_XuatBangNhapHang '04/02/2018' ,  '04/05/2018'


----------------------------------------------------------------------------------------------------------
--Bảng kê xuất hàng
-- xuất bảng xuất hàng
CREATE PROCEDURE sp_XuatBangXuatHang @ngayxuathang1 date,  @ngayxuathang2 date
                 
AS
	SELECT * 
	FROM dbo.PHIEUXUATHANG AS xh
	WHERE xh.NgayXuat BETWEEN @ngayxuathang1 AND @ngayxuathang2
GO
EXEC sp_XuatBangXuatHang '04/20/2018' ,  '05/01/2018'


------------------------------------------------------------------------------------------------------------
--Số lượng tồn
CREATE PROCEDURE sp_TimSoLuongTonCuaHangHoa @mahh varchar(6)
AS
	SELECT *
	FROM dbo.TONDAUKI
	WHERE dbo.TONDAUKI.MaHH = @mahh
GO

EXEC sp_TimSoLuongTonCuaHangHoa 'MHH114'


-----
CREATE PROCEDURE sp_TimKiemSoLuongTonCuaHangHoaTheoTenHH @tenhh varchar(30)
AS
	SELECT t.MaHH,h.TenHH, t.SLTon, t.GiaTien
	FROM dbo.HANGHOA h, dbo.TONDAUKI t
	WHERE h.MaHH = t.MaHH AND h.TenHH = @tenhh
GO

EXEC sp_TimKiemSoLuongTonCuaHangHoaTheoTenHH 'Bia'
DROP PROCEDURE sp_TimKiemSoLuongTonCuaHangHoaTheoTenHH

-----xóa hàng hóa---
CREATE PROCEDURE sp_DeleteGoods @mahh varchar(6)
AS
	DELETE FROM dbo.TONDAUKI WHERE MaHH = @mahh
	DELETE FROM dbo.PHIEUNHAPHANG WHERE MaHH = @mahh
	DELETE FROM dbo.PHIEUXUATHANG WHERE MaHH = @mahh
	DELETE FROM dbo.HANGHOA WHERE MaHH = @mahh

	
GO 

EXEC sp_DeleteGoods @mahh ='123'



--DROP PROCEDURE sp_DeleteGoods

------thêm hàng hóa
CREATE PROCEDURE sp_AddGoods @mahh VARCHAR(6),@tenhh NVARCHAR(30)
AS 
	INSERT INTO dbo.HANGHOA
	VALUES(@mahh,@tenhh )
GO
EXEC sp_AddGoods @mahh = 'MHH114', @tenhh = N'Bánh quế'

--Thêm Nhà cung cấp
CREATE procedure sp_addCus @makh VARCHAR(5), @tenkh NVARCHAR(30),@sdt VARCHAR(12),@diachi NVARCHAR(50),@ngaysinh DATE
as 
	INSERT INTO dbo.KHACHHANG
	VALUES(@makh, @tenkh, @sdt, @diachi, @ngaysinh )
go

exec sp_addCus @makh ='KH005', @tenkh= N'Trương Thị Thùy Trang', @sdt='0935527480', @diachi=N'Tịnh Hòa, TP Quảng Ngãi', @ngaysinh ='12/04/1973' 

--xóa nhà cung cấp
create procedure sp_deleteCus @makh varchar(5)
as
	
	DELETE FROM dbo.PHIEUNHAPHANG WHERE MaKH = @makh
	DELETE FROM dbo.PHIEUXUATHANG WHERE MaKH = @makh
	DELETE FROM dbo.KHACHHANG WHERE MaKH = @makh
go
exec sp_deleteCus @makh = ''


--sửa nhà cung cấp
create procedure sp_updateCus @makh VARCHAR(5), @tenkh NVARCHAR(30),@sdt VARCHAR(12),@diachi NVARCHAR(50),@ngaysinh DATE
as
	update KHACHHANG
	set TenKH = @tenkh, SDT = @sdt, DiaChi = @diachi, NgaySinh = @ngaysinh
	where MaKH= @makh
go

exec sp_updateCus @makh='KH001', @tenkh =N'Phạm Ngọc Thịnh',@sdt ='01633716500' ,@diachi =N'78/9 An Dương Vương',@ngaysinh ='12/04/1997'




-------------------------------------------------------------------------------------------------------------------------
--Tìm kiếm phiếu nhập hàng theo mã khách hàng  và mã hàng hóa
CREATE PROCEDURE sp_TimKiemThongTinPhieuNhapHang @makh VARCHAR(5) ,@mahh VARCHAR(6)
AS
	SELECT * 
	FROM dbo.PHIEUNHAPHANG
	WHERE MaKH=@makh AND MaHH=@mahh
GO

EXEC dbo.sp_TimKiemThongTinPhieuNhapHang @makh = 'KH004', -- varchar(5)
                                         @mahh = 'MHH115'  -- varchar(6)
										 


--Tìm kiếm phiếu xuất hàng theo mã khách hàng và mã hàng hóa
CREATE PROCEDURE sp_TimKiemThongTinPhieuXuatHang @makh VARCHAR(5) ,@mahh VARCHAR(6)
AS
	SELECT * 
	FROM dbo.PHIEUXUATHANG
	WHERE MaKH=@makh AND MaHH=@mahh
GO

EXEC SP_TimKiemThongTinPhieuXuatHang @makh = 'KH004', -- varchar(5)
                                     @mahh = 'MHH115'  -- varchar(6)








--DROP PROCEDURE sp_XuatBangNhapHang




-----------------Xuất bảng xuất hàng nhập vào từ ngày đến ngày và mã hàng hóa
CREATE PROCEDURE sp_XuatBangXuatHangCoMaHH @ngayxuathang1 date,  @ngayxuathang2 date, @mahh varchar(6)
                 
AS
	SELECT * 
	FROM dbo.PHIEUXUATHANG AS xh
	WHERE xh.NgayXuat BETWEEN @ngayxuathang1 AND @ngayxuathang2 AND xh.MaHH=@mahh
GO
EXEC sp_XuatBangXuatHangCoMaHH '04/20/2018' ,  '05/01/2018', 'MHH112'

-----------------Xuất bảng nhập hàng nhập vào từ ngày đến ngày và mã hàng hóa
CREATE PROCEDURE sp_XuatBangNhapHangCoMaHH @ngaynhaphang1 date,  @ngaynhaphang2 date, @mahh varchar(6)
                 
AS
	SELECT * 
	FROM dbo.PHIEUNHAPHANG AS nh
	WHERE nh.NgayNhap BETWEEN @ngaynhaphang1 AND @ngaynhaphang2 AND nh.MaHH = @mahh
GO
EXEC sp_XuatBangNhapHangCoMaHH '04/02/2018' ,  '04/05/2018', 'MHH113'



---- Đăng nhập - đăng xuất
--CREATE PROCEDURE sp_DangNhap @id VARCHAR(20), @mk VARCHAR(20)
--AS
--	IF (EXISTS (SELECT * FROM KhachHang WHERE tenDangNhap = @id))
--	BEGIN
--		IF (EXISTS (SELECT * FROM KhachHang WHERE tenDangNhap = @id AND matKhau = @mk))
--		BEGIN
--			DECLARE @maKH VARCHAR(20) = (SELECT maKH FROM KhachHang WHERE tenDangNhap = @id AND matKhau = @mk);
--			DECLARE @hoTen NVARCHAR(30) = (SELECT hoTen FROM KhachHang WHERE maKH = @maKH);
--			PRINT(N'Xin chào khách hàng ' + @maKH + ' - '+ @hoTen);
--		END
--		ELSE
--			PRINT(N'Sai mật khẩu ! Vui lòng nhập lại')
--	END
--	ELSE
--		PRINT(N'Tên đăng nhập không tồn tại')
--GO




