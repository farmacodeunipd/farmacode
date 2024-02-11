#import "/template/big_docs.typ": *

#show: project.with(
  title: "Piano di qualifica",
  managers: p.favaron,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "0.10.1", "2024-02-09", p.bomben, "", "Aggiunta sezione CV e SV, sistemato elenchi tabelle/immagini",
    "0.10.0", "2024-02-05", p.rosson, "", "Aggiunti grafici e aggiornato sezione metriche",
    "0.9.0", "2024-01-22", p.rosson, p.favaron, "Aggiunti grafici",
    "0.8.0", "2024-01-13", p.passarella, p.favaron, "Modifica sezione 5.3 e aggiunta sezione 5.4",
    "0.7.2", "2024-01-13", p.bomben, p.favaron, "Tabella di test di sistema e tracciamento",
    "0.7.1", "2024-01-12", p.favaron, p.passarella, "Aggiunte alla sezione introduzione",
    "0.7.0", "2024-01-05", p.bomben, p.favaron, "Stesura sezione 5, 6 e 7",
    "0.6.0", "2023-12-21", p.pandolfo, p.bomben, "Modifica qualità di prodotto",
    "0.5.0", "2023-12-14", p.pandolfo, p.baggio, "Prima stesura qualità di processo",
    "0.4.0", "2023-12-01", p.carraro, p.rosson, "Prima stesura qualità di prodotto",
    "0.3.0", "2023-11-27", p.carraro, p.rosson, "Stesura sezione qualità di architettura",
    "0.2.0", "2023-11-24", p.carraro, p.rosson, "Stesura sezione introduzione",
    "0.1.0", "2023-11-24", p.carraro, p.rosson, "Struttura iniziale del documento",
  ),
)

= Introduzione
== Scopo del documento
Il documento relativo al piano di qualità rappresenta un elemento di fondamentale importanza per i progetti di sviluppo software che mirano a conformarsi agli elevati standard di qualità definiti nei principi dell'ingegneria del software.\
La #glossario("qualità") e la valutazione del prodotto sono due concetti indispensabili per fare confronti o determinare il grado di aderenza alle attese.\
Il presente documento ha lo scopo di fornire una descrizione dettagliata e il più precisa possibile sulle #glossario("metriche") e sulle metodologie di controllo e misurazione della qualità nelle varie parti del prodotto software.\
Verranno definiti gli obiettivi di qualità e i relativi processi e risorse necessarie per conseguirli, oltre alla definizione dei test con la loro documentazione: metodologie ed esito. \
Il documento sarà utile a chi si occupa della creazione del prodotto, a chi userà il prodotto e a chi lo valuterà.

== Scopo del prodotto
Al giorno d'oggi l'ambito degli #glossario("e-commerce") si sta sempre più espandendo ed evolvendo. La presenza di negozi virtuali permette di accedere a molti dati legati agli acquisti, alle preferenze ed al comportamento degli utenti. Questi dati se analizzati propriamente permettono di prevedere preferenze e comportamenti futuri degli utenti, dando spazio ad operazioni di marketing mirate.

Il progetto ha lo scopo di realizzare un #glossario("sistema di raccomandazione") con relativa interfaccia web che guidi le attività dell'azienda, utilizzatrice del prodotto finale, suggerendo a quali clienti rivolgere le singole attività di marketing e commerciali, cercando i migliori clienti target a cui indirizzare determinati prodotti.\

L'appicazione è sviluppata sotto forma di #glossario("webapp") per la sua comodità, favorendo così l'accesso e la fruizioneda diversi dispositivi, sistemi o browser.\

Dall'interfaccia utente del sistema software sarà possibile selezionare uno specifico cliente e visualizzare i prodotti da lui acquistati e quelli che il sistema ha individuato come raccomandati. Inoltre selezionato un articolo o un insieme di articoli il sistema suggerisce a quali clienti proporli, selezionandoli in base a quanto probabile siano interessati per i prodotti analizzati. I vari prodotti possono essere filtrati per categoria così da facilitare ricerche e restringere il campo di soluzione.\
Ogni risultato restituito dal sistema di raccomandazione è classificabile tramite un feedback così da poter eventualmente correggere il tiro dell'algoritmo che ha fornito l'esito della suggerimento.\
L'utente amministratore ha la possibilità di creare ulteriori account per eventuali operatori che necessitano di utilizzare l'applicativo.\

== Glossario
Al fine di evitare eventuali equivoci o incomprensioni riguardo la terminologia utilizzata all'interno di questo documento, si è deciso  di adottare un Glossario, con file apposito, in cui vengono riportate tutte le definizioni rigogliose delle parole ambigue utilizzate in ambito di questo progetto. Nel documento appena descritto verranno riportati tutti i termini definiti nel loro ambiente di utilizzo con annessa descrizione del loro significato.\
La presenza di un termine all'interno del Glossario è evidenziata dal #glossario("colore blu").

== Maturità e miglioramenti
Questo documento è stato realizzato utilizzando un approccio incrementale, con lo scopo di semplificare i cambiamenti nel tempo in base alle reciproche esigenze decise da entrambi le parti, ovvero membri del gruppo di progetto e azienda proponente. Pertanto questo documento non può essere considerato esaustivo e completo.

== Riferimenti

=== Riferimenti normativi
- Norme di Progetto v.1.0.0;
- Capitolato C2: Sistemi di raccomandazione\ 
  https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C2.pdf;
- Regolamento progetto ditattico\
  https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf.

=== Riferimenti informativi
- T7 - Qualità del software (slide del corso di Ingegneria del Software)\
  https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T7.pdf;
- T8 - Qualità di processo (slide del corso di Ingegneria del Software)\
  https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T8.pdf;
- T9 - Verifica e validazione: introduzione (slide del corso di Ingegneria del Software)\
  https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T9.pdf;
- T10 - Verifica e validazione: analisti statica (slide del corso di Ingegneria del Software)\
  https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T10.pdf;
- T11 - Verifica e validazione: analisti dinamica (slide del corso di Ingegneria del Software)\
  https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T11.pdf;

#pagebreak()

= Qualità di prodotto

== Qualità dell'architettura
La qualità di una buona architettura è definita da questi aspetti: \
#table(
  columns: (auto, auto),
  stroke: (none),
  align: horizon,
  [*Aspetti auto-esplicativi o \
  non qualificabili:*], [*Aspetti considerati per\ qualificazione architettura:*],
  [- Sufficienza;],[- Modularità;],
  [- Robustezza;],[- Disponibilità;],
  [- Flessibilità;], [- Semplicità;],
  [- Riusabilità;], [- Incapsulazione;],
  [- Efficienza;], [- Coesione;],
  [- Affidabilità;], [- Basso accoppiamento.],
  [- Sicurezza rispetto a malfunzionamenti;], [],
  [- Sicurezza rispetto a intrusioni.], [],
)

=== Modularità
Si intende la suddivisione dell'architettura in parti chiare e ben distinte.\
I passaggi di qualità sono due:
- Determinare le parti che compongono l'interfaccia utente e quelle che compongono l'implementazione;
- Particolare attenzione va posto nell'evitare l'effetto domino, ovvero quando la modifica interna di una parte comporta modifiche anche al suo esterno.
Questi aspetti andranno verificati in fase di design e conseguentemente documentati. La stragegia scelta per modularizzare è ricercando information hiding.

=== Disponibilità
Anche detta availability, indica il grado di indisponibilità causata dalla manutenzione.\
Questo aspetto andrà verificato in fase di design e conseguentemente documentato.

=== Semplicità
Questo aspetto andrà verificato in fase di design e conseguentemente documentato.\
In particolare andranno verificati:
- la presenza di elementi strettamente necessari;
- ogni elemento sarà il più semplice possibile, senza renderlo banale.

=== Incapsulazione
Questo aspetto andrà verificato in fase di design e conseguentemente documentato.\
In particolare andranno verificati:
- Rendere invisibile all'esterno le componenti architetturali;
- Esporre solo l'interfaccia, nascondendo algoritmi e strutture dati usate per realizzarla;
- La manutenzione all'interfaccia non andrà a danneggiare l'implementazione.

=== Coesione
Questo aspetto andrà verificato in fase di design e conseguentemente documentato.\
In particolare andranno verificati:
- Funzionalità vicine stanno nella stessa componente;
- Minore interdipendenza fra componenti;
- Architettura più comprensibile;
- Giusto equilibrio fra modularità e coesione stessa.
La stragegia scelta per modularizzare è ricercando information hiding.

=== Accoppiamento
Questo aspetto andrà verificato in fase di design e conseguentemente documentato.
In particolare andranno verificati:
- Dipendenze fra parti, esempio parti interne ed esterne;
- Accoppiamento sia minimizzato:
  - il grado U di utilizzo reciproco di M componenti.
- Metriche fan-in e fan-out:
  - SFIN, indice di utilità;
  - SFOUT, indice di dipendenza;
  - Una buona progettazione ha componenti con SFIN elevato.

== Qualità della documentazione
#table(
  columns: (35mm, auto, 30mm),
   inset: (
    x: 5pt,
    y: 10pt,
  ),
  align: center,
  [*Obiettivo*], [*Descrizione*], [*Metriche*],
  [Correttezza \ linguistica],
  [I documenti non devono avere errori grammaticali.],
  [MPD1],
  [Leggibilità],
  [Il contenuto dei documenti deve essere comprensibile all'utente.],
  [MPD2],
)
#align(center)[Tabella 1: Qualità della documentazione]

=== Metriche utilizzate

#align(center,table(
  columns: (25mm, auto, 35mm, 35mm),
   inset: (
    x: 5pt,
    y: 10pt,
  ),
  align: center,
  [*Codice*], [*Nome metrica*], [*Valore \ accettabile*], [*Valore ottimale*], 
  [MPD1],
  [Errori Ortografici], 
  [5%],
  [0%],
  [MPD2],
  [Indice di Gulpease], 
  [≥ 40],
  [60],
))
#align(center)[Tabella 2: Metriche qualità della documentazione]
#pagebreak()

