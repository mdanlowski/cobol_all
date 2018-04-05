      ******************************************************************
      * Author: mdski
      * Date:
      * Purpose: education
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. md-basics-datatypes.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  Num1    PIC 9.
       01  Num2    PIC S99.
      *very large number here:
       01  Num3    PIC 9(5)V9.
      *signed with long decimal part
       01  Num4    PIC S99V9(8).
      *assumed decimal - P symbol
       01  Num5    PIC 9PPP.
       01  Text1   PIC A(6) VALUE "JANUSZ".
       01  Text2   PIC X(4) VALUE "_$6A".
       01  Result1    PIC 99.
       01  Result2    PIC S99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "  Datatypes exercise:"
            DISPLAY "plain number:  ",Num1
            DISPLAY "signed number: ",Num2
            DISPLAY "large number:  ",Num3
            DISPLAY "signed long decimal: ",Num4
            DISPLAY "assumed decimal:     ",Num5
            MOVE    "Janusz" TO Text1
            DISPLAY "plain text:   ",Text1
            DISPLAY "alphanumeric: ",Text2.

            DISPLAY "1st number: "
            ACCEPT Num1
            DISPLAY "2nd number: "
            ACCEPT Num2
      *one way
            ADD Num1 Num2 GIVING Result1.
      *other way
            COMPUTE Result2 = Num1 - Num2.
            DISPLAY "Result+: ",Result1.
            DISPLAY "Result-: ",Result2.

            STOP RUN.
       END PROGRAM md-basics-datatypes.
