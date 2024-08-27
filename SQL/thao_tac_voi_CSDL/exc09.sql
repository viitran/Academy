-- Liệt kê ma_học_sinh, ho_ten_hoc_sinh, gioi_tinh, ma_lop, ten_lop, ma_gvcn của tất cả học sinh trong trường.
SELECT 
    hs.ma_hs,
    hs.ho_ten_hs,
    hs.gioi_tinh,
    hs.ma_lop,
    lop.ten_lop,
    lop.ma_gvcn
FROM
    hoc_sinh hs
        JOIN
    lop ON hs.ma_lop = lop.ma_lop;

-- Liệt kê ma_học_sinh, ho_ten_hoc_sinh, hoc_ky, ma_mon_hoc, diem_thi_giua_ky, diem_thi_cuoi_ky của tất cả học sinh 
-- và các môn học có kết quả tương ứng với từng học sinh trong trường.
SELECT 
    kq.ma_hs,
    hs.ho_ten_hs,
    kq.hoc_ky,
    kq.ma_mh,
    kq.diem_thi_giua_ky,
    kq.diem_thi_cuoi_ky
FROM
    ket_qua_hoc_tap kq
        JOIN
    hoc_sinh hs ON kq.ma_hs = hs.ma_hs;
 
 --  Liệt kê ma_giao_vien, ho_ten_giao_vien, ma_lop, ma_mon_hoc, hoc_ky của những giáo viên đã được giao phụ trách ít nhất một môn học.
SELECT 
    gv.ma_gv, gv.ho_ten_gv, ptbm.ma_lop, ptbm.ma_mh, ptbm.hoc_ky
FROM
    giao_vien gv
        JOIN
    phu_trach_bo_mon ptbm ON gv.ma_gv = ptbm.ma_gvpt;