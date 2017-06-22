
Release  22.08.2004
-----------------------------------------------------

News:
1. Gateway per Microsoft SqlServer2000
2. Dall'editor delle espressioni (php editor) è possibile richiedere il valore precedente
   dei campi del task
3. Dall'editor delle espressioni (php editor) è possibile richiedere le Informative del task
   (stato del task, numero di records del recordset, ecc.)
4. Aggiunte 2 funzioni in phpeditor: o2_makedate e o2_maketime che sono equivalenti
   all'ADDDATE e all'ADDTIME di Magic (questo per evitare al programmatore di utilizzare
   la funzione mktime di php che pur essendo molto potente risulta anche un pò troppo pesante come
   sintassi). Credo che a breve faremo anche le funzioni Begin/End of Month/Year e poi basta.
   

Bugs fixed:
1. Corretto il problema per cui le modifiche in checkout non venivano viste a runtime
   Adesso è possibile provare le modifiche prima di fare il check-in degli oggetti.
2. Rivisto il posizionamento del cursore durante l'inserimento delle espressioni:
   adesso entrando nella finestra espressioni il cursore si posiziona sempre nella colonna
   return della tabella (al 90% dei casi è quello che serve).
   
   
   
Attenzione!
Prima di aprire i vostri progetti dovrete sostituire in tutti i files
del progetto (*.prf e *.prg) le seguenti instruzioni:

  o2exp::valore  con o2exp::val
  
  e
  
  o2exp::parametro con o2exp::par
  
------------------------------------------------------  

Release del 27.08.2004
-----------------------------------------------------
News
1.Aggiunta proprietà password sui controlli Edit per consentire l'input di password
  che presentino i caratteri *. Puo' assumere valori True/False (default=false)
2.Aggiunto parametro in parent options delle colonne delle tabelle affinché sia possibile
  disabilitare il pulsante di sort
3.Adesso il sort automatico del table control permette di selezionare a runtime più di una colonna
  attribuendo ad ognuna di esse la priorità. E' altresì possibile stabilire per ogni colonna
  il tipo di ordinamento: ascending e descending.
  In questo modo, per esempio, diamo la possibilità all'operatore a runtime di sortare la tabella per un campo in
  modo ascending e all'interno per una altro in modo descending.
4.Istruzione set menu attivata. Consente di cambiare il menu durante l'esecuzione dell'applicazione.
5.Aggiunta istruzione di locate record in View. Consente il posizionamento su un record preciso
  all'interno del recordset definendo i criteri di locate su qualsiasi campo del Main file della vista.
6.Attivati nuovi eventi sulle viste a cui è possibile associare un'azione: "Record prefix action" e "Record sufix action".
  "Record prefix action" consente di stabilire quale azione debba essere eseguita tutte la volte che varia il
  record selezionato della vista(in questo caso i valori ritornati da o2exp:val saranno quelli del record appena selezionato).
  "Record sufix action" consente di stabilire l'azione da eseguire tutte le volte che si ha un' istruzione Recordset-Post row.
  Post row automatico : se attivo scrive il record quando si abbandona un record appena modificato.
  Se c'è un'azione di record sufix viene eseguita successivamente.
  Attenzione! Se Automatic Post row non viene impostato a True, l'unico modo di scrivere le modifiche alla vista sul database è
  solamente tramite esplicita istruzione di Recordset - Postrow 
8.Inserimento menu dell'appplicazione a livelli: con F5 sulle righe di tipo M=Menu si accede ai sottomenu e così via. Con Esc si
  ritorna a livello superiore.
  Se si batte F5 su una riga di tipo P=Program si accede alla scelta Programmi.
9.Al salvataggio dei programmi in checkout viene adesso rinominata la precedente versione fino all'uncheck o checkin del programma
  Servirà per poter tornare ad una versione intermedia.
10.Dopo la selezione degli oggetti dal treeview (model,menu,programmi, ecc.) sulla barra header viene adesso
   evidenziato lo stato dell'oggetto: "Unchecked" (nessuno l'ha in check - readonly) "Checked by me" (in check dall'user corrente - abilitate
   le modifiche) "Checked by another user : xxx" (in check da un altro utente - read-only).
   Cliccandovi sopra si salta alla finestra CVS dell'applicazione.
11.Aggiunto controllo "htmlarea" ove è possibile indicare un' espressione contenente testo html che viene
   visualizzato sul form.
12.Aggiunto controllo "documento" che consente di inserire all'interno della form o2 un iframe html in cui
   verrà visualizzato il contenuto del file mime associato (pdf, doc, xls, html).

    

Bugs fixed
1.La action associata al controllo Multipage non veniva eseguita sulla prima pagina del Multipage.
2.Una volta flaggato a True un checkbox associato a un campo di tabella era impossibile deflaggarlo.
3.Adesso la richiesta di salvataggio di un prg avviene solo se si esce dal programma preso in modifica e
  solo se il programma è in check-out

ATTENZIONE.
Per attivare la release necessario aggiungere a tutti i files .prg del progetto un parametro impostato a
vuoto (il terzo) nella definizione del programma. Il parametro conterrà il nome dell'azione di Close prg (vedi new numero 6)
Esempio: 
o2def::prg('test', '', __FILE__);
diventa
o2def::prg('test', '', '', __FILE__);




  
-----------------------------------------------------

Release del 09.09.2004
-----------------------------------------------------
News

