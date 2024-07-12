<html>
 <head>
  <# **TransportCompany-MySQL**> culoarea textului <# **TransportCompany-MySQL**>
 </head>
   <body # **TransportCompany-MySQL**="green">
   </body>
</html>
# **TransportCompany-MySQL**

În acest proiect, am dezvoltat o bază de date relațională pentru gestionarea activităților unei companii de transport, care include gestionarea **șoferilor, camioanelor, rutelor, clienților și comenzilor**. Proiectul a acoperit toate etapele esențiale ale dezvoltării bazei de date, de la definirea tabelelor și a relațiilor dintre acestea, până la manipularea și interogarea datelor.

**1. Crearea și Popularea Tabelelor**

Am creat cinci tabele esențiale ( **Soferi, Camioane, Rute, Clienti, Comenzi** ), fiecare cu coloane specifice pentru a stoca informații detaliate. Aceste tabele au fost populate cu date inițiale pentru a permite testarea funcționalităților.

**2. Definirea Cheilor Primare și Străine**

Am definit chei primare pentru a asigura unicitatea fiecărui rând din tabelă și chei străine pentru a menține relațiile între tabele. Acest lucru a permis integritatea referențială și a facilitat realizarea de interogări complexe.

**3. Gestionarea Constrângerilor și Integrității Datelor**

Am utilizat:
> - **ALTER TABLE** pentru a modifica structura tabelelor, 
> - **DROP** pentru a elimina tabele sau coloane și 
> - **TRUNCATE** pentru a goli tabelele.
 Am învățat cum să gestionez erorile de constrângere și să mențin integritatea datelor.

**4. Revenirea la Starea Inițială**

Am abordat metodele de revenire la starea inițială a datelor după diverse operațiuni de manipulare, inclusiv ștergerea și reinserarea datelor sau actualizarea constrângerilor.

**5. Manipularea Datelor cu DML**

Am folosit instrucțiuni DML ( **INSERT, DELETE, UPDATE, SELECT** ) pentru a adăuga, elimina, modifica și selecta date din tabele. Aceasta a permis să se gestioneze în mod eficient datele din baza de date.

**6. Interogarea Datelor cu DQL**

Am utilizat diverse tehnici de interogare:<br>
> - **SELECT*** pentru a obține toate datele din tabele;<br>
> - **SELECT** pe coloane specifice pentru a obține informații detaliate;<br> 
> - filtrări cu **WHERE, LIKE, AND, OR, NOT** pentru a extrage date relevante;<br> 
> - funcții agregate (**AVG, SUM, COUNT, MAX, MIN**) pentru a realiza analize sumative;<br> 
> - grupare și filtrare cu **GROUP BY** și **HAVING**.

**7. Joinuri între Tabele**

Am implementat diverse tipuri de joinuri ( **INNER JOIN, LEFT JOIN, RIGHT JOIN, CROSS JOIN** ) pentru a combina date din mai multe tabele și a obține perspective complete și interconectate asupra datelor.
