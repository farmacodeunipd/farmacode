#import "/template/big_docs.typ": *

#show: project.with(
  title: "Analisi dei requisiti",
  managers: p.rosson,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "0.13.0", "2023-12-22", p.baggio + "\n" + p.rosson, "", "Nuova stesura definitiva casi d'uso",
    "0.12.1", "2023-12-15", p.rosson, "", "Correzione UC1 e sotto casi",
    "0.12.0", "2023-12-15", p.bomben, p.baggio, "Sistemazione UC3",
    "0.11.1", "2023-12-10", p.passarella, p.bomben, "Aggiunta elenco immagini e elenco tabelle e correzioni varie",
    "0.11.0", "2023-12-08", p.rosson, p.bomben, "Aggiunte sezioni finali sezione 4, e apportate alcune modifiche",
    "0.10.1", "2023-11-30", p.passarella, p.pandolfo, "aggiunta e conseguente modifica requisiti di vincolo",
    "0.10.0", "2023-11-30", p.pandolfo, p.passarella, "Stesura UC9",
    "0.9.0", "2023-11-29", p.pandolfo, p.passarella, "Stesura introduzione requisiti e requisiti funzionali",
    "0.8.0", "2023-11-27", p.passarella, p.pandolfo, "Stesura requisiti di qualità e di vincolo",
    "0.7.0", "2023-11-27", p.pandolfo, p.passarella, "Stesura di un nuovo UC3 e modifica deglu UC successivi",
    "0.6.1", "2023-11-20", p.rosson, p.pandolfo, "Corretto registro delle modifiche",
    "0.6.0", "2023-11-20", p.bomben, p.pandolfo, "Stesura da UC4 a UC7",
    "0.5.0", "2023-11-18", p.favaron, p.pandolfo, "Stesura sezione descrizione",
    "0.4.0", "2023-11-17", p.bomben, p.pandolfo, "Stesura UC3",
    "0.3.0", "2023-11-16", p.bomben, p.pandolfo, "Stesura UC1 e UC2",
    "0.2.0", "2023-11-15", p.favaron, p.pandolfo, "Stesura sezione introduzione",
    "0.1.0", "2023-11-14", p.favaron, p.pandolfo, "Struttura iniziale del documento",
  ),
)

= Introduzione

== Scopo del documento
Il documento riguardante l'analisi dei requisiti è un elemento di fondamentale importanza per i progetti di sviluppo software che voglio rispettare i massimi standard di qualità definiti dall'insegnamento dell'ingegneria del software. \
Il presente documento ha lo scopo di fornire una descrizione dettagliata e più precisa possibile riguardanti le linee di massima del prodotto, che comprende i requisiti, così detti, obbligatori, desiderati e opzionali che vanno a rispondere alle necessità del proponente.\
Si specializza sull'analisi dei bisogni dell'utente utilizzatore esaminati dallo studio del capitolato e durante i vari incontri con l'azienda proponente volti a tale scopo.\
Le richieste del proponente sono, dunque, raccolte e ben identificate nel seguente documento; inoltre, sono classificate secondo le categorie standard di requisiti funzionali, di qualità e di vincolo.\
L'analisi dei requisiti compone la pietra portante della progettazione di un sistema software, in quanto esplicita le funzionalità che il prodotto finale deve offrire. È essenziale per i programmatori usufruire di tale documento per assimilare a pieno le necessità dei proponenti di progetto per poi trovare la soluzione che più si sposa a soddisfare le esigenze proposte.\
Il documento seguente deve essere il più completo e specifico possibile così da garantire requisiti corretti e che riscoprano tutti gli scenari plausibili per limitare i rischi di progetto ed evitare di inciampare in errori e ritardi che si traducono in costi maggiori.\
È utile definire una precisa e formale rappresentazione grafica dei requisiti e degli attori in gioco grazie ai diagrammi dei casi d'uso, così da facilitare la comprensione a tutti.\

=== Struttura logica casi d’uso
I casi d'uso descritti in questo documento hanno una precisa struttura logica descritta dal seguente modello:
- Descrizione: Titolo del caso d'uso con annessa breve descrizione;
- Attori coinvolti: Il soggetto che esegue una determinata azione;
- Precondizioni: Lo stato del sistema prima del caso d'uso;
- Postcondizioni: Lo stato del sistema dopo l'esecuzione dello scenario descritto dal caso d'uso;
- Scenario principale: Descrizione dettagliata delle azioni svolte dall'attore durante il caso d'uso, intermedio tra le ipotesi e i risultati.

== Scopo del prodotto
Il progetto ha lo scopo di realizzare un #glossario("sistema di raccomandazione") con relativa interfaccia web che guidi le attività dell'azienda, utilizzatrice del prodotto finale, suggerendo a quali clienti rivolgere le singole attività di marketing e commerciali, cercando i migliori clienti target a cui indirizzare determinati prodotti.\
Dall'interfaccia utente del sistema software sarà possibile selezionare uno specifico cliente e visualizzare i prodotti da lui acquistati e quelli che il sistema ha individuato come raccomandati. Inoltre selezionato un articolo o un insieme di articoli il sistema suggerisce a quali clienti proporli, selezionandoli in base a quanto probabile siano interessati per i prodotti analizzati. I vari prodotti possono essere filtrati per categoria così da facilitare ricerche e restringere il campo di soluzione.\
Ogni risultato restituito dal sistema di raccomandazione è classificabile tramite un feedback così da poter eventualmente correggere il tiro dell'algoritmo che ha fornito l'esito della suggerimento.\
L'utente amministratore ha la possibilità di creare ulteriori account per eventuali operatori che necessitano di utilizzare l'applicativo.\

== Glossario
Al fine di evitare eventuali equivoci o incomprensioni riguardo la terminologia utilizzata all'interno di questo documento, si è deciso  di adottare un Glossario, con file apposito, in cui vengono riportate tutte le definizioni rigogliose delle parole ambigue utilizzate in ambito di questo progetto. Nel documento appena descritto verranno riportati tutti i termini definiti nel loro ambiente di utilizzo con annessa descrizione del loro significato.\
La presenza di un termine all'interno del Glossario è evidenziata dal #glossario("colore blu").

== Maturità e miglioramenti
Questo documento è stato realizzato utilizzando un approccio incrementale, con lo scopo di semplificare i cambiamenti nel tempo in base alle  reciproche esigenze decise da entrambi le parti, ovvero membri del gruppo di progetto e azienda proponente. Pertanto non può essere considerato esaustivo e completo questo documento.

== Riferimenti

=== Riferimenti normativi
- Norme di Progetto v.1.0.0;
- Capitolato C2: Sistemi di raccomandazione\ 
  https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C2.pdf;
- Regolamento progetto ditattico\
  https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf.
=== Riferimenti informativi
- T5 - Analisi dei requisiti (slide del corso di Ingegneria del Software)\
  https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T5.pdf;
- P2 - I diagrammi dei casi d’uso (UML) (slide del corso di Ingegneria del Software)\
  https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf.

= Descrizione

== Obiettivi del prodotto
Lo scopo finale del progetto è la realizzazione di un sistema di raccomandazione con relativa interfaccia web, la quale ha obiettivo di guidare le attività dell'azienda, utilizzatrice del sistema software, suggerendo a quali acquirenti rivolgere le singole attività di marketing e commerciali, cercando i migliori clienti target a cui indirizzarle.

== Funzionalità del prodotto
Il prodotto interagisce con gli utenti utilizzatori suggerendo loro i migliori prodotti destinati ad un singolo cliente dell'azienda che fa uso del software, oppure la situazione contraria, ovvero dato un acquirente abituale, quali sono i top n articoli che potrebbero interessargli.\
Le funzionalità chiave del prodotto sono:\
- accesso alla web app con un account;
- creazione di nuovi account operatore da parte dell'utente amministratore;
- visualizzazione dei prodotti acquistati da un cliente con relativi suggerimenti generati dal sistema di raccomandazione;
- impostare filtro cliente con top n prodotti a lui consigliati dal sistema di raccomandazione;
- impostare filtro prodotto con top n clienti a cui è consigliato dal sistema di raccomandazione la vendita;
- creazione di feedback / valutazione delle risposte del sistema di raccomandazione;
- impostare filtro su categorie di prodotti.

