APPEND Bylanna

	IF WEIGHT #-999 ~InParty("Anomen")
	Global("WAMoirQ","Global",7)~ THEN BEGIN WABYL01
		SAY #25547
		IF ~~ THEN EXTERN ANOMENJ WABYL02
	END
	
	IF ~~ THEN BEGIN WABYL02
		SAY ~Dies sind sehr beunruhigende Neuigkeiten, Sir Anomen. Sollten wir tats�chlich einen M�rder in der Stadtwache haben, m�ssen wir rasch handeln.~
		IF ~~ THEN REPLY ~Dann sollten wir keine Zeit mehr verlieren. Wie sollen wir nun weiter vorgehen, werter Magistrat?~ GOTO WABYL03
		IF ~~ THEN REPLY ~Was schlagt Ihr also vor?~ GOTO WABYL03
	END
	
	IF ~~ THEN BEGIN WABYL03
		SAY ~Ihr solltet auf jeden Fall Captain Alwesk aufsuchen. Er leitet die Nachforschungen in diesem Mordfall und sollte �ber die neue Situation informiert werden. Ihr findet in an der Garnison an den Docks.~
		IF ~~ THEN EXTERN ANOMENJ WABYL04
	END
	
	IF ~~ THEN BEGIN WABYL05
		SAY ~Ein vortrefflicher Gedanke, Sir Anomen. Sprecht am besten mit Corneil dar�ber. Er ist auf erstklassige Wahrheits- und Aufsp�rungszauber spezialisiert.~
		IF ~~ THEN REPLY ~Exzellent, dann lasst uns die Sache angehen.~ DO ~AddJournalEntry(@99999991,QUEST)
		SetGlobal("WAMoirQ","Global",8)~ EXIT
	END

	IF WEIGHT #-998 ~InParty("Anomen")
	Global("WAMoirQ","Global",14)~ THEN BEGIN WABYL06
		SAY ~Corneil hat mich bereits informiert, <CHARNAME>. Es ist kaum zu glauben, dass einer unserer f�higsten Offiziere ein Verr�ter und M�rder ist!~
		IF ~~ THEN GOTO WABYL07
	END
	
	IF ~~ THEN BEGIN WABYL07
		SAY ~Hiermit seid ihr offiziel befugt, Captain Alwesk festzunehmen und ihn dem Rat vorzuf�hren. T�tet ihn nur, wenn es notwendig ist. Die Informationen, die er hat, k�nnten eine entscheidende Rolle dabei spielen, die Ordnung in der Stadt wiederherzustellen.~
		IF ~~ THEN GOTO WABYL08
	END
	
	IF ~~ THEN BEGIN WABYL08
		SAY ~Nun brecht rasch auf und k�mmert Euch um den Verr�ter, ehe er gr��eren Schaden anrichten kann!~
		IF ~~ THEN DO ~SetGlobal("WAMoirQ","Global",15)
		AddJournalEntry(@99999982,QUEST)~ EXIT
	END
	
END

APPEND ANOMENJ

	IF ~~ THEN BEGIN WABYL02
		SAY ~Ehrenwerter Magistrat, wir haben von einem Hehler, dem Moiras M�rder unser Familienamulett verkauft hat, erfahren, dass der M�rder offenbar Verbindungen zur Stadtwache hat. Wir haben es als Beweis hier.~
		IF ~~ THEN EXTERN Bylanna WABYL02
	END
	
	IF ~~ THEN BEGIN WABYL04
		SAY ~Wir konnten das Amulett von seinem K�ufer zur�ckbekommen. K�nnten es die Verh�llten Magier verwenden, um einen Erkenntniszauber darauf anzuwenden?~
		IF ~~ THEN EXTERN Bylanna WABYL05
	END
	
END