== Qualità del software
La qualità del software è una misura della conformità del prodotto rispetto ai requisiti specificati e delle sue caratteristiche intrinseche, come la manutenibilità, l'affidabilità, l'efficienza e l'usabilità. La qualità non è solo un aspetto tecnico, ma coinvolge anche la soddisfazione del cliente e l'adattamento alle esigenze del mercato.\
La qualità del software si mostra attraverso diverse dimensioni quali:
- Funzionalità;
- Usabilità;
- Portabilità;
- Efficienza;
- Affidabilità;
- Manutenibilità.

#table(
  columns: (35mm, auto, 30mm),
   inset: (
    x: 5pt,
    y: 10pt,
  ),
  align: center,
  [*Obiettivo*], [*Descrizione*], [*Metriche*],
  [Funzionalità],
  [Capacità del prodotto di offrire tutte le funzioni individuate nell’Analisi dei requisiti, soddisfando tutti i requisiti.],
  [MPD3, MPD4 \ MPD5],
  [Usabilità],
  [Capacità di essere comprensibile e di facile utilizzo per l’utente, in modo da renderne piacevole l'esperienza.],
  [MPD6, MPD7],
  [Portabilità],
  [Capacità di poter funzionare in diversi ambienti di esecuzione.],
  [MPD8],
  [Efficienza],
  [Capacità di svolgere un compito nel minor tempo possibile e utilizzando la minor quantità possibile di risorse.],
  [MPD9],
  [Affidabilità],
  [Capacità di svolgere i compiti anche in caso di problemi ed errori],
  [MPD10],
  [Copertura dei test],
  [Capacità del prodotto di superare tutti  i test a cui viene sottoposto, al fine di garantire una corretta implementazione dei requisiti individuati],
  [MPD11, MPD12, \ MPD13, MPD14],
)
#align(center)[Tabella 3: Qualità del software]

=== Metriche utilizzate
#table(
  columns: (25mm, auto, 35mm, 35mm),
   inset: (
    x: 5pt,
    y: 10pt,
  ),
  align: center,
  [*Codice*], [*Nome metrica*], [*Valore \ accettabile*], [*Valore ottimale*], 
 //FUNZIONALITA'
  [MPD3],
  [Copertura dei requisiti obbligatori], 
  [100%],
  [100%],
  [MPD4],
  [Copertura  dei requisiti desiderabili], 
  [≥ 75%],
  [100%],
  [MPD5],
  [Copertura  dei requisiti opzionali], 
  [≥ 50%],
  [100%],
//USABILITA'
  [MPD6],
  [Facilità di utilizzo], 
  [≤ 7 click],
  [≤ 5 click],
  [MPD7],
  [Tempo per l'apprendimento], 
  [≤ 8 minuti],
  [≤ 5 minuti],
//PORTABILITA'
  [MPD8],
  [Versioni browser supportate], 
  [≥ 80%],
  [100%],
//EFFICIENZA
  [MPD9],
  [Tempo medio di risposta al comando di ricerca], 
  [8 secondi],
  [5 secondi],
//AFFIDABILITA'
  [MPD10],
  [Gestione errori], 
  [≥ 60%],
  [100%],
//COPERTURA TEST
  [MPD11],
  [Branch Coverage], 
  [≥ 90%],
  [100%],
  [MPD12],
  [Statement Coverage], 
  [≥ 90%],
  [100%],
  [MPD13],
  [Function Coverage], 
  [≥ 90%],
  [100%],
  [MPD14],
  [Line Coverage], 
  [≥ 90%],
  [100%],
)
#align(center)[Tabella 4: Metriche qualità del software]

#pagebreak()

= Qualità di processo
Per garantire la qualità dei processi, abbiamo utilizzato delle  metriche che permettano di valutarli e accertarsi che questi raggiungano i corretti obbiettivi di qualità previsti, per questo si è scelto di fare riferimento allo standard ISO/IE-C/IEEE 12207:1997, semplificando e adattando secondo le nostre necessità i processi in esso elencati.\
La nomenclatura delle metriche utilizza l'acronimo MPC, ossia "Minimum Predictive Capability".\
 In questa sezione sono presentati i valori accettabili e i valori ottimali per i processi primari, di supporto e organizzativi.\

== Processi primari
#table(
  columns: (35mm, auto, 30mm),
   inset: (
    x: 5pt,
    y: 10pt,
  ),
  align: center,
  [*Obiettivo*], [*Descrizione*], [*Metriche*],
  [Fornitura],
  [Processo che consiste nell’ individuare procedure e risorse adatte a soddisfare le necessità del cliente, secondo i termini e le condizioni stabiliti.],
  [MPC1, MPC2, \ MPC3, MPC4, \ MPC5, MPC6, \ MPC7, MPC8],
  [Sviluppo],
  [Processo che ha lo scopo di determinare attività e compiti necessari alla realizzazione di un prodotto software che rispetti le esigenze del cliente.],
  [MPC9, MPC10],
)
#align(center)[Tabella 5: Processi primari]

== Processi di supporto
#table(
  columns: (35mm, auto, 30mm),
   inset: (
    x: 5pt,
    y: 10pt,
  ),
  align: center,
  [*Obiettivo*], [*Descrizione*], [*Metriche*],
  [Verifica],
  [Processo che ha lo scopo di confermare che ciascun servizio realizzato soddisfi i requisiti specificati dal  cliente.],
  [MPC11, MPC12],
  [Accertamento della qualità],
  [Processo con lo scopo di assicurare che il prodotto e i servizi offerti siano conformi agli standard definiti, rispettando gli obiettivi di qualità.],
  [MPC13],
  /* [Documentazione],
  [Processo con lo scopo di creare una documentazione che descriva in maniera esaustiva il prodotto.],
  [MPC....],   */
)
#align(center)[Tabella 6: Processi di supporto]

== Processi organizzativi
#table(
  columns: (35mm, auto, 30mm),
   inset: (
    x: 5pt,
    y: 10pt,
  ),
  align: center,
  [*Obiettivo*], [*Descrizione*], [*Metriche*],
  [Gestione \ organizzativa],
  [Processo che si occupa di regolare le modalità di coordinamento del gruppo.],
  [MPC14],
)
#align(center)[Tabella 7: Processi organizzativi]

== Metriche utilizzate
=== Processi primari
#table(
  columns: (25mm, auto, 35mm, 35mm),
   inset: (
    x: 5pt,
    y: 10pt,
  ),
  align: center,
  [*Codice*], [*Nome metrica*], [*Valore \ accettabile*], [*Valore ottimale*],
  [MPC1],
  [Estimated at Completion (EAC)],
  [± 5% rispetto al preventivo],
  [Uguale al \ preventivo],
  [MPC2],
  [Estimate to Complete (ETC)],
  [≥ 0],
  [≤ EAC],
  [MPC3],
  [Earned Value (EV)],
  [≥ 0],
  [≤ EAC],
  [MPC4],
  [Actual Cost (AC)],
  [≥ 0],
  [≤ EAC],
  [MPC5],
  [Cost Variance (CV)],
  [≥ -10%],
  [≥ 0%],
  [MPC6],
  [Planned Value (PV)],
  [≥ 0],
  [≤ Budget at \ Completion],
  [MPC7],
  [Schedule Variance (SV)],
  [≥ −10%],
  [≥ 0%],
  [MPC8],
  [Cost Performance Index (CPI)],
  [± 10%],
  [0%],
  [MPC9], 
  [Requirements Stability Index (RSI)],
  [≥ 80%],
  [100%],
  [MPC10], 
  [Satisfied Obligatory Requirements (SOR)],
  [100%],
  [100%],
)
#align(center)[Tabella 8: Metriche processi primari]

*Descrizione: *

- EAC: (Estimated at Completion) indica quanto si prevede che costerà il progetto nel suo complesso, considerando l'andamento attuale e le prestazioni passate del progetto.

  Formula: #align(center)[$ = ("BAC" - "EV") / "CPI" + "AC" $]
  dove BAC (Budget at Completion) è il costo totale preventivato del progetto.

- ETC: (Estimate to Complete) indica quanto si prevede che sarà necessario spendere per portare a termine le attività rimanenti e completare con successo il progetto.

  Formula: #align(center)[$ = "EAC" - "AC"$]

- EV: (Earned Value) riflette il valore finanziario delle attività che sono state completate con successo fino a un certo punto nel tempo.

  Formula: #align(center)[$ = "%dicompletamento" * "BAC"
  $]
  dove "%dicompletamento" rappresenta la percentuale di avanzamento del lavoro effettivo.

- AC: (Actual Cost) riflette la somma totale di denaro effettivamente speso per eseguire le attività del progetto fino a un punto specifico nel tempo.

- CV: (Cost Variance) indica se il progetto è al di sopra o al di sotto del budget pianificato per il lavoro effettivamente completato.

  Formula: #align(center)[$ = "EV" - "AC"
  $]

  Dove:

    + Se $"CV">0$, significa che il valore guadagnato è superiore al costo effettivo, indicando che il progetto sta procedendo sotto il budget pianificato;

    + Se $"CV"<0$, significa che il costo effettivo è superiore al valore guadagnato, indicando che il progetto sta superando il budget pianificato;

    + Se $"CV"=0$, significa che il progetto sta rispettando esattamente il budget pianificato fino a quel momento;

- PV: (Planned Value) appresenta il valore pianificato delle attività da svolgere fino a un dato punto nel tempo.

  Formula: #align(center)[$ = "%dicompletamento" * "BAC"
  $]
  dove a differenza di quanto detto per EV, %dicompletamento rappresenta la percentuale di avanzamento del lavoro pianificata.

- SV: (Scheduled Variance) indica se il progetto è in anticipo, in ritardo o in linea rispetto alla pianificazione temporale.

  Formula: #align(center)[$ = "EV" - "PV"
  $]

  Dove:

    + Se $"SV">0$, significa che il valore guadagnato è superiore al valore pianificato, indicando che il progetto è in anticipo rispetto alla pianificazione temporale;

    + Se $"SV"<0$, significa che il valore guadagnato è inferiore al valore pianificato, indicando che il progetto è in ritardo rispetto alla pianificazione temporale;

    + Se $"SV"=0$, significa che il progetto è in linea con la pianificazione temporale fino a quel momento.

