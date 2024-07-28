 # **Database Project for  TransportCompany-MySQL**
 
Scopul acestui proiect este de a folosi toate cunoștințele de SQL dobândite în cadrul cursului de Testare Software și de a le aplica în practică.

Instrumente utilizate: MySQL Workbench

Descrierea bazei de date: 

**Proiectul are ca scop dezvoltarea unei baze de date relațională pentru gestionarea activităților unei companii de transport, care include gestionarea a cinci tabele _șoferilor, camioanelor, rutelor, clienților și comenzilor_. Proiectul acopera etapele esențiale ale dezvoltării bazei de date, de la definirea tabelelor și a relațiilor dintre acestea, până la manipularea și interogarea datelor.** 

## Obiective:

- Crearea unei baze de date relațională capabilă să gestioneze eficient activitățile unei companii de transport.
- Pastrarea evidenței completă și organizată a șoferilor, camioanelor, rutelor, clienților și comenzilor.
- Minimizarea timpul necesar pentru accesarea și căutarea informațiilor esențiale.

### 1.Schema bazei de date

Mai jos puteți găsi schema bazei de date care a fost generată prin Reverse Engineer și care conține toate tabelele și relațiile dintre ele.

Tabelele sunt conectate în următorul mod:

![tabel](https://github.com/user-attachments/assets/972fb765-9bbd-45dc-aafc-951d8522304e)

*Relațiile între Tabele*

Comenzi este tabela centrală care leagă Clienti, Soferi, Camioane și Rute.
Comenzi are referințe la Clienti (ClientID), Soferi (SoferID), Camioane (CamionID) și Rute (RutaID) prin chei străine.

Relațiile sunt de tip 1- n (un client poate avea mai multe comenzi, un șofer poate prelua mai multe comenzi, un camion poate fi folosit pentru mai multe comenzi, o rută poate fi folosită în mai multe comenzi).
- Tabela Clienti și Comenzi: Relație: 1-n (un client (1) poate plasa mai multe comenzi (n), dar o comandă este plasată de un singur client) .
   - ClientID este cheia primară în tabela Clienti și cheia străină în tabela Comenzi.
- Tabela Soferi și Comenzi: Relație: 1-n (un șofer (1) poate avea mai multe comenzi (n), dar o comandă este atribuită unui singur șofer)
   - SoferID este cheia primară în tabela Soferi și cheia străină în tabela Comenzi.
- Tabela Camioane și Comenzi: Relație: 1-n (un camion (1) poate fi folosit în mai multe comenzi (n), dar o comandă este atribuită unui singur
camion)
   - CamionID este cheia primară în tabela Camioane și cheia străină în tabela Comenzi.
- Tabela Rute și Comenzi: Relație: 1-n (o rută (1) poate fi folosită în mai multe comenzi (n), dar o comandă este atribuită unei singure rute)
   - RutaID este cheia primară în tabela Rute și cheia străină în tabela Comenzi.

### 2.Interogări ale bazei de date

**2.1. _DDL (Data Definition Language)_**

➔Următoarele instrucțiuni au fost scrise în scopul crearii structurii bazei de date (CREATE INSTRUCTIONS)

i) Am creat baza de date prin **CREATE TABLE** pentru cele cinci tabele _șoferilor, camioanelor, rutelor, clienților și comenzilor_.
Am folosit chei Primare și chei Secundare
- Cheia primară (PRIMARY KEY) asigură unicitatea fiecărui rând în tabelă.
- Cheia secundară (FOREIGN KEY) menține relațiile dintre tabele.
  
ii) Am inserat datele cu **INSERT INTO**, aceste instrucțiuni de inserare adaugă date în fiecare tabel în conformitate cu relațiile definite.
De exemplu, comanda va fi atribuită unui client, va folosi o anumită rută, va fi efectuată de un anumit șofer și va utiliza un anumit camion.

➔După crearea bazei de date și a tabelelor, am folosit câteva instrucțiuni pentru a actualiza structura bazei de date, conform descrierii de mai jos:
- **ALTER TABLE**: util pentru modificarea structurilor tabelelor fără a le șterge și recrea. Dacă afacerea noastră de transport decide să înregistreze emailurile clienților, putem adăuga coloana Email în tabela Clienti folosind ALTER TABLE. De asemenea, putem modifica tipul de date al coloanei Telefon pentru a asigura o lungime corectă a numărului de telefon.
- **DROP TABLE**: este folosit pentru a șterge complet o tabelă care nu mai este necesară. De exemplu, dacă decid că tabela Comenzi nu mai este necesară și vreau să o elimin complet, voi folosi DROP TABLE Comenzi.
- **TRUNCATE TABLE**: este util pentru a goli rapid o tabelă fără a șterge structura acesteia. Dacă vreau să elimin toate comenzile din tabela Comenzi pentru a o reîncepe de la zero, voi folosi TRUNCATE TABLE Comenzi.
  
 Aceste instrucțiuni adaugă flexibilitate și capacitate de întreținere în baza de date, permițându-ne să modificăm structura tabelelor existente, să ștergem tabelele care nu mai sunt necesare și să golim tabelele de date pentru a le reutiliza.

