ADD_STATE_TRIGGER WCUST02 5 ~!Global("WAMoirQ","Global",4)~
ADD_STATE_TRIGGER WCUST01 8 ~!Global("WAMoirQ","Global",5)~

APPEND WCUST02

	IF WEIGHT #-1 ~Global("WAMoirQ","Global",4)~ THEN BEGIN WACU01
		SAY ~Oh werter Graf Claylan! Diese Laeral-Halskette ist das sch�nste Schmuckst�ck, das ich je gesehen habe!~
		IF ~~ THEN EXTERN WCUST01 WACU02
	END
	
	IF ~~ THEN BEGIN WACU03
		SAY ~Wie ... entz�ckend! (Kichert)~
		IF ~~ THEN DO ~SetGlobal("WAMoirQ","Global",5)~ EXIT
	END
	
	IF ~~ THEN BEGIN WACU06
		SAY ~W-Was meint dieser Mann damit, Graf?~
		IF ~~ THEN EXTERN WCUST01 WACU07
	END
	
	IF ~~ THEN BEGIN WACU11
		SAY ~In der Tat, auf der Innenseite der Halskette ist M.D. eingraviert! Also ist alles wahr, was dieser Mann behauptet! Ich h�tte nie gedacht, dass ein Mann Eures Standes so tief sinken kann, Graf!~
		IF ~~ THEN EXTERN WCUST01 WACU12
	END
	
	IF ~~ THEN BEGIN WACU13
		SAY ~Ah, so ist das also! NUR DAS ALLERSCH�NSTE IST GUT F�R MICH, JA? Mit Euch bin ich fertig, Graf! Niemals werde ich mich mit etwas schm�cken, das von einem ... Hehler kommt! Lebt wohl und dass sich unsere Wege niemals wieder kreuzen werden!~
		IF ~~ THEN DO ~DropItem("WAMOIRK",[-1.-1])
		EscapeArea()~ EXTERN WCUST01 WACU14
	END

END

APPEND WCUST01

	IF ~~ THEN BEGIN WACU02
		SAY ~Gewiss, holde Alicia. F�r eine Frau Eurer Sch�nheit ist nur das Allersch�nste gut genug, selbst wenn es bei weitem nicht so strahlend ist wie Ihr!~
		IF ~~ THEN EXTERN WCUST02 WACU03
	END

	IF WEIGHT #-1 ~InParty("Anomen")
	Global("WAMoirQ","Global",5)~ THEN BEGIN WACU04
		SAY ~Seht Ihr nicht, dass Ihr st�rt, Kerl?~
		IF ~~ THEN EXTERN ANOMENJ WACU05
	END
	
	IF ~~ THEN BEGIN WACU07
		SAY ~Das ... wie bei den H�llen k�nnt Ihr es wagen, mich zu bezichtigen, den Schmuck irgendwelcher verblichenen Schwestern zu verschenken?~
		IF ~~ THEN EXTERN ANOMENJ WACU08
	END
	
	IF ~~ THEN BEGIN WACU09
		SAY ~Dreiste L�ge! Diese Halskette habe ich bei einem ehrlichen H�ndler erstanden! Und nun verschwindet, ehe ich die Wache rufe!~
		IF ~~ THEN EXTERN ANOMENJ WACU10
	END
	
	IF ~~ THEN BEGIN WACU12
		SAY ~Mitnichten, holde Alicia! Ich wusste nicht, dass die kette von einem Mordopfer gestohlen war. Ich dachte nur � im Untergrund gibt es viele erstklassige Schmuckst�cke zu guten Preisen ...~
		IF ~~ THEN EXTERN WCUST02 WACU13
	END
	
	IF ~~ THEN BEGIN WACU14
		SAY ~Alicia, meine Liebe! Bitte lasst es mich Euch erkl�ren!~
		IF ~~ THEN DO ~SetGlobal("WAMoirQ","Global",6)
		EscapeArea()~ EXIT
	END
	
END

APPEND ANOMENJ

	IF ~~ THEN BEGIN WACU05
		SAY ~Nicht so sehr, wie es MICH st�rt, dass Ihr Eurer ... Bekanntschaft ... hier die Halskette meiner ermordeten Schwester schenken wollt!~
		IF ~~ THEN EXTERN WCUST02 WACU06
	END

	IF ~~ THEN BEGIN WACU08
		SAY ~Ich habe jedes Recht dazu, Graf Claylan! Ich habe mit dem Hehler gesprochen, bei dem Ihr es gekauft habt!~
		IF ~~ THEN EXTERN WCUST01 WACU09
	END
	
	IF ~~ THEN BEGIN WACU10
		SAY ~Dann tut es, verdammt! Vielleicht k�nnt Ihr den Wachen auch gleich erkl�ren, wieso Ihr ein Schmuckst�ck besitzt, auf dem M.D. in das Familienwappen der Delryns eingraviert ist � M. D. wie Moira Delryn!~
		IF ~~ THEN EXTERN WCUST02 WACU11
	END
	
END