- CPI: (Cost Performance Index) è utile per valutare l'efficienza finanziaria di un progetto fino a un determinato momento.

  Formula: #align(center)[$ = "EV" / "AC"
  $]

  Dove:

    + Se $"CPI">1$: Indica che il valore guadagnato è superiore al costo effettivo, indicando un'efficienza finanziaria positiva. Più il CPI è alto, più efficientemente il progetto sta utilizzando i suoi budget finanziari;

    + Se $"CPI"<1$: Indica che il costo effettivo è superiore al valore guadagnato, indicando un'efficienza finanziaria negativa. Un CPI inferiore a 1 suggerisce che il progetto sta spendendo più del previsto per il valore ottenuto;

    + Se $"CPI"=1$: Indica che il progetto sta spendendo esattamente ciò che è stato pianificato per ottenere il valore guadagnato.

- RSI: (Requirements Stability Index) indice progettato per misurare la stabilità dei requisiti di un progetto durante il suo ciclo di vita.

  Formula: #align(center)[$ = "Numero di requisiti invariati" / "Numero totale di requisiti"
  $]

- SOR: (Satisfied Obligatory Requirements) indice che misura il numero requisiti obbligatori soddisfatti.

=== Processi di supporto
#table(
  columns: (25mm, auto, 35mm, 35mm),
   inset: (
    x: 5pt,
    y: 10pt,
  ),
  align: center,
  [*Codice*], [*Nome metrica*], [*Valore \ accettabile*], [*Valore ottimale*], 
  //VERIFICA
  [MPC11],
  [Code Coverage (CC)], 
  [≥ 90%],
  [100%],
  [MPC12], 
  [Passed Tests (PT)], 
  [≥ 90%],
  [100%],
  //ACCERTAMENTO DELLA QUALITA
  [MPC13],
  [Quality Metrics Satisfied (QMS)], 
  [≥ 80%],
  [100%],
  //DOCUMENTAZIONE
  /* [MPC ...],
  [Indice Gulpease (IG)],
  [40-100],
  [60-100],
  [MPC ...],
  [Correttezza Ortografica (CO)],
  [40-100],
  [60-100], */
)
#align(center)[Tabella 9: Metriche processi di supporto]

*Descrizione:*

- CC: (Code Covarage) espressa come una percentuale fornisce un'indicazione della quantità di codice che è stata esaminata e verificata rispetto al totale del codice sorgente.

  Formula: #align(center)[$ = ("Linee di codice eseguite/testate" / "Totale linee di codice") * 100
  $]

- PT: (Passed Test) espressa come una percentuale fornisce un'indicazione della quantità di test passati in seguito a verifica.

- QMS: (Quality Metrics Satisfied) espressa come una percentuale fornisce un'indicazione della quantità metriche soddisfatte in seguito a verifica.

  Formula:
  #align(center)[$ "QMS" = "NQMS"/"TQM" * 100 $]
  dove: NQMS (Number of Quality Metrics Satisfied) è il numero di metriche di qualità soddisfatte mentre TMQ (Total number of Quality Metrics) è il numero di metriche di qualità totali.


=== Processi organizzativi
#table(
  columns: (25mm, 60mm, 35mm, 35mm),
   inset: (
    x: 5pt,
    y: 10pt,
  ),
  align: center,
  [*Codice*], [*Nome metrica*], [*Valore \ accettabile*], [*Valore ottimale*],
  //GESTIONE DEI PROCESSI
  [MPC14],
  [Non-calculated Risk (NCR)],
  [≤ 5],
  [0],
)
#align(center)[Tabella 10: Metriche processi organizzativi]

#pagebreak()

= Controllo di qualità

== Test
Questa sezione del documento è dedicata al testing, parte fondamentale per la correttezza e il rilascio del prodotto finale. La strategia adottata dal nostro gruppo per la fase di testing prevede quattro specifiche tipologie:
- Test di unita: prevede la verifica delle singole unità del sistema, andando a verificare il corretto funzionamento dell'unità indipendente;
- Test di integrazione: prevede la verifica di più unita che cooperano tra di loro per lo svolgimento di una specifica richiesta, questa tipologia di test viene svolta dopo i test di unità.
- Test di sistema: prevede le verifica dell'interno sistema, andando a verificare che tutte le componenti funzionino correttamente tra di loro;
- Test di accettazione: prevede la verifica del software con il committente. Devono essere quindi soddisfatti tutti i requisiti obbligatori, di vincolo, di qualità e di prestazione concordati e accettati con il proponente. Il superamento di questo test permette il rilascio del prodotto finale.

=== Test di accettazione
I test di accettazione sono stati eseguiti da parte dei componenti di Farmacode in presenza del proponente. In quella occasione si è quindi mostrata l'efficienza e la completezza del prodotto, /* qua boh, nel senso si può specificare che era il POC? */in modo da poter avviare l'attività di validazione.

