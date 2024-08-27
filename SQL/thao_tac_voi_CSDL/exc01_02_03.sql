CREATE TABLE giao_vien (
    ma_gv CHAR(5) PRIMARY KEY,
    ho_ten_gv VARCHAR(255)
);

CREATE TABLE lop (
    ma_lop CHAR(5) PRIMARY KEY,
    ten_lop VARCHAR(255),
    ma_gvcn CHAR(5),
    nam_hoc VARCHAR(50),
    FOREIGN KEY (ma_gvcn) REFERENCES giao_vien(ma_gv)
);

CREATE TABLE hoc_sinh (
    ma_hs CHAR(5) PRIMARY KEY,
    ho_ten_hs VARCHAR(255),
    ho_ten_ph VARCHAR(255),
    gioi_tinh VARCHAR(10),
    dia_chi VARCHAR(255),
    ma_lop CHAR(5),
    FOREIGN KEY (ma_lop) REFERENCES lop(ma_lop)
);

CREATE TABLE mon_hoc (
    ma_mh CHAR(5) PRIMARY KEY,
    ten_mh VARCHAR(255)
);


CREATE TABLE ket_qua_hoc_tap (
    ma_hs CHAR(5),
    hoc_ky VARCHAR(10),
    ma_mh CHAR(5),
    diem_thi_giua_ky FLOAT,
    diem_thi_cuoi_ky FLOAT,
    ngay_gio_thi_cuoi_ky DATETIME,
    nam_hoc VARCHAR(255),
    PRIMARY KEY (ma_hs, hoc_ky, ma_mh),
    FOREIGN KEY (ma_hs) REFERENCES hoc_sinh(ma_hs),
    FOREIGN KEY (ma_mh) REFERENCES mon_hoc(ma_mh)
);

CREATE TABLE phu_trach_bo_mon (
    ma_gvpt CHAR(5),
    ma_lop CHAR(5),
    ma_mh CHAR(5),
    hoc_ky VARCHAR(10),
    PRIMARY KEY (ma_gvpt, ma_lop, ma_mh, hoc_ky),
    FOREIGN KEY (ma_gvpt) REFERENCES giao_vien(ma_gv),
    FOREIGN KEY (ma_lop) REFERENCES lop(ma_lop),
    FOREIGN KEY (ma_mh) REFERENCES mon_hoc(ma_mh)
);


--

INSERT INTO giao_vien (ma_gv, ho_ten_gv) VALUES
('GV001', 'Nguyễn Kim Oanh'),
('GV002', 'Trần Thị Tươi'),
('GV003', 'Lê Văn Chí'),
('GV004', 'Phạm Văn Dũng'),
('GV005', 'Đặng Ngọc Hùng'),
('GV006', 'Hoàng Thị Minh'),
('GV007', 'Ngô Văn Tuấn'),
('GV008', 'Lê Thị Thu Hà'),
('GV009', 'Bùi Văn Phúc'),
('GV010', 'Trịnh Thị Lan');

INSERT INTO lop (ma_lop, ten_lop, ma_gvcn, nam_hoc) VALUES
('L001', 'Lớp 1A', 'GV001', '2023-2024'),
('L002', 'Lớp 2B', 'GV002', '2023-2024'),
('L003', 'Lớp 3C', 'GV003', '2023-2024'),
('L004', 'Lớp 4D', 'GV004', '2023-2024'),
('L005', 'Lớp 5E', 'GV005', '2023-2024'),
('L006', 'Lớp 6A', 'GV006', '2023-2024'),
('L007', 'Lớp 7B', 'GV007', '2023-2024'),
('L008', 'Lớp 8C', 'GV008', '2023-2024'),
('L009', 'Lớp 9D', 'GV009', '2023-2024'),
('L010', 'Lớp 10E', 'GV010', '2023-2024');