== Utenti e caratteristiche
L'applicativo si rivolge a grandi aziende leader nella vendita di prodotti di ogni genere.\
L'utente amministratore ha la possibilità di creare ulteriori account utente per eventuali operatori del settore marketing e/o di vendita dell'azienda utilizzatrice del prodotto i quali potranno visualizzare i suggerimenti e interagire con il sistema di raccomandazione, incrementando e semplificando le proprie attività di promotion.

= Casi d'uso

== Obiettivi
Questa sezione è dedicata all'identificazione e alla dettagliata descrizione di tutti i casi d'uso emersi dall'analisi condotta dal nostro gruppo in relazione al capitolato d'appalto proposto. Il nostro obiettivo è individuare chiaramente gli attori coinvolti, seguendo la gerarchia precedentemente definita, e le possibili funzionalità che potrebbero emergere da questa analisi. Il processo di identificazione degli attori seguirà una struttura gerarchica predefinita, mentre le potenziali funzionalità saranno categorizzate e descritte in modo da fornire una panoramica esaustiva del contesto operativo del progetto.

== Attori
Il sistema dispone di due attori:
- Admin;
- User.

== Definizione casi d'uso

=== UC1 - Login
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Login
  ],
)
*Attori:*
- Admin;
- User.
*Precondizioni:*
- L'utente possiede un account valido consegnatoli dall'amministrazione;
- L'utente non ha già eseguito l'accesso;
- L'utente ha una connessione stabile.
*Postcondizioni:*
- L'utente ha effettuato correttamente l'accesso ed è stato riconosciuto dal sistema.
*Scenario principale:*
- Admin/User:
    - inserisce il proprio username nel campo [username] del modulo di accesso (UC1.1);
    - inserisce la propria password nel campo [password] del modulo di accesso (UC1.2).
- Sistema:
    - verifica le credenziali inserite confrontandole con i dati memorizzati nel sistema;
    - se le credenziali sono corrette, autentica l'utente con successo, tramite la creazione di cookies di sessione e reindirizzato alla pagina principale;
    - se le credenziali sono errate, mostra un messaggio di errore per informare l'utente della fallita autenticazione (UC3).
*Estensioni:*
- UC2 - Visualizzazione alert di manutenzione;
- UC3 - Visualizzazione errore di login.
*Generalizzazioni:*
- *Attori:*
- Admin --> User.
- *Use Case:*
- Admin/User:
  - UC1.1 - Inserimento email;
  - UC1.2 - Inserimento password.

==== UC1.1 - Inserimento username
*Attori:*
- Admin;
- User.
*Precondizioni:*
- L'utente sta facendo il Login (UC1).
*Postcondizioni:*
- L'utente inserisce correttamente il proprio username, precedentemente memorizzato nel sistema, per l'autenticazione.
*Scenario principale:*
- Admin/User:
    - inserisce il proprio username nel campo [username].
- Sistema:
    - verifica che lo username inserito sia nel formato corretto, se non è corretto mostra un messaggio di errore per informare l'utente dell'incorrettezza (UC3);
    - verifica la correttezza dell'username;
    - prosegue con l'autenticazione dell'utente utilizzando lo username inserito.  

==== UC1.2 - Inserimento password
*Attori:*
- Admin;
- User.
*Precondizioni:*
- L'utente sta facendo il Login (UC1).
*Postcondizioni:*
- L'utente inserisce correttamente la propria password, precedentemente memorizzata nel sistema, per l'autenticazione.
*Scenario principale:*
- Admin/User:
    - inserisce la propria password nel campo [password].
- Sistema:
    - verifica che la password inserita sia nel formato corretto, se non è corretto mostra un messaggio di errore per informare l'utente dell'incorrettezza (UC3);
    - verifica la correttezza della password;
    - prosegue con l'autenticazione dell'utente utilizzando la password inserita.

=== UC2 - Visualizzazione alert di manutenzione
// #figure(
//   image("/imgs/Uml/UC1.png", width: 80%),
//   caption: [
//     Visualizzazione alert di manutenzione
//   ],
// )
//magari la mettiamo, anche se è molto banale?
*Attori:*
- Admin;
- User.
*Precondizioni:*
- Il sistema è in mautenzione o in uno stato che non rende disponibile l'uso del servizio.
*Postcondizioni:*
- L'utente vede un messaggio esplicativo relativo lo stato del sistema.
*Scenario principale:*
- Admin/User:
    - accede alla pagina di login della piattaforma;
    - visualizza l'alert di manutenzione.
- Sistema:
    - verifica lo stato dei servizi;
    - mostra l'alert informativo.
*Generalizzazioni:*
- *Attori:*
- Admin --> User.

=== UC3 - Visualizzazione errore di login
// #figure(
//   image("/imgs/Uml/UC1.png", width: 80%),
//   caption: [
//     Visualizzazione errore di login
//   ],
// )
// stessa cosa di UC2
*Attori:*
- Admin.
- User.
*Precondizioni:*
- L'utente ha inserito una combinazione di username e/o password errate, ha inserito username e/o password in un formato sbagliato o ha lasciato vuoto qualche campo durante il processo di login;
- Il sistema ha verificato che le credenziali inserite negli appositi campi non siano corrette.
*Postcondizioni:*
- L'utente vede un messaggio esplicativo relativo all'errore riscontrato;
- L'utente consapevole dell'errore può correggere le credenziali e provare ad effettuare nuovamente il login.
*Scenario principale:*
- Admin/User:
    - accede alla pagina di login della piattaforma;
    - visualizza il messaggio di errore dopo aver inserito credenziali sbagliate;
    - decide se correggere le credenziali e provare ad effettuare nuovamente il login.
- Sistema:
    - verifica le credenziali immesse dall'utente nei relativi campi (username, password);
    - se il sistema rileva le credenziali come non corrette, mostra il messaggio di errore di login.
*Generalizzazioni:*
- *Attori:*
- Admin --> User.

=== UC4 - Avviso normativa sui Cookies
#figure(
  image("/imgs/Uml/UC4.png", width: 80%),
  caption: [
    Avviso normativa sui Cookies
  ],
)
*Attori:*
- Admin;
- User.
*Precondizioni:*
- L'utente si trova nella pagina di login della piattaforma;
*Postcondizioni:*
- L'utente è a conoscenza di come vengono utilizzati i cookie all'interno del sito;
- L'utente accetta la normativa sui cookies.
*Scenario principale:*
- Admin/User:
  - accede alla pagina di login della piattaforma;
  - visualizza il messaggio relativo alla normativa sui cookies;
  - decide se informarsi meglio espandendo la pagina che espone in maniera dettagliata l'argomento all'utente (UC4.1);
  - accetta la normativa sui cookies (UC4.2).
- Sistema:
  - se l'utente vuole, lo reindirizza alla pagina che espone in maniera dettagliata l'argomento (UC4.1);
  - prende a conoscenza che l'utente ha accettato la normativa e l'utilizzo di cookies (UC4.2);
  - fa sparire l'avviso una volta presa conoscenza dell'accettazione della normativa sui cookies.
*Generalizzazioni:*
- *Attori:*
- Admin --> User.
- *Use Case:*
- Admin/User:
  - UC4.1 - Visualizzazione normativa sui cookies;
  - UC4.2 - Accettazione normativa sui cookies.

==== UC4.1 - Visualizzazione normativa sui cookies
*Attori:*
- Admin;
- User.
*Precondizioni:*
- L'utente è stato reindirizzato correttamente dal sistema.
*Postcondizioni:*
- All'utente viene mostrata una pagina informativa relativa alla normativa sui cookies.
*Scenario principale:*
- Admin/User:
  - legge la normativa sui cookies.

==== UC4.2 - Accettazione normativa sui cookies
*Attori:*
- Admin;
- User.
*Precondizioni:*
- L'utente ha visualizzato il messaggio relativo alla normativa sui cookies;
*Postcondizioni:*
- L'utente accetta la normativa sui cookies.
*Scenario principale:*
- Admin/User:
  - visualizza il messaggio relativo alla normativa sui cookies;
  - accetta la normativa sui cookies;
