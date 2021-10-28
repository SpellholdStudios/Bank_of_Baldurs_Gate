BEGIN BANKMANA

IF ~NumTimesTalkedToGT(0) !Gender(Player1,FEMALE)~ THEN BEGIN beginInviteMS
  SAY @0
  IF ~~ THEN REPLY @1 GOTO beginRob
  IF ~~ THEN REPLY @2 GOTO beginDirector
  IF ~~ THEN REPLY @3 GOTO beginNot
  IF ~~ THEN REPLY @4 GOTO beginOgres
END


IF ~NumTimesTalkedToGT(0) Gender(Player1,FEMALE)~ THEN BEGIN beginInviteFS
  SAY @5
  IF ~~ THEN REPLY @1 GOTO beginRob
  IF ~~ THEN REPLY @2 GOTO beginDirector
  IF ~~ THEN REPLY @3 GOTO beginNot
  IF ~~ THEN REPLY @4 GOTO beginOgres
END


IF ~!NumTimesTalkedToGT(0) !Gender(Player1,FEMALE)~ THEN BEGIN beginInviteM
  SAY @6 = @7 = @8 = @9 = @10 = @11
  IF ~~ THEN REPLY @1 GOTO beginRob
  IF ~~ THEN REPLY @2 GOTO beginDirector
  IF ~~ THEN REPLY @3 GOTO beginNot
  IF ~~ THEN REPLY @4 GOTO beginOgres
END


IF ~!NumTimesTalkedToGT(0) Gender(Player1,FEMALE)~ THEN BEGIN beginInviteF
  SAY @12 = @7 = @8 = @9 = @10 = @13
  IF ~~ THEN REPLY @1 GOTO beginRob
  IF ~~ THEN REPLY @2 GOTO beginDirector
  IF ~~ THEN REPLY @3 GOTO beginNot
  IF ~~ THEN REPLY @4 GOTO beginOgres
END

IF ~~ beginRob
  SAY @14
  IF ~~ THEN DO ~Enemy() SetGlobal("BankBGRobbed","GLOBAL",1) Help()~ EXIT
END

IF ~~ beginDirector
  SAY @15
  IF ~~ THEN EXIT
END

IF ~~ beginNot
  SAY @16
  IF ~~ THEN EXIT
END


IF ~~ beginOgres
  SAY @17
  IF ~~ THEN EXIT
END
