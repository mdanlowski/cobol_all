      ******************************************************************
      * Author: mdski
      * Date:
      * Purpose: education
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. md-basics-error.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  Num     PIC 99      VALUE ZERO.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello errors".

            ADD 500 TO Num
               ON SIZE ERROR PERFORM ERRPROC.

            STOP RUN.

       ERRPROC.
           DISPLAY "Assignment/size error!".
       END PROGRAM md-basics-error.