- Sistema:
  - prende a conoscenza che l'utente ha accettato la normativa e l'utilizzo di cookies;

=== UC5 - Visualizzazione "Menù" delle funzionalità
#figure(
  image("/imgs/Uml/UC5.png", width: 80%),
  caption: [
    Visualizzazione "Menù" delle funzionalità
  ],
)
*Attori:*
- Admin;
- User.
*Precondizioni:*
- L'utente è autenticato nel sistema ed è dunque presente un cookie di sessione;
- L'utente è stato reindirizzato correttamente dal sistema.
*Postcondizioni:*
- L'utente visualizza le opzioni del menù relative alla sua categoria;
- L'utente decide se selezionare o meno una delle opzioni disponibili.
*Scenario principale:*
- Admin/User:
    - seleziona il bottone del menù nell'header per visualizzarne il contenuto;
    - visualizza i bottoni interni al menù legati alle funzionalità del sito;
    - decide se visualizzare o meno una delle funzionalità disponibili (Admin/User: UC8, UC10, UC12, UC13; Admin: UC14, UC16, UC17).
- Sistema:
    - mostra all'utente i bottoni relativi alle funzionalità della sua categoria;
    - mostra nella vista principale della webapp la funzionalità selezionata dall'utente.
*Generalizzazioni:*
- *Attori:*
- Admin --> User.
- *Use Case:*
- Admin/User:
  - UC5.1 - Visualizzazione funzionalità Admin/User.
- Admin:
  - UC5.2 - Visualizzazione funzionalità Admin.

==== UC5.1 - Visualizzazione funzionalità Admin/User
#figure(
  image("/imgs/Uml/UC5.1.png", width: 80%),
  caption: [
    Visualizzazione funzionalità Admin/User
  ],
)
*Attori:*
- Admin;
- User.
*Precondizioni:*
- L'utente sta visualizzando le opzioni del menù.
*Postcondizioni:*
- L'utente visualizza le opzioni del menù condivise dalle categorie Admin e User;
- L'utente decide se selezionare o meno una delle opzioni disponibili.
*Scenario principale:*
- Admin/User:
  - visualizza i bottoni interni al menù legati alle funzionalità del sito;
  - decide se visualizzare o meno una delle funzionalità disponibili (UC8, UC10, UC12, UC13).
- Sistema:
  - mostra all'utente i bottoni relativi alle funzionalità condivise dalle categorie Admin e User;
  - mostra nella vista principale della webapp la funzionalità selezionata dall'utente.

==== UC5.2 - Visualizzazione funzionalità Admin
#figure(
  image("/imgs/Uml/UC5.2.png", width: 80%),
  caption: [
    Visualizzazione funzionalità Admin
  ],
)
*Attori:*
- Admin.
- *Precondizioni:*
- L'utente sta visualizzando le opzioni del menù;
- L'utente fa parte della categoria Admin.
*Postcondizioni:*
- L'utente visualizza le opzioni del menù della categoria Admin;
- L'utente decide se selezionare o meno una delle opzioni disponibili.
*Scenario principale:*
- Admin:
  - visualizza i bottoni interni al menù legati alle funzionalità del sito;
  - decide se visualizzare o meno una delle funzionalità disponibili (UC14, UC16, UC17).
- Sistema:
  - mostra all'utente i bottoni relativi alle funzionalità della categoria Admin;
  - mostra nella vista principale della webapp la funzionalità selezionata dall'utente.

=== UC6 - Visualizzazione "Profilo Utente"
#figure(
  image("/imgs/Uml/UC6.png", width: 80%),
  caption: [
    Visualizzazione "Profilo Utente"
  ],
)
*Attori:*
- Admin;
- User.
*Precondizioni:*
- L'utente è autenticato nel sistema ed è dunque presente un cookie di sessione;
- L'utente è stato reindirizzato correttamente dal sistema.
*Postcondizioni:*
- L'utente visualizza nella vista principale della pagina il suo profilo.
*Scenario principale:*
- Admin/User:
  - seleziona il bottone del profilo utente nell'header per visualizzarne il contenuto;
  - visualizza i dati utente (UC6.1);
  - decide se modificare i dati modificabili, ovvero email e password (UC6.2).
- Sistema:
  - verifica che utente sta richiedendo di visualizzare il proprio profilo tramite cookies di sessione;
  - mostra all'utente i suoi dati, permettendogli di visualizzare le sue informazioni (UC6.1);
  - fornisce all'utente la possibilità di modificare alcuni dati non strettamente legati ad esso, ovvero password ed email (UC6.2).
*Generalizzazioni:*
- *Attori:*
- Admin --> User.
- *Use Case:*
- UC6.1 - Visualizzazione dati utente
- UC6.2 - Modifica dati utente

==== UC6.1 - Visualizzazione dati utente
#figure(
  image("/imgs/Uml/UC6.1.png", width: 80%),
  caption: [
    Visualizzazione dati utente
  ],
)
*Attori:*
- Admin;
- User.
*Precondizioni:*
- L'utente sta visualizzando la vista "Profilo Utente" nella pagina principale.
*Postcondizioni:*
- L'utente visualizza i propri dati utente.
*Scenario principale:*
- Admin/User:
  - visualizza i dati utente in chiaro, ovvero anagrafica, email e username (UC6.1.1, UC6.1.2, UC6.1.3);
  - decide se visualizzare i dati nascosti, ovvero la password (UC6.1.4).
- Sistema:
  - mostra all'utente i suoi dati utente in chiaro, ovvero anagrafica, email e username (UC6.1.1, UC6.1.2, UC6.1.3);
  - se richiesto mostra all'utente i dati nascosti, ovvero la password (UC6.1.4).
*Generalizzazioni:*
- *Attori:*
- Admin --> User.
- *Use Case:*
- UC6.1.1 - Visualizzazione anagrafica
- UC6.1.2 - Visualizzazione email
- UC6.1.3 - Visualizzazione username
- UC6.1.4 - Visualizzazione password

===== UC6.1.1 - Visualizzazione anagrafica
*Attori:*
- Admin;
- User.
*Precondizioni:*
- L'utente sta visualizzando la vista "Profilo Utente" nella pagina principale.
*Postcondizioni:*
- L'utente visualizza la propria anagrafica, ovvero nome, cognome e data di nascita.
*Scenario principale:*
- Admin/User:
  - visualizza la propria anagrafica, ovvero nome, cognome e data di nascita.
- Sistema:
  - mostra all'utente i suoi dati anagrafici in chiaro, ovvero nome, cognome e data di nascita.

===== UC6.1.2 - Visualizzazione email
*Attori:*
- Admin;
- User.
*Precondizioni:*
- L'utente sta visualizzando la vista "Profilo Utente" nella pagina principale.
*Postcondizioni:*
- L'utente visualizza la propria email.
*Scenario principale:*
- Admin/User:
  - visualizza la propria email.
- Sistema:
  - mostra all'utente la sua email in chiaro.

===== UC6.1.3 - Visualizzazione username
*Attori:*
- Admin;
- User.
*Precondizioni:*
- L'utente sta visualizzando la vista "Profilo Utente" nella pagina principale.
*Postcondizioni:*
- L'utente visualizza il proprio username.
*Scenario principale:*
- Admin/User:
  - visualizza il proprio username.
- Sistema:
  - mostra all'utente il suo username in chiaro.

===== UC6.1.4 - Visualizzazione password
*Attori:*
- Admin;
- User.
*Precondizioni:*
- L'utente sta visualizzando la vista "Profilo Utente" nella pagina principale;
- L'utente decide di visualizzare la propria password in chiaro;
- L'utente visualizza la propria password nascosta.
*Postcondizioni:*
- L'utente visualizza la propria password in chiaro.
*Scenario principale:*
- Admin/User:
  - visualizza la propria password nascosta;
  - decide di visualizzare la propria password in chiaro;
  - visualizza la propria password in chiaro.