#table(
  columns: (35mm, 85mm, 35mm),
   inset: (
    x: 5pt,
    y: 10pt,
  ),
  align: center,
  [*Codice Test*], [*Descrizione*], [*Stato test*],
  [TA01], [Verificare la corretta visualizzazione della pagina principale], [Passato],
  [TA02], [Verificare la possibilità di selezionare la ricerca per prodotto], [Passato],
    [TA02.1], [Verificare la possibilità di selezionare un prodotto], [Passato],
  [TA03], [Verificare la possibilità di selezionare la ricerca per cliente], [Passato],
    [TA03.1], [Verificare la possibilità di selezionare la un cliente], [Passato],
  [TA04], [Verificare la possibilità di eseguire la ricerca per 5 o 10 risultati], [Passato],
  [TA05], [Verificare la corretta visualizzazione dei risultati], [Passato],
    [TA05.1], [Verificare la corretta visualizzazione delle righe dei risultati], [Passato],
  [TA06], [Verificare la performance del tempo di risposta], [Passato],
  [TA07], [Verificare la corretta visualizzazione della pagina di Login], [ND],
  [TA08], [Verificare la corretta visualizzazione della normativa cookies], [ND],
  [TA09], [Verificare la corretta visualizzazione dell'alert di manutenzione], [ND],
  [TA10], [Verificare la corretta visualizzazione dell'alert errore di login], [ND],
  [TA11], [Verificare la corretta visualizzazione del Menù delle funzionalità], [ND],
    [TA11.1], [Verificare la corretta visualizzazione e funzione delle funzionalità Admin/User], [ND],
    [TA11.2], [Verificare la corretta visualizzazione e funzione delle funzionalità Admin], [ND],
  [TA12], [Verificare la corretta visualizzazione della sezione Profilo Utente], [ND],
    [TA12.1], [Verificare la corretta visualizzazione dei dati dell'utente], [ND],
    [TA12.2], [Verificare la corretta modifica dei dati dell'utente], [ND],
  [TA13], [Verificare la possibilità di eseguire il Logout], [ND],
  [TA14], [Verificare la possibilità di inserire un Feedback], [ND],
  [TA15], [Verificare la possibilità di visualizzare il catalogo prodotti], [ND],
    [TA15.1], [Verificare la corretta visualizzazione della lista di prodotti], [ND],
    [TA15.2], [Verificare la corretta visualizzazione del dettaglio prodotto], [ND],
  [TA16], [Verificare la possibilità di visualizzare la lista clienti], [ND],
    [TA16.1], [Verificare la corretta visualizzazione della lista di clienti], [ND],
    [TA16.2], [Verificare la corretta visualizzazione del dettaglio cliente], [ND],
  [TA17], [Verificare la possibilità di visualizzare le statistiche mensili], [NDo],
    [TA17.1], [Verificare la corretta visualizzazione dei risultati], [ND],
  [TA18], [Verificare la possibilità di visualizzare la cronologia di ricerche], [ND],
    [TA18.1], [Verificare la corretta visualizzazione dei risultati], [ND],
  [TA19], [Verificare la possibilità di visualizzare la cronologia dei feedback], [ND],
    [TA19.1], [Verificare la corretta visualizzazione dei risultati], [ND],
  [TA20], [Verificare la corretta visualizzazione di "Errore di ricerca"], [ND],
)
#align(center)[Tabella 11: Test di accettazione]

==== Tracciamento test di accettazione
#align(center)[
#table(
  columns: (40mm, 40mm),
  inset: (
    x: 5pt,
    y: 10pt,
  ),
  align: center,
  [*Codice Test*], [*Codice caso d'uso*],
  [TA01], [UC8],
  [TA02], [UC8.1.1.1],
    [TA02.1], [UC8.1.1.2],
  [TA03], [UC8.1.1.1],
    [TA03.1], [UC8.1.1.2],
  [TA04], [UC8.1.1.3],
  [TA05], [UC8.1.2, UC8.2],
    [TA05.1], [UC8.2.1 e generalizzazioni],
  [TA07], [UC1, UC1.1, UC1.2],
  [TA08], [UC4, UC4.1, UC4.2],
  [TA09], [UC2],
  [TA10], [UC3],
  [TA11], [UC5],
    [TA11.1], [UC5.1, UC5.1.1, UC5.1.2, UC5.1.3, UC5.1.4],
    [TA11.2], [UC5.2, UC5.2.1, UC5.2.2],
  [TA12], [UC6],
    [TA12.1], [UC6.1 UC6.1.1],
    [TA12.2], [UC6.2 UC6.2.1 UC6.2.2],
  [TA13], [UC7],
  [TA14], [UC9 UC9.1 UC9.2],
  [TA15], [UC10 e generalizzazioni],
    [TA15.1], [UC10.2],
    [TA15.2], [UC11 e generalizzazioni],
  [TA16], [UC12 e generalizzazioni],
    [TA16.1], [UC12.2],
    [TA16.2], [UC12.2.1],
  [TA17], [UC13],
    [TA17.1], [UC13.1, UC13.2],
  [TA18], [UC14, UC14.1],
    [TA18.1], [UC14.2 UC14.2.1],
  [TA19], [UC15, UC15.1],
    [TA19.1], [UC15.2, UC15.2.1],
  [TA20], [UC16],
)
]
#align(center)[Tabella 12: Tracciamento test di accettazione]

=== Test e tracciamento di sistema
I test di sistema hanno il compito di verificare la completezza del progetto, vengono quindi testati i requisiti precedentemente accordati e scritti nel documento Analisi dei Requisiti. Questo tipo di test è stato fatto dai componenti del gruppo nella maniera più metodica possibile.
Di seguito una tabella con il codice del test, la descrizione, il risultato e il codice requisito.

#table(
  columns: (25mm, 65mm, 35mm, 25mm),
  inset: (
    x: 5pt,
    y: 10pt,
  ),
  align: left,
  [*Codice\ Test*], [*Descrizione*], [*Risultato Test*], [*Codice\ Requisito*],
  [TS01], [Verificare la corretta visualizzazione della pagina principale], [Passato], [ROF 14,\ ROF 5],
  [TS02], [Verificare la corretta visualizzazione della pagina di login e il suo corretto funzionamento.], [ND], [ROF 1s],
  [TS03], [Verificare la corretta visualizzazione di eventuale dell'alert di manutenzione.], [ND], [RDF 2],
  [TS04], [Verificare la corretta visualizzazione  della normativa cookie.], [ND], [RDF 3],
  [TS05], [Verificare la corretta visualizzazione dell'eventuale dell'errore di login.], [ND], [RDF 4],
  [TS06], [Verificare la corretta visualizzazione e funzione della funzionalità di ricerca per la raccomandazione.], [Passato], [ROF 6,\ ROF 14,\ ROF 15,\ ROF 16,\ ROF 17],
  [TS07], [Verificare la possibilità di lasciare un feedback per il risultato della ricerca.], [ND], [ROF 18],
  [TS08], [Verificare la corretta visualizzazione e funzione per la vista "Catalogo prodotti", in particolare, la possibilità di cliccare su un prodotto e visualizzare i suoi dettagli.], [ND], [ROF 7,\ ROF 19,\ RDF 20,\ RDF 21],
  [TS09], [Verificare la corretta visualizzazione e funzione per la vista "Lista clienti", in particolare, la possibilità di cliccare su un cliente e visualizzare i suoi dettagli.], [ND], [ROF 8,\ ROF 22,\ RDF 23,\ RDF 24],
  [TS10], [Verificare la corretta visualizzazione e funzione per la vista "Statistiche mensili".], [ND], [RDF 9,\ RDF 25],
  [TS11], [Verificare che l'admin riesca correttamente a visualizzare e utilizzare le sue funzionalità esclusive del menù.], [ND], [RDF 10,],
  [TS11.1], [Verificare la corretta visualizzazione e funzione per la vista "Cronologia ricerche", in particoolare, la possibilità di cliccare e visualizzare i suoi dettagli.], [ND], [RDF 26,\ RDF 27,\ RDF 28],
  [TS11.2], [Verificare la corretta visualizzazione e funzione per la vista "Cronologia feedback", in particoolare, la possibilità di cliccare e visualizzare i suoi dettagli.], [ND], [RDF 29,\ RDF 30,\ RDF 31],
  [TS12], [Verificare la corretta visualizzazione della pagine dei dati personali.], [ND], [ROF 11],
  [TS12.1], [Verificare che l'utente possa cambiare la sua email e password.], [ND], [ROF 12],
  [TS13], [Verificare la possibilità di eseguire il Logout.], [ND], [ROF 13],
  [TS14], [Verificare la corretta visualizzazione dell'eventuale, errore di ricerca], [ND], [RDF 32],
  
)
#align(center)[Tabella 13: Test e tracciamento di sistema]

#pagebreak()

= Miglioramenti
== Descrizione
Al fine di assicurare il costante miglioramento nel corso dell'intero progetto, è fondamentale condurre valutazioni periodiche. L'obiettivo di tali valutazioni è individuare i problemi emergenti e le relative soluzioni adottate per affrontare le criticità riscontrate. Questa pratica consente di acquisire una consapevolezza più approfondita, utile a prevenire la ripetizione degli stessi errori in futuro.\
Le valutazioni vengono delineate sulle categorie presenti nel file [Piano di Progetto].

== Valutazione tecnologica
#table(
  columns: (70mm, 30mm, 55mm),
  inset: (
    x: 5pt,
    y: 10pt,
  ),
  [*Problema*], [*Rischio\ associato*], [*Soluzione*],
  [Difficoltà nell'automazione per la scrittura, modifica e verifica utilizzando Overleaf.], [RT1, RT2], [Passaggio a Typst per la scrittura, modifica e verifica della documentazione.],
  [Mancanza di conoscenze delle tecnologie necessarie allo sviluppo da parte del gruppo], [RP1], [Implementazione di workshop da parte dei membri del gruppo più esperti e studio personale della tecnologia], 

)
#align(center)[Tabella 14: Valutazione tecnologica]

== Valutazione organizzativa e personale
#table(
  columns: (70mm, 40mm, 50mm),
  inset: (
    x: 5pt,
    y: 10pt,
  ),
  [*Problema*], [*Rischio associato*], [*Soluzione*],
  [Periodi di malattia all'interno del team che ha portato a dei leggeri cali di performance durante alcuni sprint.], [RP4], [Ridistribuzione del carico di lavoro e maggiore disponibilità nel periodo successivo.],
  [A causa del periodo natalizio e dell'imminente sessione, la performance del team è calata molto con un conseguente calo delle attività di progetto.], [RP4], [Recupero post vacanze aumentando la disponibilità oraria.],
  [Leggero ritardo nella consegna del dataset da parte dell'azienda.], [ROE2], [Si è deciso di dare priorità ad altre parti e componenti del codice utilizzando altri dataset similari. Si è esposto il problema al proponente.],
  [Problemi nella struttura e contenuto del dataset.], [ROE2], [Sono stati realizzati degli script ad hoc per la correzione e pulizia del dataset. Si è esposto il problema al proponente.],
  [Difficoltà iniziali della gestione dei ruoli e dei carichi di lavoro.], [ROI2], [Aggiustamenti nei successivi sprint grazie all'esperienza acquisita dallo sprint precedente e alla comunicazione dei membri.],
  //lasciamo o è da infami? 
)
#align(center)[Tabella 15: Valutazione organizzativa e personale]

== Valutazione sui ruoli
#table(
  columns: (auto, 33mm, auto, auto),
  inset: (
    x: 5pt,
    y: 10pt,
  ),
  [*Fase*], [*Ruolo*], [*Problema*], [*Soluzione*],
  [Sprint 1 - 4], [Project manager], [Inizialmente sono state rilevate delle difficoltà nella gestione e automazione del repository legata anche al fatto che al termine di ogni sprint di progetto veniva cambiato il membro del gruppo che ricopriva questo ruolo.], [Diversi tentativi  e l'unione di più parti hanno portato al raggiungimento di un risultato ottimale. Tuttavia il tempo impiegato è stato maggiore rispetto alle attese.],
  [Analisi preliminare], [Analista], [Data l'inesperienza dei membri del gruppo in questo ambito è sorto il problema di come individuare i vari requisiti e annessi casi d'uso e come descriverlli al meglio (quanto andare più nel dettaglio).], [Confronto con il proponente per quanto riguarda l'individuazione e confornto con il committente (professor Cardin) per la descrizione.],
  [Analisi preliminare], [Verificatore], [La distribuzione del lavoro non era uniforme nell'arco della settimana ma concentrata eccessivamente negli ultimi giorni dello sprint.], [Ogni membro del gruppo si occupava di revisionare una parte del lavoro degli altri componenti in modo da dividersi il carico di lavoro e rimanere costantemente aggiornati su ogni aspetto del progetto.],
  [Sprint 4], [Programmatore], [Alcuni programmatori si sono trovati in difficoltà dovendo "assemblare" porzioni di codice scritto da altri membri del gruppo.], [Massima disponibilità da parte dei membri che hanno sviluppato l'altra porzione di codice nello spiegare hai nuovi programmatori quanto svolto.],
  /*
  [], [Amministratore], [Scelta delle tecnologie da utilizzare.], [Confronto con il proponente e studio individuale di membri del gruppo.],
  [], [Progettista], [Interazione algoritmo, api, database e webapp.], [Studio individuale dei membri del gruppo e interpretazione capitolato d'appalto],
  */
)
#align(center)[Tabella 16: Valutazione sui ruoli]

#pagebreak()

= Controllo delle metriche
*Premessa:* \
Durante ogni sprint del progetto, il controllo delle metriche viene eseguito utilizzando una modalità Just-in-Time (JiT). Ciò significa che l'analisi delle prestazioni, la valutazione dei progressi e altre metriche pertinenti vengono eseguite in tempo reale, immediatamente dopo la fase sviluppo nota come sprint. Questa approccio JiT consente al team di ottenere un quadro attuale e dinamico delle prestazioni e dell'avanzamento del progetto, consentendo una rapida identificazione di eventuali problemi o aree di miglioramento.\

=== QMS - Quality Metrics Satisfied
Sotto riportata la formula utilizzata per calcolare la percentuale delle metriche soddisfatte:
#align(center)[$ "QMS" = "NQMS"/"TQM" * 100 $]
Dove:
- NQMS (Number of Quality Metrics Satisfied) è il numero di metriche di qualità soddisfatte;
- TMQ (Total number of Quality Metrics) è il numero di metriche di qualità totali.

Nel nostro caso è stato calcolato un valore che si attesta circa all'80%. Rientrando e superando il valore accettabile della metrice MPC13.

=== IG - Indice di Gulpease
Indice di Gulpease è uno strumento utilizzato per verificare la difficoltà di lettura di un documento.\
Considera due fattori per la valutazione, la lunghezza della parola e la lunghezza della frase rispetto al numero di lettere.\
La formula per il suo calcolo è la seguente:
#align(center)[$ "IG" = 89+ (300*("numero delle frasi") - 10*("numero delle lettere"))/ "numero delle parole"$]
Come valori per le diverse difficoltà abbiamo:
- < 80: difficili da leggere per chi ha la licenza elementare;
- < 60: difficili da leggere per chi ha la licenza media;
- < 40: difficili da leggere per chi ha la licenza superiore.
Un intervallo ideale si aggira fra i 40 e 60.

*IG documenti*
#align(center)[
#table(
  columns: (60mm, 40mm),
  inset: (
    x: 5pt,
    y: 10pt,
  ),
  align: center,
  [*Documento*], [*Valore IG*],
  [Analisi dei requisiti], [87],
  [Glossario], [48],
  [Piano di Progetto], [69],
  [Piano di qualifica], [88],
  [Norme di progetto], [56],
)
]
#align(center)[Tabella 17: Indice di Gulpease dei documenti]

#align(left,
figure(
  image("/imgs/PdQ/ig.png", height: auto, width: auto),
  caption: [IG]
  )
  
)

Per il calcolo del indice è stato utilizzato un software online che si trova al seguente indirizzo: #link("https://farfalla-project.org/readability_static/").
I documenti sono stati convertiti in file di testo e successivamente calcolati dal sito sopra menzionato.

//INSERIRE GRAFICO QUANDO TUTTI I FILE SARANNO TESTATI
=== EO - Errori Ortografici
La metrica che si occupa della correttezza ortografica (MPD1) ha dato come risultato un valore nullo.
#align(center)[$ "EO"=0 $]
Questo è dovuto al fatto che, grazie alle frequenti revisioni e all'utilizzo di software per l'individuazione di errori ortografici, si stima un valore quasi nullo di essi. Viene stimata una correttezza del 100% e non assicurata poichè nonostante la minuziosità dei controlli e l'esecuzione dei test è possibile ci siano comunque artefatti riguardanti l'ortografia.

#pagebreak()

=== EAC - Estimated at Completion

==== sprint da 1 a 2

#align(center)[
#table(
  columns: (auto, auto, auto,),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],
  [*EAC* (in €)], [12100], [11750],
)
]
#align(center)[Tabella 18: EAC da sprint 1 a 2]

#align(left,
figure(
  image("/imgs/PdQ/eac/da1a2.png", height: 300pt, width: 400pt),
  caption: [EAC da sprint 1 a 2]
  )
  
)

- Spiegazione:

Il grafico mostra l'andamento del EAC durante il corso del progetto. Analizzarne le variazioni permette di valutare la situazione attuale progetto  così da individuare la necessità di attuare misure preventive. Il grafico mostra come i fondi necessari per il totale svolgimento del progetto potrebbero risultare minori rispetto a quanto preventivato. Riteniamo tuttavia sia ancora prematuro trarre conclusioni, che potrebbero quindi risultare affrettate.

#pagebreak()

==== sprint da 1 a 3

#align(center)[
#table(
  columns: (auto, auto, auto, auto),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2], [3],
  [*EAC* (in €)], [12100], [11750],[11535],
)
]
#align(center)[Tabella 19: EAC da sprint 1 a 3]

#align(left,
figure(
  image("/imgs/PdQ/eac/da1a3.png", height: 300pt, width: 400pt),
  caption: [EAC da sprint 1 a 3]
  )
  
)

