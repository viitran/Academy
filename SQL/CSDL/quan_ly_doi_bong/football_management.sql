create database football_management;

CREATE TABLE huan_luyen_vien (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_huan_luyen_vien VARCHAR(255)
);

CREATE TABLE doi (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_doi VARCHAR(255),
    id_huan_luyen_vien INT,
    FOREIGN KEY (id_huan_luyen_vien)
        REFERENCES huan_luyen_vien (id)
);

CREATE TABLE vi_tri (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_vi_tri VARCHAR(255)
);

CREATE TABLE cau_thu (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_cau_thu VARCHAR(255),
    id_doi INT,
    FOREIGN KEY (id_doi)
        REFERENCES doi (id)
);

create table cau_thu_vi_tri(
	id_cau_thu int,
    foreign key(id_cau_thu) references cau_thu(id),
    id_vi_tri int,
    foreign key(id_vi_tri) references vi_tri(id)
);


CREATE TABLE tran_dau (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ngay_dau DATE
);

CREATE TABLE tran_dau_giua_cac_cau_thu (
    id_tran_dau INT,
    FOREIGN KEY (id_tran_dau)
        REFERENCES tran_dau (id),
    id_doi INT,
    FOREIGN KEY (id_doi)
        REFERENCES doi (id)
);