      ******************************************************************
      * Author: mdski
      * Date:
      * Purpose: education
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. md-basics-file-read.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT TestData ASSIGN TO "test.dat"
              ORGANISATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD TestData.
       01  Item.
           88 EOFile   VALUE HIGH-VALUES.
           02 ItemID   PIC 99.
           02 UName    PIC A(10).
           02 UPass    PIC X(10).
           02 UMail    PIC X(20).
           02 UData    PIC S9999.

       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "  DATA READ FROM FILE"
            STOP RUN.
       END PROGRAM md-basics-file-read.
