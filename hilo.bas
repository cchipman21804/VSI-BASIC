1 REM HIGH/LOW JACKPOT GAME
2 REM
3 REM DESCRIPTION
4 REM 
5 REM  THIS GAME IS AN ADAPTATION OF THE GAME GUESS; HOWEVER,
6 REM  INSTEAD OF JUST GUESSING A NUMBER BETWEEN 1 AND 100,
7 REM  IN THIS GAME YOU WIN DOLLARS WHEN YOU GUESS THE NUMBER.
8 REM  THE DIRECTIONS, IN THE WORDS OF THE GAME'S AUTHOR, ARE
9 REM  AS FOLLOWS:
10 REM
11 REM  1>  THERE IS AN AMOUNT OF MONEY, BETWEEN ONE AND
12 REM      ONE HUNDRED DOLLARS, IN THE "HI-LO" JACKPOT.
13 REM
14 REM  2>  YOU WILL HAVE SIX CHANCES IN WHICH TO GUESS THE
15 REM      AMOUNT OF MONEY IN THE JACKPOT.
16 REM
17 REM  3>  AFTER EACH GUESS, THE COMPUTER WILL TELL WHETHER
18 REM      THE GUESS WAS TOO HIGH OR TOO LOW.
19 REM 
20 REM  4>  IF THE CORRECT AMOUNT OF MONEY IS NOT GUESSED AFTER
21 REM      SIX CHANCES, THE COMPUTER WILL PRINT THE AMOUNT OF
22 REM      THE JACKPOT.
23 REM
24 REM  5>  IF THE CORRECT AMOUNT OF MONEY IS GUESSED WITHIN THE
25 REM      SIX CHANCE LIMIT, THE COMPUTER WILL REGISTER THIS
26 REM      AMOUNT.
27 REM
28 REM  6>  AFTER EACH SEQUENCE OF GUESSES, YOU HAVE THE CHOICE
29 REM      OF PLAYING AGAIN OR ENDING THE PROGRAM.  IF A NEW
30 REM      GAME IS PLAYED, A NEW AMOUNT OF MONEY WILL CONSTITUTE
31 REM      THE JACKPOT.
32 REM
33 REM  7>  IF YOU WIN MORE THAN ONCE, THEN YOUR EARNINGS ARE
34 REM      TOTALLED.
35 REM
36 REM PROGRAM AUTHOR:
37 REM
38 REM DEAN ALTMAN
39 REM 3721 WOSLEY
40 REM FORT WORTH, TX 76133
41 REM
90 RANDOMIZE
100 PRINT "THIS IS THE GAME OF HI-LO"
105 PRINT
110 PRINT "YOU WILL HAVE 6 TRIES TO GUESS THE AMOUNT OF MONEY IN THE"
120 PRINT "HI-LO JACKPOT, WHICH IS BETWEEN 1 AND 100 DOLLARS.  IF YOU"
130 PRINT "GUESS THE AMOUNT, YOU WIN ALL THE MONEY IN THE JACKPOT!"
140 PRINT "THEN YOU GET ANOTHER CHANCE TO WIN MORE MONEY, HOWEVER,"
150 PRINT "IF YOU DO NOT GUESS THE AMOUNT, THE GAME ENDS."
155 PRINT
160 R = 0
170 B = 0
175 PRINT
180 Y = INT(100*RND) + 1
200 PRINT "YOUR GUESS";
210 INPUT A
220 B = B + 1
230 IF A = Y THEN 300
240 IF A > Y THEN 270
250 PRINT "YOUR GUESS IS TOO LOW"
260 GOTO 280
270 PRINT "YOUR GUESS IS TOO HIGH"
280 PRINT
285 IF B < 6 THEN 200
290 PRINT "YOU BLEW IT.....TOO BAD.....THE NUMBER WAS";Y
293 R = 0
295 GOTO 350
300 PRINT "GOT IT!!!!!!   YOU WIN";Y;"DOLLARS!"
310 R = R + Y
320 PRINT "YOUR TOTAL WINNINGS ARE NOW";R;"DOLLARS."
350 PRINT
355 PRINT "PLAY AGAIN (YES OR NO)";
360 INPUT A$
370 IF A$="YES" THEN 170
380 PRINT
385 PRINT "SO LONG. HOPE YOU ENJOYED YOURSELF!!"
390 END
