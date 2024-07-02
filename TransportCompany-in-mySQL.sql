-- Crearea bazei de date
CREATE DATABASE TransportCompany;

-- Selectarea bazei de date
USE TransportCompany;

-- Crearea tabelelor
CREATE TABLE Soferi (
    SoferID INT PRIMARY KEY AUTO_INCREMENT,
    Nume VARCHAR(50),
    Prenume VARCHAR(50),
    DataAngajarii DATE,
    Salariu DECIMAL(10, 2)
);

CREATE TABLE Camioane (
    CamionID INT PRIMARY KEY AUTO_INCREMENT,
    NumarInmatriculare VARCHAR(20),
    Marca VARCHAR(50),
    Model VARCHAR(50),
    AnFabricatie INT,
    CapacitateTonaj DECIMAL(5, 2)
);

CREATE TABLE Rute (
    RutaID INT PRIMARY KEY AUTO_INCREMENT,
    Descriere VARCHAR(255),
    DistantaKM DECIMAL(10, 2)
);

CREATE TABLE Clienti (
    ClientID INT PRIMARY KEY AUTO_INCREMENT,
    Nume VARCHAR(50),
    Prenume VARCHAR(50),
    Adresa VARCHAR(100),
    Telefon VARCHAR(20)
);

CREATE TABLE Comenzi (
    ComandaID INT PRIMARY KEY AUTO_INCREMENT,
    ClientID INT,
    SoferID INT,
    CamionID INT,
    RutaID INT,
    DataComanda DATE,
    Status VARCHAR(20),
    FOREIGN KEY (ClientID) REFERENCES Clienti(ClientID),
    FOREIGN KEY (SoferID) REFERENCES Soferi(SoferID),
    FOREIGN KEY (CamionID) REFERENCES Camioane(CamionID),
    FOREIGN KEY (RutaID) REFERENCES Rute(RutaID)
);

DESCRIBE Soferi;
DESCRIBE Camioane;
DESCRIBE Rute;
DESCRIBE Clienti;
DESCRIBE Comenzi;

-- Inserarea datelor în tabela Soferi
INSERT INTO Soferi (Nume, Prenume, DataAngajarii, Salariu) VALUES 
('Popescu', 'Ion', '2020-01-15', 3000.00),
('Ionescu', 'Mihai', '2019-03-22', 3200.00),
('Georgescu', 'Vasile', '2018-07-10', 3100.00),
('Marinescu', 'Florin', '2021-05-30', 2900.00);

SELECT * FROM Soferi;

-- Inserarea datelor în tabela Camioane
INSERT INTO Camioane (NumarInmatriculare, Marca, Model, AnFabricatie, CapacitateTonaj) VALUES 
('B123ABC', 'Mercedes', 'Actros', 2015, 20.5),
('B234BCD', 'Volvo', 'FH16', 2018, 22.0),
('B345CDE', 'Scania', 'R450', 2017, 19.0),
('B456DEF', 'DAF', 'XF105', 2019, 21.5);

SELECT * FROM Camioane;

-- Inserarea datelor în tabela Rute
INSERT INTO Rute (Descriere, DistantaKM) VALUES 
('Bucuresti - Constanta', 225.5),
('Bucuresti - Cluj', 450.0),
('Bucuresti - Timisoara', 530.0),
('Bucuresti - Iasi', 400.0);

SELECT * FROM Rute;

-- Inserarea datelor în tabela Clienti
INSERT INTO Clienti (Nume, Prenume, Adresa, Telefon) VALUES 
('Popa', 'Andrei', 'Strada Libertatii 10, Bucuresti', '0722000000'),
('Dumitrescu', 'Ana', 'Strada Independentei 20, Constanta', '0722111111'),
('Stan', 'Maria', 'Strada Victoriei 30, Cluj', '0722222222'),
('Nicolae', 'George', 'Strada Unirii 40, Timisoara', '0722333333');

SELECT * FROM Clienti;

-- Inserarea datelor în tabela Comenzi
INSERT INTO Comenzi (ClientID, SoferID, CamionID, RutaID, DataComanda, Status) VALUES 
(1, 1, 1, 1, '2023-06-01', 'Livrat'),
(2, 2, 2, 2, '2023-06-15', 'In Tranzit'),
(3, 3, 3, 3, '2023-07-01', 'Livrat'),
(4, 4, 4, 4, '2023-07-15', 'Anulat');

SELECT * FROM Comenzi;

-- Adăugarea unei coloane noi (Email) în tabela Clienti
ALTER TABLE Clienti
ADD COLUMN Email VARCHAR(100);

