1 REM PERFECT DIGITAL INVARIANT
2 REM
3 REM HERE'S THE PROBLEM...
4 REM
5 REM ANDREW KOURKOUTIS DEFINES A PERFECT DIGITAL INVARIANT AS
6 REM AN INTEGER CONTAINER N DIGITS, WHERE THE SUM OF THE NTH
7 REM POWERS OF THE DIGITS IS EQUAL TO THE INTEGER ITSELF.
8 REM
9 REM IN GENERAL,
10 REM
11 REM H^N + ... + I^N + J^N + K^N = 
12 REM (H*10^N-1)...(I*10^2)+(J*10^1)+(K*10^0)
13 REM IF N=3 THEN
14 REM I^3 + J^3 + K^3 = I*10^2 + J*10^1 + K*10^0
15 REM FOR EXAMPLE...   371 IS ONE SUCH NUMBER
16 REM 3^3 + 7^3 + 1^3 =   27   +   343  +     1  = 371
18 REM
19 REM T = DIGITAL INVARIANT TEST NUMBER
20 REM C = DIGITAL INVARIANT CANDIDATE (DO THE MATH ON THIS)
21 REM N = LENGTH OF C
22 REM D(N) = DIGIT (N) OF C
23 REM L = DIGIT LOOP
24 REM S = SUM OF DECIMAL DIGITS (DOES THIS EQUAL THE
25 REM     CANDIDATE NUMBER?)
30 PRINT "PERFECT DIGITAL INVARIANT CALCULATOR"
31 REM N = 3
32 REM T = 371
33 REM
80 PRINT "ENTER NUMBER OF DIGITS: (1-7)";
90 INPUT N
91 IF N<1 OR N>7 OR N<>INT(N) THEN 80
97 REM N = 5
98 DIM D(N)
99 REM
100 REM
110 REM LOOP THROUGH VALID TEST NUMBERS OF N DIGITS LONG
120 FOR T = 10^(N-1) TO 10^N - 1
130 REM
140 REM SET DIGIT SUM TO ZERO
150 S = 0
160 REM SAVE TEST NUMBER AS CANDIDATE NUMBER
170 C = T
180 REM LOOP THROUGH THE DIGITS OF THE CANDIDATE NUMBER AND
190 REM SAVE THEM IN THE DIGIT ARRAY
200 FOR L = N TO 1 STEP -1
210 REM
220 REM G = INT(C/10000)
230 REM C = C - G * 10000
240 REM H = INT(C/1000)
250 REM C = C - H * 1000
260 REM I = INT(C/100)
270 REM C = C - I * 100
280 REM J = INT(C/10)
290 REM C = C - J * 10
300 REM K = INT(C/1)
310 REM 
320 D(L) = INT(C/10^(L-1))
330 C = C - D(L) * 10^(L-1)
340 NEXT L
350 REM
360 REM IF G^N+H^N+I^N+J^N+K^N = T THEN PRINT T
370 REM 
380 REM LOOP THROUGH THE DIGITS OF THE CANDIDATE NUMBER AND
390 REM FIND THEIR SUM
400 FOR L = N TO 1 STEP -1
410 S = S + D(L)^N
420 NEXT L
430 REM
440 REM IF THE SUM EQUALS THE TEST NUMBER THEN
450 REM PRINT THE TEST NUMBER
460 IF S = T THEN PRINT T
470 REM GET THE NEXT TEST NUMBER
480 NEXT T
490 END