- Sistema:
  - mostra all'utente la sua password nascosta;
  - prende a conoscenza l'intenzione dell'utente di visualizzare la password in chiaro;
  - mostra all'utente la sua password in chiaro.

==== UC6.2 - Modifica dati utente
#figure(
  image("/imgs/Uml/UC6.2.png", width: 80%),
  caption: [
    Modifica dati utente
  ],
)
*Attori:*
- Admin;
- User.
*Precondizioni:*
- L'utente sta visualizzando nella pagina principale la vista "Profilo Utente";
- L'utente decide di modificare i propri dati modificabili.
*Postcondizioni:*
- L'utente modifica i propri dati modificabili;
- I nuovi dati vengono sostituiti ai precedenti e salvati.
*Scenario principale:*
- Admin/User:
  - decide di modificare i propri dati modificabili, ovvero email (UC6.2.1) e password (UC6.2.2);
  - inserisce i nuovi dati che vuole sostituire ai precedenti;
  - conferma i nuovi dati che vuole sostituire ai precedenti;
  - conferma la sua scelta confermando il salvataggio dei nuovi dati nel sistema;
  - nega la sua scelta tramite il processo di annullamento dell'operazione.
- Sistema:
  - prende a conoscenza l'intenzione dell'utente di modificare i propri dati modificabili, ovvero email (UC6.2.1) e password (UC6.2.2);
  - modifica l'interfaccia per permettere all'utente di inserire i nuovi dati ed aggiungendo l'opzione di conferma della modifica dei dati;
  - se i nuovi dati vengono confermati, sostituisce i vecchi dati con i nuovi dati all'interno del sistema e li salva;
  - se i nuovi dati non vengono confermati, li scarta e mostra di nuovo l'interfaccia precedente.
*Generalizzazioni:*
- *Attori:*
- Admin --> User.
- *Use Case:*
- UC6.2.1 - Inserimento nuova email
- UC6.2.2 - Inserimento nuova password

===== UC6.2.1 - Inserimento nuova email
*Attori:*
- Admin;
- User.
*Precondizioni:*
- L'utente sta visualizzando nella pagina principale la vista "Profilo Utente";
- L'utente decide di modificare la propria email.
*Postcondizioni:*
- L'utente modifica la propria email;
- La nuova email viene sostituita alla precedente e salvata.
*Scenario principale:*
- Admin/User:
  - decide di modificare la propria email;
  - inserisce la nuova email;
  - conferma la nuova email;
  - conferma la sua scelta confermando il salvataggio della nuova email nel sistema;
  - nega la sua scelta tramite il processo di annullamento dell'operazione.
- Sistema:
  - prende a conoscenza l'intenzione dell'utente di modificare la propria email;
  - modifica l'interfaccia per permettere all'utente di inserire la nuova email ed aggiungendo l'opzione di conferma della modifica dell'email;
  - se la nuova email viene confermata, sostituisce la vecchia email con la nuova email all'interno del sistema e la salva;
  - se la nuova email non viene confermata, la scarta e mostra di nuovo l'interfaccia precedente.

===== UC6.2.2 - Inserimento nuova password
*Attori:*
- Admin;
- User.
*Precondizioni:*
- L'utente sta visualizzando nella pagina principale la vista "Profilo Utente";
- L'utente decide di modificare la propria password.
*Postcondizioni:*
- L'utente modifica la propria password;
- La nuova password viene sostituita alla precedente e salvata.
*Scenario principale:*
- Admin/User:
  - decide di modificare la propria password;
  - inserisce la nuova password;
  - conferma la nuova password;
  - conferma la sua scelta confermando il salvataggio della nuova password nel sistema;
  - nega la sua scelta tramite il processo di annullamento dell'operazione.
- Sistema:
  - prende a conoscenza l'intenzione dell'utente di modificare la propria password;
  - modifica l'interfaccia per permettere all'utente di inserire la nuova password ed aggiungendo l'opzione di conferma della modifica dell'password;
  - se la nuova password viene confermata, sostituisce la vecchia password con la nuova password all'interno del sistema e la salva;
  - se la nuova password non viene confermata, la scarta e mostra di nuovo l'interfaccia precedente.

=== UC7 - Logout
#figure(
  image("/imgs/Uml/UC7.png", width: 80%),
  caption: [
    Logout
  ],
)
*Attori:*
- Admin;
- User.
*Precondizioni:*
- L'utente è autenticato nel sistema ed è dunque presente un cookie di sessione;
- L'utente è stato reindirizzato correttamente dal sistema.
*Postcondizioni:*
- Il cookie di sessione viene rimosso;
- L'utente viene reindirizzato alla pagina di login.
*Scenario principale:*
- Admin/User:
  - decide di uscire dalla piattaforma tramite l'opzione di logout.
- Sistema:
  - prende a conoscenza la decisione dell'utente di voler uscire dalla piattaforma;
  - rimuove i cookie di sessione relativi all'utente;
  - reindirizza l'utente alla pagina di login della piattaforma.
*Generalizzazioni:*
- *Attori:*
- Admin --> User.

=== UC8 - Visualizzazione "Ricerca"
#figure(
  image("/imgs/Uml/UC8.png", width: 80%),
  caption: [
    Visualizzazione "Ricerca"
  ],
)
*Attori:*
- Admin;
- User.
*Precondizioni:*
- L'utente è stato reindirizzato correttamente dal sistema.
*Postcondizioni:*
- L'utente visualizza la vista "Ricerca" nella pagina principale
*Scenario principale:*
- Admin/User:
  - decide di visitare e visualizzare la vista "Ricerca"
- Sistema:
  - prende a conoscenza la decisione dell'utente di voler cambiare vista;
  - reindirizza l'utente alla vista scelta.
*Generalizzazioni:*
- *Attori:*
- Admin --> User.
- *Use Case:*
- UC8.1 - Barra di ricerca
- UC8.2 - Visualizzazione risultati di ricerca

==== UC8.1 - Barra di ricerca per "Ricerca"
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Barra di ricerca per "Ricerca"
  ],
)
*Attori:*
- Admin;
- User.
*Precondizioni:*
- L'utente si trova nella vista "Ricerca" della pagina principale;
- L'utente decide di fare una ricerca e compilare quindi i campi necessari.
*Postcondizioni:*
- L'utente visualizza i risultati della ricerca:
  + in caso la ricerca sia andata a buon fine, l'utente visualizza la lista di risultati (UC8.2);
  + in caso la ricerca non sia andata a buon fine l'utente visualizza un messaggio informativo (UC18).
*Scenario principale:*
- Admin/User:
  - decide di fare una ricerca e compilare quindi i campi necessari.
  - compila correttamente i campi;
  - visualizza i risultati della ricerca (UC8.2/UC18).
- Sistema:
  - elabora la richiesta dell'utente;
  - mostra a schermo i risultati dell'elaborazione.
*Generalizzazioni:*
- *Attori:*
- Admin --> User.
- *Use Case:*
- UC8.1.1 - Scelta input "Topic";
- UC8.1.2 - Completamento input "Nome Topic";
- UC8.1.3 - Scelta input "Top N";
- UC8.1.4 - Selezione input "Cronologia";
- UC8.1.5 - Avvio ricerca "Ricerca".

===== UC8.1.1 - Scelta input "Topic"
*Attori:*
- Admin;
- User.
*Precondizioni:*
- L'utente ha deciso di fare una ricerca e sta quindi compilando i campi necessari;
- L'utente sta scegliendo un opzione per l'input "Topic".
*Postcondizioni:*
- L'utente ha compilato il campo "Topic".
*Scenario principale:*
- Admin/User:
  - visualizza correttamente le opzioni dell'input "Topic";
  - sceglie una delle opzioni dell'input "Topic".
- Sistema:
  - mostra all'utente le opzioni per l'input "Topic".

===== UC8.1.2 - Completamento input "Nome Topic"
*Attori:*
- Admin;
- User.
*Precondizioni:*
- L'utente ha deciso di fare una ricerca e sta quindi compilando i campi necessari;
- L'utente sta completando l'input "Nome Topic".
*Postcondizioni:*
- L'utente ha compilato il campo "Nome Topic".
*Scenario principale:*
- Admin/User:
  - inizia a completare l'input "Nome Topic";
  - visualizza suggerimenti di autocompletamento dell'input "Nome Topic";
  - conclude il completamento dell'input;
