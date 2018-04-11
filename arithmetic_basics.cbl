      ******************************************************************
      * Author: mdski
      * Date:
      * Purpose: education
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. md-basics-arithmetics.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  A       PIC S999V99     VALUE 1.
       01  B       PIC S999V99     VALUE 2.
       01  C       PIC S999V99     VALUE 3.
       01  D       PIC S999V99     VALUE 4.
       01  E       PIC S999V99     VALUE 5.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "  Hello Arithmetics".
            DISPLAY "before add:"
            DISPLAY A," ",B.
      *>       ADD A TO B GIVING C
      *>       ADD A B C TO D E
            DISPLAY "after add:"
      *    with TO, result was saved in B
      *>       DIVIDE C BY B GIVING A
      *>       DIVIDE B INTO C GIVING D
            SUBTRACT A B FROM E
            DISPLAY A SPACE B SPACE C SPACE D SPACE E.




            STOP RUN.


       END PROGRAM md-basics-arithmetics.
