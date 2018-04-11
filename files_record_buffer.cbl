      ******************************************************************
      * Author: mdski
      * Date:
      * Purpose: education
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. md-basics-writebuffer.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
      *> SELECT internal file and ASSIGN it to a external data resource
           SELECT  StudentsFile ASSIGN TO "students.dat"
                   ORGANISATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  StudentsFile.
       01  StudentDetailsBuffer.
           02  StuName        PIC A(10).
           02  StuSurname     PIC A(10).
           02  StuDob         PIC 9(8).
           02  StuGender      PIC X.

       WORKING-STORAGE SECTION.
       01  WS-Student.
           02  WS-Student-name        PIC A(10)   VALUE "Name".
           02  WS-Student-surname     PIC A(10)   VALUE "Surname".
           02  WS-Student-dob         PIC 9(8)    VALUE Zeros.
           02  WS-Student-gender      PIC X       VALUE "M".

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "File operations: Write record buffer."

            PERFORM OPEN-WRITE.

            STOP RUN.

       OPEN-WRITE.
           OPEN OUTPUT StudentsFile.
               PERFORM WRITE-BLANK 4 TIMES.
           CLOSE StudentsFile.

       WRITE-BLANK.
      *>   move blank student data (could be a formatted string)
      *>   to the record buffer StudentDetails and then ...
           MOVE WS-Student TO StudentDetailsBuffer.
      *>   ... write the buffer:
           WRITE StudentDetailsBuffer.
      *>   Statement below is equvalent to two above instructions combined.
      *>      WRITE StudentDetailsBuffer FROM WS-Student.

           DISPLAY "1 blank record written.".

       END PROGRAM md-basics-writebuffer.