- Sistema:
  - mostra all'utente i suggerimenti per l'autocompletamento per l'inupt relativo.

===== UC8.1.3 - Scelta input "Top N"
*Attori:*
- Admin;
- User.
*Precondizioni:*
- L'utente ha deciso di fare una ricerca e sta quindi compilando i campi necessari;
- L'utente sta scegliendo un opzione per l'input "Top N".
*Postcondizioni:*
- L'utente ha compilato il campo "Top N".
*Scenario principale:*
- Admin/User:
  - visualizza correttamente le opzioni dell'input "Top N";
  - sceglie una delle opzioni dell'input "Top N".
- Sistema:
  - mostra all'utente le opzioni per l'input "Top N".

===== UC8.1.4 - Selezione input "Cronologia"
*Attori:*
- Admin;
- User.
*Precondizioni:*
- L'utente ha deciso di effettura una ricerca utlizzando l'autocompletamento tramite cronologia.
- L'utente sta scegliendo un opzione per l'input "Cronologia".
*Postcondizioni:*
- L'utente ha compilato il campo "Cronologia".
*Scenario principale:*
- Admin/User:
  - visualizza correttamente le opzioni dell'input "Cronologia";
  - sceglie una delle opzioni dell'input "Cronologia".
- Sistema:
  - mostra all'utente le opzioni per l'input "Cronologia";
  - autocompila gli altri campi in base alle impostazioni dell'opzione di "Cronologia" selezionata.

===== UC8.1.5 - Avvio ricerca
*Attori:*
- Admin;
- User.
*Precondizioni:*
- L'utente ha deciso di effettura una ricerca utlizzando l'autocompletamento tramite cronologia;
- L'utente ha finito di compilare i campi per la ricerca.
*Postcondizioni:*
- Il sistema inizia l'elaborazione della richiesta dell'utente.
*Scenario principale:*
- Admin/User:
  - interagisce con il pulsante di avvio ricerca.
- Sistema:
  - estrapola i dati dalla barra di ricerca;
  - inizia l'elaborazione della richiesta ell'utente.

==== UC8.2 - Visualizzazione risultati di ricerca per "Ricerca"
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Visualizzazione risultati di ricerca per "Ricerca"
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

*Estensioni:*
- UC18 - Errore di ricerca.

*Generalizzazioni:*
- *Attori:*
- Admin --> User.
- *Use Case:*
- UC8.2.1 - Visualizzazione dettagli singolo "Risultato".

===== UC8.2.1 - Visualizzazione dettagli singolo "Risultato"
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Visualizzazione dettagli singolo "Risultato"
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

*Generalizzazioni:*
- *Attori:*
- Admin --> User.
- *Use Case:*
- UC8.2.1.1 - Visualizzazione "ID" risultato;
- UC8.2.1.2 - Visualizzazione "Nome" risultato;
- UC8.2.1.3 - Visualizzazione "Score" risultato;
- UC8.2.1.4 - Bottone "Inserimento Feedback".

====== UC8.2.1.1 - Visualizzazione "ID" risultato
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Visualizzazione "ID" risultato
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

====== UC8.2.1.2 - Visualizzazione "Nome" risultato
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Visualizzazione "Nome" risultato
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

====== UC8.2.1.3 - Visualizzazione "Score" risultato
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Visualizzazione "Score" risultato
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

====== UC8.2.1.4 - Bottone "Inserimento Feedback"
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Bottone "Inserimento Feedback"
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

=== UC9 - Inserimento "Feedback"
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Inserimento "Feedback"
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

*Generalizzazioni:*
- *Attori:*
- Admin --> User.
- *Use Case:*
- UC9.1 - Visualizzazione dati ricerca;
- UC9.2 - Completamento input "Valutazione";
- UC9.3 - Completamento input "Commento".

==== UC9.1 - Visualizzazione dati ricerca
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Visualizzazione dati ricerca
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

==== UC9.2 - Completamento input "Valutazione"
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Completamento input "Valutazione"
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

==== UC9.3 - Completamento input "Commento"
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Completamento input "Commento"
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

=== UC10 - Visualizzazione "Catalogo Prodotti"
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Visualizzazione "Catalogo Prodotti"
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

*Generalizzazioni:*
- *Attori:*
- Admin --> User.
- *Use Case:*
- UC10.1 - Barra di ricerca per "Catalogo Prodotti";
- UC10.2 - Visualizzazione risultati di ricerca per "Catalogo Prodotti".

==== UC10.1 - Barra di ricerca per "Catalogo Prodotti"
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Barra di ricerca per "Catalogo Prodotti"
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

*Generalizzazioni:*
- *Attori:*
- Admin --> User.
- *Use Case:*
- UC10.1.1 - Completamento input "Codice Prodotto";
- UC10.1.2 - Completamento input "Nome Prodotto";
- UC10.1.3 - Selezione input "Linea Commerciale";
- UC10.1.4 - Completamento input "Settore Commerciale";
- UC10.1.5 - Completamento input "Marca Prodotto";
- UC10.1.6 - Selezione input "Provenienza Prodotto";
- UC10.1.7 - Avvio ricerca dentro "Catalogo Prodotti";

===== UC10.1.1 - Completamento input "Codice Prodotto"
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Completamento input "Codice Prodotto"
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

===== UC10.1.2 - Completamento input "Nome Prodotto"
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Completamento input "Nome Prodotto"
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

===== UC10.1.3 - Selezione input "Linea Commerciale"
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Selezione input "Linea Commerciale"
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

===== UC10.1.4 - Completamento input "Settore Commerciale"
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Completamento input "Settore Commerciale"
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

===== UC10.1.5 - Completamento input "Marca Prodotto"
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Completamento input "Marca Prodotto"
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

===== UC10.1.6 - Selezione input "Provenienza Prodotto"
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Selezione input "Provenienza Prodotto"
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

===== UC10.1.7 - Avvio ricerca dentro "Catalogo Prodotti"
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Avvio ricerca dentro "Catalogo Prodotti"
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

==== UC10.2 - Visualizzazione risultati di ricerca per "Catalogo Prodotti"
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Visualizzazione risultati di ricerca per "Catalogo Prodotti"
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

*Estensioni:*
- UC18 - Errore di ricerca.

*Generalizzazioni:*
- *Attori:*
- Admin --> User.
- *Use Case:*
- UC10.2.1 - Visualizzazione dettagli singolo "Prodotto".

===== UC10.2.1 - Visualizzazione dettagli singolo "Prodotto"
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Visualizzazione dettagli singolo "Prodotto"
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

*Generalizzazioni:*
- *Attori:*
- Admin --> User.
- *Use Case:*
- UC10.2.1.1 - Visualizzazione "Immagine" prodotto;
- UC10.2.1.2 - Visualizzazione "ID" prodotto;
- UC10.2.1.3 - Visualizzazione "Nome" prodotto;
- UC10.2.1.4 - Estensione dettagli prodotto;

====== UC10.2.1.1 - Visualizzazione "Immagine" prodotto
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Visualizzazione "Immagine" prodotto
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

====== UC10.2.1.2 - Visualizzazione "ID" prodotto
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Visualizzazione "ID" prodotto
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

====== UC10.2.1.3 - Visualizzazione "Nome" prodotto
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Visualizzazione "Nome" prodotto
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

====== UC10.2.1.4 - Estensione dettagli prodotto
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Estensione dettagli prodotto
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

=== UC11 - Visualizzazione dettaglio "Prodotto"
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Estensione dettagli prodotto
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

*Generalizzazioni:*
- *Attori:*
- Admin --> User.
- *Use Case:*
- UC11.1 - Visualizzazione "Immagine" prodotto;
- UC11.2 - Visualizzazione "ID" prodotto;
- UC11.3 - Visualizzazione "Nome" prodotto;
- UC11.4 - Visualizzazione "Linea Commerciale" prodotto;
- UC11.5 - Visualizzazione "Settore Commerciale" prodotto;
- UC11.6 - Visualizzazione "Marca" prodotto;
- UC11.7 - Visualizzazione "Provenienza" prodotto;

