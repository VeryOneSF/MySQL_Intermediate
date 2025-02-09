USE TEST;
CREATE TABLE Person2(
	personId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    lastName VARCHAR(10),
    firstName VARCHAR(10)
);

INSERT Person2(lastName, firstName) VALUES("Wang", "Allen");
INSERT Person2(lastName, firstName) VALUES("Alice", "Bob");

select * from Person2;

CREATE TABLE Address (
	addressId INT NOT NULL AUTO_INCREMENT,
    personId INT,
    city VARCHAR(20),
    state VARCHAR(20),
    PRIMARY KEY(addressId)
);

SELECT * FROM Address;

INSERT Address(personId, city, state) VALUES(2, "New York City", "New York");
INSERT Address(personId, city, state) VALUES(3, "Leetcode", "California");


SELECT firstName, lastName, city, state
FROM Person2 as p2
LEFT JOIN Address as a
ON p2.personId = a.personId;


