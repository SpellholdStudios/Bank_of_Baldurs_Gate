BEGIN BANKMANA

IF ~NumTimesTalkedToGT(0)
!Gender(Player1,FEMALE)~ THEN BEGIN beginInviteMS
  SAY ~Hello again, lady.~
  IF ~~ THEN REPLY ~This is an armed robbery! Everybody drop weapons and get on the floor!~ GOTO beginRob
  IF ~~ THEN REPLY ~Thank you for your guidance. I will visit director right now.~ GOTO beginDirector
  IF ~~ THEN REPLY ~Dont' need bank's services right now.~ GOTO beginNot
  IF ~~ THEN REPLY ~It was I who killed ogres that had robbed your bank.~ GOTO beginOgres
  END


IF ~NumTimesTalkedToGT(0)
Gender(Player1,FEMALE)~ THEN BEGIN beginInviteFS
  SAY ~Hello again, mister.~
  IF ~~ THEN REPLY ~This is an armed robbery! Everybody drop weapons and get on the floor!~ GOTO beginRob
  IF ~~ THEN REPLY ~Thank you for your guidance. I will visit director right now.~ GOTO beginDirector
  IF ~~ THEN REPLY ~Dont' need bank's services right now.~ GOTO beginNot
  IF ~~ THEN REPLY ~It was I who killed ogres that had robbed your bank.~ GOTO beginOgres
  END


IF ~!NumTimesTalkedToGT(0)
!Gender(Player1,FEMALE)~ THEN BEGIN beginInviteM
  SAY ~A good day, mister!~
  =
  ~Dukal Bank of Baldurs Gate is operationable again.~
  =
  ~We had some problems with ... rats in our cellar, but they are over now.~
  =
  ~We hired new guards and now invite you to use services we provide.~
  =
  ~If you want to open new deposit or take money from yours, then welcome to our second floor.~
  =
  ~Director of our trusted bank sir Billboo will provide you with all you want.~
  IF ~~ THEN REPLY ~This is an armed robbery! Everybody drop weapons and get on the floor!~ GOTO beginRob
  IF ~~ THEN REPLY ~Thank you for your guidance. I will visit director right now.~ GOTO beginDirector
  IF ~~ THEN REPLY ~Dont' need bank's services right now.~ GOTO beginNot
  IF ~~ THEN REPLY ~It was I who killed ogres that had robbed your bank.~ GOTO beginOgres
  END


IF ~!NumTimesTalkedToGT(0)
Gender(Player1,FEMALE)~ THEN BEGIN beginInviteF
  SAY ~A good day, lady!~
  =
  ~Dukal Bank of Baldurs Gate is operationable again.~
  =
  ~We had some problems with ... rats in our cellar, but they are over now.~
  =
  ~We hired new guards and now invite you to use services we provide.~
  =
  ~If you want to open new deposit or take money from yours, then welcome to our second floor.~
  =
  ~Director of our trusted bank sir Bilbo will provide you with all you want.~
  IF ~~ THEN REPLY ~This is an armed robbery! Everybody drop weapons and get on the floor!~ GOTO beginRob
  IF ~~ THEN REPLY ~Thank you for your guidance. I will visit director right now.~ GOTO beginDirector
  IF ~~ THEN REPLY ~Dont' need bank's services right now.~ GOTO beginNot
  IF ~~ THEN REPLY ~It was I who killed ogres that had robbed your bank.~ GOTO beginOgres
  END

IF ~~ beginRob
  SAY ~Not again! Guards, to arms!~
  IF ~~ THEN DO ~Enemy()
  SetGlobal("BankBGRobbed","GLOBAL",1)
Help()~ EXIT  
END

IF ~~ beginDirector
  SAY ~I am sure you will like our service. Good luck to you!~
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ beginNot
  SAY ~If you rethink, we are open 24 hours a day from now on.~
  IF ~~ THEN DO ~~ EXIT
END  
  
 
IF ~~ beginOgres
  SAY ~Don't make me laugh. Look at yourself into mirror. You cannot make cobold flee.~
  IF ~~ THEN DO ~~ EXIT
END  

