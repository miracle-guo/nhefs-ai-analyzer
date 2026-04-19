/*
 *  Survey:           NHANES I
 *  Years:            1971-1975
 *  Questionnaire:    Computer Measurements and Interpretations of Electrocardiograms
 *  Tape Number:      4140
 *
 *  Code Created By:  CDC/IMB
 *
 *  DESCRIPTION:  This file is provided as a starting point to perform advanced 
 *  statistical queries on the survey data.  They are to be used in conjunction 
 *  with legacy codebooks or data tape documentation to analyze the data.  In order 
 *  to use this program: either copy the tape file to your C:\temp directory, or change 
 *  the infile to point to the location that your tape file is located.
*/

PROC FORMAT;

VALUE EK0010F
     1='3,000,000 or more'
     2='1,000,000 to 2,999,999'
     3='250,000 to 999,999'
     4='under 250,000'
     5='Urban place 25,000 or more outside urbanized area'
     6='Urban place 10,000 to 24,999 outside urbanized area'
     7='Urban place 2,500 to 9,999 outside urbanized area'
     8='Rural'
     ;

VALUE EK0011F
     1='In SMSA, in central city'
     2='In SMSA, not in central city'
     3='Not in SMSA'
     ;

VALUE EK0012F
     1='Housing Unit'
     2='Other unit'
     ;

VALUE EK0013F
     1='All other'
     2='Rural  7136'
     ;

VALUE EK0014F
     1='10 or more acres'
     2='Less than 10 acres'
     9='Not applicable'
     ;

VALUE EK0015F
     2='Yes'
     4='No'
     9='Not applicable'
     ;

VALUE EK0016F
     3='Yes'
     5='No'
     9='Not applicable'
     ;

VALUE EK0017F
     00='Blank, but applicable'
     ;

VALUE EK0019F
     1='Male'
     2='Female'
     ;

VALUE EK0020F
     10='None'
     21='1st grade'
     22='2nd grade'
     23='3rd grade'
     24='4th grade'
     25='5th grade'
     26='6th grade'
     27='7th grade'
     28='8th grade'
     31='9th grade'
     32='10th grade'
     33='11th grade'
     34='12th grade'
     41='First year of college'
     42='Second year of college'
     43='Third year of college'
     44='Fourth year of college'
     45='Graduate'
     88='Blank, but applicable'
     ;

VALUE EK0022F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE EK0027F
     9='9 or more'
     ;

VALUE EK0028F
     1='Yes'
     2='No'
     ;

VALUE EK0029F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE EK0030F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE EK0031F
     1='Yes'
     2='No'
     ;

VALUE EK0032F
     1='Yes'
     2='No'
     ;

VALUE EK0033F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE EK0034F
     11='Under $1,000(including loss)'
     12='$1,000-1,999'
     13='$2,000-2,999'
     14='$3,000-3,999'
     15='$4,000-4,999'
     16='$5,000-5,999'
     17='$6,000-6,999'
     18='$7,000-9,999'
     19='$10,000-14,999'
     20='$15,000-19,999'
     21='$20,000-24,999'
     22='$25,000 and over'
     88='Blank, but applicable'
     ;

VALUE EK0036F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE EK0037F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE EK0041F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE EK0042F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE EK0046F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE EK0047F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE EK0051F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE EK0052F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE EK0056F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE EK0057F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE EK0061F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE EK0062F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE EK0066F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE EK0067F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE EK0071F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE EK0072F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE EK0076F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE EK0077F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE EK0081F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE EK0082F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE EK0086F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE EK0087F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE EK0091F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE EK0100F
     1='Head (1 person living along or with non-relatives)'
     2='Head (2 or more related persons in family)'
     3='Wife'
     4='Child'
     5='Other relative'
     ;

VALUE EK0103F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE EK0104F
     1='Male'
     2='Female'
     ;

