USE ChinhChienVPS
GO

create proc CreateAccount
@tentaikhoan char(10),
@matkhau varchar(10),
@loaitaikhoan nvarchar(10),
@uimode int
AS
BEGIN
INSERT INTO ChinhChienVPS.dbo.TaiKhoan VALUES
(@tentaikhoan, @matkhau, @loaitaikhoan, @uimode)
END
