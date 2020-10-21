CREATE TABLE Quotes (
  id 	  INT NOT NULL PRIMARY KEY,
  text    VARCHAR(1000) NOT NULL,
  author  INT NOT NULL,
  CONSTRAINT fk_Authors FOREIGN KEY 
    (author) REFERENCES Authors(id)
);

CREATE TABLE Authors (
  id 	  INT NOT NULL PRIMARY KEY,
  name	  VARCHAR(32) NOT NULL
);

CREATE PROCEDURE authorQuotes @id INT
AS
  SELECT Q.id, Q.text, Q.author
    FROM Quotes AS Q JOIN Authors AS A
      ON Q.author = A.id
   WHERE A.id = @id
GO;