- Spiegazione:

Il grafico mostra l'andamento del EAC durante il corso del progetto. Analizzarne le variazioni permette di valutare la situazione attuale progetto  così da individuare la necessità di attuare misure preventive. Il grafico mostra come i fondi necessari per il totale svolgimento del progetto potrebbero risultare minori rispetto a quanto preventivato. La tendenza a diminuire suggerisce un uso delle risorse efficace, tuttavia ciò non scongiura la possibilità di aver attuato una pianificazione troppo ottimistica che porti quindi a ritardi. 

#pagebreak()

==== sprint da 1 a 4

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2], [3], [4],
  [*EAC* (in €)], [12100], [11750],[11535],[11125],
)
]
#align(center)[Tabella 20: EAC da sprint 1 a 4]

#align(left,
figure(
  image("/imgs/PdQ/eac/da1a4.png", height: 300pt, width: 400pt),
  caption: [EAC da sprint 1 a 4]
  )
  
)

- Spiegazione:
Il grafico non mostra variazioni rispetto all'andamento registrato nei precedenti sprint. I valori campionati sono inferiori al BAC preventivato in fase di candidatura ciò indica che i fondi necessari per il totale svolgimento del progetto potrebbero risultare minori rispetto a quanto preventivato.

#pagebreak()

==== sprint da 1 a 5

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2], [3], [4], [5],
  [*EAC* (in €)], [12100], [11750],[11535],[11125],[10680],
)
]
#align(center)[Tabella 21: EAC da sprint 1 a 5]

#align(left,
figure(
  image("/imgs/PdQ/eac/da1a5.png", height: 300pt, width: 400pt),
  caption: [EAC da sprint 1 a 5]
  )
  
)

- Spiegazione:
Il grafico non mostra variazioni rispetto all'andamento registrato nei precedenti sprint. I valori campionati sono inferiori al BAC preventivato in fase di candidatura ciò indica che i fondi necessari per il totale svolgimento del progetto potrebbero risultare minori rispetto a quanto preventivato.

#pagebreak()

==== sprint da 1 a 6

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2], [3], [4], [5], [6],
  [*EAC* (in €)], [12100], [11750],[11535],[11125],[10680], [11259],
)
]
#align(center)[Tabella 22: EAC da sprint 1 a 6]

#align(left,
figure(
  image("/imgs/PdQ/eac/da1a6.png", height: 300pt, width: 400pt),
  caption: [EAC da sprint 1 a 6]
  )
  
)

- Spiegazione:
Il grafico mostra come dopo uno sprint in cui la produttività è stata compromessa a causa di indisponibilità e festività invernali, l'andamento dell'earned value ha subito un inversione. In particolare, l'EAC, che in precedenza stava diminuendo, ha ora iniziato a salire. Questo suggerisce che l'impatto delle indisponibilità sul lavoro effettivo sta influenzando le previsioni di costo del progetto. È importante valutare attentamente questo cambiamento e adottare misure appropriate per mitigare eventuali conseguenze negative sul programma e sul budget complessivo del progetto.

#pagebreak()

==== sprint da 1 a 7 

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2], [3], [4], [5], [6], [7],
  [*EAC* (in €)], [12100], [11750],[11535],[11125],[10680], [11259], [11883],
)
]
#align(center)[Tabella 23: EAC da sprint 1 a 7]

#align(left,
figure(
  image("/imgs/PdQ/eac/da1a7.png", height: auto, width: auto),
  caption: [EAC da sprint 1 a 7]
  )
  
)

- Spiegazione:
Il grafico denota un proseguo del andamento registrato nel precedente sprint. Ciò è sicuramente attribuibile ad un calo di produttività dovuto in parte sia al rientro dalle festività invernali, sia all'aggiunta degli impegni accademici. Questo impegno aggiuntivo ha comportato un ulteriore aumento dell'earned value del progetto. È evidente che il tempo dedicatogli ha influito sulle prestazioni del progetto, contribuendo all'aumento dei costi stimati. È essenziale considerare attentamente questo impatto aggiuntivo e valutare le strategie per gestire efficacemente le risorse e mantenere il progetto allineato agli obiettivi di costo e di tempo

#pagebreak()

==== sprint da 1 a 8

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],[4],[5],[6],[7],[8],
  [*EAC* (in €)], [12100], [11750], [11535], [11125],[10680],
[11259],
[11883],
[12102],
)
]
#align(center)[Tabella 24: EAC da sprint 1 a 8]

#align(left,
figure(
  image("/imgs/PdQ/eac/da1a8.png", height: auto, width: auto),
  caption: [EAC da sprint 1 a 8]
  )
  
)

- Spiegazione:
Nonostante le sfide incontrate negli sprint precedenti, incluso il ritorno dalle vacanze e lo studio per la sessione di esami, siamo incoraggiati nel vedere che il grafico corrente indica una situazione simile agli scorsi sprint, ma con un aumento dell'earned value (EAC) decisamente inferiore. Questo indica una ripresa generale del regime mantenuto negli sprint precedenti al sesto.

#pagebreak()

==== sprint da 1 a 9

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],[4],[5],[6],[7],[8],[9],
  [*EAC*], [12100], [11750], [11535], [11125],[10680],
[11259],
[11883],
[12102],
[12597]
)
]
#align(center)[Tabella 25: EAC da sprint 1 a 9]

#align(left,
figure(
  image("/imgs/PdQ/eac/da1a9.png", height: auto, width: auto),
  caption: [EAC da sprint 1 a 9]
  )
  
)

- Spiegazione:
Il grafico mostra come nonostante nel precedente sprint ci sia effettivamente stata una ripresa, non sia ancora tuttavia abbastanza per fermare l'andamento di crescita. Restiamo tuttavia fiduciosi, in quanto il periodo considerabile il più fitto e complicato stia ormai volgendo alla sua conclusione.
La situazione rimane stabile con il valore campionato inferiore al valore di BAC preventivato.

#pagebreak()

==== spint da 1 a 10

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],[4],[5],[6],[7],[8],[9], [10],
  [*EAC*], [12100], [11750], [11535], [11125],[10680],
[11259],
[11883],
[12102],
[12597],
[12763]
)
]
#align(center)[Tabella 26: EAC da sprint 1 a 10]

#align(left,
figure(
  image("/imgs/PdQ/eac/da1a10.png", height: auto, width: auto),
  caption: [EAC da sprint 1 a 10]
  )
  
)

- Spiegazione:
Il grafico mostra come nonostante nel precedente sprint ci sia effettivamente stata una ripresa, non sia ancora tuttavia abbastanza per fermare l'andamento di crescita. La situazione rimane quindi simile a quella caratterizzante lo scorso periodo.  Il periodo considerabile il più fitto e complicato sta ormai volgendo al termine. Ci impegneremo quindi a ritornare a lavorare a pieno regime aumentando anche la produttività generlae.
La situazione rimane stabile con il valore campionato inferiore al valore di BAC preventivato.

#pagebreak()

// - Spiegazione:
// Il grafico mostra come nel tempo il costo totale previsto per il compimento del progetto subisca delle variazioni in base all'andamento dei lavori. Si può notare una situazione nel complesso stabile, con l'EAC massimo che non sfora mai il budget preventivato inizialmente per il progetto. Degni di nota sono: il minimo storico di 10680.00€, e il cambio di tendenza subito intorno allo sprint numero 6, che si ricorda essere avvenuto in corrispondenza delle festività invernali.

=== AC e ETC - Actual Cost e Estimate to Complete