INSERT INTO hoc_sinh (ma_hs, ho_ten_hs, ho_ten_ph, gioi_tinh, dia_chi, ma_lop) VALUES
('HS001', 'Phạm Minh Dũng', 'Phạm Văn An', 'Nam', '123 Nguyễn Trãi', 'L001'),
('HS002', 'Nguyễn Thị Mai', 'Nguyễn Văn Bình', 'Nữ', '456 Lê Lợi', 'L002'),
('HS003', 'Trần Văn Hùng', 'Trần Thị Hoa', 'Nam', '789 Trần Hưng Đạo', 'L003'),
('HS004', 'Lê Thị Lan', 'Lê Văn Tuấn', 'Nữ', '08 Thanh Khê', 'L004'),
('HS005', 'Hoàng Văn Khải', 'Hoàng Thị Thu', 'Nam', '10 Hải Châu', 'L005'),
('HS006', 'Đặng Minh Hòa', 'Đặng Thị Hạnh', 'Nam', '11 Trường Chinh', 'L006'),
('HS007', 'Vũ Thị Thanh', 'Vũ Văn Đức', 'Nữ', '12 Lý Thường Kiệt', 'L007'),
('HS008', 'Đỗ Quang Hải', 'Đỗ Văn Khánh', 'Nam', '13 Hoàng Hoa Thám', 'L008'),
('HS009', 'Nguyễn Văn Tâm', 'Nguyễn Thị Tâm', 'Nam', '14 Điện Biên Phủ', 'L009'),
('HS010', 'Phạm Thị Hồng', 'Phạm Văn Khoa', 'Nữ', '15 Trường Sa', 'L010'),
('HS011', 'Bùi Anh Tuấn', 'Bùi Văn Minh', 'Nam', '16 Hai Bà Trưng', 'L001'),
('HS012', 'Trần Thị Huyền', 'Trần Văn Sơn', 'Nữ', '17 Phan Châu Trinh', 'L002'),
('HS013', 'Lê Văn Nam', 'Lê Thị Vân', 'Nam', '18 Lê Duẩn', 'L003'),
('HS014', 'Nguyễn Minh Khang', 'Nguyễn Thị Lan', 'Nam', '19 Huỳnh Thúc Kháng', 'L004'),
('HS015', 'Phan Thị Mai', 'Phan Văn Tâm', 'Nữ', '20 Nguyễn Huệ', 'L005'),
('HS016', 'Đỗ Thị Anh', 'Đỗ Văn Duy', 'Nữ', '21 Trần Quốc Toản', 'L006'),
('HS017', 'Võ Văn Hậu', 'Võ Thị Phượng', 'Nam', '22 Hoàng Sa', 'L007'),
('HS018', 'Phạm Ngọc Lan', 'Phạm Văn Lợi', 'Nữ', '23 Âu Cơ', 'L008'),
('HS019', 'Trần Văn Bình', 'Trần Thị Hằng', 'Nam', '24 Hoàng Diệu', 'L009'),
('HS020', 'Nguyễn Thị Hòa', 'Nguyễn Văn Cường', 'Nữ', '25 Điện Biên Phủ', 'L010'),
('HS021', 'Nguyễn Văn Hùng', 'Nguyễn Thị Lý', 'Nam', '26 Lê Lợi', 'L001'),
('HS022', 'Trần Thị Hoa', 'Trần Văn Bình', 'Nữ', '27 Trường Chinh', 'L001'),
('HS023', 'Hoàng Văn Khôi', 'Hoàng Thị Lan', 'Nam', '28 Nguyễn Du', 'L002'),
('HS024', 'Phạm Thị Minh', 'Phạm Văn Lâm', 'Nữ', '29 Điện Biên Phủ', 'L002'),
('HS025', 'Bùi Thị Ngọc', 'Bùi Văn Phú', 'Nữ', '30 Hoàng Hoa Thám', 'L003'),
('HS026', 'Võ Văn Lâm', 'Võ Thị Thanh', 'Nam', '31 Phan Chu Trinh', 'L003'),
('HS027', 'Lê Minh Tâm', 'Lê Thị Vân', 'Nam', '32 Trần Hưng Đạo', 'L004'),
('HS028', 'Nguyễn Thị Mai', 'Nguyễn Văn Minh', 'Nữ', '33 Hùng Vương', 'L004'),
('HS029', 'Đỗ Văn Khoa', 'Đỗ Thị Hoa', 'Nam', '34 Quang Trung', 'L005'),
('HS030', 'Lê Thị Hồng', 'Lê Văn Hùng', 'Nữ', '35 Lý Tự Trọng', 'L005');


INSERT INTO mon_hoc (ma_mh, ten_mh) VALUES
('MH001', 'Toán'),
('MH002', 'Văn'),
('MH003', 'Lý'),
('MH004', 'Hóa'),
('MH005', 'Sinh');

