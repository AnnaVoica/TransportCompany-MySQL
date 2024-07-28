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
➔ ClientID este cheia primară în tabela Clienti și cheia străină în tabela Comenzi.
- Tabela Soferi și Comenzi: Relație: 1-n (un șofer (1) poate avea mai multe comenzi (n), dar o comandă este atribuită unui singur șofer)
➔ SoferID este cheia primară în tabela Soferi și cheia străină în tabela Comenzi.
- Tabela Camioane și Comenzi: Relație: 1-n (un camion (1) poate fi folosit în mai multe comenzi (n), dar o comandă este atribuită unui singur
camion)
➔ CamionID este cheia primară în tabela Camioane și cheia străină în tabela Comenzi.
- Tabela Rute și Comenzi: Relație: 1-n (o rută (1) poate fi folosită în mai multe comenzi (n), dar o comandă este atribuită unei singure rute)
➔ RutaID este cheia primară în tabela Rute și cheia străină în tabela Comenzi.

### 2.Interogări ale bazei de date

2.1. _DDL (Data Definition Language)_

Următoarele instrucțiuni au fost scrise în scopul CREĂRII structurii bazei de date (CREATE INSTRUCTIONS)
Am creat baza de date prin ** CREATE TABLE ** pentru cele cinci tabele _șoferilor, camioanelor, rutelor, clienților și comenzilor_.
Am folosit chei Primare și chei Secundare
● Cheia primară (PRIMARY KEY) asigură unicitatea fiecărui rând în tabelă.
● Cheia secundară (FOREIGN KEY) menține relațiile dintre tabele.
Am inserat datele cu ** INSERT INTO **, aceste instrucțiuni de inserare adaugă date în fiecare tabel în conformitate cu relațiile definite.
De exemplu, comanda va fi atribuită unui client, va folosi o anumită rută, va fi efectuată de un anumit șofer și va utiliza un anumit camion.

După ce baza de date și tabelele au fost create, au fost scrise câteva instrucțiuni ALTER pentru a actualiza structura bazei de date, conform descrierii de mai jos:
