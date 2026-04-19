/*
 *  Survey:           NHANES I
 *  Years:            1971-1975
 *  Questionnaire:    Model Gram
 *  Tape Number:      4702
 *
 *  Code Created By:  CDC/IMB
 *
 *  DESCRIPTION:  This file is provided as a starting point to perform advanced 
 *  statistical queries on the survey data.  They are to be used in conjunction 
 *  with legacy codebooks or data tape documentation to analyze the data.  In order 
 *  to use this program: either copy the tape file to your C:\temp directory, or change 
 *  the infile to point to the location that your tape file is located.
*/

DATA D_4702;
   INFILE 'c:\temp\DU4702.txt' LRECL = 2000 MISSOVER;
      LENGTH
         N1MG0001 4
         N1MG0003 $5
         N1MG0008 $67
         N1MG0075 $1
         N1MG0076 8
      ;

      INPUT
         N1MG0001 1-2
         N1MG0003 3-7
         N1MG0008 8-74
         N1MG0075 75
         N1MG0076 76-80
      ;

      LABEL
         N1MG0001 = "FOOD GROUP"
         N1MG0003 = "FOOD CODE"
         N1MG0008 = "ALPHAMERIC DESCRIPTION OF EACH FOOD ..."
         N1MG0075 = "MEASURE MODEL"
         N1MG0076 = "GRAM CONVERSION FACTOR"
      ;
RUN;
