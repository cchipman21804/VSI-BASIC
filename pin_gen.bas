10 REM
20 REM * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
30 REM *                                                                       *
40 REM *                        Random PIN Generator                           *
50 REM *                                                                       *
60 REM * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
70 REM
80 REM This application will display random 4-digit PINs until the user presses
90 REM <Ctrl+Break>.
100 REM
110   DIM PIN(3)
130   RANDOMIZE
140 REM MainLoop:
160   FOR X = 0 TO 3
170          PIN(X) = INT(RND * 10)
180          PRINT PIN(X);
190   NEXT X
200   PRINT
210 REM  GOTO MainLoop
220 END