SELECT * FROM Clienti;

-- Eliminarea coloanei Email
ALTER TABLE Clienti
DROP COLUMN Email;

-- Modificarea tipului de date pentru coloana Telefon în tabela Clienti: 
ALTER TABLE Clienti
MODIFY COLUMN Telefon VARCHAR(15);

SELECT * FROM Clienti;
DESCRIBE Clienti;

-- Restabilirea tipului de date original al coloanei Telefon la VARCHAR(20):
ALTER TABLE Clienti
MODIFY COLUMN Telefon VARCHAR(20);

-- Ștergerea unei coloane (Telefon) din tabela Clienti:  
ALTER TABLE Clienti
DROP COLUMN Telefon;

SELECT * FROM Clienti;
DESCRIBE Clienti;

-- Adăugarea coloanei Telefon din nou:
ALTER TABLE Clienti
ADD COLUMN Telefon VARCHAR(20);

-- Adăugarea unei constrângeri unice pentru coloana NumarInmatriculare în tabela Camioane:  
ALTER TABLE Camioane
ADD CONSTRAINT UNIQUE (NumarInmatriculare);

DESCRIBE Camioane;

-- Ștergerea constrângerii unice pentru a reveni la starea inițială: 
SHOW CREATE TABLE Camioane;

ALTER TABLE Camioane
DROP INDEX NumarInmatriculare;

-- Ștergerea tabelului Comenzi:
DROP TABLE Comenzi;

DESCRIBE Comenzi;

-- Recrearea Tabelei cu aceeași definiție a structurii pe care o avea tabela Comenzi înainte de ștergere, readucând baza de date la starea inițială.
CREATE TABLE Comenzi (
    ComandaID INT PRIMARY KEY AUTO_INCREMENT,
    ClientID INT,
    SoferID INT,
    CamionID INT,
    RutaID INT,
    DataComanda DATE,
    Status VARCHAR(20),
    FOREIGN KEY (ClientID) REFERENCES Clienti(ClientID),
    FOREIGN KEY (SoferID) REFERENCES Soferi(SoferID),
    FOREIGN KEY (CamionID) REFERENCES Camioane(CamionID),
    FOREIGN KEY (RutaID) REFERENCES Rute(RutaID)
);

-- Inserarea datelor în tabela Comenzi
INSERT INTO Comenzi (ClientID, SoferID, CamionID, RutaID, DataComanda, Status) VALUES 
(1, 1, 1, 1, '2023-06-01', 'Livrat'),
(2, 2, 2, 2, '2023-06-15', 'In Tranzit'),
(3, 3, 3, 3, '2023-07-01', 'Livrat'),
(4, 4, 4, 4, '2023-07-15', 'Anulat');

SELECT * FROM Comenzi;
DESCRIBE Comenzi;

-- Golirea tabelului - se golesc toate datele din tabela Comenzi, menținând structura acesteia. 
TRUNCATE TABLE Comenzi;

-- Selectarea tuturor datelor din tabele
SELECT * FROM Soferi;
SELECT * FROM Camioane;
SELECT * FROM Rute;
SELECT * FROM Clienti;
SELECT * FROM Comenzi;

-- Selectarea numelui și prenumele tuturor șoferilor
SELECT Nume, Prenume FROM Soferi;

-- Selectarea numelui și adresei tuturor clienților
SELECT Nume, Adresa FROM Clienti;

-- Selectarea numărului de înmatriculare și marca camioanelor
SELECT NumarInmatriculare, Marca FROM Camioane;

-- Selectarea șoferilor cu salariul mai mare de 3000
SELECT * FROM Soferi WHERE Salariu > 3000;

-- Selectarea comenzilor cu statusul 'Livrat'
SELECT * FROM Comenzi WHERE Status = 'Livrat';

-- Selectarea clienților cu numele care începe cu 'P'
SELECT * FROM Clienti WHERE Nume LIKE 'P%';

-- Selectarea clienților cu adresa ca 'Strada'
SELECT * FROM Clienti WHERE Adresa LIKE 'Strada%';

-- Selectarea camioanelor cu marca ce conține 'Volvo'
SELECT * FROM Camioane WHERE Marca LIKE '%Volvo%';

-- Selectarea șoferilor angajați după 2020 și cu salariul mai mare de 3000
SELECT * FROM Soferi WHERE DataAngajarii > '2020-01-01' AND Salariu > 3000;

-- Selectarea comenzilor livrate sau în tranzit
SELECT * FROM Comenzi WHERE Status = 'Livrat' OR Status = 'In Tranzit';

