EXTEND_BOTTOM CORNEIL 0
  IF ~Global("WAMoirQ","Global",8)
	InParty("Anomen")~ THEN REPLY ~Magistrat Bylanna empfahl uns, Euch aufzusuchen. Wir ben�tigen einen Erkenntniszauber, um den M�rder von Moira Delryn zu finden.~ GOTO WACORN01
END

APPEND CORNEIL

	IF ~~ THEN BEGIN WACORN01
		SAY ~Als ob ich sonst nichts zu h�tte! Aber wenn der verehrte Magistrat Euch schickt, muss es wirklich wichtig sein. Habt Ihr einen pers�nlichen Gegenstand des Mordopfers bei Euch?~
		IF ~~ THEN EXTERN ANOMENJ WACORN02
	END

	IF ~~ THEN BEGIN WACORN03
		SAY ~Ja, das d�rfte gen�gen, um mehr �ber den M�rder herauszufinden. Allerdings ben�tigt ein derartiger Zauber viel Zeit. Solltet Ihr also noch andere offene Angelegenheiten haben, solltet Ihr diese erf�llen und sp�ter zur�ckkehren. Und nun, lasst mich allein, ich muss mich konzentrieren.~
		IF ~~ THEN DO ~TakePartyItem("WAMOIRK")
		SetGlobal("WAMoirQ","Global",9)~ EXIT
	END
	
	IF WEIGHT #-999 ~InParty("Anomen")
	Global("WAMoirQ","Global",13)~ THEN BEGIN WACORN04
		SAY ~Ihr seid zur rechten Zeit gekommen. Der Zauber hat einige interessante und schockierende Erkenntnisse zu Tage gebracht.~
		IF ~~ THEN GOTO WACORN05
	END
	
	IF ~~ THEN BEGIN WACORN05
		SAY ~Es besteht keinerlei Zweifel: Der M�rder war kein geringerer als Captain Alwesk! Sie muss ihn �berrascht haben, als er Lord Cor�s Bilanzen durchsuchte. Leider konnte ich nichts �ber seine Motive zu diesem Einbruch herausfinden, aber das letzte Bild zeigt deutlich, wie er dem M�dchen die Halskette vom Hals rei�t.~
		IF ~~ THEN GOTO WACORN06
	END
	
	IF ~~ THEN BEGIN WACORN06
		SAY ~Sprecht mit Magistrat Bylanna. Sie ist �ber den Sachverhalt bereits unterrichtet und wird Euch das weitere Vorgehen erkl�ren.~
		IF ~~ THEN DO ~SetGlobal("WAMoirQ","Global",14)~ EXIT
	END

END

APPEND ANOMENJ

	IF ~~ THEN BEGIN WACORN02
		SAY ~Hier, diese Halskette hatte meine Schwester angelegt, als sie ermordet wurde.~
		IF ~~ THEN EXTERN CORNEIL WACORN03
	END

END