==== sprint da 1 a 2
#align(center)[
#table(
  columns: (auto, auto, auto,),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],
  [*AC* (in €)], [605], [1175],
  [*ETC* (in €)], [11495], [10575],
)
]
#align(center)[Tabella 27: AC e ETC da sprint 1 a 2]

#align(left,
figure(
  image("/imgs/PdQ/ac_etc/da1a2.png", height: auto, width: auto),
  caption: [AC e ETC da sprint 1 a 2]
  )
  
)

- Spiegazione:
Il grafico illustra come nel tempo è variato l'ETC (Estimate to Complete, ovvero quanto si stima andrà ancora a costare il progetto) in corrispondenza dell'AC (Actual Cost, ovvero quanto effettivamente è stato speso fino a quel determinato momento). La situazione si può definire stabile in quanto la loro somma rientra nei valori preventivati, ovvero non super il BAC.

#pagebreak()

==== sprint da 1 a 3
#align(center)[
#table(
  columns: (auto, auto, auto, auto,),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],
  [*AC* (in €)], [605], [1175], [1615],
  [*ETC* (in €)], [11495], [10575], [9920],
)
]
#align(center)[Tabella 28: AC e ETC da sprint 1 a 3]

#align(left,
figure(
  image("/imgs/PdQ/ac_etc/da1a3.png", height: auto, width: auto),
  caption: [AC e ETC da sprint 1 a 3]
  )
  
)

- Spiegazione:
Il grafico illustra come nel tempo è variato l'ETC (Estimate to Complete, ovvero quanto si stima andrà ancora a costare il progetto) in corrispondenza dell'AC (Actual Cost, ovvero quanto effettivamente è stato speso fino a quel determinato momento). L'andamento sembra rimanere stabile considerando i valori campionati fino ad ora.

#pagebreak()

==== sprint da 1 a 4
#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto,),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],[4],
  [*AC* (in €)], [605], [1175], [1615], [2225],
  [*ETC* (in €)], [11495], [10575], [9920], [8900],
)
]
#align(center)[Tabella 29: AC e ETC da sprint 1 a 4]

#align(left,
figure(
  image("/imgs/PdQ/ac_etc/da1a4.png", height: auto, width: auto),
  caption: [AC e ETC da sprint 1 a 4]
  )
  
)

- Spiegazione:
Il grafico illustra come nel tempo è variato l'ETC (Estimate to Complete, ovvero quanto si stima andrà ancora a costare il progetto) in corrispondenza dell'AC (Actual Cost, ovvero quanto effettivamente è stato speso fino a quel determinato momento). Se si sommano i valori registrati si ottengono valori che rientrano nel budget preventivato inizialemente. Come per quando detto per i precedenti periodi, la situazione è quindi considerabile stabile.

#pagebreak()

==== sprint da 1 a 5

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto,),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],[4],[5],
  [*AC* (in €)], [605], [1175], [1615], [2225],[2670],
  [*ETC* (in €)], [11495], [10575], [9920], [8900],[8010],
)
]
#align(center)[Tabella 30: AC e ETC da sprint 1 a 5]

#align(left,
figure(
  image("/imgs/PdQ/ac_etc/da1a5.png", height: auto, width: auto),
  caption: [AC e ETC da sprint 1 a 5]
  )
  
)

- Spiegazione:
La tendenza rimane la stessa che ha caratterizzato gli ultimi sprint, i nuovi valori registrati indicano un andamento stablile ed in linea con le previsioni. Questo suggerisce che le previsioni fatte in precedenza stanno risultando realistiche. Speriamo di mantenere questa tendenza anche con l'avvicinamento di festività invernali ed impegni accademi.

#pagebreak()

==== sprint da 1 a 6

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto,),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],[4],[5],[6],
  [*AC* (in €)], [605], [1175], [1615], [2225],[2670],
[3040],

  [*ETC* (in €)], [11495], [10575], [9920], [8900],[8010],
[8219],

)
]
#align(center)[Tabella 31: AC e ETC da sprint 1 a 6]

#align(left,
figure(
  image("/imgs/PdQ/ac_etc/da1a6.png", height: auto, width: auto),
  caption: [AC e ETC da sprint 1 a 6]
  )
  
)

- Spiegazione:
Come era possibile prevedere la concomitanza delle festività invernali, e l'avvicinarsi dei vari impegni accademici a cui ogni componente del gruppo è soggetto, ha influito negativamente con l'andamento registrato fino ad ora. L'ETC è infatti cresciuto, sicuramente a causa di quanto appena menzionato. Potrebbe essere necessario rivedere le stime dei costi rimanenti e assicurarsi che siano realistiche e aggiornate in base alla situazione attuale del progetto, e attuare misure di mitigazione. Il gruppo ha quindi deciso di rivedere quanto pianificato per il prossimo periodo ridistribuendo ruoli ed attività.

#pagebreak()

==== sprint da 1 a 7

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto,),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],[4],[5],[6],[7],
  [*AC* (in €)], [605], [1175], [1615], [2225],[2670],
[3040],
[3565],
  [*ETC* (in €)], [11495], [10575], [9920], [8900],[8010],
[8219],
[8318],
)
]
#align(center)[Tabella 32: AC e ETC da sprint 1 a 7]

#align(left,
figure(
  image("/imgs/PdQ/ac_etc/da1a7.png", height: auto, width: auto),
  caption: [AC e ETC da sprint 1 a 7]
  )
  
)

- Spiegazione:
Il grafico mostra una continuazione del trend registrato nel ultimo sprint, ciò indica che le misure adottate per provare a sanare la situazione creatasi nel precedente periodo non sono state sufficientemente efficaci. Ciò è sicuramente da attribuire all'indisponibilità creatasi dalla presenza degli impegni universitari già citati in precedenza, e ad un calo generale della produttività registrato al rientro delle festività invernali. Il gruppo si impegnerà per migliorare sotto questo punto di vista, cercando di ritornare a pieno regime.

#pagebreak()

==== sprint da 1 a 8

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],[4],[5],[6],[7],[8],
  [*AC* (in €)], [605], [1175], [1615], [2225],[2670],
[3040],
[3565],
[4115],
  [*ETC* (in €)], [11495], [10575], [9920], [8900],[8010],
[8219],
[8318],
[7987],
)
]
#align(center)[Tabella 33: AC e ETC da sprint 1 a 8]

#align(left,
figure(
  image("/imgs/PdQ/ac_etc/da1a8.png", height: auto, width: auto),
  caption: [AC e ETC da sprint 1 a 8]
  )
  
)

- Spiegazione:
Siamo lieti di poter constatare un miglioramento; l'andamento che ha caratterizzato i precedenti sprint sembra essere cambiato. Gli sforzi impiegati sembrano essere stati ripagati. Rivedere la pianificazione e gli obiettivi a breve termine sembra essere stata la scelta giusta. In corrispondenza rispetto a quanto preventivato il gruppo si considera pronto ad affrontare la prima parte di revisone RTB. 

#pagebreak()

==== sprint da 1 a 9

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],[4],[5],[6],[7],[8], [9],
  [*AC* (in €)], [605], [1175], [1615], [2225],[2670],
[3040],
[3565],
[4115],
[4535],
  [*ETC* (in €)], [11495], [10575], [9920], [8900],[8010],
[8219],
[8318],
[7987],
[8062]
)
]
#align(center)[Tabella 34: AC e ETC da sprint 1 a 9]

#align(left,
figure(
  image("/imgs/PdQ/ac_etc/da1a9.png", height: auto, width: auto),
  caption: [AC e ETC da sprint 1 a 9]
  )
  
)

- Spiegazione:
Il grafico indica un altra inversione di tendenza, pensiamo ciò sia attribuile ad una sorta di "tempo morto" causato dalla concomitanza con la revisone di progetto e con quella di altri impegni accademici. Il gruppo si impegnerà a ristabilire la tendenda posivitiva caratterizzante i primi periodi del progetto.

#pagebreak()

==== sprint da 1 a 10

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],[4],[5],[6],[7],[8], [9], [10],
  [*AC*], [605], [1175], [1615], [2225],[2670],
[3040],
[3565],
[4115],
[4535],
[4850],
  [*ETC*], [11495], [10575], [9920], [8900],[8010],
[8219],
[8318],
[7987],
[8062],
[7913],
)
]
#align(center)[Tabella 35: AC e ETC da sprint 1 a 10]

#align(left,
figure(
  image("/imgs/PdQ/ac_etc/da1a10.png", height: auto, width: auto),
  caption: [AC e ETC da sprint 1 a 10]
  )
  
)

- Spiegazione:
Gli sforzi impiegati nel ultimo periodo sembrano aver

#pagebreak()

=== EV e PV - Earned Value e Planned Value 

==== sprint da 1 a 2

#align(center)[
#table(
  columns: (auto, auto, auto,),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],
  [*EV* (in €)], [644], [1288],
  [*PV* (in €)], [644], [1288],
)
]
#align(center)[Tabella 36: EV e PV da sprint 1 a 2]

#align(left,
figure(
  image("/imgs/PdQ/ev_pv/da1a2.png", height: auto, width: auto),
  caption: [EV e PV da sprint 1 a 2]
  )
  
)

- Spiegazione:
Il sovrapporsi dei valori registrati delle metriche di EV (valore guadagnato) e PV (valore pianificato) nel grafico suggerisce che i lavori stanno procedendo in linea con quanto pianificato. Tuttavia, riteniamo che sia ancora troppo presto per giudicare pienamente la validità della nostra pianificazione originale. Questa sovrapposizione potrebbe indicare una pianificazione ottimistica, che richiede ulteriori verifiche e analisi.


#pagebreak()

==== sprint da 1 a 3

#align(center)[
#table(
  columns: (auto, auto, auto, auto,),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],
  [*EV* (in €)], [644], [1288], [1803],
  [*PV* (in €)], [644], [1288], [1932],
)
]
#align(center)[Tabella 37: EV e PV da sprint 1 a 3]

#align(left,
figure(
  image("/imgs/PdQ/ev_pv/da1a3.png", height: auto, width: auto),
  caption: [EV e PV da sprint 1 a 3]
  )
  
)