VALUE EK0105F
     1='Under 17'
     2='Married'
     3='Widowed'
     4='Never Married'
     5='Divorced'
     6='Separated'
     8='Blank, but applicable'
     ;

VALUE EK0110F
     88='Blank, but applicable'
     ;

VALUE EK0112F
     10='None'
     21='1st grade'
     22='2nd grade'
     23='3rd grade'
     24='4th grade'
     25='5th grade'
     26='6th grade'
     27='7th grade'
     28='8th grade'
     31='9th grade'
     32='10th grade'
     33='11th grade'
     34='12th grade'
     41='First year of college'
     42='Second year of college'
     43='Third year of college'
     44='Fourth year of college'
     45='Graduate'
     77='Special school'
     88='Blank, but applicable'
     99='Not applicable'
     ;

VALUE EK0114F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE EK0115F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE EK0116F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE EK0117F
     1='Nursery'
     2='Kindergarten'
     3='Other'
     4='Headstart'
     5='Daycare'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE EK0118F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE EK0119F
     0='German'
     1='Italian'
     2='French'
     3='Polish'
     4='Russian'
     5='Spanish'
     6='Chinese'
     7='Other language'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE EK0120F
     00='German'
     01='Irish'
     02='Italian'
     03='French'
     04='Polish'
     05='Russian'
     06='English'
     07='Spanish'
     08='Mexican'
     09='Chinese'
     10='Japanese'
     11='American Indian'
     12='Negro'
     13='Jewish'
     14='American'
     15='Other'
     88='Blank, but applicable'
     99='Dont know'
     ;

VALUE EK0122F
     1='Working'
     2='Keeping house'
     3='Something else'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE EK0123F
     0='Laid off'
     1='Retired'
     2='Student'
     3='Other'
     4='Ill'
     5='Staying home'
     6='Looking for work'
     7='Unable to work'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE EK0124F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE EK0125F
     1='Full-time'
     2='Part-time'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE EK0126F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE EK0127F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE EK0128F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE EK0129F
     1='Looking'
     2='Lay-off'
     3='Both'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE EK0130F
     1='Private paid'
     2='Government-Federal'
     3='Government-Other'
     4='Own'
     5='Non-paid'
     6='Never worked'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE EK0131F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE EK0146F
     1='Farm'
     2='Nonfarm'
     ;

VALUE EK0147F
     998='Index computed 998 or greater'
     999='Unknown'
     ;

VALUE EK0150F
     1='Northeast'
     2='Midwest'
     3='South'
     4='West'
     ;

VALUE EK0151F
     1='Not applicable'
     2='No program available'
     3='Food stamps available'
     4='Commodities available'
     8='Blank, but applicable'
     ;

VALUE EK0152F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE EK0153F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE EK0154F
     1='No need'
     2='Not enough money at the time'
     3='No transportation'
     4='Pride'
     5='Other'
     8='Blank, but applicable'
     ;

VALUE EK0155F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE EK0156F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE EK0157F
     1='No need'
     2='No transportation'
     3='Pride'
     4='Other'
     8='Blank, but applicable'
     ;
RUN;


