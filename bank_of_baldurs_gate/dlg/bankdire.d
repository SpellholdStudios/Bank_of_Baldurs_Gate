BEGIN BANKDIRE

IF ~AreaCheck("BD0050")
!Gender(Player1,FEMALE)~ THEN BEGIN beginInviteBDMS
  SAY ~Greetings, mister.~
  =
  ~You know there are trouble times. Even I must work on street, because it's too dangerous to keep bank opened and these hours.~
  =
  ~I heard that dukes asked you to confront this heretic Crusade, and I throught that you maybe in need of money.~
  =
  ~So I took my guards and now I found you.~
  IF ~Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY ~I want to add money to my deposit.~ GOTO putDeposit
  IF ~Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY ~I want to take money from my deposit.~ GOTO putDeposit
  IF ~~ THEN REPLY ~Dont' need bank's services right now.~ GOTO beginNot
  END


IF ~AreaCheck("BD0050")
Gender(Player1,FEMALE)~ THEN BEGIN beginInviteBDFS
  SAY ~Greetings, lady.~
  =
  ~You know there are trouble times. Even I must work on street, because it's too dangerous to keep bank opened and these hours.~
  =
  ~I heard that dukes asked you to confront this heretic Crusade, and I throught that you maybe in need of money.~
  =
  ~So I took my guards and now I found you.~
  IF ~Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY ~I want to add money to my deposit.~ GOTO putDeposit
  IF ~Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY ~I want to take money from my deposit.~ GOTO putDeposit
  IF ~~ THEN REPLY ~Dont' need bank's services right now.~ GOTO beginNot
  END


IF ~AreaCheck("BG1202")
NumTimesTalkedToGT(0)
!Gender(Player1,FEMALE)~ THEN BEGIN beginInviteMS
  SAY ~Greetings, mister.~
  IF ~~ THEN REPLY ~This is an armed robbery! Everybody drop weapons and get on the floor!~ GOTO beginRob
  IF ~!Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY ~I want to open a deposit.~ DO ~SetGlobal("BankBGDepositOpened","GLOBAL",1)~ GOTO beginDepositM
  IF ~Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY ~I want to add money to my deposit.~ GOTO putDeposit
  IF ~Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY ~I want to take money from my deposit.~ GOTO putDeposit
  IF ~~ THEN REPLY ~Dont' need bank's services right now.~ GOTO beginNot
  IF ~~ THEN REPLY ~It was I who killed ogres that had robbed your bank.~ GOTO beginOgresM
  END


IF ~AreaCheck("BG1202")
NumTimesTalkedToGT(0)
Gender(Player1,FEMALE)~ THEN BEGIN beginInviteFS
  SAY ~Greetings, lady.~
  IF ~~ THEN REPLY ~This is an armed robbery! Everybody drop weapons and get on the floor!~ GOTO beginRob
  IF ~!Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY ~I want to open a deposit.~ DO ~SetGlobal("BankBGDepositOpened","GLOBAL",1)~ GOTO beginDepositF
  IF ~Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY ~I want to add money to my deposit.~ GOTO putDeposit
  IF ~Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY ~I want to take money from my deposit.~ GOTO putDeposit
  IF ~~ THEN REPLY ~Dont' need bank's services right now.~ GOTO beginNot
  IF ~~ THEN REPLY ~It was I who killed ogres that had robbed your bank.~ GOTO beginOgresF
  END


IF ~AreaCheck("BG1202")
!NumTimesTalkedToGT(0)
!Gender(Player1,FEMALE)~ THEN BEGIN beginInviteM
  SAY ~Greetings, mister!~
  =
  ~Dukal Bank of Baldurs Gate welcomes you.~
  =
  ~We propose you to open a deposite in our bank.~
  =
  ~There is nothing to fear for you. Our bank is completely trusted and competent.~
  =
  ~When a deposit is opened, you can add money to your account or take them anytime.~
  =
  ~The safety of your gold is provided by obligations of our dukes themselves.~
  =
  ~What do you want?~
  IF ~~ THEN REPLY ~This is an armed robbery! Everybody drop weapons and get on the floor!~ GOTO beginRob
  IF ~!Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY ~I want to open a deposit.~ DO ~SetGlobal("BankBGDepositOpened","GLOBAL",1)~ GOTO beginDepositM
  IF ~Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY ~I want to add money to my deposit.~ GOTO putDeposit
  IF ~Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY ~I want to take money from my deposit.~ GOTO putDeposit
  IF ~~ THEN REPLY ~Dont' need bank's services right now.~ GOTO beginNot
  IF ~~ THEN REPLY ~It was I who killed ogres that had robbed your bank.~ GOTO beginOgresM
  END


