/*
 *  Survey:           NHANES I
 *  Years:            1971-1975
 *  Questionnaire:    24-Hour Food Consumption Intake
 *  Tape Number:      4704
 *
 *  Code Created By:  CDC/IMB
 *
 *  DESCRIPTION:  This file is provided as a starting point to perform advanced 
 *  statistical queries on the survey data.  They are to be used in conjunction 
 *  with legacy codebooks or data tape documentation to analyze the data.  In order 
 *  to use this program: either copy the tape file to your C:\temp directory, or change 
 *  the infile to point to the location that your tape file is located.
*/

DATA D_4704;
   INFILE 'C:\temp\DU4704.txt' LRECL = 2000 MISSOVER;
      LENGTH
         SEQN 8
         N1DR0006 8
         N1DR0010 4
         N1DR0011 4
         N1DR0012 4
         N1DR0013 4
         N1DR0014 4
         N1DR0015 4
         N1DR0016 4
         N1DR0017 4
         N1DR0019 4
         N1DR0020 4
         N1DR0022 4
         N1DR0023 4
         N1DR0025 4
         N1DR0027 4
         N1DR0028 4
         N1DR0029 4
         N1DR0030 4
         N1DR0031 4
         N1DR0032 4
         N1DR0033 4
         N1DR0034 4
         N1DR0036 4
         N1DR0037 8
         N1DR0041 4
         N1DR0042 8
         N1DR0046 4
         N1DR0047 8
         N1DR0051 4
         N1DR0052 8
         N1DR0056 4
         N1DR0057 8
         N1DR0061 4
         N1DR0062 8
         N1DR0066 4
         N1DR0067 8
         N1DR0071 4
         N1DR0072 8
         N1DR0076 4
         N1DR0077 8
         N1DR0081 4
         N1DR0082 8
         N1DR0086 4
         N1DR0087 8
         N1DR0091 8
         N1DR0095 8
         N1DR0100 4
         N1DR0101 4
         N1DR0103 4
         N1DR0104 4
         N1DR0105 4
         N1DR0106 8
         N1DR0110 4
         N1DR0112 4
         N1DR0114 4
         N1DR0115 4
         N1DR0116 4
         N1DR0117 4
         N1DR0118 4
         N1DR0119 4
         N1DR0120 4
         N1DR0122 4
         N1DR0123 4
         N1DR0124 4
         N1DR0125 4
         N1DR0126 4
         N1DR0127 4
         N1DR0128 4
         N1DR0129 4
         N1DR0130 4
         N1DR0131 4
         N1DR0132 4
         N1DR0135 4
         N1DR0138 8
         N1DR0144 4
         N1DR0146 4
         N1DR0147 4
         N1DR0150 4
         N1DR0151 4
         N1DR0152 4
         N1DR0153 4
         N1DR0154 4
         N1DR0155 4
         N1DR0156 4
         N1DR0157 4
         N1DR0158 8
         N1DR0164 8
         N1DR0170 8
         N1DR0176 8
         N1DR0182 $12
         N1DR0194 4
         N1DR0196 4
         N1DR0199 4
         N1DR0201 8
         N1DR0205 $20
         N1DR0225 4
         N1DR0226 4
         N1DR0227 4
         N1DR0228 8
         N1DR0233 8
         N1DR0237 4
         N1DR0239 4
         N1DR0240 4
         N1DR0243 4
         N1DR0244 4
         N1DR0246 8
         N1DR0254 8
         N1DR0262 8
         N1DR0270 8
         N1DR0278 8
         N1DR0286 8
         N1DR0294 8
         N1DR0302 8
         N1DR0310 8
         N1DR0318 8
         N1DR0326 8
         N1DR0334 8
         N1DR0342 8
         N1DR0350 8
         N1DR0358 8
         N1DR0366 8
         N1DR0374 8
         N1DR0382 8
         N1DR0390 8
         N1DR0398 8
      ;

      INPUT
         SEQN 1-5
         N1DR0006 6-9
         N1DR0010 10
         N1DR0011 11
         N1DR0012 12
         N1DR0013 13
         N1DR0014 14
         N1DR0015 15
         N1DR0016 16
         N1DR0017 17-18
         N1DR0019 19
         N1DR0020 20-21
         N1DR0022 22
         N1DR0023 23-24
         N1DR0025 25-26
         N1DR0027 27
         N1DR0028 28
         N1DR0029 29
         N1DR0030 30
         N1DR0031 31
         N1DR0032 32
         N1DR0033 33
         N1DR0034 34-35
         N1DR0036 36
         N1DR0037 37-40
         N1DR0041 41
         N1DR0042 42-45
         N1DR0046 46
         N1DR0047 47-50
         N1DR0051 51
         N1DR0052 52-55
         N1DR0056 56
         N1DR0057 57-60
         N1DR0061 61
         N1DR0062 62-65
         N1DR0066 66
         N1DR0067 67-70
         N1DR0071 71
         N1DR0072 72-75
         N1DR0076 76
         N1DR0077 77-80
         N1DR0081 81
         N1DR0082 82-85
         N1DR0086 86
         N1DR0087 87-90
         N1DR0091 91-94
         N1DR0095 95-99
         N1DR0100 100
         N1DR0101 101-102
         N1DR0103 103
         N1DR0104 104
         N1DR0105 105
         N1DR0106 106-109
         N1DR0110 110-111
         N1DR0112 112-113
         N1DR0114 114
         N1DR0115 115
         N1DR0116 116
         N1DR0117 117
         N1DR0118 118
         N1DR0119 119
         N1DR0120 120-121
         N1DR0122 122
         N1DR0123 123
         N1DR0124 124
         N1DR0125 125
         N1DR0126 126
         N1DR0127 127
         N1DR0128 128
         N1DR0129 129
         N1DR0130 130
         N1DR0131 131
         N1DR0132 132-134
         N1DR0135 135-137
         N1DR0138 138-143
         N1DR0144 144-145
         N1DR0146 146
         N1DR0147 147-149
         N1DR0150 150
         N1DR0151 151
         N1DR0152 152
         N1DR0153 153
         N1DR0154 154
         N1DR0155 155
         N1DR0156 156
         N1DR0157 157
         N1DR0158 158-163
         N1DR0164 164-169
         N1DR0170 170-175
         N1DR0176 176-181
         N1DR0182 182-193
         N1DR0194 194-195
         N1DR0196 196-198
         N1DR0199 199-200
         N1DR0201 201-204
         N1DR0205 205-224
         N1DR0225 225
         N1DR0226 226
         N1DR0227 227
         N1DR0228 228-232
         N1DR0233 233-236
         N1DR0237 237-238
         N1DR0239 239
         N1DR0240 240-242
         N1DR0243 243
         N1DR0244 244-245
         N1DR0246 246-253
         N1DR0254 254-261
         N1DR0262 262-269
         N1DR0270 270-277
         N1DR0278 278-285
         N1DR0286 286-293
         N1DR0294 294-301
         N1DR0302 302-309
         N1DR0310 310-317
         N1DR0318 318-325
         N1DR0326 326-333
         N1DR0334 334-341
         N1DR0342 342-349
         N1DR0350 350-357
         N1DR0358 358-365
         N1DR0366 366-373
         N1DR0374 374-381
         N1DR0382 382-389
         N1DR0390 390-397
         N1DR0398 398-405
      ;

      LABEL
         SEQN = "SAMPLE SEQUENCE NUMBER"
         N1DR0006 = "CATALOG NUMBER 4271"
         N1DR0010 = "SIZE OF PLACE"
         N1DR0011 = "SMSA-NOT SMSA"
         N1DR0012 = "TYPE OF LIVING QUARTERS"
         N1DR0013 = "LAND USAGE"
         N1DR0014 = "IF RURAL, ASKED HOW MANY ACRES OF LA ..."
         N1DR0015 = "IF 10 ACRES OF MORE, ASKED IF SALE O ..."
         N1DR0016 = "IF 10 ACRES OR LESS, ASKED IF SALE O ..."
         N1DR0017 = "AGE-HEAD OF HOUSEHOLD"
         N1DR0019 = "SEX-HEAD OF HOUSEHOLD"
         N1DR0020 = "HIGHEST GRADE ATTENDED-HEAD OF HOUSEHOLD"
         N1DR0022 = "RACE-HEAD OF HOUSEHOLD"
         N1DR0023 = "TOTAL NUMBER OF PERSONS IN HOUSEHOLD"
         N1DR0025 = "TOTAL SAMPLE PERSONS IN HOUSEHOLD"
         N1DR0027 = "NUMBER OF ROOMS IN H9OUSE "
         N1DR0028 = "IS THERE PIPED WATER?"
         N1DR0029 = "IS THERE HOT AND COLD PIPED WATER?"
         N1DR0030 = "IF YES TO PIPED WATER-DOES HOUSE HAV ..."
         N1DR0031 = "DOES HOUSE HAVE A RANGE OR COOK STOVE?"
         N1DR0032 = "DOES HOUSE HAVE A REFRIGERATOR?"
         N1DR0033 = "ARE KITCHEN FACILITIES USED BY ANYON ..."
         N1DR0034 = "TOTAL FAMILY INCOME GROUP"
         N1DR0036 = "WAGES OR SALARIES?"
         N1DR0037 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER ..."
         N1DR0041 = "SOCIAL SECURITY OR  RAILROAD RETIREMENT?"
         N1DR0042 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1DR0046 = "WELFARE PAYMENTS OR OTHER PUBLIC ASS ..."
         N1DR0047 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1DR0051 = "UNEMPLOYMENT OR WORKMEN'S COMPENSATION?"
         N1DR0052 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1DR0056 = "GOVERNMENT EMPLOYEE PENSIONS OR PRIV ..."
         N1DR0057 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1DR0061 = "DIVIDENDS, INTEREST OR RENT?"
         N1DR0062 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1DR0066 = "NET INCOME FROM  OWN NON-FARM BUSINE ..."
         N1DR0067 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1DR0071 = "NET INCOME FROM A FARM?"
         N1DR0072 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1DR0076 = "VETERAN'S PAYMENTS"
         N1DR0077 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1DR0081 = "ALIMONY, CHILD SUPPORT OR CONTRIBUTI ..."
         N1DR0082 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1DR0086 = "ANY OTHER INCOME?"
         N1DR0087 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1DR0091 = "TOTAL AMOUNT(TOTAL OF POSITIONS 37-90)"
         N1DR0095 = "FAMILY UNIT CODE"
         N1DR0100 = "RELATIONSHIP TO HEAD OF HOUSEHOLD"
         N1DR0101 = "AGE AT INTERVIEW"
         N1DR0103 = "RACE OF EXAMINED PERSON"
         N1DR0104 = "SEX OF EXAMINED PERSON"
         N1DR0105 = "MARITAL STATUS"
         N1DR0106 = "DATE OF BIRTH (MONTH, YEAR)"
         N1DR0110 = "PLACE OF BIRTH"
         N1DR0112 = "HIGHEST GRADE OF REGULAR SCHOOL EVER ..."
         N1DR0114 = "DID HE FINISH THE GRADE?"
         N1DR0115 = "IS HE ATTENDING SCHOOL NOW?"
         N1DR0116 = "HAS HE EVER ATTENDED A SCHOOL OF ANY ..."
         N1DR0117 = "IF YES, WHAT KIND OF SCHOOL?"
         N1DR0118 = "IS ANY LANGUAGE OTHER THAN ENGLISH F ..."
         N1DR0119 = "IF YES, WHAT LANGUAGE"
         N1DR0120 = "WHAT IS YOUR MAIN ANCESTRY OR NATION ..."
         N1DR0122 = "WHAT WAS HE DOING MOST PAST THREE MO ..."
         N1DR0123 = "IF ' SOMETHING ELSE' FROM ABOVE, WHA ..."
         N1DR0124 = "IF 'KEEPING HOUSE' OR 'SOMETHING ELS ..."
         N1DR0125 = "IF 'WORKING' FROM ABOVE, DID HE WORK ..."
         N1DR0126 = "DID HE WORK AT ANY TIME LAST WEEK OR ..."
         N1DR0127 = "IF 'NO TO ABOVE, EVEN THOUGH HE DID  ..."
         N1DR0128 = "IF 'NO' IN POSITION 126, WAS HE LOOK ..."
         N1DR0129 = "IF YES TO ABOVE-WHICH?"
         N1DR0130 = "CLASS OF WORKER"
         N1DR0131 = "IF SELF-EMPLOYED IN 'OWN' BUSINESS A ..."
         N1DR0132 = "BUSINESS OR INDUSTRY CODE"
         N1DR0135 = "OCCUPATION CODE"
         N1DR0138 = "DATE OF EXAMINATION"
         N1DR0144 = "AGE AT EXAMINATION"
         N1DR0146 = "FARM"
         N1DR0147 = "POVERTY INDEX (X.XX)"
         N1DR0150 = "RELIGION"
         N1DR0151 = "FOOD PROGRAMS APPLICABILITY"
         N1DR0152 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1DR0153 = "ARE YOU BUYING STAMPS NOW?"
         N1DR0154 = "WHAT IS THE MAIN REASON YOU AREN'T P ..."
         N1DR0155 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1DR0156 = "ARE YOU RECEIVING COMMODITY FOODS  N ..."
         N1DR0157 = "WHY AREN'T YOU PARTICIPATING IN THE  ..."
         N1DR0158 = "DETAILED PERSONS-LOCATIONS 1-35"
         N1DR0164 = "ALL SAMPLE PERSONS-LOCATIONS 1-35"
         N1DR0170 = "DETAILED PERSONS-LOCATIONS 1-65"
         N1DR0176 = "ALL SAMPLE PERSONS-LOCATIONS 1-65"
         N1DR0182 = "WORK AREA"
         N1DR0194 = "STRATA 1/"
         N1DR0196 = "PRIMARY SAMPLING UNIT 1/"
         N1DR0199 = "WORK AREA"
         N1DR0201 = "CATALOG NUMBER 4704"
         N1DR0205 = "DATA USER WORK AREA"
         N1DR0225 = "RESPONDENT"
         N1DR0226 = "DAY OF RECALL"
         N1DR0227 = "INGESTION PERIOD"
         N1DR0228 = "FOOD CODE"
         N1DR0233 = "TIME OF DAY "
         N1DR0237 = "LINE NUBER"
         N1DR0239 = "ROOD SOURCE"
         N1DR0240 = "INTERVIEWER CODE"
         N1DR0243 = "COMPLETION CODE"
         N1DR0244 = "FOOD GROUP"
         N1DR0246 = "CALORIES"
         N1DR0254 = "PROTEIN (GRAMS)"
         N1DR0262 = "FAT (GRAMS)"
         N1DR0270 = "TOTAL CARBOHYDRATES (GRAMS)"
         N1DR0278 = "FIBER CARBOHYDRATES"
         N1DR0286 = "CALCIUM (MG)"
         N1DR0294 = "PHOSHORUS (MG)"
         N1DR0302 = "IRON (MG)"
         N1DR0310 = "SODIUM (MG)"
         N1DR0318 = "POTASSIUM (MG)"
         N1DR0326 = "VITAMIN A (INTERNATIONAL UNITS) (I.U)"
         N1DR0334 = "THIMAINE (MG)"
         N1DR0342 = "RIBOFLAVIN (MG)"
         N1DR0350 = "NIACIN (MG) (NIACIN FROM FOOD SOURCES)"
         N1DR0358 = "VITAMIN C (MG)"
         N1DR0366 = "AMOUNT OF FOOD CONSUMED IN GRAMS"
         N1DR0374 = "SATURATED FATTY ACID IN GRAMS"
         N1DR0382 = "OLEIC ACID IN GRAMS"
         N1DR0390 = "LINOLEIC ACID IN GRAMS"
         N1DR0398 = "DIETARY CHOLESTEROL (MG"
      ;
RUN;
