-- Thông tin của toàn bộ học sinh trong trường. Kết quả trả về cần được sắp xếp tăng dần theo họ tên học sinh.
SELECT 
    *
FROM
    hoc_sinh
ORDER BY ho_ten_hs ASC;

-- Thông tin của toàn bộ học sinh trong trường. Kết quả trả về cần được sắp xếp giảm dần theo địa chỉ.
SELECT 
    *
FROM
    hoc_sinh
ORDER BY dia_chi DESC;

-- Thông tin của toàn bộ học sinh trong trường. Kết quả trả về cần được sắp xếp tăng dần theo họ tên học sinh và giảm dần theo địa chỉ.
SELECT 
    *
FROM
    hoc_sinh
ORDER BY ho_ten_hs ASC , dia_chi DESC;

-- Thông tin của toàn bộ học sinh trong trường. Kết quả trả về cần được sắp xếp tăng dần theo họ tên học sinh và tăng dần theo địa chỉ.
SELECT 
    *
FROM
    hoc_sinh
ORDER BY ho_ten_hs ASC , dia_chi ASC;
   
-- Thông tin của toàn bộ học sinh trong trường. Kết quả trả về cần được sắp xếp giảm dần theo họ tên học sinh, giảm dần theo địa chỉ.
SELECT 
    *
FROM
    hoc_sinh
ORDER BY ho_ten_hs DESC , dia_chi DESC;

-- Thông tin của toàn bộ học sinh trong trường. Kết quả trả về cần được sắp xếp giảm dần theo họ tên học sinh, giảm dần theo địa chỉ và tăng dần theo họ tên phụ huynh.
SELECT 
    *
FROM
    hoc_sinh
ORDER BY ho_ten_hs DESC , dia_chi DESC , ho_ten_ph ASC

