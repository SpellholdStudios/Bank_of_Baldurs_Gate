BEGIN BANKDIRE

IF ~AreaCheck("BD0050")
!Gender(Player1,FEMALE)~ THEN BEGIN beginInviteBDMS
  SAY @0 = @1 = @2 = @3
  IF ~Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY @4 GOTO putDeposit
  IF ~Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY @5 GOTO putDeposit
  IF ~~ THEN REPLY @6 GOTO beginNot
END


IF ~AreaCheck("BD0050")
Gender(Player1,FEMALE)~ THEN BEGIN beginInviteBDFS
  SAY @7 = @1 = @2 = @3
  IF ~Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY @4 GOTO putDeposit
  IF ~Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY @5 GOTO putDeposit
  IF ~~ THEN REPLY @6 GOTO beginNot
END


IF ~AreaCheck("BG1202")
NumTimesTalkedToGT(0)
!Gender(Player1,FEMALE)~ THEN BEGIN beginInviteMS
  SAY @0
  IF ~~ THEN REPLY @8 GOTO beginRob
  IF ~!Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY @9 DO ~SetGlobal("BankBGDepositOpened","GLOBAL",1)~ GOTO beginDepositM
  IF ~Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY @4 GOTO putDeposit
  IF ~Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY @5 GOTO putDeposit
  IF ~~ THEN REPLY @6 GOTO beginNot
  IF ~~ THEN REPLY @10 GOTO beginOgresM
END


IF ~AreaCheck("BG1202")
NumTimesTalkedToGT(0)
Gender(Player1,FEMALE)~ THEN BEGIN beginInviteFS
  SAY @7
  IF ~~ THEN REPLY @8 GOTO beginRob
  IF ~!Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY @9 DO ~SetGlobal("BankBGDepositOpened","GLOBAL",1)~ GOTO beginDepositF
  IF ~Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY @4 GOTO putDeposit
  IF ~Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY @5 GOTO putDeposit
  IF ~~ THEN REPLY @6 GOTO beginNot
  IF ~~ THEN REPLY @10 GOTO beginOgresF
END


IF ~AreaCheck("BG1202")
!NumTimesTalkedToGT(0)
!Gender(Player1,FEMALE)~ THEN BEGIN beginInviteM
  SAY @11 = @12 = @13 = @14 = @15 = @16 = @17
  IF ~~ THEN REPLY @8 GOTO beginRob
  IF ~!Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY @9 DO ~SetGlobal("BankBGDepositOpened","GLOBAL",1)~ GOTO beginDepositM
  IF ~Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY @4 GOTO putDeposit
  IF ~Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY @5 GOTO putDeposit
  IF ~~ THEN REPLY @6 GOTO beginNot
  IF ~~ THEN REPLY @10 GOTO beginOgresM
END


IF ~AreaCheck("BG1202")
!NumTimesTalkedToGT(0)
Gender(Player1,FEMALE)~ THEN BEGIN beginInviteF
  SAY @18 = @12 = @13 = @14 = @15 = @16 = @17
  IF ~~ THEN REPLY @8 GOTO beginRob
  IF ~!Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY @9 DO ~SetGlobal("BankBGDepositOpened","GLOBAL",1)~ GOTO beginDepositF
  IF ~Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY @4 GOTO putDeposit
  IF ~Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY @5 GOTO putDeposit
  IF ~~ THEN REPLY @6 GOTO beginNot
  IF ~~ THEN REPLY @10 GOTO beginOgresF
END

IF ~~ beginRob
  SAY @19
  IF ~~ THEN DO ~Enemy() SetGlobal("BankBGRobbed","GLOBAL",1) Help()~ EXIT
END

IF ~~ beginDepositM
  SAY @20 = @21 = @22 = @23
  IF ~~ THEN REPLY @24 GOTO putDeposit
  IF ~~ THEN REPLY @25 GOTO beginNot
END

IF ~~ beginDepositF
  SAY @26 = @21 = @22 = @23
  IF ~~ THEN REPLY @24 GOTO putDeposit
  IF ~~ THEN REPLY @25 GOTO beginNot
END


IF ~~ beginNot
  SAY @27
  IF ~~ THEN EXIT
END


IF ~~ beginOgresF
  SAY @28
  IF ~~ THEN EXIT
END


IF ~~ beginOgresM
  SAY @29
  IF ~~ THEN EXIT
END


IF ~~ putDeposit
  SAY @30
  IF ~~ THEN GOTO AddTake
 END

IF ~~ Added
  SAY @31
  IF ~~ THEN GOTO AddTake
END

IF ~~ Taken
  SAY @32
  IF ~~ THEN GOTO AddTake
END