- Spiegazione:
Il grafico denota che il valore pianificato (PV) è superiore al valore guadagnato (EV). Questo suggerisce che il lavoro effettivamente completato è inferiore a quanto pianificato per lo stesso periodo di tempo. È importante esaminare attentamente questa discrepanza e identificare le cause sottostanti. Potrebbe essere necessario rivedere la pianificazione, valutare le risorse disponibili e adottare misure correttive per riportare il progetto sulla buona strada.

#pagebreak()

==== sprint da 1 a 4

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto,),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],[4],
  [*EV* (in €)], [644], [1288], [1803], [2576],
  [*PV* (in €)], [644], [1288], [1932], [2576],
)
]
#align(center)[Tabella 38: EV e PV da sprint 1 a 4]

#align(left,
figure(
  image("/imgs/PdQ/ev_pv/da1a4.png", height: auto, width: auto),
  caption: [EV e PV da sprint 1 a 4]
  )
  
)

- Spiegazione:
La situazione sembra essere ritornata stabile, con i nuovi valori registrati nuovamente coincidenti. 

#pagebreak()

==== sprint da 1 a 5

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto,),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],[4],[5],
  [*EV* (in €)], [644], [1288], [1803], [2576],[3220],

  [*PV* (in €)], [644], [1288], [1932], [2576],[3220],
)
]
#align(center)[Tabella 39: EV e PV da sprint 1 a 5]

#align(left,
figure(
  image("/imgs/PdQ/ev_pv/da1a5.png", height: auto, width: auto),
  caption: [EV e PV da sprint 1 a 5]
  )
  
)

- Spiegazione:
Notiamo che EV e PV sono allineati in questo sprint, il che indica che il lavoro effettivamente completato corrisponde alla pianificazione. Questo è un segnale positivo di una buona esecuzione delle attività pianificate.


#pagebreak()

==== sprint da 1 a 6

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto,),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],[4],[5],[6],
  [*EV* (in €)], [644], [1288], [1803], [2576],[3220],
[3477],

  [*PV* (in €)], [644], [1288], [1932], [2576],[3220],
[3864],

)
]
#align(center)[Tabella 40: EV e PV da sprint 1 a 6]

#align(left,
figure(
  image("/imgs/PdQ/ev_pv/da1a6.png", height: auto, width: auto),
  caption: [EV e PV da sprint 1 a 6]
  )
  
)

- Spiegazione:
In questo sprint, l'EV è inferiore al PV, indicando che il lavoro effettivamente completato è al di sotto delle aspettative rispetto alla pianificazione. La discrepanza tra EV e PV è sicuramte riconducibile alla concomitanza delle festività invernali ed all'avvicinamento degli impegni accademici.


#pagebreak()

==== sprint da 1 a 7

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto,),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],[4],[5],[6],[7],
  [*EV* (in €)], [644], [1288], [1803], [2576],[3220],
[3477],
[3864],
  [*PV* (in €)], [644], [1288], [1932], [2576],[3220],
[3864],
[3864],
)
]
#align(center)[Tabella 41: EV e PV da sprint 1 a 7]

#align(left,
figure(
  image("/imgs/PdQ/ev_pv/da1a7.png", height: auto, width: auto),
  caption: [EV e PV da sprint 1 a 7]
  )
  
)

- Spiegazione:

#pagebreak()

==== sprint da 1 a 8

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],[4],[5],[6],[7],[8],
  [*EV* (in €)], [644], [1288], [1803], [2576],[3220],
[3477],
[3864],
[4379],
  [*PV* (in €)], [644], [1288], [1932], [2576],[3220],
[3864],
[3864],
[4508],
)
]
#align(center)[Tabella 42: EV e PV da sprint 1 a 8]

#align(left,
figure(
  image("/imgs/PdQ/ev_pv/da1a8.png", height: auto, width: auto),
  caption: [EV e PV da sprint 1 a 8]
  )
  
)

- Spiegazione:

#pagebreak()

==== sprint da 1 a 9

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],[4],[5],[6],[7],[8],[9],
  [*EV* (in €)], [644], [1288], [1803], [2576],[3220],
[3477],
[3864],
[4379],
[4636],
  [*PV* (in €)], [644], [1288], [1932], [2576],[3220],
[3864],
[3864],
[4508],
[4765],
)
]
#align(center)[Tabella 43: EV e PV da sprint 1 a 9]

#align(left,
figure(
  image("/imgs/PdQ/ev_pv/da1a9.png", height: auto, width: auto),
  caption: [EV e PV da sprint 1 a 9]
  )
  
)

- Spiegazione:

#pagebreak()

==== sprint da 1 a 10

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],[4],[5],[6],[7],[8],[9],[10],
  [*EV* (in €)], [644], [1288], [1803], [2576],[3220],
[3477],
[3864],
[4379],
[4636],
[4894],
  [*PV* (in €)], [644], [1288], [1932], [2576],[3220],
[3864],
[3864],
[4508],
[4765],
[5152],
)
]
#align(center)[Tabella 44: EV e PV da sprint 1 a 10]

#align(left,
figure(
  image("/imgs/PdQ/ev_pv/da1a10.png", height: auto, width: auto),
  caption: [EV e PV da sprint 1 a 10]
  )
  
)

- Spiegazione:

#pagebreak()

=== CV e SV - Cost Variance e Schedule Variance

==== sprint da 1 a 2

#align(center)[
#table(
  columns: (auto, auto, auto),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],
  [*CV*], [39], [113],
  [*SV*], [0], [0],
)
]
#align(center)[Tabella 45: CV e SV da sprint 1 a 2]

#align(left,
figure(
  image("/imgs/PdQ/cv_sv/da1a2.png", height: auto, width: auto),
  caption: [CV e SV da sprint 1 a 2]
  )
  
)

- Spiegazione: 
I valori di CV e SV registarti mostrano un uso minore di risorse monetarie rispetto a quanto preventivato. Nonostante il risparmio del budget i valori di SV nulli indicano l'avanzamento corretto del progetto secondo la pianificazione.

#pagebreak()

==== sprint da 1 a 3

#align(center)[
#table(
  columns: (auto, auto, auto, auto),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],
  [*CV*], [39], [113], [188,2],
  [*SV*], [0], [0], [-128,8],
)
]
#align(center)[Tabella 46: CV e SV da sprint 1 a 3]

#align(left,
figure(
  image("/imgs/PdQ/cv_sv/da1a3.png", height: auto, width: auto),
  caption: [CV e SV da sprint 1 a 3]
  )
  
)

- Spiegazione: 
Il nuovo valore di CV registrato indica un uso ancora minore di risorse monetarie rispetto a quanto preventivato. Nonostante il risparmio del budget il valore di SV indica un andamento più lento rispetto alla pianificazione, questo mostra come, in questo caso, il risparmio del budget sia comportato da una sottoperformance da parte del gruppo e non da un uso efficiente delle risorse. Il team provvederà a migliorare sotto questo punto di vista, cercando di non ripetere gli errori commessi.

#pagebreak()

==== sprint da 1 a 4

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],[4],
  [*CV*], [39], [113], [188,2],[351],
  [*SV*], [0], [0], [-128,8], [0],
)
]
#align(center)[Tabella 47: CV e SV da sprint 1 a 4]

#align(left,
figure(
  image("/imgs/PdQ/cv_sv/da1a4.png", height: auto, width: auto),
  caption: [CV e SV da sprint 1 a 4]
  )
  
)

- Spiegazione: 
I valori campionati per questo nuovo sprint sembrano restare in linea con i predenti. In particolare il valore di SV è tornato ad essere nullo, ciò indica che le misure adottate per evitare di ricadere nella situazione caratterizzante le scorso periodo si sono rivelate efficaci.

#pagebreak()

==== sprint da 1 a 5

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],[4],[5],
  [*CV*], [39], [113], [188,2],[351],[550],
  [*SV*], [0], [0], [-128,8],[0],[0]
)
]
#align(center)[Tabella 48: CV e SV da sprint 1 a 5]

#align(left,
figure(
  image("/imgs/PdQ/cv_sv/da1a5.png", height: auto, width: auto),
  caption: [CV e SV da sprint 1 a 5]
  )
  
)

- Spiegazione: 
Nel grafico di questo sprint è possibile iniziare a delineeare un andamento che vede il valore di CV crescere, ed il valore di SV rimanere nullo. Il valore fortemente positivo di CV potrebbe indicare un uso efficiente delle risorse, ed il corrispondente valore di SV sembra validare tale ipotesi (il valore campionato di SV non indica ritardi sulla pianificazione). Tuttavia la tendenda dei valori di CV registrati potrebbe indicare la presenza di un troppo ottimismo durante la pianificazione. Ciò potrebbe indurre a ritardi nel "lungo" periodo. Gli ultimi eventi ed il colloquio con il #p.cardin hanno confermato questa nostra preoccupazione.
Dopo un confronto abbiamo quindi deciso di non riternci ancora pronti, a differenza di quanto pianificato, alla prima revisione di progetto.

#pagebreak()

==== sprint da 1 a 6

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],[4],[5],[6],
  [*CV*], [39], [113], [188,2],[351],[550],[437],
  [*SV*], [0], [0], [-128,8],[0],[0],[-386]
)
]
#align(center)[Tabella 49: CV e SV da sprint 1 a 6]

#align(left,
figure(
  image("/imgs/PdQ/cv_sv/da1a6.png", height: auto, width: auto),
  caption: [CV e SV da sprint 1 a 6]
  )
  
)

- Spiegazione: 
I nuovi valori di CV e SV indica una situazione ben diversa da quella registrata nel ultimo sprint. Nonostante il risparmio del budget il valore di SV indica un andamento più lento rispetto alla pianificazione, questo mostra come il risparmio del budget sia comportato da una sottoperformance da parte del gruppo. Questo rallentamento di produttività durante lo sprint 6 viene dettato dalla pausa natalizia. Nonostante fosse in parte stato preventivato la presenza delle festività invernali ha di fatto influito negativamente sull'andamento del progetto.

#pagebreak()

==== sprint da 1 a 7

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],[4],[5],[6],[7],
  [*CV*], [39], [113], [188,2],[351],[550],[437],[299],
  [*SV*], [0], [0], [-128,8],[0],[0],[-386],[0]
)
]
#align(center)[Tabella 50: CV e SV da sprint 1 a 7]

