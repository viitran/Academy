-- Toàn bộ thông tin của toàn bộ giáo viên trong trường.
SELECT 
    *
FROM
    giao_vien;

-- Họ tên học sinh, giới tính, họ tên phụ huynh của toàn bộ sinh viên trong trường
SELECT 
    hs.ho_ten_hs, hs.gioi_tinh, hs.ho_ten_ph
FROM
    hoc_sinh AS hs;

-- Toàn bộ thông tin của tất cả các lớp trong trường.
SELECT 
    *
FROM
    lop;