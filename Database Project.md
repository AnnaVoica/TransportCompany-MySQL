 # **Database Project for  TransportCompany-MySQL**
 
Scopul acestui proiect este de a folosi toate cunoștințele de SQL dobândite în cadrul cursului de Testare Software și de a le aplica în practică.

Instrumente utilizate: MySQL Workbench

Descrierea bazei de date: 

**Scopul acestui proiect este dezvoltarea unei bază de date relațională pentru gestionarea activităților unei companii de transport, care include gestionarea a cinci tabele esentiale _ _șoferilor, camioanelor, rutelor, clienților și comenzilor_ _. Proiectul acopera etapele esențiale ale dezvoltării bazei de date, de la definirea tabelelor și a relațiilor dintre acestea, până la manipularea și interogarea datelor.** 

## Obiective:

- Crearea unei baze de date relațională capabilă să gestioneze eficient activitățile unei companii de transport.
- Pastrarea evidenței completă și organizată a șoferilor, camioanelor, rutelor, clienților și comenzilor.
- Minimizarea timpul necesar pentru accesarea și căutarea informațiilor esențiale.

### 1.Schema bazei de date

Mai jos puteți găsi schema bazei de date care a fost generată prin Reverse Engineer și care conține toate tabelele și relațiile dintre ele.

Tabelele sunt conectate în următorul mod:

![tabel](https://github.com/user-attachments/assets/972fb765-9bbd-45dc-aafc-951d8522304e)

Relațiile între Tabele
Comenzi este tabela centrală care leagă Clienti, Soferi, Camioane și Rute.
Comenzi are referințe la Clienti (ClientID), Soferi (SoferID), Camioane (CamionID) și Rute (RutaID) prin chei
străine.

Relațiile sunt de tip 1 (un client poate avea mai multe comenzi, un șofer poate prelua mai multe comenzi, un camion
poate fi folosit pentru mai multe comenzi, o rută poate fi folosită în mai multe comenzi).
Relațiile 1- n - explicate :
- Tabela Clienti și Comenzi: Relație: 1-n (un client (1) poate plasa mai multe comenzi (n), dar o comandă este plasată de un singur client) .
○ ClientID este cheia primară în tabela Clienti și cheia străină în tabela Comenzi.
- Tabela Soferi și Comenzi: Relație: 1-n (un șofer (1) poate avea mai multe comenzi (n), dar o comandă este atribuită unui singur șofer)
○ SoferID este cheia primară în tabela Soferi și cheia străină în tabela Comenzi.
- Tabela Camioane și Comenzi: Relație: 1-n (un camion (1) poate fi folosit în mai multe comenzi (n), dar o comandă este atribuită unui singur
camion)
○ CamionID este cheia primară în tabela Camioane și cheia străină în tabela Comenzi.
- Tabela Rute și Comenzi: Relație: 1-n (o rută (1) poate fi folosită în mai multe comenzi (n), dar o comandă este atribuită unei singure rute)
○ RutaID este cheia primară în tabela Rute și cheia străină în tabela Comenzi.

Exemplu de utilizare a relațiilor:
➔ Un șofer poate fi atribuit unei comenzi pentru a transporta un camion pe o anumită rută către un client specific. Astfel, în tabelul
Comenzi, vom avea chei străine care leagă fiecare comandă de un șofer, un camion, o rută și un client. Aceste relații de tip 1 permitand urmărirea
comenzilor în funcție de client, șofer, camion și rută.
Prin crearea și manipularea acestor tabele, am construit un model relațional care reflectă operațiunile de bază ale unei companii de transport. Am
definit relațiile esențiale între entități și am demonstrat utilizarea instrucțiunilor DML pentru inserarea, actualizarea și ștergerea datelor. Următorul
pas va fi utilizarea instrucțiunilor DQL pentru interogarea și analiza datelor.