-- Selectarea șoferilor care nu au salariul mai mare de 3000
SELECT * FROM Soferi WHERE NOT Salariu > 3000;

-- Selectarea camioanelor care nu sunt marca Volvo
SELECT * FROM Camioane WHERE NOT Marca = 'Volvo';

-- Selectarea comenzilor care nu sunt livrate
SELECT * FROM Comenzi WHERE NOT Status = 'Livrat';

-- Numărul total de comenzi
SELECT COUNT(*) AS NumarComenzi FROM Comenzi;

-- Salariul mediu al șoferilor
SELECT AVG(Salariu) AS SalariuMediu FROM Soferi;

-- Numărul de comenzi per client
SELECT ClientID, COUNT(*) AS NumarComenzi FROM Comenzi GROUP BY ClientID;

-- Numărul de comenzi per șofer cu cel puțin 2 comenzi
SELECT SoferID, COUNT(*) AS NumarComenzi 
FROM Comenzi 
GROUP BY SoferID 
HAVING COUNT(*) >= 2;

-- Salariul mediu al șoferilor angajați după 2020
SELECT DataAngajarii, AVG(Salariu) AS SalariuMediu 
FROM Soferi 
GROUP BY DataAngajarii 
HAVING DataAngajarii > '2020-01-01';

-- Selectarea detaliilor comenzilor, șoferilor și clienților pentru comenzi livrate
SELECT C.ComandaID, Cl.Nume AS NumeClient, S.Nume AS NumeSofer, S.Prenume AS PrenumeSofer, C.Status
FROM Comenzi C
INNER JOIN Clienti Cl ON C.ClientID = Cl.ClientID
INNER JOIN Soferi S ON C.SoferID = S.SoferID
WHERE C.Status = 'Livrat';

-- Selectarea tuturor șoferilor și comenzilor asociate, dacă există
SELECT S.Nume, S.Prenume, C.ComandaID, C.Status
FROM Soferi S
LEFT JOIN Comenzi C ON S.SoferID = C.SoferID;

-- Selectarea tuturor comenzilor și șoferilor asociați, dacă există
SELECT C.ComandaID, C.Status, S.Nume, S.Prenume
FROM Comenzi C
RIGHT JOIN Soferi S ON C.SoferID = S.SoferID;

-- Generarea tuturor combinațiilor posibile de șoferi și camioane
SELECT S.Nume AS NumeSofer, S.Prenume AS PrenumeSofer, C.Marca AS MarcaCamion, C.Model AS ModelCamion
FROM Soferi S
CROSS JOIN Camioane C;

-- Selectarea primilor 2 șoferi în ordinea descrescătoare a salariului
SELECT * FROM Soferi ORDER BY Salariu DESC LIMIT 2;

-- Selectarea primelor 3 comenzi în ordinea crescătoare a datei comenzii
SELECT * FROM Comenzi ORDER BY DataComanda ASC LIMIT 3;


-- Selectarea șoferilor care au efectuat cel puțin o comanda livrată
SELECT * 
FROM Soferi 
WHERE SoferID IN (SELECT SoferID FROM Comenzi WHERE Status = 'Livrat');

-- Selectarea camioanelor care au fost utilizate pentru comenzi în tranzit
SELECT * 
FROM Camioane 
WHERE CamionID IN (SELECT CamionID FROM Comenzi WHERE Status = 'In Tranzit');


-- Selectarea tuturor datelor din tabela Rute 
SELECT * FROM Rute;

-- Selectarea tuturor datelor din tabela Comenzi 
SELECT * FROM Comenzi;

-- Selectarea numelui și prenumele tuturor șoferilor
SELECT Nume, Prenume FROM Soferi;

-- Selectarea comenzilor livrate
SELECT * FROM Comenzi WHERE Status = 'Livrat';

-- Actualizarea salariului unui șofer
UPDATE Soferi SET Salariu = 3500.00 WHERE SoferID = 1;

SELECT * FROM Comenzi;

-- Actualizarea statusului unei comenzi
UPDATE Comenzi SET Status = 'Livrat' WHERE ComandaID = 2;

-- Actualizarea statusului unei comenzi
UPDATE Comenzi SET Status = 'In Tranzit' WHERE ComandaID = 2;

-- Ștergerea unui client
DELETE FROM Clienti WHERE ClientID = 4;

-- Ștergerea unei comenzi
DELETE FROM Comenzi WHERE ComandaID = 4;

-- Inserarea comenzi nr.4
INSERT INTO Comenzi (ClientID, SoferID, CamionID, RutaID, DataComanda, Status) VALUES 
(4, 4, 4, 4, '2023-07-15', 'Anulat');