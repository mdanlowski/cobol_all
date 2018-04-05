      ******************************************************************
      * Author: mdski
      * Date:
      * Purpose: education
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. md-basics-loops.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  Cntr     PIC 9   VALUE 0.
       01  LoopType PIC S9  VALUE -2.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello Loops & Conditionals"

            PERFORM TESTPROC0 THRU TESTPROC3.
            PERFORM TESTPROCTIMES 2 TIMES
               MOVE 0 TO Cntr
               MOVE 0 TO LoopType
            DISPLAY "_________".
            PERFORM TESTPROCTIMES with test before UNTIL Cntr>=3
            DISPLAY "_________".
               MOVE 0 TO Cntr
               MOVE 1 TO LoopType
            PERFORM TESTPROCTIMES VARYING Cntr FROM 0 BY 1 UNTIL Cntr>3.

            STOP RUN.

       TESTPROC0.
            DISPLAY "in para 0".
       TESTPROC1.
            DISPLAY "in para 1".
       TESTPROC2.
            DISPLAY "in para 2".
       TESTPROC3.
            DISPLAY "in para 3".
       TESTPROCTIMES.
            DISPLAY "t/u/v loop - " WITH NO ADVANCING
            COMPUTE Cntr = Cntr + 1

            IF LoopType IS NEGATIVE THEN
               DISPLAY "times".
            IF LoopType IS ZERO THEN
               DISPLAY "until".
            IF LoopType IS POSITIVE THEN
               DISPLAY "varying".


       END PROGRAM md-basics-loops.