==== UC11.1 - Visualizzazione "Immagine" prodotto
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Visualizzazione "Immagine" prodotto
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

==== UC11.2 - Visualizzazione "ID" prodotto
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Visualizzazione "ID" prodotto
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

==== UC11.3 - Visualizzazione "Nome" prodotto
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Visualizzazione "Nome" prodotto
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

==== UC11.4 - Visualizzazione "Linea Commerciale" prodotto
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Visualizzazione "Linea Commerciale" prodotto
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

==== UC11.5 - Visualizzazione "Settore Commerciale" prodotto
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Visualizzazione "Settore Commerciale" prodotto
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

==== UC11.6 - Visualizzazione "Marca" prodotto
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Visualizzazione "Marca" prodotto
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

==== UC11.7 - Visualizzazione "Provenienza" prodotto
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Visualizzazione "Provenienza" prodotto
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

=== UC12 - Visualizzazione "Lista Clienti"
#figure(
  image("/imgs/Uml/UC1.png", width: 80%),
  caption: [
    Visualizzazione "Lista Clienti"
  ],
)
*Attori:*

*Precondizioni:*

*Postcondizioni:*

*Scenario principale:*

*Generalizzazioni:*
- *Attori:*
- Admin --> User.
- *Use Case:*
- UC12.1 - Barra di ricerca per "Lista Clienti";
- UC12.2 - Visualizzazione risultati di ricerca per "Lista Clienti".

=== UC13 - Visualizzazione "Statistiche Mensili"

=== UC14 - Visualizzazione "Gestione Utenti"

=== UC15 - Visualizzazione dettaglio "Utente"

=== UC16 - Visualizzazione "Cronologia Ricerche"

=== UC17 - Visualizzazione "Cronologia Feedback"

=== UC18 - Errore di ricerca

=== UC19 - Footer

/*
== UC3 - Visualizzazione pagina profilo personale

#figure(
  image("/imgs/Uml/UC3.jpg", width: 80%),
  caption: [
    Visualizzazione pagina profilo personale
  ],
)

*Attori:*
- Admin.
*Precondizioni:*
- L’utente ha già effettuato l’accesso alla piattaforma come admin (UC1).
*Postcondizioni:*
- Viene visualizzata la pagina del profilo.
*Scenario principale:*
- Admin:
   - Clicca sul tasto “Profilo” presente nella pagina principale.
- Sistema:
   - Stampa correttamente a schermo la pagina del profilo.
*Generalizzazioni:*
- UC3.1 - Visualizzazione dati personali.
- UC3.2 - Visualizzazione lista utenti.
- UC3.3 - Aggiunta nuovo utente.

=== UC3.1 - Visualizzazione dati personali

#figure(
  image("/imgs/Uml/UC3.1.jpg", width: 80%),
  caption: [
    Visualizzazione dati personali
  ],
)

*Attori:*
- Admin
*Precondizioni:*
- L'utente ha già fatto l'accesso nella piattaforma ed è l'admin che possiede i requisiti necessari.
- il sistema ha stampato correttamente la pagina del profilo (UC3).
- il sistema ha correttamente caricato i dati dell'admin.
*Postcondizioni:*
- Vengono visualizzate correttamente le informazioni personali.
*Scenario principale:*
- Admin:
  - Ha correttamente cliccato sulla pagina "Profilo".
  - Visualizza le sue informazioni perosnali.
- Sistema:
  - Stampa corretamente a schermo le informazioni personali.
*Generalizzazioni:*
- UC3.1.1 Visualizzazione email personale.
- UC3.1.2 Visualizzazione nome admin.
- UC3.1.3 Visualizzazione cognome admin.

==== UC3.1.1 - Visualizzazione email personale
*Attori:*
- Admin
*Precondizioni:*
- il sistema ha caricato correttamente la sezione dei dati personali (UC3.1)
*Postcondizioni:*
- Viene visualizzata correttamente l'email.
*Scenario principale:*
- Admin:
  - Si trova correttamente nella sezione profilo.
  - Visualizza la propria email personale.

==== UC3.1.2 - Visualizzazione nome admin
*Attori:*
- Admin
*Precondizioni:*
- il sistema ha caricato correttamente la sezione dei dati personali (UC3.1)
*Postcondizioni:*
- Viene visualizzata correttamente il nome dell'utente.
*Scenario principale:*
- Admin:
  - Si trova correttamente nella sezione profilo personale.
  - Visualizza il proprio nome.

==== UC.3.1.3 - Visualizzazione cognome admin
*Attori:*
- Admin
*Precondizioni:*
- il sistema ha caricato correttamente la sezione dei dati personali (UC3.1)
*Postcondizioni:*
- Viene visualizzata correttamente il cognome dell'utente.
*Scenario principale:*
- Admin:
  - Si trova correttamente nella sezione profilo personale.
  - Visualizza il proprio cognome.

=== UC3.2 - Visualizzazione lista utenti

#figure(
  image("/imgs/Uml/UC3.2.jpg", width: 80%),
  caption: [
    Visualizzazione lista utenti
  ],
)

*Attori:*
- Admin
*Precondizioni:*
- L'utente ha già fatto l'accesso nella piattaforma ed è l'admin che possiede i requisiti necessari.
- il sistema ha stampato correttamente la pagina del profilo (UC3).
- il sistema ha correttamente caricato la lista degli utenti.
*Postcondizioni:*
- Viene visualizzata correttamente la lista degli utenti.
*Scenario principale:*
- Admin:
  - Ha correttamente cliccato sulla pagina "Profilo".
  - Visualizza la lista degli utenti.
- Sistema:
  - Stampa correttamente a schermo la lista.
*Generalizzazioni:*
- UC3.2.1 Visualizzazione email utente.
- UC3.2.2 Visualizzazione password utente.
- UC3.2.3 Eliminazione utente.

==== UC3.2.1 - Visualizzazione email utente
*Attori:*
- Admin
*Precondizioni:*
- Il sistema ha caricato correttamente la lista degli utenti (UC3.2).
*Postcondizioni:*
- Viene visualizzata l'email di un utente della lista.
*Scenario principale:*
- Admin:
  - Si trova correttamente nella sezione della lista degli utenti.
  - Visualizza l'email dell'utente che desidera.

==== UC3.2.2 - Visualizzazione password utente
*Attori:*
- Admin
*Precondizioni:*
- Il sistema ha caricato correttamente la lista degli utenti (UC3.2).
*Postcondizioni:*
- Viene visualizzata la password di un utente della lista.
*Scenario principale:*
- Admin:
  - Si trova correttamente nella sezione della lista degli utenti.
  - Visualizza la password dell'utente che desidera.

==== UC3.2.3 - Eliminazione utente.
*Attori:*
- Admin.
*Precondizioni:*
- Il sistema ha caricato correttamente la lista degli utenti (UC3.2)
*Postcondizioni:*
- L'utente ha eliminato correttamente l'utente con i privilegi base.
*Scenario principale:*
- Admin:
    - Si trova correttamente nella sezione della lista degli utenti.
    - Clicca sul bottone "Elimina" a lato dell'utente che vuole eliminare.
- Sistema:
    - Elimina dal sistema il profilo dell'utente.


=== UC3.3 - Aggiunta nuovo utente

#figure(
  image("/imgs/Uml/UC3.3.jpg", width: 80%),
  caption: [
    Aggiunta nuovo utente
  ],
)

*Attori:*
- Admin.
*Precondizioni:*
- L'utente ha già fatto l'accesso nella piattaforma ed è l'admin che possiede i requisiti necessari.
- Il sistema ha stampato correttamente la pagina del profilo (UC3).
- Il ha correttamente caricato il form per l'aggiunta di un nuovo utente.
*Postcondizioni:*
- L'admin ha aggiunto correttamente il nuovo utente con i privilegi base (User).
*Scenario principale:*
- Admin:
    - Ha correttamente cliccato sulla pagina "Profilo".
    - Visualizza il form per l'aggiunta di un nuovo utente.
    - Inserisce la email del nuovo utente nel campo [email] (UC3.3.1).
    - Inserisce la password del nuovo utente nel campo [password] (UC3.3.2).
- Sistema:
    - Verifica che i campi non siano vuoti (email, password).
    - Se i campi sono riempiti correttamente, salva nel sistema le credenziali dei nuovi utenti.
*Generalizzazioni:*
- UC3.3.1 - Inserimento email.
- UC3.3.2 - Inserimento password.

#figure(
  image("/imgs/Uml/UC4 Generalizzazione.jpg", width: 80%),
  caption: [
    Inserimento email e password per nuovo utente
  ],
)

==== UC3.3.1 - Inserimento email
*Attori:*
- Admin.
*Precondizioni:*
- Il sistema ha caricato correttamente il campo email all'interno del form.
*Postcondizioni:*
- L'utente inserisce correttamente la email dell'utente che vuole aggiungere.
*Scenario principale:*
- Admin:
    - inserisce la email nel campo email.
- Sistema:
    - il sistema verifica che l'email inserita sia nel formato corretto.
    - prosegue con la creazione dell'utente utilizzando l'email inserita.

==== UC3.3.2 - Inserimento password
*Attori:*
- Admin.
*Precondizioni:*
- Il sistema ha caricato correttamente il campo password all'interno del form.
*Postcondizioni:*
- L'utente inserisce correttamente la password dell'utente che vuole aggiungere.
*Scenario principale:*
- Admin:
    - inserisce la password nel campo password.
- Sistema:
    - prosegue con la creazione dell'utente utilizzando la password inserita.

== UC6 - Vista Cliente per prodotti

#figure(
  image("/imgs/Uml/UC6.jpg", width: 80%),
  caption: [
    Vista cliente per prodotti
  ],
)

*Attori:*
- Admin.
- Users.
*Precondizioni:*
- L'utente ha eseguito l'accesso correttamente.
- L'utente è nella pagina principale della piattaforma.
*Postcondizioni:*
- L'utente visualizza correttamente la lista dei prodotti consigliati per il determinato cliente.
*Scenario principale:*
- Admin/Users:
    - Clicca il tasto "filtri" presente nella schermata principale.
    - Seleziona il campo "Cliente per prodotti".
    - Seleziona il Cliente desiderato dal menù a tendina.
- Sistema:
    - crea correttamente la vista con i prodotti suggeriti associati al cliente.


== UC7 - Vista prodotti per cliente

#figure(
  image("/imgs/Uml/UC7.jpg", width: 80%),
  caption: [
    Vista prodotti per cliente
  ],
)

*Attori:*
- Admin.
- Users.
*Precondizioni:*
- L'utente ha eseguito l'accesso correttamente.
- L'utente è nella pagina principale della piattaforma.
*Postcondizioni:*
- L'utente visualizza correttamente la lista dei Clienti consigliati per il determinato prodotto.
*Scenario principale:*
- Admin/Users:
    -Clicca il tasto "filtri" presente nella schermata principale.
    - Seleziona il campo "Prodotto per Clienti".
    - Seleziona il "Prodotto" desiderato dal menù a tendina.
- Sistema:
    - crea correttamente la vista con i clienti suggeriti associati al prodotto.

== UC8 - Feedback raccomandazione

#figure(
  image("/imgs/Uml/UC8.jpg", width: 80%),
  caption: [
    Feedback raccomandazione
  ],
)

*Attori:*
- Admin
- Users
*Precondizioni:*
- L'utente ha eseguito l'accesso correttamente.
- L'utente ha visualizzato la lista "Cliente per prodotti" o "Prodotto per Clienti".
*Postcondizioni:*
- L'utente ha correttamente lasciato un feedback per la lista mostrata.
*Scenario principale:*
- Admin/Users:
    - Seleziona un valore in un range da 1 a 5.
- Sistema:
    - Registra correttamente la valutazione dell'utente all'interno del sistema.

== UC9 - Logout
#figure(
  image("/imgs/Uml/UC9.jpg", width: 80%),
  caption: [
    Logout
  ],
)
*Attori:*
- Admin
- Users
*Precondizioni:*
- L'utente ha eseguito l'accesso correttamente (UC1).
*Postcondizioni:*
- L'utente ha effettuato correttamente il logout, uscendo dalla propria sessione.
*Scenario principale:*
- Admin/Users:
    - Seleziona l'opzione di logout presente nella pagina in cui si trova
- Sistema:
    - Chiede conferma all'utente sul voler uscire dalla sessione corrente;
    - Termina la sessione dell'utente, reindirizzandolo alla pagina di login.

*/
= Requisiti
In questa sezione esponiamo i requisiti individuati durante l'attività di analisi a partire dai casi
d'uso, dall’analisi del capitolato d’appalto e dagli incontri interni e con il proponente. Ogni
requisito è identificato da un codice univoco, secondo un formalismo individuato
all’interno del documento Norme di Progetto.