IF ~AreaCheck("BG1202")
!NumTimesTalkedToGT(0)
Gender(Player1,FEMALE)~ THEN BEGIN beginInviteF
  SAY ~Greetings, lady!~
  =
  ~Dukal Bank of Baldurs Gate welcomes you.~
  =
  ~We propose you to open a deposite in our bank.~
  =
  ~There is nothing to fear for you. Our bank is completely trusted and competent.~
  =
  ~When a deposit is opened, you can add money to your account or take them anytime.~
  =
  ~The safety of your gold is provided by obligations of our dukes themselves.~
  =
  ~What do you want?~
  IF ~~ THEN REPLY ~This is an armed robbery! Everybody drop weapons and get on the floor!~ GOTO beginRob
  IF ~!Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY ~I want to open a deposit.~ DO ~SetGlobal("BankBGDepositOpened","GLOBAL",1)~ GOTO beginDepositF
  IF ~Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY ~I want to add money to my deposit.~ GOTO putDeposit
  IF ~Global("BankBGDepositOpened","GLOBAL",1)~ THEN REPLY ~I want to take money from my deposit.~ GOTO putDeposit
  IF ~~ THEN REPLY ~Dont' need bank's services right now.~ GOTO beginNot
  IF ~~ THEN REPLY ~It was I who killed ogres that had robbed your bank.~ GOTO beginOgresF
  END

IF ~~ beginRob
  SAY ~Not again! Guards, to arms!~
  IF ~~ THEN DO ~Enemy()
    SetGlobal("BankBGRobbed","GLOBAL",1)
Help()~ EXIT  
END

IF ~~ beginDepositM
  SAY ~Ok, mister. This is out typical contract you must sign to use our deposit.~
  =
  ~Sign it there... And there...~
  =
  ~Good, now you are a customer of most trusted bank of all Sword Coast.~
  =
  ~Will you put some sum of money on deposit right now?~
  IF ~~ THEN REPLY ~Yes, of cause.~ GOTO putDeposit
  IF ~~ THEN REPLY ~Maybe later.~ GOTO beginNot
END

IF ~~ beginDepositF
  SAY ~Ok, lady. This is out typical contract you must sign to use our deposit.~
  =
  ~Sign it there... And there...~
  =
  ~Good, now you are a customer of most trusted bank of all Sword Coast.~
  =
  ~Will you put some sum of money on deposit right now?~
  IF ~~ THEN REPLY ~Yes, of cause.~ GOTO putDeposit
  IF ~~ THEN REPLY ~Maybe later.~ GOTO beginNot
END


IF ~~ beginNot
  SAY ~The wish of a customer is my wish.~
  IF ~~ THEN DO ~~ EXIT
END  
  
 
IF ~~ beginOgresF
  SAY ~Haha! Your sence of humor is as beautiful as you are, milady.~
  IF ~~ THEN DO ~~ EXIT
END  
  
 
IF ~~ beginOgresM
  SAY ~I am very concerned about yours mental state, customer. Can I suggest you must visit a doctor?~
  IF ~~ THEN DO ~~ EXIT
END  




IF ~~ putDeposit
  SAY ~Let me open my accounting book... ~
  IF ~~ THEN DO ~~ GOTO AddTake
 END
 
IF ~~ Added
  SAY ~Received money... Sign there...~
  IF ~~ THEN DO ~~ GOTO AddTake
END

IF ~~ Taken
  SAY ~Given money... Sign there...~
  IF ~~ THEN DO ~~ GOTO AddTake
END

