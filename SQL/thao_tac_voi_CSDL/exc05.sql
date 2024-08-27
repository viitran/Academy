--  Những học sinh có giới tính là Nam.
SELECT 
    *
FROM
    hoc_sinh
WHERE
    gioi_tinh = 'Nam';

-- Những học sinh chưa có tên của phụ huynh.
SELECT 
    *
FROM
    hoc_sinh
WHERE
    ho_ten_ph IS NULL;

-- những lớp chưa có giáo viên chủ nhiệm.
SELECT 
    *
FROM
    lop
WHERE
    ma_gvcn IS NULL;

-- Những học sinh chưa được phân lớp.
SELECT 
    *
FROM
    hoc_sinh
WHERE
    ma_lop IS NULL;

-- Những học sinh nữ có địa chỉ ở Thanh Khê. 
SELECT 
    *
FROM
    hoc_sinh
WHERE
    gioi_tinh = 'Nữ'
        AND dia_chi LIKE '%Thanh Khê%';

-- Những học sinh nam có địa chỉ ở Hải Châu hoặc những học sinh nữ có địa chỉ ở Thanh Khê.
SELECT 
    *
FROM
    hoc_sinh
WHERE
    (gioi_tinh = 'Nam'
        AND dia_chi LIKE '%Hải Châu%')
        OR (gioi_tinh = 'Nữ'
        AND dia_chi LIKE '%Thanh Khê%');

-- Những học sinh nam chưa có tên phụ huynh và những học sinh nữ chưa được phân lớp.
SELECT 
    *
FROM
    hoc_sinh
WHERE
    (gioi_tinh = 'Nam' AND ho_ten_ph IS NULL)
        OR (gioi_tinh = 'Nữ' AND ho_ten_ph IS NULL);

-- Những học sinh nam chưa được phân lớp và những học sinh nam chưa có tên phụ huynh.
SELECT 
    *
FROM
    hoc_sinh
WHERE
    gioi_tinh = 'Nam' AND ma_lop IS NULL
        AND ho_ten_ph IS NULL;

--  Mã môn học của những môn học được dạy trong học kỳ 2.
SELECT 
    *
FROM
    phu_trach_bo_mon
WHERE
    hoc_ky = 'Học kỳ 2';
  