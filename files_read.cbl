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
      *> SELECT internal file and ASSIGN it to a external data resource
           SELECT  StudentsFile ASSIGN TO "students.dat"
                   ORGANISATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  StudentsFile.
       01  StudentDetailsBuffer.
           02  StuID           PIC 99.
           02  StuName         PIC A(10).
           02  StuSurname      PIC A(10).
           02  StuDob          PIC 9(8).
           02  StuGender       PIC X.

       WORKING-STORAGE SECTION.
       01  WS-Student.
           88  EndOfFile               VALUE LOW-VALUES.
           02  WS-ID                   PIC 99.
           02  WS-Student-name         PIC A(10).
           02  WS-Student-surname      PIC A(10).
           02  WS-Student-dob          PIC 9(8).
           02  WS-Student-gender       PIC X.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "====DATA READ FROM FILE====".
               PERFORM OPEN-READ
            STOP RUN.

       OPEN-READ.
            OPEN INPUT StudentsFile.
               PERFORM UNTIL EndOfFile
                   READ StudentsFile RECORD
                       INTO WS-Student
                       AT END
                           DISPLAY "====END OF FILE===="
                           SET EndOfFile TO TRUE
                       NOT AT END
                           DISPLAY
                           WS-ID SPACE WS-Student-name,
                           WS-Student-surname,
                           WS-Student-dob SPACE WS-Student-gender
                   END-READ
               END-PERFORM.
            CLOSE StudentsFile.

       END PROGRAM md-basics-file-read.
