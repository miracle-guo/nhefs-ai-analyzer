/*
 *  Survey:           NHANES I
 *  Years:            1971-1975
 *  Questionnaire:    Nutrient Composition
 *  Tape Number:      4703
 *
 *  Code Created By:  CDC/IMB
 *
 *  DESCRIPTION:  This file is provided as a starting point to perform advanced 
 *  statistical queries on the survey data.  They are to be used in conjunction 
 *  with legacy codebooks or data tape documentation to analyze the data.  In order 
 *  to use this program: either copy the tape file to your C:\temp directory, or change 
 *  the infile to point to the location that your tape file is located.
*/

DATA D_4703;
   INFILE 'c:\temp\DU4703.txt' LRECL = 2000 MISSOVER;
      LENGTH
         N1NC0001 8
         N1NC0005 4
         N1NC0007 8
         N1NC0012 $7
         N1NC0019 8
         N1NC0026 8
         N1NC0033 8
         N1NC0040 $7
         N1NC0047 8
         N1NC0054 $7
         N1NC0061 $7
         N1NC0068 8
         N1NC0075 8
         N1NC0082 8
         N1NC0089 $7
         N1NC0096 8
         N1NC0103 $7
         N1NC0110 $11
      ;

      INPUT
         N1NC0001 1-4
         N1NC0005 5-6
         N1NC0007 7-11
         N1NC0012 12-18
         N1NC0019 19-25
         N1NC0026 26-32
         N1NC0033 33-39
         N1NC0040 40-46
         N1NC0047 47-53
         N1NC0054 54-60
         N1NC0061 61-67
         N1NC0068 68-74
         N1NC0075 75-81
         N1NC0082 82-88
         N1NC0089 89-95
         N1NC0096 96-102
         N1NC0103 103-109
         N1NC0110 110-120
      ;

      LABEL
         N1NC0001 = "CATALOG NUMBER"
         N1NC0005 = "FOOD GROUP"
         N1NC0007 = "FOOD CODES"
         N1NC0012 = "CALORIES"
         N1NC0019 = "PROTEIN"
         N1NC0026 = "FAT"
         N1NC0033 = "TOTAL CARBOHYDRATES"
         N1NC0040 = "CALCIUM"
         N1NC0047 = "PHOSPHORUS"
         N1NC0054 = "IRON"
         N1NC0061 = "SODIUM"
         N1NC0068 = "POTASSIUM"
         N1NC0075 = "VITAMIN A"
         N1NC0082 = "THIAMINE"
         N1NC0089 = "RIBOFLAVIN"
         N1NC0096 = "NIACIN"
         N1NC0103 = "VITAMIN C"
         N1NC0110 = "BLANKS"
      ;
RUN;