**2.2. _DML (Data Manipulation Language)_**

Pentru a putea folosi baza de date, am populat tabelele cu diverse date necesare pentru a efectua interogări și a manipula datele. În procesul de testare, aceste date necesare sunt identificate în faza de proiectare a testelor și create în faza de implementare a testelor.

Am folosit instrucțiunilor **DML (INSERT, DELETE, UPDATE, SELECT)** pentru a adăuga, elimina, modifica și selecta date din tabele. Aceste instructiuni permitand gestionarea în mod eficient a datelor din baza de date.

i)  _Inserarea datelor_ - **INSERT**
 Aceste instrucțiuni de inserare adaugă date în fiecare tabel în conformitate cu relațiile definite. De exemplu, comanda va fi atribuită unui client, va folosi o anumită rută, va fi efectuată de un anumit șofer și va utiliza un anumit camion.

ii) _Selectarea datelor_ - **SELECT**
 Aceste instrucțiuni SELECT recuperează datele din baza de date conform criteriilor specificate și utilizează relațiile între tabele pentru a aduna informații complete despre comenzi, inclusiv detalii despre clienți, rute, camioane și șoferi.

iii) _Actualizarea datelor_ - **UPDATE**
 Aceste instrucțiuni actualizează datele existente în funcție de id-urile specificate, permițând modificarea capacității unui camion, adresa unui client sau data unei comenzi.

iv) _Ștergerea datelor_ - **DELETE**
 Aceste instrucțiuni șterg înregistrările din fiecare tabel în funcție de id-urile specificate, asigurând astfel curățarea datelor vechi sau neutilizate.

**2.3. _DQL (Data Query Language)_**

 Prin utilizarea funcțiilor și tehnicilor DQL, proiectul de gestionare a transporturilor devine eficient și capabil să manipuleze și să analizeze datele complex într-o manieră organizată și integrată. Fiecare instrucțiune joacă un rol esențial în menținerea integrității și a funcționalității bazei de date. Am folosit următoarele interogări care ar acoperi multiple situații potențiale din viața reală:
- Select All **SELECT * FROM** - Selectarea tuturor coloanelor dintr-o tabelă;
- Select Câteva Coloane **SELECT** - Selectarea unor coloane specifice dintr-o tabelă;
- Filtrare cu **WHERE** - Filtrarea rezultatelor pe baza unei condiții;
- Filtrare cu **LIKE** - Utilizarea LIKE căuta modele în date text;
- Filtrare cu **AND** și **OR** - Combinarea condițiilor de filtrare;
- Filtrare cu **NOT** - Excluderea rezultatelor care îndeplinesc o condiție;
- Funcții Agregate - Utilizarea funcțiilor pentru a calcula valori cumulate și **GROUP BY** - Gruparea rezultatelor pentru a aplica funcții agregate;
- Filtrare pe Funcții Agregate cu **HAVING** - Filtrarea rezultatelor grupate pe baza unei funcții agregate;
- **INNER JOIN** - Alăturarea tabelelor pentru a selecta datele comune;
- **LEFT JOIN** - Alăturarea tabelelor pentru a selecta toate datele din tabela stângă și datele comune din tabela dreaptă;
- **RIGHT JOIN** - Alăturarea tabelelor pentru a selecta toate datele din tabela dreaptă și datele comune din tabela stângă;
- **CROSS JOIN** - Crearea produsului cartezian între două tabele;
- **LIMIT** și **ORDER BY** - Limitarea numărului de rezultate și ordonarea rezultatelor.

>[!IMPORTANT]
>Utilizarea instrucțiunilor DDL, DML și DQL pentru a crea, manipula și interoga datele din aceste tabele o gasiti detaliata si exemplificata in:
>
> **[INSTRUCTIUNI - TransportCompany-in-mySQL ](https://github.com/AnnaVoica/TransportCompany-MySQL/blob/main/INSTRUCTIUNI%20-%20TransportCompany-in-mySQL%20%20finala.pdf)**
>
> **[TransportCompany-in-mySQL](https://github.com/AnnaVoica/TransportCompany-MySQL/blob/main/TransportCompany-in-mySQL.sql)**
 