INSERT INTO ket_qua_hoc_tap (ma_hs, hoc_ky, ma_mh, diem_thi_giua_ky, diem_thi_cuoi_ky, ngay_gio_thi_cuoi_ky, nam_hoc) VALUES
('HS001', 'Học kỳ 1', 'MH001', 8.0, 9.0, '2024-05-15 08:00:00', '2023-2024'),
('HS002', 'Học kỳ 1', 'MH002', 7.0, 8.5, '2024-05-16 09:00:00', '2023-2024'),
('HS003', 'Học kỳ 1', 'MH003', 8.5, 9.0, '2024-05-17 10:00:00', '2023-2024'),
('HS004', 'Học kỳ 1', 'MH004', 7.5, 8.0, '2024-05-18 11:00:00', '2023-2024'),
('HS005', 'Học kỳ 1', 'MH005', 9.0, 9.5, '2024-05-19 12:00:00', '2023-2024'),
('HS006', 'Học kỳ 1', 'MH001', 7.5, 8.0, '2024-05-20 08:00:00', '2023-2024'),
('HS007', 'Học kỳ 1', 'MH002', 6.5, 7.0, '2024-05-21 09:00:00', '2023-2024'),
('HS008', 'Học kỳ 1', 'MH003', 8.0, 8.5, '2024-05-22 10:00:00', '2023-2024'),
('HS009', 'Học kỳ 1', 'MH004', 7.0, 7.5, '2024-05-23 11:00:00', '2023-2024'),
('HS010', 'Học kỳ 1', 'MH005', 9.5, 10.0, '2024-05-24 12:00:00', '2023-2024'),
('HS011', 'Học kỳ 1', 'MH001', 8.0, 8.5, '2024-05-25 08:00:00', '2023-2024'),
('HS012', 'Học kỳ 1', 'MH002', 7.0, 7.5, '2024-05-26 09:00:00', '2023-2024'),
('HS013', 'Học kỳ 1', 'MH003', 7.5, 8.0, '2024-05-27 10:00:00', '2023-2024'),
('HS014', 'Học kỳ 1', 'MH004', 8.0, 8.5, '2024-05-28 11:00:00', '2023-2024'),
('HS015', 'Học kỳ 1', 'MH005', 9.0, 9.5, '2024-05-29 12:00:00', '2023-2024'),
('HS016', 'Học kỳ 1', 'MH001', 8.5, 9.0, '2024-05-30 08:00:00', '2023-2024'),
('HS017', 'Học kỳ 1', 'MH002', 7.5, 8.0, '2024-05-31 09:00:00', '2023-2024'),
('HS018', 'Học kỳ 1', 'MH003', 8.0, 8.5, '2024-06-01 10:00:00', '2023-2024'),
('HS019', 'Học kỳ 1', 'MH004', 7.0, 7.5, '2024-06-02 11:00:00', '2023-2024'),
('HS020', 'Học kỳ 1', 'MH005', 9.5, 10.0, '2024-06-03 12:00:00', '2023-2024'),
('HS021', 'Học kỳ 2', 'MH001', 8.0, 9.0, '2024-11-15 08:00:00', '2023-2024'),
('HS022', 'Học kỳ 2', 'MH002', 7.5, 8.5, '2024-11-16 09:00:00', '2023-2024'),
('HS023', 'Học kỳ 2', 'MH003', 8.5, 9.0, '2024-11-17 10:00:00', '2023-2024'),
('HS024', 'Học kỳ 2', 'MH004', 7.0, 8.0, '2024-11-18 11:00:00', '2023-2024'),
('HS025', 'Học kỳ 2', 'MH005', 9.0, 9.5, '2024-11-19 12:00:00', '2023-2024'),
('HS026', 'Học kỳ 2', 'MH001', 7.5, 8.0, '2024-11-20 08:00:00', '2023-2024'),
('HS027', 'Học kỳ 2', 'MH002', 6.5, 7.5, '2024-11-21 09:00:00', '2023-2024'),
('HS028', 'Học kỳ 2', 'MH003', 8.0, 8.5, '2024-11-22 10:00:00', '2023-2024'),
('HS029', 'Học kỳ 2', 'MH004', 7.5, 8.0, '2024-11-23 11:00:00', '2023-2024'),
('HS030', 'Học kỳ 2', 'MH005', 9.5, 10.0, '2024-11-24 12:00:00', '2023-2024');

INSERT INTO phu_trach_bo_mon (ma_gvpt, ma_lop, ma_mh, hoc_ky) VALUES
('GV001', 'L001', 'MH001', 'Học kỳ 1'),
('GV004', 'L002', 'MH002', 'Học kỳ 1'),
('GV002', 'L003', 'MH003', 'Học kỳ 1'),
('GV005', 'L004', 'MH004', 'Học kỳ 2'),
('GV006', 'L005', 'MH005', 'Học kỳ 2'),
('GV003', 'L006', 'MH001', 'Học kỳ 1'),
('GV007', 'L007', 'MH002', 'Học kỳ 1'),
('GV008', 'L008', 'MH003', 'Học kỳ 1'),
('GV009', 'L009', 'MH004', 'Học kỳ 1'),
('GV010', 'L010', 'MH005', 'Học kỳ 2');
 