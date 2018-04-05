      ******************************************************************
      * Author: mdski
      * Date:
      * Purpose: education
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. md-basics-data-lvls.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-Student.
           02  WS-Student-name        PIC A(10)   VALUE "Name".
           02  WS-Student-surname     PIC A(10)   VALUE "Surname".
           02  WS-Student-dateob.
               03  dateob-yr        PIC 9(4)    VALUE 1995.
               03  dateob-mon       PIC 9(2)    VALUE 04.
               03  dateob-day       PIC 9(2)    VALUE 25.
           02  WS-Student-courses.
               03  coursedata       PIC X(10).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY WS-Student.

            STOP RUN.

       END PROGRAM md-basics-data-lvls.
