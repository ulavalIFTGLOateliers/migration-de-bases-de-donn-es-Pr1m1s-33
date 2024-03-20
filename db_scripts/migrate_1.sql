ALTER TABLE singer RENAME TO musician;

ALTER TABLE musician ADD COLUMN email VARCHAR(100);

ALTER TABLE musician MODIFY COLUMN age DECIMAL(5, 2);

CREATE TABLE IF NOT EXISTS concert (
    concertName VARCHAR(50),
    musicianName VARCHAR(50),
    location VARCHAR(100),
    concertDate DATE,
    PRIMARY KEY (concertName),
    CONSTRAINT FK_C_musicianName FOREIGN KEY (musicianName) REFERENCES musician(singerName)
);

INSERT INTO musician (singerName, firstName, lastName, age, email) VALUES ("Nova", "Nora", "Vance", 29, "nora@example.com");
INSERT INTO concert VALUES ("Nova Live", "Nova", "The Grand Hall", "2024-05-30");