DATA D_4140;
   INFILE 'c:\temp\DU4140.txt' LRECL = 2000 MISSOVER;
      LENGTH
         SEQN 8
         N1EK0006 8
         N1EK0010 4
         N1EK0011 4
         N1EK0012 4
         N1EK0013 4
         N1EK0014 4
         N1EK0015 4
         N1EK0016 4
         N1EK0017 4
         N1EK0019 4
         N1EK0020 4
         N1EK0022 4
         N1EK0023 4
         N1EK0025 4
         N1EK0027 4
         N1EK0028 4
         N1EK0029 4
         N1EK0030 4
         N1EK0031 4
         N1EK0032 4
         N1EK0033 4
         N1EK0034 4
         N1EK0036 4
         N1EK0037 8
         N1EK0041 4
         N1EK0042 8
         N1EK0046 4
         N1EK0047 8
         N1EK0051 4
         N1EK0052 8
         N1EK0056 4
         N1EK0057 8
         N1EK0061 4
         N1EK0062 8
         N1EK0066 4
         N1EK0067 8
         N1EK0071 4
         N1EK0072 8
         N1EK0076 4
         N1EK0077 8
         N1EK0081 4
         N1EK0082 8
         N1EK0086 4
         N1EK0087 8
         N1EK0091 8
         N1EK0095 8
         N1EK0100 4
         N1EK0101 4
         N1EK0103 4
         N1EK0104 4
         N1EK0105 4
         N1EK0106 8
         N1EK0110 4
         N1EK0112 4
         N1EK0114 4
         N1EK0115 4
         N1EK0116 4
         N1EK0117 4
         N1EK0118 4
         N1EK0119 4
         N1EK0120 4
         N1EK0122 4
         N1EK0123 4
         N1EK0124 4
         N1EK0125 4
         N1EK0126 4
         N1EK0127 4
         N1EK0128 4
         N1EK0129 4
         N1EK0130 4
         N1EK0131 4
         N1EK0132 4
         N1EK0135 4
         N1EK0138 8
         N1EK0144 4
         N1EK0146 4
         N1EK0147 4
         N1EK0150 4
         N1EK0151 4
         N1EK0152 4
         N1EK0153 4
         N1EK0154 4
         N1EK0155 4
         N1EK0156 4
         N1EK0157 4
         N1EK0158 8
         N1EK0164 $6
         N1EK0170 8
         N1EK0176 $6
         N1EK0182 $12
         N1EK0194 4
         N1EK0196 4
         N1EK0199 4
         N1EK0201 8
         N1EK0205 $9
         N1EK0214 $48
         N1EK0262 $48
         N1EK0310 $48
         N1EK0358 $48
         N1EK0406 $48
         N1EK0454 $48
         N1EK0502 $48
         N1EK0550 $48
         N1EK0598 $48
         N1EK0646 $48
         N1EK0694 $48
         N1EK0742 $48
         N1EK0790 $48
         N1EK0838 $48
         N1EK0886 $48
         N1EK0934 $48
         N1EK0982 $48
         N1EK1030 $48
         N1EK1078 $48
         N1EK1126 $48
         N1EK1174 $48
         N1EK1222 $48
         N1EK1270 $48
         N1EK1318 $48
         N1EK1366 $60
         N1EK1426 8
         N1EK1430 8
         N1EK1434 8
         N1EK1438 8
         N1EK1442 4
         N1EK1445 4
         N1EK1448 4
         N1EK1451 8
         N1EK1455 8
         N1EK1459 8
         N1EK1463 8
         N1EK1467 8
         N1EK1471 8
         N1EK1475 8
         N1EK1479 8
         N1EK1483 8
         N1EK1487 $14
      ;