#align(left,
figure(
  image("/imgs/PdQ/cv_sv/da1a7.png", height: auto, width: auto),
  caption: [CV e SV da sprint 1 a 7]
  )
  
)

- Spiegazione: 
Siamo lieti di poter notare un miglioramente rispetto al ultimo periodo passato. I valori campionati per questo sprint vedono un CV ancora positivo, ma in minor quantità, ed un SV nuovamente nullo. Siamo tuttavia consapevoli che ciò è dovuto anche in parte ad una ripianificazione del periodo, oltre che ai nostri maggiori sforzi. Inoltre l'avvicinarsi dei vari impegni accademici a cui ogni componente è soggetto non ci fa ben sperare. Concordiamo tuttavia sul dover continuare con lo stesso passo, evitando di ripetere la situazione ed il clima creatori in corrispondenza delle ferie invernali.

#pagebreak()


==== sprint da 1 a 8

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],[4],[5],[6],[7],[8],
  [*CV*], [39], [113], [188,2],[351],[550],[437],[299],[264],
  [*SV*], [0], [0], [-128,8],[0],[0],[-386],[0],[-128,8]
)
]
#align(center)[Tabella 51: CV e SV da sprint 1 a 8]

#align(left,
figure(
  image("/imgs/PdQ/cv_sv/da1a8.png", height: auto, width: auto),
  caption: [CV e SV da sprint 1 a 8]
  )
  
)

- Spiegazione: 
I nuovi valori registrati rientrano nelle aspettative. Il valore di CV è calato, tuttavia il valore negativo di SV indica un ritardo rispetto a quanto preventivato. Il gruppo ha comuqnue raggiunto il suo obiettivo primario, ovvero il candidarsi alla prima parte della revisone di RTB entro il mese di Gennaio.

#pagebreak()

==== sprint da 1 a 9

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],[4],[5],[6],[7],[8],[9],
  [*CV*], [39], [113], [188,2],[351],[550],[437],[299],[264],[101,8],
  [*SV*], [0], [0], [-128,8],[0],[0],[-386],[0],[-128,8],[-128,8]
)
]
#align(center)[Tabella 52: CV e SV da sprint 1 a 9]

#align(left,
figure(
  image("/imgs/PdQ/cv_sv/da1a9.png", height: auto, width: auto),
  caption: [CV e SV da sprint 1 a 9]
  )
  
)

- Spiegazione: 
I nuovi valori campionati indicano una situazione simile a quella registrata nel periodo precedente. Come avevamo previsto la concomitanza con il periodo più fitto di impegni accademici ha influito sulla produttivatà del team, siamo tuttavia fiduciosi in quanto il nuovo sprint successivo a questo si prospetta essere l'ultimo a svolgersi in corrispondenza di questo periodo.

#pagebreak()

==== sprint da 1 a 10

#align(center)[
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto),
  inset: (
    x: 8pt,
    y: 10pt,
  ),
  align: center,
  [*sprint*], [1],[2],[3],[4],[5],[6],[7],[8],[9],[10],
  [*CV*], [39], [113], [188,2],[351],[550],[437],[299],[264],[101,8],[44,4],
  [*SV*], [0], [0], [-128,8],[0],[0],[-386],[0],[-128,8],[-128,8],[-257,6]
)
]
#align(center)[Tabella 53: CV e SV da sprint 1 a 10]

#align(left,
figure(
  image("/imgs/PdQ/cv_sv/da1a10.png", height: auto, width: auto),
  caption: [CV e SV da sprint 1 a 10]
  )
  
)

- Spiegazione: 
I valori di CV e SV registrati denotano una situazione simile alla precedente. E' importante notare che il valore SV indica un ritardo rispetto a quanto preventivato. Questo sprint doveva infatti essere l'ultimo utile alla revisione di RTB, tuttavia riteniamo sia utile spendere ancora alcuni giorni del prossimo sprint per sistemare gli ultimi accorgimenti.

/*

- Spiegazione:

Il grafico mostra l'andamento delle metriche di CV e SV. I valori positivi di CV indicano spese minori rispetto alle rispettive previsioni. 
Tuttavia sebbene un CV positivo suggerisca che si sta risparmiando denaro rispetto al budget, è importante considerare anche le tempistiche del progetto. 
Valori negativi di SV indicano che il progetto, in quel determinato istante, è in ritardo rispetto alla pianificazione. 
Il valore del lavoro effettivamente completato è inferiore a quanto pianificato. 
Sebbene quindi il progetto stia risparmiando denaro rispetto al budget (CV positivo), potrebbe esserci stata una sottoperformance nella realizzazione delle attività pianificate (SV negativo). 
Ciò potrebbe essere dovuto a una pianificazione ottimistica, problemi nella gestione delle risorse, o altri fattori esterni. 
I valori attuali rientrano comunque nei limiti imposti dal team, che si impegnerà a migliorare sotto questo punto di vista.

*/
#pagebreak()

= Elenco delle immagini
- Immagine 1: IG;
- Immagine 2: EAC da sprint 1 a 2;
- Immagine 3: EAC da sprint 1 a 3;
- Immagine 4: EAC da sprint 1 a 4;
- Immagine 5: EAC da sprint 1 a 5;
- Immagine 6: EAC da sprint 1 a 6;
- Immagine 7: EAC da sprint 1 a 7;
- Immagine 8: EAC da sprint 1 a 8;
- Immagine 9: EAC da sprint 1 a 9;
- Immagine 10: EAC da sprint 1 a 10;
- Immagine 11: AC e ETC da sprint 1 a 2;
- Immagine 12: AC e ETC da sprint 1 a 3;
- Immagine 13: AC e ETC da sprint 1 a 4;
- Immagine 14: AC e ETC da sprint 1 a 5; 
- Immagine 15: AC e ETC da sprint 1 a 6;
- Immagine 16: AC e ETC da sprint 1 a 7;
- Immagine 17: AC e ETC da sprint 1 a 8;
- Immagine 18: AC e ETC da sprint 1 a 9;
- Immagine 19: AC e ETC da sprint 1 a 10;
- Immagine 20: EV e PV da sprint 1 a 2;
- Immagine 21: EV e PV da sprint 1 a 3;
- Immagine 22: EV e PV da sprint 1 a 4;
- Immagine 23: EV e PV da sprint 1 a 5;
- Immagine 24: EV e PV da sprint 1 a 6;
- Immagine 25: EV e PV da sprint 1 a 7;
- Immagine 26: EV e PV da sprint 1 a 8;
- Immagine 27: EV e PV da sprint 1 a 9;
- Immagine 28: EV e PV da sprint 1 a 10;
- Immagine 29: CV e SV da sprint 1 a 2;
- Immagine 30: CV e SV da sprint 1 a 3;
- Immagine 31: CV e SV da sprint 1 a 4;
- Immagine 32: CV e SV da sprint 1 a 5;
- Immagine 33: CV e SV da sprint 1 a 6;
- Immagine 34: CV e SV da sprint 1 a 7;
- Immagine 35: CV e SV da sprint 1 a 8;
- Immagine 36: CV e SV da sprint 1 a 9;
- Immagine 37: CV e SV da sprint 1 a 10.


#pagebreak()

= Elenco tabelle
- Tabella 1: Qualità della documentazione;
- Tabella 2: Metriche qualità della documentazione;
- Tabella 3: Qualità del software;
- Tabella 4: Metriche qualità del software;
- Tabella 5: Processi primari;
- Tabella 6: Processi di supporto;
- Tabella 7: Processi organizzativi;
- Tabella 8: Metriche processi primari;
- Tabella 9: Metriche processi di supporto;
- Tabella 10: Metriche processi organizzativi;
- Tabella 11: Test di accettazione;
- Tabella 12: Tracciamento test di accettazione;
- Tabella 13: Test e tracciamento di sistema;
- Tabella 14: Valutazione tecnologica;
- Tabella 15: Valutazione organizzativa e personale;
- Tabella 16: Valutazione sui ruoli;
- Tabella 17: Indice di Gulpease dei documenti;
- Tabella 18: EAC da sprint 1 a 2;
- Tabella 19: EAC da sprint 1 a 3;
- Tabella 20: EAC da sprint 1 a 4;
- Tabella 21: EAC da sprint 1 a 5;
- Tabella 22: EAC da sprint 1 a 6;
- Tabella 23: EAC da sprint 1 a 7;
- Tabella 24: EAC da sprint 1 a 8;
- Tabella 25: EAC da sprint 1 a 9;
- Tabella 26: EAC da sprint 1 a 10;
- Tabella 27: AC e ETC da sprint 1 a 2;
- Tabella 28: AC e ETC da sprint 1 a 3;
- Tabella 29: AC e ETC da sprint 1 a 4;
- Tabella 30: AC e ETC da sprint 1 a 5; 
- Tabella 31: AC e ETC da sprint 1 a 6;
- Tabella 32: AC e ETC da sprint 1 a 7;
- Tabella 33: AC e ETC da sprint 1 a 8;
- Tabella 34: AC e ETC da sprint 1 a 9;
- Tabella 35: AC e ETC da sprint 1 a 10;
- Tabella 36: EV e PV da sprint 1 a 2;
- Tabella 37: EV e PV da sprint 1 a 3;
- Tabella 38: EV e PV da sprint 1 a 4;
- Tabella 39: EV e PV da sprint 1 a 5;
- Tabella 40: EV e PV da sprint 1 a 6;
- Tabella 41: EV e PV da sprint 1 a 7;
- Tabella 42: EV e PV da sprint 1 a 8;
- Tabella 43: EV e PV da sprint 1 a 9;
- Tabella 44: EV e PV da sprint 1 a 10;
- Tabella 45: CV e SV da sprint 1 a 2;
- Tabella 46: CV e SV da sprint 1 a 3;
- Tabella 47: CV e SV da sprint 1 a 4;
- Tabella 48: CV e SV da sprint 1 a 5;
- Tabella 49: CV e SV da sprint 1 a 6;
- Tabella 50: CV e SV da sprint 1 a 7;
- Tabella 51: CV e SV da sprint 1 a 8;
- Tabella 52: CV e SV da sprint 1 a 9;
- Tabella 53: CV e SV da sprint 1 a 10.