Possiamo in particolare evidenziare tre categorie principali di requisiti:
- funzionali, dal punto di vista dell'usabilità del prodotto finale;
- di qualità, cioè quali strumenti/documentazione fornire;
- di vincolo, cioè dal punto di vista di quali tecnologie presentare.


== Requisiti funzionali

I requisiti funzionali descrivono le funzionalità del sistema, le azioni
che il sistema può compiere e le informazioni che questo può fornire.\

Il numerolo di ciascuno rispecchia, ove previsto, gli UC presenti, mentre le sigle sotto
riportate indicano:
- RDF: Requisito Desiderabile Funzionale;
- ROF: Requisito Obbligatorio Funzionale.


#table(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: center,
  [*Codice*], [*Descrizione*], [*Fonti*],
  [ROF 1],
  [L’utente deve poter accedere all’applicazione],
  [UC1, UC1.1, UC1.2],
  [RDF 2],
  [Il sistema deve visualizzare un messaggio di errore esplicativo],
  [UC2],
  [ROF 3],
  [L’admin deve poter visualizzare la lista degli utenti],
  [UC3],
  [ROF 4],
  [L’admin deve poter aggiungere un nuovo utente],
  [UC4, UC4.1, UC4.2],
  [ROF 5],
  [L’admin deve poter eliminare un determinato utente],
  [UC5],
  [ROF 6],
  [L’utente deve poter vedere la lista dei prodotti consigliati per un determinato cliente],
  [UC6, Capitolato],
  [ROF 7],
  [L’utente deve poter vedere la lista dei clienti consigliati per un determinato prodotto],
  [UC7, Capitolato],
  [ROF 8],
  [L’utente deve poter lasciare un feedback per valutare il risultato della ricerca],
  [UC8, Capitolato],
  [ROF 9],
  [L’utente deve poter effettuare il logout],
  [UC9],
  [RDF 10],
  [L’utente deve poter caricare un dataset],
  [Verbale Interno],
  [RDF 11],
  [L’utente deve poter avviare il training di un determinato dataset],
  [Verbale Interno],
  [RDF 12],
  [L’utente deve poter visualizzare la lista dei suoi clienti],
  [Verbale Interno],
  [RDF 13],
  [L’utente deve poter visualizzare la lista dei suoi prodotti],
  [Verbale Interno],
  // si possono anche mettere opzionali
  [RDF 14],
  [L’utente deve poter visualizzare una cronologia delle interrogazioni più recenti],
  [Verbale Esterno],
  [RDF 15],
  [L’utente deve poter visualizzare una vista con statistiche mensili sull'efficienza delle raccomandazioni],
  [Verbale Esterno],
  
)





== Requisiti di qualità

I requisiti di qualità descrivono come un sistema deve essere, o
come il sistema deve esibirsi, per soddisfare le esigenze dell'utente.\

Le sigle sotto riportate possono essere così classificate:
- RDQ: Requisito Desiderabile di Qualità;
- ROQ: Requisito Obbligatorio di Qualità.