FORMAT
     N1EK0010 EK0010F.
     N1EK0011 EK0011F.
     N1EK0012 EK0012F.
     N1EK0013 EK0013F.
     N1EK0014 EK0014F.
     N1EK0015 EK0015F.
     N1EK0016 EK0016F.
     N1EK0017 EK0017F.
     N1EK0019 EK0019F.
     N1EK0020 EK0020F.
     N1EK0022 EK0022F.
     N1EK0027 EK0027F.
     N1EK0028 EK0028F.
     N1EK0029 EK0029F.
     N1EK0030 EK0030F.
     N1EK0031 EK0031F.
     N1EK0032 EK0032F.
     N1EK0033 EK0033F.
     N1EK0034 EK0034F.
     N1EK0036 EK0036F.
     N1EK0037 EK0037F.
     N1EK0041 EK0041F.
     N1EK0042 EK0042F.
     N1EK0046 EK0046F.
     N1EK0047 EK0047F.
     N1EK0051 EK0051F.
     N1EK0052 EK0052F.
     N1EK0056 EK0056F.
     N1EK0057 EK0057F.
     N1EK0061 EK0061F.
     N1EK0062 EK0062F.
     N1EK0066 EK0066F.
     N1EK0067 EK0067F.
     N1EK0071 EK0071F.
     N1EK0072 EK0072F.
     N1EK0076 EK0076F.
     N1EK0077 EK0077F.
     N1EK0081 EK0081F.
     N1EK0082 EK0082F.
     N1EK0086 EK0086F.
     N1EK0087 EK0087F.
     N1EK0091 EK0091F.
     N1EK0100 EK0100F.
     N1EK0103 EK0103F.
     N1EK0104 EK0104F.
     N1EK0105 EK0105F.
     N1EK0110 EK0110F.
     N1EK0112 EK0112F.
     N1EK0114 EK0114F.
     N1EK0115 EK0115F.
     N1EK0116 EK0116F.
     N1EK0117 EK0117F.
     N1EK0118 EK0118F.
     N1EK0119 EK0119F.
     N1EK0120 EK0120F.
     N1EK0122 EK0122F.
     N1EK0123 EK0123F.
     N1EK0124 EK0124F.
     N1EK0125 EK0125F.
     N1EK0126 EK0126F.
     N1EK0127 EK0127F.
     N1EK0128 EK0128F.
     N1EK0129 EK0129F.
     N1EK0130 EK0130F.
     N1EK0131 EK0131F.
     N1EK0146 EK0146F.
     N1EK0147 EK0147F.
     N1EK0150 EK0150F.
     N1EK0151 EK0151F.
     N1EK0152 EK0152F.
     N1EK0153 EK0153F.
     N1EK0154 EK0154F.
     N1EK0155 EK0155F.
     N1EK0156 EK0156F.
     N1EK0157 EK0157F.
     ;

	INPUT
         SEQN 1-5
         N1EK0006 6-9
         N1EK0010 10
         N1EK0011 11
         N1EK0012 12
         N1EK0013 13
         N1EK0014 14
         N1EK0015 15
         N1EK0016 16
         N1EK0017 17-18
         N1EK0019 19
         N1EK0020 20-21
         N1EK0022 22
         N1EK0023 23-24
         N1EK0025 25-26
         N1EK0027 27
         N1EK0028 28
         N1EK0029 29
         N1EK0030 30
         N1EK0031 31
         N1EK0032 32
         N1EK0033 33
         N1EK0034 34-35
         N1EK0036 36
         N1EK0037 37-40
         N1EK0041 41
         N1EK0042 42-45
         N1EK0046 46
         N1EK0047 47-50
         N1EK0051 51
         N1EK0052 52-55
         N1EK0056 56
         N1EK0057 57-60
         N1EK0061 61
         N1EK0062 62-65
         N1EK0066 66
         N1EK0067 67-70
         N1EK0071 71
         N1EK0072 72-75
         N1EK0076 76
         N1EK0077 77-80
         N1EK0081 81
         N1EK0082 82-85
         N1EK0086 86
         N1EK0087 87-90
         N1EK0091 91-94
         N1EK0095 95-99
         N1EK0100 100
         N1EK0101 101-102
         N1EK0103 103
         N1EK0104 104
         N1EK0105 105
         N1EK0106 106-109
         N1EK0110 110-111
         N1EK0112 112-113
         N1EK0114 114
         N1EK0115 115
         N1EK0116 116
         N1EK0117 117
         N1EK0118 118
         N1EK0119 119
         N1EK0120 120-121
         N1EK0122 122
         N1EK0123 123
         N1EK0124 124
         N1EK0125 125
         N1EK0126 126
         N1EK0127 127
         N1EK0128 128
         N1EK0129 129
         N1EK0130 130
         N1EK0131 131
         N1EK0132 132-134
         N1EK0135 135-137
         N1EK0138 138-143
         N1EK0144 144-145
         N1EK0146 146
         N1EK0147 147-149
         N1EK0150 150
         N1EK0151 151
         N1EK0152 152
         N1EK0153 153
         N1EK0154 154
         N1EK0155 155
         N1EK0156 156
         N1EK0157 157
         N1EK0158 158-163
         N1EK0164 164-169
         N1EK0170 170-175
         N1EK0176 176-181
         N1EK0182 182-193
         N1EK0194 194-195
         N1EK0196 196-198
         N1EK0199 199-200
         N1EK0201 201-204
         N1EK0205 205-213
         N1EK0214 214-261
         N1EK0262 262-309
         N1EK0310 310-357
         N1EK0358 358-405
         N1EK0406 406-453
         N1EK0454 454-501
         N1EK0502 502-549
         N1EK0550 550-597
         N1EK0598 598-645
         N1EK0646 646-693
         N1EK0694 694-741
         N1EK0742 742-789
         N1EK0790 790-837
         N1EK0838 838-885
         N1EK0886 886-933
         N1EK0934 934-981
         N1EK0982 982-1029
         N1EK1030 1030-1077
         N1EK1078 1078-1125
         N1EK1126 1126-1173
         N1EK1174 1174-1221
         N1EK1222 1222-1269
         N1EK1270 1270-1317
         N1EK1318 1318-1365
         N1EK1366 1366-1425
         N1EK1426 1426-1429
         N1EK1430 1430-1433
         N1EK1434 1434-1437
         N1EK1438 1438-1441
         N1EK1442 1442-1444
         N1EK1445 1445-1447
         N1EK1448 1448-1450
         N1EK1451 1451-1454
         N1EK1455 1455-1458
         N1EK1459 1459-1462
         N1EK1463 1463-1466
         N1EK1467 1467-1470
         N1EK1471 1471-1474
         N1EK1475 1475-1478
         N1EK1479 1479-1482
         N1EK1483 1483-1486
         N1EK1487 1487-1500
      ;

      LABEL
         SEQN = "SAMPLE SEQUENCE NUMBER"
         N1EK0006 = "CATALOG NUMBER 4271"
         N1EK0010 = "SIZE OF PLACE"
         N1EK0011 = "SMSA-NOT SMSA"
         N1EK0012 = "TYPE OF LIVING QUARTERS"
         N1EK0013 = "LAND USAGE"
         N1EK0014 = "IF RURAL, ASKED HOW MANY ACRES OF LA ..."
         N1EK0015 = "IF 10 ACRES OF MORE, ASKED IF SALE O ..."
         N1EK0016 = "IF 10 ACRES OR LESS, ASKED IF SALE O ..."
         N1EK0017 = "AGE-HEAD OF HOUSEHOLD"
         N1EK0019 = "SEX-HEAD OF HOUSEHOLD"
         N1EK0020 = "HIGHEST GRADE ATTENDED-HEAD OF HOUSEHOLD"
         N1EK0022 = "RACE-HEAD OF HOUSEHOLD"
         N1EK0023 = "TOTAL NUMBER OF PERSONS IN HOUSEHOLD"
         N1EK0025 = "TOTAL SAMPLE PERSONS IN HOUSEHOLD"
         N1EK0027 = "NUMBER OF ROOMS IN H9OUSE "
         N1EK0028 = "IS THERE PIPED WATER?"
         N1EK0029 = "IS THERE HOT AND COLD PIPED WATER?"
         N1EK0030 = "IF YES TO PIPED WATER-DOES HOUSE HAV ..."
         N1EK0031 = "DOES HOUSE HAVE A RANGE OR COOK STOVE?"
         N1EK0032 = "DOES HOUSE HAVE A REFRIGERATOR?"
         N1EK0033 = "ARE KITCHEN FACILITIES USED BY ANYON ..."
         N1EK0034 = "TOTAL FAMILY INCOME GROUP"
         N1EK0036 = "WAGES OR SALARIES?"
         N1EK0037 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER ..."
         N1EK0041 = "SOCIAL SECURITY OR  RAILROAD RETIREMENT?"
         N1EK0042 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1EK0046 = "WELFARE PAYMENTS OR OTHER PUBLIC ASS ..."
         N1EK0047 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1EK0051 = "UNEMPLOYMENT OR WORKMEN'S COMPENSATION?"
         N1EK0052 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1EK0056 = "GOVERNMENT EMPLOYEE PENSIONS OR PRIV ..."
         N1EK0057 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1EK0061 = "DIVIDENDS, INTEREST OR RENT?"
         N1EK0062 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1EK0066 = "NET INCOME FROM  OWN NON-FARM BUSINE ..."
         N1EK0067 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1EK0071 = "NET INCOME FROM A FARM?"
         N1EK0072 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1EK0076 = "VETERAN'S PAYMENTS"
         N1EK0077 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1EK0081 = "ALIMONY, CHILD SUPPORT OR CONTRIBUTI ..."
         N1EK0082 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1EK0086 = "ANY OTHER INCOME?"
         N1EK0087 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1EK0091 = "TOTAL AMOUNT(TOTAL OF POSITIONS 37-90)"
         N1EK0095 = "FAMILY UNIT CODE"
         N1EK0100 = "RELATIONSHIP TO HEAD OF HOUSEHOLD"
         N1EK0101 = "AGE AT INTERVIEW"
         N1EK0103 = "RACE OF EXAMINED PERSON"
         N1EK0104 = "SEX OF EXAMINED PERSON"
         N1EK0105 = "MARITAL STATUS"
         N1EK0106 = "DATE OF BIRTH (MONTH, YEAR)"
         N1EK0110 = "PLACE OF BIRTH"
         N1EK0112 = "HIGHEST GRADE OF REGULAR SCHOOL EVER ..."
         N1EK0114 = "DID HE FINISH THE GRADE?"
         N1EK0115 = "IS HE ATTENDING SCHOOL NOW?"
         N1EK0116 = "HAS HE EVER ATTENDED A SCHOOL OF ANY ..."
         N1EK0117 = "IF YES, WHAT KIND OF SCHOOL?"
         N1EK0118 = "IS ANY LANGUAGE OTHER THAN ENGLISH F ..."
         N1EK0119 = "IF YES, WHAT LANGUAGE"
         N1EK0120 = "WHAT IS YOUR MAIN ANCESTRY OR NATION ..."
         N1EK0122 = "WHAT WAS HE DOING MOST PAST THREE MO ..."
         N1EK0123 = "IF ' SOMETHING ELSE' FROM ABOVE, WHA ..."
         N1EK0124 = "IF 'KEEPING HOUSE' OR 'SOMETHING ELS ..."
         N1EK0125 = "IF 'WORKING' FROM ABOVE, DID HE WORK ..."
         N1EK0126 = "DID HE WORK AT ANY TIME LAST WEEK OR ..."
         N1EK0127 = "IF 'NO TO ABOVE, EVEN THOUGH HE DID  ..."
         N1EK0128 = "IF 'NO' IN POSITION 126, WAS HE LOOK ..."
         N1EK0129 = "IF YES TO ABOVE-WHICH?"
         N1EK0130 = "CLASS OF WORKER"
         N1EK0131 = "IF SELF-EMPLOYED IN 'OWN' BUSINESS A ..."
         N1EK0132 = "BUSINESS OR INDUSTRY CODE"
         N1EK0135 = "OCCUPATION CODE"
         N1EK0138 = "DATE OF EXAMINATION"
         N1EK0144 = "AGE AT EXAMINATION"
         N1EK0146 = "FARM"
         N1EK0147 = "POVERTY INDEX (X.XX)"
         N1EK0150 = "RELIGION"
         N1EK0151 = "FOOD PROGRAMS APPLICABILITY"
         N1EK0152 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1EK0153 = "ARE YOU BUYING STAMPS NOW?"
         N1EK0154 = "WHAT IS THE MAIN REASON YOU AREN'T P ..."
         N1EK0155 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1EK0156 = "ARE YOU RECEIVING COMMODITY FOODS  N ..."
         N1EK0157 = "WHY AREN'T YOU PARTICIPATING IN THE  ..."
         N1EK0158 = "DETAILED PERSONS-LOCATIONS 1-35"
         N1EK0164 = "BLANK-DATA USER WORK AREA"
         N1EK0170 = "DETAILED PERSONS-LOCATIONS 1-65"
         N1EK0176 = "BLANK-DATA USER WORK AREA"
         N1EK0182 = "DETAILED PERSONS-LOCATIONS 1-100"
         N1EK0194 = "STRATA "
         N1EK0196 = "PSEUDO PRIMARY SAMPLING UNITS"
         N1EK0199 = "WORK AREA"
         N1EK0201 = "COMPUTER MEASUREMENTS AND INTERPRETA ..."
         N1EK0205 = "WORK AREA"
         N1EK0214 = "MATRIX OF VALUES P-WAVE AMPLITUDE"
         N1EK0262 = "P-WAVE DURATION"
         N1EK0310 = "Q-WAVE AMPLITUDE"
         N1EK0358 = "Q-WAVE DURATION"
         N1EK0406 = "R-WAVE AMPLITUDE"
         N1EK0454 = "R-P AMPLITUDE"
         N1EK0502 = "R-WAVE DURATION"
         N1EK0550 = "R-P DURATION"
         N1EK0598 = "S-WAVE AMPLITUDE"
         N1EK0646 = "S-WAVE DURATION"
         N1EK0694 = "T-WAVE AMPLITUDE"
         N1EK0742 = "T-P AMPLITUDE"
         N1EK0790 = "T-WAVE DURATION (MEASURED FROM PEAK  ..."
         N1EK0838 = "T-P DURATION"
         N1EK0886 = "Q-S AMPLITUDE"
         N1EK0934 = "Q-S DURATION"
         N1EK0982 = "P-R WAVE DURATION"
         N1EK1030 = "ST-1 (.08 SECOND AFTER QRS)"
         N1EK1078 = "ST-2 (.12SECONDS AFTER QRS)"
         N1EK1126 = "ST-3 (.16 SECONDS AFTER QRS)"
         N1EK1174 = "ST-4 (ST2-ST1)/(ST3-ST2)"
         N1EK1222 = "QT (TIME FROM ONSET OF TO END OF T-WAVE)"
         N1EK1270 = "HEART RATE"
         N1EK1318 = "SEQUENCE NUMBER COMPLEX MEASURED"
         N1EK1366 = "LEAD CODE"
         N1EK1426 = "AXES P-WAVE"
         N1EK1430 = "QRS"
         N1EK1434 = "T-WAVE"
         N1EK1438 = "WORK AREA"
         N1EK1442 = "MEAN RATE"
         N1EK1445 = "NOISE LEVEL"
         N1EK1448 = "CALIBRATION"
         N1EK1451 = "INTERPRETATION CODE #1"
         N1EK1455 = "INTERPRETATION CODE #2"
         N1EK1459 = "INTERPRETATION CODE #3"
         N1EK1463 = "INTERPRETATION CODE #4"
         N1EK1467 = "INTERPRETATION CODE #5"
         N1EK1471 = "INTERPRETATION CODE #6"
         N1EK1475 = "INTERPRETATION CODE #7"
         N1EK1479 = "INTERPRETATION CODE #8"
         N1EK1483 = "INTERPRETATION CODE #9"
         N1EK1487 = "BLANK-DATA USER WORK AREA"
      ;
RUN;