1.Definiti CSS per i tags del controllo "Tabella"
	
	cssdiv=imposta la classe di stile per il <div> esterno 
	csstab=imposta la classe di stile per la <table> 
	csshead=imposta la classe di stile per il <tr> dei titoli 
	cssbody=imposta la classe di stile per i <td> delle righe 
	cssline=imposta la classe di stile per i <tr> delle righe 
	cssalternate=imposta la classe di stile per i <td> alternativi 
	cssMouseOverline=imposta la classe di stile per la linea su cui si passa con il mouse
	cssCurrentline=imposta la classe di stile per il <td> della riga corrente 
	
  Adesso è possibile quindi definirli diversi per ogni controllo tabella posizionato sulla form

2.Definiti CSS per i tags del controllo "Multipage"
	
	cssBorder=imposta la classe di stile per il <div> esterno 
	cssbody=imposta la classe di stile per il <div> interno 
	cssLabelOn=imposta la classe di stile per il <button> attivo 
	cssLabelOff=imposta la classe di stile per i <button> inattivi 

	
  Adesso è possibile quindi definirli diversi per ogni controllo "Multipage" posizionato sulla form


3.HtmlEditor
  Introdotto la proprietà "HtmlArea" sul controllo "Textarea" che se impostata a True a runtime il controllo
  viene sostituito con un editor javascript evoluto per la compilazione di testo html (che sarà salvato nella variabile
  collegata al textarea) in modalità WYSIWYG.
  
   






Release 1.0.0 del 29.09.2004
-----------------------------------------------------
1. Modelli sui parametri. E' necessario riaprire tutti i programmi con il designer
   ed andare ad aggiungere i modelli su tutti i parametri definiti
2. Aggiunto campo "id" ai campi del protocol in modo che l'ordine in cui si vedono non sia alfabetico ma posizionale
3. Eliminati alcune proprietà dell'applicazione ridondanti
4. Css per applicazione
5. Midas.dll non più utilizzata (le potete cancellare)
6. Gestione versioni con automatismo per conversione progetto.
   All'apertura del progetto se la versione dell'applicazione
   non coincide con quella del designer e le differenze sono tali da richiedere
   un intervento sui files di progetto per renderli compatibili, adesso o2gen
   provvede alla loro sistemazione. 
7. In fase di design form se inserito controllo tabella o controllo dbnavigator
   viene chiesto immediatamente a quale view collegare il controllo (la view in questi casi è un campo obbligatorio)



!!!!!!!PASSI DA SEGUIRE PER CONVERTIRE PROGETTI ALLA NUOVA RELEASE!!!!!!!

1.elimina oggetti in check
2.salva tutta la directory dell'applicazione
3.fai setup di o2generator
4.apri il progetto con o2generator: apparirà una finestra per la conversione
5.premi sul pulsante Convert in alto (quello per l'intera applicazione)
6.reinserisci manualmente le proprietà dell'applicazione e pubblicale (le vecchie le trovi nel file nomeapplicazione.php)
7.fai check-out e checkin dei models (per esportarli)
8.entra nel table repository e assegna il db alle prime 3 tabelle (users-sessions-defferred)
  queste tabelle sono utilizzabili come le altre facendo attenzione a non cambiarne i nomi logici
  dei campi e degli indici
9.entra nei programmi che ricevono parametri e attribuisci il model ad ogni parametro

10.edita il file login.html che utilizzi per l'accesso all'applicazione e sostituisci "user" con "o2user"
   e "pswd" con "o2password"

   prova ad entrare con il browser; dovrebbe funzionare tutto!




Release 1.1.3  del 15.12.2004

1) Migliorata la procedura di inserimento dei menu (Treeview)
2) Attivato i modelli di view. E' adesso possibile definire dei modelli di vista e riutilizzarli
   all'interno dei programmi.
3) Funzioni di aggregazione. Si possono definire per ogni view all'interno dei programmi infinite
   funzioni di aggregazione (SUM, MAX, MIN, AVG).
4) Espressioni di visible per testata e footer delle form.
5) Allineamento delle form verticale(Top - middle - bottom) e orizzontale (Left - Centered - Right)
6) Aggiunto operando "Execute script" per eseguire all'interno di una azione del programma del codice php
7) Aggiunto operando Go to Url per redirigere il browser verso un indirizzo URL
8) Aggiunto controllo "Map" per consentire di inserire all'interno di un'immagine un'area cliccabile
   a cui associare un'azione (come per il pulsanti).
9) Adesso è possibile inserire qualsiasi controllo come colonna di tabella.
10)E' possibile definire un css specifico per la colonna della tabella (sempre come espressione).
11)Introdotto il concetto di "service" che garantirà la piena scalabilità dell'applicativo.
   Ad ogni service sarà possibile demandare l'esecuzione di procedure batch in differita, anche da altre 
   macchine della rete.

   
Release 1.1.4 del 25.12.2004 (BUON NATALE!)
1) Maschera sui controlli selezionabile come espressione.
2) Prima versione del controllo sintattico dei programmi.
   Facendo F8 da dentro il programma si attiva il check dell'intero programma.
   Al momento rimangono fuori dal controllo: I/O - Protocols - Operations.
   
   
   
--
Copia e incolla oggetti (anche multiselezione) sul form designer
Selezione delle form su cui lavorare tramite checkbox
Proposta ultima form dove si è lavorato (fino a che si lavora nello stesso prg)
Adesso è possibile rinominare le form senza problemi

Risolti problemi di refresh delle espressioni al passare tra una azione ed un'altra
Il combo delle istruzioni si apre subito premendo la tastiera e lavora in ricerca incrementale

Adesso la richiesta di salvataggio degli oggetti in check avviene solo in caso di modifica (o tentativo)
dell'oggetto e anche se si chiude o2Architect con la x della form.

Caption su pulsanti e label by expression

  
  
  
Per qualsiasi chiarimento potete inviare una mail a staff@o2gen.net