IF ~~ AddTake
  SAY @17
  IF ~PartyGoldLT(99)~ THEN REPLY @33 GOTO beginNot
  IF ~PartyGoldGT(99)~    THEN REPLY @34 DO ~TakePartyGold(100)    DestroyGold(100)    IncrementGlobal("BankBGMoney","GLOBAL",100)~ GOTO Added
  IF ~PartyGoldGT(499)~   THEN REPLY @35 DO ~TakePartyGold(500)    DestroyGold(500)    IncrementGlobal("BankBGMoney","GLOBAL",500)~ GOTO Added
  IF ~PartyGoldGT(999)~   THEN REPLY @36 DO ~TakePartyGold(1000)   DestroyGold(1000)   IncrementGlobal("BankBGMoney","GLOBAL",1000)~ GOTO Added
  IF ~PartyGoldGT(1999)~  THEN REPLY @37 DO ~TakePartyGold(2000)   DestroyGold(2000)   IncrementGlobal("BankBGMoney","GLOBAL",2000)~ GOTO Added
  IF ~PartyGoldGT(2999)~  THEN REPLY @38 DO ~TakePartyGold(3000)   DestroyGold(3000)   IncrementGlobal("BankBGMoney","GLOBAL",3000)~ GOTO Added
  IF ~PartyGoldGT(3999)~  THEN REPLY @39 DO ~TakePartyGold(4000)   DestroyGold(4000)   IncrementGlobal("BankBGMoney","GLOBAL",4000)~ GOTO Added
  IF ~PartyGoldGT(4999)~  THEN REPLY @40 DO ~TakePartyGold(5000)   DestroyGold(5000)   IncrementGlobal("BankBGMoney","GLOBAL",5000)~ GOTO Added
  IF ~PartyGoldGT(9999)~  THEN REPLY @41 DO ~TakePartyGold(10000)  DestroyGold(10000)  IncrementGlobal("BankBGMoney","GLOBAL",10000)~ GOTO Added
  IF ~PartyGoldGT(19999)~ THEN REPLY @42 DO ~TakePartyGold(20000)  DestroyGold(20000)  IncrementGlobal("BankBGMoney","GLOBAL",20000)~ GOTO Added
  IF ~PartyGoldGT(29999)~ THEN REPLY @43 DO ~TakePartyGold(30000)  DestroyGold(30000)  IncrementGlobal("BankBGMoney","GLOBAL",30000)~ GOTO Added
  IF ~PartyGoldGT(39999)~ THEN REPLY @44 DO ~TakePartyGold(40000)  DestroyGold(40000)  IncrementGlobal("BankBGMoney","GLOBAL",40000)~ GOTO Added
  IF ~PartyGoldGT(49999)~ THEN REPLY @45 DO ~TakePartyGold(50000)  DestroyGold(50000)  IncrementGlobal("BankBGMoney","GLOBAL",50000)~ GOTO Added
  IF ~PartyGoldGT(99999)~ THEN REPLY @46 DO ~TakePartyGold(100000) DestroyGold(100000) IncrementGlobal("BankBGMoney","GLOBAL",100000)~ GOTO Added
  IF ~GlobalLT("BankBGMoney","GLOBAL",99)~    THEN REPLY @47 GOTO beginNot
  IF ~GlobalGT("BankBGMoney","GLOBAL",99)~    THEN REPLY @48 DO ~GiveGoldForce(100)    IncrementGlobal("BankBGMoney","GLOBAL",-100)~ GOTO Taken
  IF ~GlobalGT("BankBGMoney","GLOBAL",499)~   THEN REPLY @49 DO ~GiveGoldForce(500)    IncrementGlobal("BankBGMoney","GLOBAL",-500)~ GOTO Taken
  IF ~GlobalGT("BankBGMoney","GLOBAL",999)~   THEN REPLY @50 DO ~GiveGoldForce(1000)   IncrementGlobal("BankBGMoney","GLOBAL",-1000)~ GOTO Taken
  IF ~GlobalGT("BankBGMoney","GLOBAL",1999)~  THEN REPLY @51 DO ~GiveGoldForce(2000)   IncrementGlobal("BankBGMoney","GLOBAL",-2000)~ GOTO Taken
  IF ~GlobalGT("BankBGMoney","GLOBAL",2999)~  THEN REPLY @52 DO ~GiveGoldForce(3000)   IncrementGlobal("BankBGMoney","GLOBAL",-3000)~ GOTO Taken
  IF ~GlobalGT("BankBGMoney","GLOBAL",3999)~  THEN REPLY @53 DO ~GiveGoldForce(4000)   IncrementGlobal("BankBGMoney","GLOBAL",-4000)~ GOTO Taken
  IF ~GlobalGT("BankBGMoney","GLOBAL",4999)~  THEN REPLY @54 DO ~GiveGoldForce(5000)   IncrementGlobal("BankBGMoney","GLOBAL",-5000)~ GOTO Taken
  IF ~GlobalGT("BankBGMoney","GLOBAL",9999)~  THEN REPLY @55 DO ~GiveGoldForce(10000)  IncrementGlobal("BankBGMoney","GLOBAL",-10000)~ GOTO Taken
  IF ~GlobalGT("BankBGMoney","GLOBAL",19999)~ THEN REPLY @56 DO ~GiveGoldForce(20000)  IncrementGlobal("BankBGMoney","GLOBAL",-20000)~ GOTO Taken
  IF ~GlobalGT("BankBGMoney","GLOBAL",29999)~ THEN REPLY @57 DO ~GiveGoldForce(30000)  IncrementGlobal("BankBGMoney","GLOBAL",-30000)~ GOTO Taken
  IF ~GlobalGT("BankBGMoney","GLOBAL",39999)~ THEN REPLY @58 DO ~GiveGoldForce(40000)  IncrementGlobal("BankBGMoney","GLOBAL",-40000)~ GOTO Taken
  IF ~GlobalGT("BankBGMoney","GLOBAL",49999)~ THEN REPLY @59 DO ~GiveGoldForce(50000)  IncrementGlobal("BankBGMoney","GLOBAL",-50000)~ GOTO Taken
  IF ~GlobalGT("BankBGMoney","GLOBAL",99999)~ THEN REPLY @60 DO ~GiveGoldForce(100000) IncrementGlobal("BankBGMoney","GLOBAL",-100000)~ GOTO Taken
  IF ~~ THEN REPLY @61 GOTO beginNot
END