#table(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: center,
  [*Codice*], [*Descrizione*], [*Fonti*],
  [ROQ 1],
  [Progettazione architetturale e tecnologie utilizzate],
  [Capitolato],
  [ROQ 2],
  [Schema di progettazione della base di dati],
  [Capitolato],
  [ROQ 3],
  [Codice prodotto in formato sorgente reso disponibile tramite repo pubblici],
  [Capitolato],
  [ROQ 4],
  [Documentazione descrittiva del sistema di raccomandazione implementato],
  [Capitolato],
)


== Requisiti di vincolo

I requisiti di vincolo descrivono i limiti e le restrizioni che un sistema
deve rispettare per soddisfare le esigenze dell'utente.\

Le sigle sotto riportate possono essere così classificate:
- RDV: Requisito Desiderabile di Vincolo;
- ROV: Requisito Obbligatorio di Vincolo.

#table(
  columns: (22mm, auto, 35mm),
  inset: 10pt,
  align: center,
  [*Codice*], [*Descrizione*], [*Fonti*],
  [ROV 1],
  [Database relazionale sviluppato con MySQL],
  [Capitolato],
  [RDV 2],
  [Sistema di raccomandazione sviluppato con Surprise (libreria in python)],
  [Capitolato],
  [ROV 3],
  [Visualizzazione e gestione dei feedback UI tramite piattaforma web-based],
  [Capitolato],
  [RDV 4],
  [Strategie di raccomandazione con algoritmi Matrix Factorization o K-Nearest Neighbors],
  [Capitolato],
  [ROV 5],
  [Sistema di feedback],
  [Capitolato],
  [ROV 6],
  [Modalità di implementazione del sistema collaborative filtering e content-based filtering],
  [Capitolato],
  [ROV 7],
  [Misurazione prestazioni del modello utilizzando i dati presenti nel test set e delle metriche (precision e recall)],
  [Capitolato],
  [RDV 8],
  [Utilizzo del framework React per il front-end dell'applicazione],
  [Verbale interno],
  [RDV 9],
  [Utilizzo di Node.js per il front-end dell'applicazione],
  [Verbale interno],
  //forse va scritto meglio?
  [RDV 10],
  [Utilizzo e creazione di API per l'interazione fra app web-based e algoritmo di raccomandazione],
  [Verbale interno],
  [RDV 11],
  [Utilizzo della piattaforma Anaconda per la gestione dell'ambiente di sviluppo],
  [Verbale interno],
  //va bene messo qui?
  [RDV 12],
  [Possibile approccio multi-thread o multi-modello per la gestione dell'attesa in caso di interrogazione durante l'addestramento del modello],
  [Verbale Esterno],
)

=== Requisiti d'ambiente

Il prodotto è utilizzabile tramite interfaccia web-based dedicata. Ciò implica che per la fruizione del servizio, non siano necessari particolari requisiti d'ambiente. 
// questa parte va definita meglio una volta che sapremo effettivamente come gestiamo l'hosting.

=== Requisiti di performance

- Algoritmo di raccomandazione:

  Per quanto riguarda l'algoritmo utilizzato per la predizione delle raccomandazioni e la sua gestione, in seguito ad un attenta analisi e discussione congiunta con il proponente, sono sorti i seguenti requisiti:
  
  + Le misurazioni di prestazioni del modello utilizzando i dati presenti nel test set e delle metriche precision e recall devono essere ritenibili dal proponente congrui e soddisfacenti.
  + Come requisito opzionale: possibili misurazioni di performance in multithreading, se utilizzato come approccio.

- Interfaccia utente:

  Come già sopra citato, l'utente utilizzatore del servizio interagirà con l'applicativo attraverso il browser.
  In questo ambiente i requisiti prestazionali possono essere
  influenzati da diverse variabili esterne indipendenti dalla qualità del prodotto.
// forse da definire meglio una volta che avremo l'hosting, possibili domande da fare a gianluca.
  Il sistema, in accordo con il proponente, si poggerà sulla rete dell'azienda che ne usufruirà, ciò comporta che molti valori prestazionali, come velocità di risposta e robustezza, dipenderanno principalmente dalla qualità di quest'ultima.  

=== Requisiti di sicurezza

Analogamente a quanto riportato qui sopra, molti aspetti legati alla sicurezza del sistema dipenderanno, e saranno in parte risolti dai sistemi implementati nella rete aziendale su cui si poggia il prodotto.

Internamente, i requisiti di sicurezza trovati e definiti sono:
// da specificare che tipo di crittografia magari. es:RSA :RE (aspetterei di implementare)
+ Crittografia dei dati degli utenti in ingresso, quali password e identificativo.
// ha senso ritenerlo di sicurezza? :RE (secondo me si)
+ Presenza di allert informativo sulle normative dei coockie utilizzati dalla web-app.
// si può aggiungere il banner per la manutenzione del sito qui?

== Tracciamento
Il tracciamento consente di mantenere una connessione tra i requisiti e le diverse fasi del ciclo di vita del software. Permettendo di reperire i requisiti con facilità aiuta a garantire che ogni elemento del sistema software, come le funzionalità o le caratteristiche, sia allineato e coerente con i requisiti specificati durante l'analisi.

=== Fonte - Requisiti
#table(
  columns: (1fr, 1fr),
  [*Fonte*],[*Requisito*]
)
#table(
  columns: (1fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(230) } else { white },
  [*Funzionali*],[],
  [UC1, UC1.1, UC1.2],[ROF 1],
  [UC2],[ROF 2],
  [UC3],[ROF 3],
  [UC4, UC4.1, UC4.2],[ROF 4],
  [UC5],[ROF 5],
  [UC6, Capitolato],[ROF 6],
  [UC7, Capitolato],[ROF 7],
  [UC8, Capitolato],[ROF 8],
  [UC9],[ROF 9],
  [Verbale Interno],[RDF 10],
  [Verbale Interno],[RDF 11],
  [Verbale Interno],[RDF 12],
  [Verbale Interno],[RDF 13],
  [Verbale Esterno],[RDF 14],
  [Verbale Esterno],[RDF 15],
)
#table(
  columns: (1fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(230) } else { white },
  [*di Qualità*],[],
  [Capitolato],[ROQ 1],
  [Capitolato],[ROQ 2],
  [Capitolato],[ROQ 3],
  [Capitolato],[ROQ 4],
)
#table(
  columns: (1fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(230) } else { white },
  [*di Vincolo*],[],
  [Capitolato],[ROV 1],
  [Capitolato],[ROV 2],
  [Capitolato],[ROV 3],
  [Capitolato],[ROV 4],
  [Capitolato],[ROV 5],
  [Capitolato],[ROV 6],
  [Capitolato],[ROV 7],
  [Verbale Interno],[RDV 8],
  [Verbale Interno],[RDV 9],
  [Verbale Interno],[RDV 10],
  [Verbale Interno],[RDV 11],
  [Verbale Esterno],[RDV 12],           
)

== Riepilogo

#table(
  columns: (1fr, 1fr, 1fr, 1fr),
    fill: (_, row) => if calc.odd(row) { luma(230) } else { white },
  [*Tipologia*],[*Obbligatorio*], [*Desiderabile*],[*Complessivo*],
  [Funzionale],[9],[6],[15],
  [di Qualità],[4],[/],[4],
  [di Vincolo],[7],[5],[12],
  
)
#table(
  columns: (1fr, auto,),
    fill: (_, row) => if calc.odd(row) { luma(230) } else { white },
  [*Totale*],[*31*],
)

= Elenco delle immagini

- Immagine 1: Login
- Immagine 2: Inserimento email e password per accesso
- Immagine 3: Visualizzazione lista utenti
- Immagine 4: Aggiunta nuovo utente 
- Immagine 5: Inserimento email e password per nuovo utente
- Immagine 6: Eliminazione utente
- Immagine 7: Vista cliente per prodotti
- Immagine 8: Vista prodotti per cliente
- Immagine 9: Feedback raccomandazione
- Immagine 10: Logout

= Elenco delle tabelle

- Tabella 1: Requisiti funzionali
- Tabella 2: Requisiti di qualità
- Tabella 3: Requisiti di vincolo
- Tabella 4: Tracciamento fonte-requisito
- Tabella 5: Riepilogo