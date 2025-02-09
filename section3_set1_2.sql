CREATE DATABASE TEST;
USE TEST;

CREATE TABLE Cinema(
    ID INT NOT NULL AUTO_INCREMENT,
    MOVIE VARCHAR(20),
    DESCRIPTION VARCHAR(200),
    RATING FLOAT,
    PRIMARY KEY(id)
);

INSERT Cinema VALUES(1, "전쟁", "훌륭한 3D",8.9 );
INSERT Cinema VALUES(2, "과학", "소설",8.5 );
INSERT Cinema VALUES(3, "아일랜드", "지루함",6.2 );
INSERT Cinema VALUES(4, "아이스송", "판타지",8.6 );
INSERT Cinema VALUES(5, "하우스 카드", "흥미롭다",9.1 );

-- 작성한 답안 
SELECT * 
FROM Cinema 
WHERE ID % 2 != 0 
AND DESCRIPTION != "지루함"
ORDER BY rating DESC;

-- 강의 답안
SELECT * 
FROM Cinema
WHERE MOD(ID, 2) = 1
AND DESCRIPTION != "지루함"
ORDER BY rating DESC;