IF ~~ AddTake 
  SAY ~What do you want?~
  IF ~PartyGoldLT(99)~ THEN REPLY ~I dont' have money now. I will return later.~ GOTO beginNot
  IF ~PartyGoldGT(99)~ THEN REPLY ~I want to add 100 gold to my deposit.~ 
  DO ~TakePartyGold(100)
  DestroyGold(100)
  IncrementGlobal("BankBGMoney","GLOBAL",100)
  ~ GOTO Added
  IF ~PartyGoldGT(499)~ THEN REPLY ~I want to add 500 gold to my deposit.~ 
  DO ~TakePartyGold(500)
  DestroyGold(500)
  IncrementGlobal("BankBGMoney","GLOBAL",500)
  ~ GOTO Added
  IF ~PartyGoldGT(999)~ THEN REPLY ~I want to add 1000 gold to my deposit.~ 
  DO ~TakePartyGold(1000)
  DestroyGold(1000)
  IncrementGlobal("BankBGMoney","GLOBAL",1000)
  ~ GOTO Added
  IF ~PartyGoldGT(1999)~ THEN REPLY ~I want to add 2000 gold to my deposit.~  
  DO ~TakePartyGold(2000)
  DestroyGold(2000)
  IncrementGlobal("BankBGMoney","GLOBAL",2000)
  ~ GOTO Added
  IF ~PartyGoldGT(2999)~ THEN REPLY ~I want to add 3000 gold to my deposit.~  
  DO ~TakePartyGold(3000)
  DestroyGold(3000)
  IncrementGlobal("BankBGMoney","GLOBAL",3000)
  ~ GOTO Added
  IF ~PartyGoldGT(3999)~ THEN REPLY ~I want to add 4000 gold to my deposit.~  
  DO ~TakePartyGold(4000)
  DestroyGold(4000)
  IncrementGlobal("BankBGMoney","GLOBAL",4000)
  ~ GOTO Added
  IF ~PartyGoldGT(4999)~ THEN REPLY ~I want to add 5000 gold to my deposit.~  
  DO ~TakePartyGold(5000)
  DestroyGold(5000)
  IncrementGlobal("BankBGMoney","GLOBAL",5000)
  ~ GOTO Added
  IF ~PartyGoldGT(9999)~ THEN REPLY ~I want to add 10000 gold to my deposit.~ 
  DO ~TakePartyGold(10000)
  DestroyGold(10000)
  IncrementGlobal("BankBGMoney","GLOBAL",10000)
  ~ GOTO Added
  IF ~PartyGoldGT(19999)~ THEN REPLY ~I want to add 20000 gold to my deposit.~ 
  DO ~TakePartyGold(20000)
  DestroyGold(20000)
  IncrementGlobal("BankBGMoney","GLOBAL",20000)
  ~ GOTO Added
  IF ~PartyGoldGT(29999)~ THEN REPLY ~I want to add 30000 gold to my deposit.~ 
  DO ~TakePartyGold(30000)
  DestroyGold(30000)
  IncrementGlobal("BankBGMoney","GLOBAL",30000)
  ~ GOTO Added
  IF ~PartyGoldGT(39999)~ THEN REPLY ~I want to add 40000 gold to my deposit.~ 
  DO ~TakePartyGold(40000)
  DestroyGold(40000)
  IncrementGlobal("BankBGMoney","GLOBAL",40000)
  ~ GOTO Added
  IF ~PartyGoldGT(49999)~ THEN REPLY ~I want to add 50000 gold to my deposit.~ 
  DO ~TakePartyGold(50000)
  DestroyGold(50000)
  IncrementGlobal("BankBGMoney","GLOBAL",50000)
  ~ GOTO Added
  IF ~PartyGoldGT(99999)~ THEN REPLY ~I want to add 100000 gold to my deposit.~ 
  DO ~TakePartyGold(100000)
  DestroyGold(100000)
  IncrementGlobal("BankBGMoney","GLOBAL",100000)
  ~ GOTO Added
  
  IF ~GlobalLT("BankBGMoney","GLOBAL",99)~ THEN REPLY ~I dont' have money on my deposit. I will return later.~ GOTO beginNot
  IF ~GlobalGT("BankBGMoney","GLOBAL",99)~ THEN REPLY ~I want to take 100 gold from my deposit.~ 
  DO ~GiveGoldForce(100)
  IncrementGlobal("BankBGMoney","GLOBAL",-100)
  ~ GOTO Taken
  IF ~GlobalGT("BankBGMoney","GLOBAL",499)~ THEN REPLY ~I want to take 500 gold from my deposit.~ 
  DO ~GiveGoldForce(500)
  IncrementGlobal("BankBGMoney","GLOBAL",-500)
  ~ GOTO Taken
    IF ~GlobalGT("BankBGMoney","GLOBAL",999)~ THEN REPLY ~I want to take 1000 gold from my deposit.~ 
  DO ~GiveGoldForce(1000)
  IncrementGlobal("BankBGMoney","GLOBAL",-1000)
  ~ GOTO Taken
    IF ~GlobalGT("BankBGMoney","GLOBAL",1999)~ THEN REPLY ~I want to take 2000 gold from my deposit.~ 
  DO ~GiveGoldForce(2000)
  IncrementGlobal("BankBGMoney","GLOBAL",-2000)
  ~ GOTO Taken    IF ~GlobalGT("BankBGMoney","GLOBAL",2999)~ THEN REPLY ~I want to take 3000 gold from my deposit.~ 
  DO ~GiveGoldForce(3000)
  IncrementGlobal("BankBGMoney","GLOBAL",-3000)
  ~ GOTO Taken    IF ~GlobalGT("BankBGMoney","GLOBAL",3999)~ THEN REPLY ~I want to take 4000 gold from my deposit.~ 
  DO ~GiveGoldForce(4000)
  IncrementGlobal("BankBGMoney","GLOBAL",-4000)
  ~ GOTO Taken    IF ~GlobalGT("BankBGMoney","GLOBAL",4999)~ THEN REPLY ~I want to take 5000 gold from my deposit.~ 
  DO ~GiveGoldForce(5000)
  IncrementGlobal("BankBGMoney","GLOBAL",-5000)
  ~ GOTO Taken
     IF ~GlobalGT("BankBGMoney","GLOBAL",9999)~ THEN REPLY ~I want to take 10000 gold from my deposit.~ 
  DO ~GiveGoldForce(10000)
  IncrementGlobal("BankBGMoney","GLOBAL",-10000)
  ~ GOTO Taken
    IF ~GlobalGT("BankBGMoney","GLOBAL",19999)~ THEN REPLY ~I want to take 20000 gold from my deposit.~ 
  DO ~GiveGoldForce(20000)
  IncrementGlobal("BankBGMoney","GLOBAL",-20000)
  ~ GOTO Taken    
  IF ~GlobalGT("BankBGMoney","GLOBAL",29999)~ THEN REPLY ~I want to take 30000 gold from my deposit.~ 
  DO ~GiveGoldForce(30000)
  IncrementGlobal("BankBGMoney","GLOBAL",-30000)
  ~ GOTO Taken    
  IF ~GlobalGT("BankBGMoney","GLOBAL",39999)~ THEN REPLY ~I want to take 40000 gold from my deposit.~ 
  DO ~GiveGoldForce(40000)
  IncrementGlobal("BankBGMoney","GLOBAL",-40000)
  ~ GOTO Taken    
  IF ~GlobalGT("BankBGMoney","GLOBAL",49999)~ THEN REPLY ~I want to take 50000 gold from my deposit.~ 
  DO ~GiveGoldForce(50000)
  IncrementGlobal("BankBGMoney","GLOBAL",-50000)
  ~ GOTO Taken 
  IF ~GlobalGT("BankBGMoney","GLOBAL",99999)~ THEN REPLY ~I want to take 100000 gold from my deposit.~ 
  DO ~GiveGoldForce(100000)
  IncrementGlobal("BankBGMoney","GLOBAL",-100000)
  ~ GOTO Taken   
  IF ~~ THEN REPLY ~I dont' want nothing to do with deposit right now.~ GOTO beginNot
END


