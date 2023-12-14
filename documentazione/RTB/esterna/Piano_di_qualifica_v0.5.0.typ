#import "/template/big_docs.typ": *

#show: project.with(
  title: "Piano di qualifica",
  managers: p.favaron,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "0.5.0", "2023-12-14", p.pandolfo, "", "Prima stesura qualità di processo",
    "0.4.0", "2023-12-01", p.carraro, p.rosson, "Prima stesura qualità di prodotto",
    "0.3.0", "2023-11-27", p.carraro, p.rosson, "Stesura sezione qualità di architettura",
    "0.2.0", "2023-11-24", p.carraro, p.rosson, "Stesura sezione introduzione",
    "0.1.0", "2023-11-24", p.carraro, p.rosson, "Struttura iniziale del documento",
  ),
)

= Introduzione

Il documento relativo al piano di qualità rappresenta un elemento di fondamentale importanza per i progetti di sviluppo software che mirano a conformarsi agli elevati standard di qualità definiti nei principi dell'ingegneria del software.\
La qualita' e la valutazione del prodotto sono due concetti indispensabili per fare confronti o determinare il grado di aderenza alle attese.\
Il documento sara' utile a chi si occupa della creazione del prodotto, a chi usera' il prodotto e a chi lo valutera'.

== Scopo del documento
Il presente documento ha lo scopo di fornire una descrizione dettagliata e il piu' precisa possibile sulle metriche e sulle metodologie di controllo e misurazione della qualita' nelle varie parti del prodotto software.\
Verranno definiti gli obiettivi di qualita' e i relativi processi e risorse necessarie per conseguirli, oltre alla definizione dei test con la loro documentazione: metodologie ed esito.

== Glossario
Al fine di evitare eventuali equivoci o incomprensioni riguardo la terminologia utilizzata all'interno di questo documento, si è deciso  di adottare un Glossario, con file apposito, in cui vengono riportate tutte le definizioni rigogliose delle parole ambigue utilizzate in ambito di questo progetto. Nel documento appena descritto verranno riportati tutti i termini definiti nel loro ambiente di utilizzo con annessa descrizione del loro significato.\
La presenza di un termine all'interno del Glossario è evidenziata dal #glossario("colore blu").

== Maturità e miglioramenti
Questo documento è stato realizzato utilizzando un approccio incrementale, con lo scopo di semplificare i cambiamenti nel tempo in base alle reciproche esigenze decise da entrambi le parti, ovvero membri del gruppo di progetto e azienda proponente. Pertanto questo documento non può essere considerato esaustivo e completo.

== Riferimenti

=== Riferimenti informativi
- T6 - Progettazione software (slide del corso di Ingegneria del Software);
- T7 - Qualità del software (slide del corso di Ingegneria del Software);
- T8 - Qualità di processo (slide del corso di Ingegneria del Software).

= Piano di qualità

== Qualità dell'architettura
La qualità di una buona architettura è definita da questi aspetti: \
#table(
  columns: (auto, auto),
  stroke: (none),
  align: horizon,
  [*Aspetti auto-esplicativi o \
  non qualificabili*], [*Aspetti considerati per\ qualificazione architettura*],
  [- Sufficienza;],[- Modularità;],
  [- Robustezza;],[- Disponibilità;],
  [- Flessibilità;], [- Semplicità;],
  [- Riusabilità;], [- Incapsulazione;],
  [- Efficienza;], [- Coesione;],
  [- Affidabilità;], [- Basso accoppiamento;],
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

//lasciate stare questa parte, da definire in seguito
== Qualità del software
La Qualità è un aspetto fondamentale per la valutazione del prodotto, valutiamo per determinare il grado di conformità alle attese e ci si aspetta una valutazione da chi fa, da chi usa e da terze parti.\
Chi sviluppa il prodotto avrà una visione intrinseca della qualità, ovvero conforme ai requisiti o idonea all'uso, chi usa il prodotto avrà una visione relativa della qualità, ovvero la soddisfazione del cliente ed infine terze parti che confrontano il prodotto avranno una visione quantitativa della qualità, ovvero una misurazione oggettiva o, appunto, per confronto.\
Nel controllo di qualità bisogna assicurare conformità passo-passo invece che solo a fine corsa.
=== I Principi
I Sette Principi di gestione della Qualità:
- Customer Focus: Incontra e supera le aspettavive del cliente;

//lasciate stare questa parte, da definire in seguito

== Qualità di processo
Per garantire la qualità dei processi, abbiamo utilizzato delle  metriche che permettano di valutarli e accertarsi che questi raggiungano i corretti obbiettivi di qualità previsti, per questo si è scelto di fare riferimento allo standard ISO/IE-C/IEEE 12207:1997, semplificando e adattando secondo le nostre necessità i processi in esso elencati.\
La nomenclatura delle metriche utilizza l'acronimo MPC, ossia "Minimum Predictive Capability".\
 In questa sezione sono presentati i valori accettabili e i valori ottimali per i processi primari, di supporto e organizzativi.\

=== Processi primari
#table(
  columns: (35mm, auto, 30mm),
  inset: 5pt,
  align: center,
  [*Obiettivo*], [*Descrizione*], [*Metriche*],
  [Fornitura],
  [Processo che consiste nell’ individuare procedure e risorse adatte a soddisfare le necessità del cliente, secondo i termini e le condizioni stabiliti.],
  [MPC....],
  [Sviluppo],
  [Processo che ha lo scopo di determinare attività e compiti necessari alla realizzazione di un prodotto software che rispetti le esigenze del cliente.],
  [MPC....],
  [Gestione operativa],
  [Processo che ha lo scopo di fornire dettagli sull’installazione del software come requisiti di sistema e procedure necessarie ad eseguire correttamente il prodotto.],
  [MPC....],
  [Manutenzione],
  [],
  [MPC....],
)

=== Processi di supporto
#table(
  columns: (35mm, auto, 30mm),
  inset: 10pt,
  align: center,
  [*Obiettivo*], [*Descrizione*], [*Metriche*],
  [Documentazione],
  [Processo con lo scopo di creare una documentazione che descriva in maniera esaustiva il prodotto.],
  [MPC....],
  [Gestione della configurazione],
  [Processo con lo scopo di eseguire tutte le pratiche essenziali volte a tracciare lo stato di avanzamento del  prodotto],
  [MPC....],
  [Accertamento della qualità],
  [Processo con lo scopo di assicurare che il prodotto e i servizi offerti siano conformi agli standard definiti, rispettando gli obiettivi di qualità.],
  [MPC....],
  [Qualifica],
  [Processo che ha lo scopo di confermare che ciascun servizio realizzato soddisfi i requisiti specificati dal  cliente.],
  [MPC....],
)

=== Processi organizzativi
#table(
  columns: (35mm, auto, 30mm),
  inset: 10pt,
  align: center,
  [*Obiettivo*], [*Descrizione*], [*Metriche*],
  [Gestione dei processi],
  [],
  [MPC.......],
  [Infrastrutture],
  [],
  [MPC.......],
  [Miglioramenti],
  [],
  [MPC.......],
  [Formazione],
  [],
  [MPC.......],
)

= Controllo di qualità

== Test

== Grafici

== Tabelle

= Miglioramenti
