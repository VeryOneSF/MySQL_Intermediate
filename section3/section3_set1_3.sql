
CREATE TABLE Person(
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    email VARCHAR(30)
);

INSERT Person(email) VALUES("a@b.com");
INSERT Person(email) VALUES("c@d.com");
INSERT Person(email) VALUES("a@b.com");

SELECT email
FROM Person
GROUP BY email
HAVING COUNT(email) > 1;
