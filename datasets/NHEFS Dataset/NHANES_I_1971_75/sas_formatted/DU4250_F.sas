/*
 *  Survey:           NHANES I
 *  Years:            1971-1975
 *  Questionnaire:    Spirometry-Best Trials Only
 *  Tape Number:      4250
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

VALUE SP0010F
     1='3,000,000 or more'
     2='1,000,000 to 2,999,999'
     3='250,000 to 999,999'
     4='under 250,000'
     5='Urban place 25,000 or more outside urbanized area'
     6='Urban place 10,000 to 24,999 outside urbanized area'
     7='Urban place 2,500 to 9,999 outside urbanized area'
     8='Rural'
     ;

VALUE SP0011F
     1='In SMSA, in central city'
     2='In SMSA, not in central city'
     3='Not in SMSA'
     ;

VALUE SP0012F
     1='Housing Unit'
     2='Other unit'
     ;

VALUE SP0013F
     1='All other'
     2='Rural  7136'
     ;

VALUE SP0014F
     1='10 or more acres'
     2='Less than 10 acres'
     9='Not applicable'
     ;

VALUE SP0015F
     2='Yes'
     4='No'
     9='Not applicable'
     ;

VALUE SP0016F
     3='Yes'
     5='No'
     9='Not applicable'
     ;

VALUE SP0017F
     00='Blank, but applicable'
     ;

VALUE SP0019F
     1='Male'
     2='Female'
     ;

VALUE SP0020F
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

VALUE SP0022F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE SP0027F
     9='9 or more'
     ;

VALUE SP0028F
     1='Yes'
     2='No'
     ;

VALUE SP0029F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE SP0030F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE SP0031F
     1='Yes'
     2='No'
     ;

VALUE SP0032F
     1='Yes'
     2='No'
     ;

VALUE SP0033F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE SP0034F
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

VALUE SP0036F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE SP0037F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE SP0041F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE SP0042F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE SP0046F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE SP0047F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE SP0051F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE SP0052F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE SP0056F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE SP0057F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE SP0061F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE SP0062F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE SP0066F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE SP0067F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE SP0071F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE SP0072F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE SP0076F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE SP0077F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE SP0081F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE SP0082F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE SP0086F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE SP0087F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE SP0091F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE SP0100F
     1='Head (1 person living along or with non-relatives)'
     2='Head (2 or more related persons in family)'
     3='Wife'
     4='Child'
     5='Other relative'
     ;

VALUE SP0103F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE SP0104F
     1='Male'
     2='Female'
     ;

VALUE SP0105F
     1='Under 17'
     2='Married'
     3='Widowed'
     4='Never Married'
     5='Divorced'
     6='Separated'
     8='Blank, but applicable'
     ;

VALUE SP0110F
     88='Blank, but applicable'
     ;

VALUE SP0112F
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

VALUE SP0114F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE SP0115F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE SP0116F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE SP0117F
     1='Nursery'
     2='Kindergarten'
     3='Other'
     4='Headstart'
     5='Daycare'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE SP0118F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE SP0119F
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

VALUE SP0120F
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

VALUE SP0122F
     1='Working'
     2='Keeping house'
     3='Something else'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE SP0123F
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

VALUE SP0124F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE SP0125F
     1='Full-time'
     2='Part-time'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE SP0126F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE SP0127F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE SP0128F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE SP0129F
     1='Looking'
     2='Lay-off'
     3='Both'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE SP0130F
     1='Private paid'
     2='Government-Federal'
     3='Government-Other'
     4='Own'
     5='Non-paid'
     6='Never worked'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE SP0131F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE SP0146F
     1='Farm'
     2='Nonfarm'
     ;

VALUE SP0147F
     998='Index computed 998 or greater'
     999='Unknown'
     ;

VALUE SP0150F
     1='Northeast'
     2='Midwest'
     3='South'
     4='West'
     ;

VALUE SP0151F
     1='Not applicable'
     2='No program available'
     3='Food stamps available'
     4='Commodities available'
     8='Blank, but applicable'
     ;

VALUE SP0152F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE SP0153F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE SP0154F
     1='No need'
     2='Not enough money at the time'
     3='No transportation'
     4='Pride'
     5='Other'
     8='Blank, but applicable'
     ;

VALUE SP0155F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE SP0156F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE SP0157F
     1='No need'
     2='No transportation'
     3='Pride'
     4='Other'
     8='Blank, but applicable'
     ;

VALUE SP0205F
     888='blank, but applicable'
     ;

VALUE SP0208F
     0='as observed'
     1='missing data - imputed'
     8='blank, but applicable'
     ;

VALUE SP0209F
     88888='blank, but applicable'
     ;

VALUE SP0214F
     0='as observed'
     1='missing data - imputed'
     8='missing data - not imputed'
     ;

VALUE SP0217F
     0='no procedural errors'
     1='no stable base line'
     2='volume increasing at end of record'
     3='FEV1.00 less than 4% greater than FEV0.50 or FEV2.00 less than 4% greater than FEV1.00'
     4='inhalation artifact'
     5='venturi'
     6='volume less than 0.2 liters'
     7='hesitation artifact'
     8='premature termination at end of trial'
     ;

VALUE SP0256F
     99999='not technically valid'
     ;

VALUE SP0261F
     99999='not technically valid'
     ;

VALUE SP0266F
     99999='not technically valid'
     ;

VALUE SP0286F
     99999='not technically valid'
     ;

VALUE SP0291F
     99999='not technically valid'
     ;

VALUE SP0296F
     99999='not technically valid'
     ;

VALUE SP0316F
     99999='not technically valid'
     ;

VALUE SP0321F
     99999='not technically valid'
     ;

VALUE SP0326F
     99999='not technically valid'
     ;

VALUE SP0336F
     99999='not technically valid'
     ;

VALUE SP0346F
     99999='not technically valid'
     ;

VALUE SP0351F
     99999='not technically valid'
     ;

VALUE SP0356F
     99999='not technically valid'
     ;

VALUE SP0366F
     99999='not technically valid'
     ;

VALUE SP0376F
     99999='not technically valid'
     ;

VALUE SP0381F
     99999='not technically valid'
     ;

VALUE SP0386F
     99999='not technically valid'
     ;

VALUE SP0396F
     99999='not technically valid'
     ;

VALUE SP0406F
     99999='not technically valid'
     ;

VALUE SP0411F
     99999='not technically valid'
     ;

VALUE SP0416F
     99999='not technically valid'
     ;

VALUE SP0426F
     99999='not technically valid'
     ;

VALUE SP0436F
     99999='not technically valid'
     ;

VALUE SP0441F
     99999='not technically valid'
     ;

VALUE SP0446F
     99999='not technically valid'
     ;

VALUE SP0476F
     99999='not technically valid'
     ;

VALUE SP0515F
     1='Normal'
     2='Restrictive'
     3='Obstructive'
     4='Restrictive/Obstructive'
     ;

VALUE SP0516F
     0='Not reproducible'
     1='Reproducible'
     ;

VALUE SP0517F
     1='Best trial'
     ;
RUN;


DATA D_4250;
   INFILE 'c:\temp\DU4250.txt' LRECL = 2000 MISSOVER;
      LENGTH
         SEQN 8
         N1SP0006 8
         N1SP0010 4
         N1SP0011 4
         N1SP0012 4
         N1SP0013 4
         N1SP0014 4
         N1SP0015 4
         N1SP0016 4
         N1SP0017 4
         N1SP0019 4
         N1SP0020 4
         N1SP0022 4
         N1SP0023 4
         N1SP0025 4
         N1SP0027 4
         N1SP0028 4
         N1SP0029 4
         N1SP0030 4
         N1SP0031 4
         N1SP0032 4
         N1SP0033 4
         N1SP0034 4
         N1SP0036 4
         N1SP0037 8
         N1SP0041 4
         N1SP0042 8
         N1SP0046 4
         N1SP0047 8
         N1SP0051 4
         N1SP0052 8
         N1SP0056 4
         N1SP0057 8
         N1SP0061 4
         N1SP0062 8
         N1SP0066 4
         N1SP0067 8
         N1SP0071 4
         N1SP0072 8
         N1SP0076 4
         N1SP0077 8
         N1SP0081 4
         N1SP0082 8
         N1SP0086 4
         N1SP0087 8
         N1SP0091 8
         N1SP0095 8
         N1SP0100 4
         N1SP0101 4
         N1SP0103 4
         N1SP0104 4
         N1SP0105 4
         N1SP0106 8
         N1SP0110 4
         N1SP0112 4
         N1SP0114 4
         N1SP0115 4
         N1SP0116 4
         N1SP0117 4
         N1SP0118 4
         N1SP0119 4
         N1SP0120 4
         N1SP0122 4
         N1SP0123 4
         N1SP0124 4
         N1SP0125 4
         N1SP0126 4
         N1SP0127 4
         N1SP0128 4
         N1SP0129 4
         N1SP0130 4
         N1SP0131 4
         N1SP0132 4
         N1SP0135 4
         N1SP0138 8
         N1SP0144 4
         N1SP0146 4
         N1SP0147 4
         N1SP0150 4
         N1SP0151 4
         N1SP0152 4
         N1SP0153 4
         N1SP0154 4
         N1SP0155 4
         N1SP0156 4
         N1SP0157 4
         N1SP0158 8
         N1SP0164 $6
         N1SP0170 8
         N1SP0176 $6
         N1SP0182 8
         N1SP0188 8
         N1SP0194 4
         N1SP0196 4
         N1SP0199 4
         N1SP0201 8
         N1SP0205 4
         N1SP0208 4
         N1SP0209 8
         N1SP0214 4
         N1SP0215 4
         N1SP0217 4
         N1SP0218 4
         N1SP0220 $6
         N1SP0226 8
         N1SP0231 8
         N1SP0236 8
         N1SP0241 8
         N1SP0246 8
         N1SP0251 8
         N1SP0256 8
         N1SP0261 8
         N1SP0266 8
         N1SP0271 8
         N1SP0276 8
         N1SP0281 8
         N1SP0286 8
         N1SP0291 8
         N1SP0296 8
         N1SP0301 8
         N1SP0306 8
         N1SP0311 8
         N1SP0316 8
         N1SP0321 8
         N1SP0326 8
         N1SP0331 8
         N1SP0336 8
         N1SP0341 8
         N1SP0346 8
         N1SP0351 8
         N1SP0356 8
         N1SP0361 8
         N1SP0366 8
         N1SP0371 8
         N1SP0376 8
         N1SP0381 8
         N1SP0386 8
         N1SP0391 8
         N1SP0396 8
         N1SP0401 8
         N1SP0406 8
         N1SP0411 8
         N1SP0416 8
         N1SP0421 8
         N1SP0426 8
         N1SP0431 8
         N1SP0436 8
         N1SP0441 8
         N1SP0446 8
         N1SP0451 8
         N1SP0456 8
         N1SP0461 8
         N1SP0466 8
         N1SP0471 8
         N1SP0476 8
         N1SP0481 8
         N1SP0486 8
         N1SP0491 8
         N1SP0496 8
         N1SP0501 8
         N1SP0508 8
         N1SP0515 4
         N1SP0516 4
         N1SP0517 4
         N1SP0518 $8
      ;



FORMAT
     N1SP0010 SP0010F.
     N1SP0011 SP0011F.
     N1SP0012 SP0012F.
     N1SP0013 SP0013F.
     N1SP0014 SP0014F.
     N1SP0015 SP0015F.
     N1SP0016 SP0016F.
     N1SP0017 SP0017F.
     N1SP0019 SP0019F.
     N1SP0020 SP0020F.
     N1SP0022 SP0022F.
     N1SP0027 SP0027F.
     N1SP0028 SP0028F.
     N1SP0029 SP0029F.
     N1SP0030 SP0030F.
     N1SP0031 SP0031F.
     N1SP0032 SP0032F.
     N1SP0033 SP0033F.
     N1SP0034 SP0034F.
     N1SP0036 SP0036F.
     N1SP0037 SP0037F.
     N1SP0041 SP0041F.
     N1SP0042 SP0042F.
     N1SP0046 SP0046F.
     N1SP0047 SP0047F.
     N1SP0051 SP0051F.
     N1SP0052 SP0052F.
     N1SP0056 SP0056F.
     N1SP0057 SP0057F.
     N1SP0061 SP0061F.
     N1SP0062 SP0062F.
     N1SP0066 SP0066F.
     N1SP0067 SP0067F.
     N1SP0071 SP0071F.
     N1SP0072 SP0072F.
     N1SP0076 SP0076F.
     N1SP0077 SP0077F.
     N1SP0081 SP0081F.
     N1SP0082 SP0082F.
     N1SP0086 SP0086F.
     N1SP0087 SP0087F.
     N1SP0091 SP0091F.
     N1SP0100 SP0100F.
     N1SP0103 SP0103F.
     N1SP0104 SP0104F.
     N1SP0105 SP0105F.
     N1SP0110 SP0110F.
     N1SP0112 SP0112F.
     N1SP0114 SP0114F.
     N1SP0115 SP0115F.
     N1SP0116 SP0116F.
     N1SP0117 SP0117F.
     N1SP0118 SP0118F.
     N1SP0119 SP0119F.
     N1SP0120 SP0120F.
     N1SP0122 SP0122F.
     N1SP0123 SP0123F.
     N1SP0124 SP0124F.
     N1SP0125 SP0125F.
     N1SP0126 SP0126F.
     N1SP0127 SP0127F.
     N1SP0128 SP0128F.
     N1SP0129 SP0129F.
     N1SP0130 SP0130F.
     N1SP0131 SP0131F.
     N1SP0146 SP0146F.
     N1SP0147 SP0147F.
     N1SP0150 SP0150F.
     N1SP0151 SP0151F.
     N1SP0152 SP0152F.
     N1SP0153 SP0153F.
     N1SP0154 SP0154F.
     N1SP0155 SP0155F.
     N1SP0156 SP0156F.
     N1SP0157 SP0157F.
     N1SP0205 SP0205F.
     N1SP0208 SP0208F.
     N1SP0209 SP0209F.
     N1SP0214 SP0214F.
     N1SP0217 SP0217F.
     N1SP0256 SP0256F.
     N1SP0261 SP0261F.
     N1SP0266 SP0266F.
     N1SP0286 SP0286F.
     N1SP0291 SP0291F.
     N1SP0296 SP0296F.
     N1SP0316 SP0316F.
     N1SP0321 SP0321F.
     N1SP0326 SP0326F.
     N1SP0336 SP0336F.
     N1SP0346 SP0346F.
     N1SP0351 SP0351F.
     N1SP0356 SP0356F.
     N1SP0366 SP0366F.
     N1SP0376 SP0376F.
     N1SP0381 SP0381F.
     N1SP0386 SP0386F.
     N1SP0396 SP0396F.
     N1SP0406 SP0406F.
     N1SP0411 SP0411F.
     N1SP0416 SP0416F.
     N1SP0426 SP0426F.
     N1SP0436 SP0436F.
     N1SP0441 SP0441F.
     N1SP0446 SP0446F.
     N1SP0476 SP0476F.
     N1SP0515 SP0515F.
     N1SP0516 SP0516F.
     N1SP0517 SP0517F.
     ;

	INPUT
         SEQN 1-5
         N1SP0006 6-9
         N1SP0010 10
         N1SP0011 11
         N1SP0012 12
         N1SP0013 13
         N1SP0014 14
         N1SP0015 15
         N1SP0016 16
         N1SP0017 17-18
         N1SP0019 19
         N1SP0020 20-21
         N1SP0022 22
         N1SP0023 23-24
         N1SP0025 25-26
         N1SP0027 27
         N1SP0028 28
         N1SP0029 29
         N1SP0030 30
         N1SP0031 31
         N1SP0032 32
         N1SP0033 33
         N1SP0034 34-35
         N1SP0036 36
         N1SP0037 37-40
         N1SP0041 41
         N1SP0042 42-45
         N1SP0046 46
         N1SP0047 47-50
         N1SP0051 51
         N1SP0052 52-55
         N1SP0056 56
         N1SP0057 57-60
         N1SP0061 61
         N1SP0062 62-65
         N1SP0066 66
         N1SP0067 67-70
         N1SP0071 71
         N1SP0072 72-75
         N1SP0076 76
         N1SP0077 77-80
         N1SP0081 81
         N1SP0082 82-85
         N1SP0086 86
         N1SP0087 87-90
         N1SP0091 91-94
         N1SP0095 95-99
         N1SP0100 100
         N1SP0101 101-102
         N1SP0103 103
         N1SP0104 104
         N1SP0105 105
         N1SP0106 106-109
         N1SP0110 110-111
         N1SP0112 112-113
         N1SP0114 114
         N1SP0115 115
         N1SP0116 116
         N1SP0117 117
         N1SP0118 118
         N1SP0119 119
         N1SP0120 120-121
         N1SP0122 122
         N1SP0123 123
         N1SP0124 124
         N1SP0125 125
         N1SP0126 126
         N1SP0127 127
         N1SP0128 128
         N1SP0129 129
         N1SP0130 130
         N1SP0131 131
         N1SP0132 132-134
         N1SP0135 135-137
         N1SP0138 138-143
         N1SP0144 144-145
         N1SP0146 146
         N1SP0147 147-149
         N1SP0150 150
         N1SP0151 151
         N1SP0152 152
         N1SP0153 153
         N1SP0154 154
         N1SP0155 155
         N1SP0156 156
         N1SP0157 157
         N1SP0158 158-163
         N1SP0164 164-169
         N1SP0170 170-175
         N1SP0176 176-181
         N1SP0182 182-187
         N1SP0188 188-193
         N1SP0194 194-195
         N1SP0196 196-198
         N1SP0199 199-200
         N1SP0201 201-204
         N1SP0205 205-207
         N1SP0208 208
         N1SP0209 209-213
         N1SP0214 214
         N1SP0215 215-216
         N1SP0217 217
         N1SP0218 218-219
         N1SP0220 220-225
         N1SP0226 226-230
         N1SP0231 231-235
         N1SP0236 236-240
         N1SP0241 241-245
         N1SP0246 246-250
         N1SP0251 251-255
         N1SP0256 256-260
         N1SP0261 261-265
         N1SP0266 266-270
         N1SP0271 271-275
         N1SP0276 276-280
         N1SP0281 281-285
         N1SP0286 286-290
         N1SP0291 291-295
         N1SP0296 296-300
         N1SP0301 301-305
         N1SP0306 306-310
         N1SP0311 311-315
         N1SP0316 316-320
         N1SP0321 321-325
         N1SP0326 326-330
         N1SP0331 331-335
         N1SP0336 336-340
         N1SP0341 341-345
         N1SP0346 346-350
         N1SP0351 351-355
         N1SP0356 356-360
         N1SP0361 361-365
         N1SP0366 366-370
         N1SP0371 371-375
         N1SP0376 376-380
         N1SP0381 381-385
         N1SP0386 386-390
         N1SP0391 391-395
         N1SP0396 396-400
         N1SP0401 401-405
         N1SP0406 406-410
         N1SP0411 411-415
         N1SP0416 416-420
         N1SP0421 421-425
         N1SP0426 426-430
         N1SP0431 431-435
         N1SP0436 436-440
         N1SP0441 441-445
         N1SP0446 446-450
         N1SP0451 451-455
         N1SP0456 456-460
         N1SP0461 461-465
         N1SP0466 466-470
         N1SP0471 471-475
         N1SP0476 476-480
         N1SP0481 481-485
         N1SP0486 486-490
         N1SP0491 491-495
         N1SP0496 496-500
         N1SP0501 501-507
         N1SP0508 508-514
         N1SP0515 515
         N1SP0516 516
         N1SP0517 517
         N1SP0518 518-525
      ;

      LABEL
         SEQN = "SAMPLE SEQUENCE NUMBER"
         N1SP0006 = "CATALOG NUMBER 4271"
         N1SP0010 = "SIZE OF PLACE"
         N1SP0011 = "SMSA-NOT SMSA"
         N1SP0012 = "TYPE OF LIVING QUARTERS"
         N1SP0013 = "LAND USAGE"
         N1SP0014 = "IF RURAL, ASKED HOW MANY ACRES OF LA ..."
         N1SP0015 = "IF 10 ACRES OF MORE, ASKED IF SALE O ..."
         N1SP0016 = "IF 10 ACRES OR LESS, ASKED IF SALE O ..."
         N1SP0017 = "AGE-HEAD OF HOUSEHOLD"
         N1SP0019 = "SEX-HEAD OF HOUSEHOLD"
         N1SP0020 = "HIGHEST GRADE ATTENDED-HEAD OF HOUSEHOLD"
         N1SP0022 = "RACE-HEAD OF HOUSEHOLD"
         N1SP0023 = "TOTAL NUMBER OF PERSONS IN HOUSEHOLD"
         N1SP0025 = "TOTAL SAMPLE PERSONS IN HOUSEHOLD"
         N1SP0027 = "NUMBER OF ROOMS IN HOUSE "
         N1SP0028 = "IS THERE PIPED WATER?"
         N1SP0029 = "IS THERE HOT AND COLD PIPED WATER?"
         N1SP0030 = "IF YES TO PIPED WATER-DOES HOUSE HAV ..."
         N1SP0031 = "DOES HOUSE HAVE A RANGE OR COOK STOVE?"
         N1SP0032 = "DOES HOUSE HAVE A REFRIGERATOR?"
         N1SP0033 = "ARE KITCHEN FACILITIES USED BY ANYON ..."
         N1SP0034 = "TOTAL FAMILY INCOME GROUP"
         N1SP0036 = "WAGES OR SALARIES?"
         N1SP0037 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER ..."
         N1SP0041 = "SOCIAL SECURITY OR  RAILROAD RETIREMENT?"
         N1SP0042 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1SP0046 = "WELFARE PAYMENTS OR OTHER PUBLIC ASS ..."
         N1SP0047 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1SP0051 = "UNEMPLOYMENT OR WORKMEN'S COMPENSATION?"
         N1SP0052 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1SP0056 = "GOVERNMENT EMPLOYEE PENSIONS OR PRIV ..."
         N1SP0057 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1SP0061 = "DIVIDENDS, INTEREST OR RENT?"
         N1SP0062 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1SP0066 = "NET INCOME FROM  OWN NON-FARM BUSINE ..."
         N1SP0067 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1SP0071 = "NET INCOME FROM A FARM?"
         N1SP0072 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1SP0076 = "VETERAN'S PAYMENTS"
         N1SP0077 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1SP0081 = "ALIMONY, CHILD SUPPORT OR CONTRIBUTI ..."
         N1SP0082 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1SP0086 = "ANY OTHER INCOME?"
         N1SP0087 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1SP0091 = "TOTAL AMOUNT(TOTAL OF POSITIONS 37-90)"
         N1SP0095 = "FAMILY UNIT CODE"
         N1SP0100 = "RELATIONSHIP TO HEAD OF HOUSEHOLD"
         N1SP0101 = "AGE AT INTERVIEW"
         N1SP0103 = "RACE OF EXAMINED PERSON"
         N1SP0104 = "SEX OF EXAMINED PERSON"
         N1SP0105 = "MARITAL STATUS"
         N1SP0106 = "DATE OF BIRTH (MONTH, YEAR)"
         N1SP0110 = "PLACE OF BIRTH"
         N1SP0112 = "HIGHEST GRADE OF REGULAR SCHOOL EVER ..."
         N1SP0114 = "DID HE FINISH THE GRADE?"
         N1SP0115 = "IS HE ATTENDING SCHOOL NOW?"
         N1SP0116 = "HAS HE EVER ATTENDED A SCHOOL OF ANY ..."
         N1SP0117 = "IF YES, WHAT KIND OF SCHOOL?"
         N1SP0118 = "IS ANY LANGUAGE OTHER THAN ENGLISH F ..."
         N1SP0119 = "IF YES, WHAT LANGUAGE"
         N1SP0120 = "WHAT IS YOUR MAIN ANCESTRY OR NATION ..."
         N1SP0122 = "WHAT WAS HE DOING MOST PAST THREE MO ..."
         N1SP0123 = "IF ' SOMETHING ELSE' FROM ABOVE, WHA ..."
         N1SP0124 = "IF 'KEEPING HOUSE' OR 'SOMETHING ELS ..."
         N1SP0125 = "IF 'WORKING' FROM ABOVE, DID HE WORK ..."
         N1SP0126 = "DID HE WORK AT ANY TIME LAST WEEK OR ..."
         N1SP0127 = "IF 'NO TO ABOVE, EVEN THOUGH HE DID  ..."
         N1SP0128 = "IF 'NO' IN POSITION 126, WAS HE LOOK ..."
         N1SP0129 = "IF YES TO ABOVE-WHICH?"
         N1SP0130 = "CLASS OF WORKER"
         N1SP0131 = "IF SELF-EMPLOYED IN 'OWN' BUSINESS A ..."
         N1SP0132 = "BUSINESS OR INDUSTRY CODE"
         N1SP0135 = "OCCUPATION CODE"
         N1SP0138 = "DATE OF EXAMINATION"
         N1SP0144 = "AGE AT EXAMINATION"
         N1SP0146 = "FARM"
         N1SP0147 = "POVERTY INDEX (X.XX)"
         N1SP0150 = "RELIGION"
         N1SP0151 = "FOOD PROGRAMS APPLICABILITY"
         N1SP0152 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1SP0153 = "ARE YOU BUYING STAMPS NOW?"
         N1SP0154 = "WHAT IS THE MAIN REASON YOU AREN'T P ..."
         N1SP0155 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1SP0156 = "ARE YOU RECEIVING COMMODITY FOODS  N ..."
         N1SP0157 = "WHY AREN'T YOU PARTICIPATING IN THE  ..."
         N1SP0158 = "DETAILED PERSONS-LOCATIONS 1-35"
         N1SP0164 = "BLANK-DATA USER WORK AREA"
         N1SP0170 = "DETAILED PERSONS-LOCATIONS 1-65"
         N1SP0176 = "BLANK-DATA USER WORK AREA"
         N1SP0182 = "DETAILED PERSONS-LOCATIONS 66-100"
         N1SP0188 = "DETAILED PERSONS-LOCATIONS 1-100"
         N1SP0194 = "STRATA"
         N1SP0196 = "PSUDO PRIMARY SAMPLING UNITS"
         N1SP0199 = " WORK AREA"
         N1SP0201 = "CATALOG NUMBER 4250"
         N1SP0205 = "HEIGHT (IN INCHES-XX.X-DECIMAL NOT S ..."
         N1SP0208 = "IMPUTATION CODE"
         N1SP0209 = "WEIGHT (IN POUNDS-XX.XX-DECIMAL NOT  ..."
         N1SP0214 = "IMPUTATION CODE"
         N1SP0215 = "TECHNICIAN NUMBER"
         N1SP0217 = "RELIABILITY CODE"
         N1SP0218 = "TRIAL NUMBER"
         N1SP0220 = "BLANK-DATA USER WORK AREA"
         N1SP0226 = "TIME (IN 1000TH OF SECONDS) OF ACHIE ..."
         N1SP0231 = "FLOW (IN MLS/SEC)AT 0.2 LITERS VOLUME"
         N1SP0236 = "VOLUME (IN MLS) AT 1/2 SECONDS AFTER ..."
         N1SP0241 = "FLOW (IN MLS/SEC) AT 1/4 SECONDS AFT ..."
         N1SP0246 = "TIME (IN 1000TH OF SECONDS) OF PEAK  ..."
         N1SP0251 = "VOLUME (IN MLS) AT PEAK FLOW"
         N1SP0256 = "PEAK FLOW (IN MLS/SEC)"
         N1SP0261 = "TIME (IN 1000TH OF SECONDS) OF ACHIE ..."
         N1SP0266 = "FLOW (IN MLS/SEC) AT 1.0 LITERS VOLUME"
         N1SP0271 = "VOLUME (IN MLS) AT 1/2 SECONDS AFTER ..."
         N1SP0276 = "FLOW (IN MLS/SEC) AT 1/2 SECONDS AFT ..."
         N1SP0281 = "VOLUME (IN MLS) AT TIME OF (PEAK FLO ..."
         N1SP0286 = "FLOW (IN MLS/SEC) AT TIME OF (PEAK F ..."
         N1SP0291 = "TIME (IN 1000TH OF SECONDS) OF ACHIE ..."
         N1SP0296 = "FLOW (IN MLS/SEC) AT 1.2 LITERS VOLUME"
         N1SP0301 = "VOLUME (IN MLSE) AT 3/4 SECONDS AFTE ..."
         N1SP0306 = "FLOW (IN MLS/SEC) AT 3/4 SECONDS AFT ..."
         N1SP0311 = "VOLUME (IN MLS) AT TIME OF (PEAK FLO ..."
         N1SP0316 = "FLOW (IN MLS/SEC) AT TIME OF (PEAK F ..."
         N1SP0321 = "TIME (IN 1000TH OF SECONDS) OF ACHIE ..."
         N1SP0326 = "FLOW (IN MLS/SEC) AT 2.0 LITERS VOLUME"
         N1SP0331 = "VOLUME (IN MLS) AT 1.0 SECONDS AFTER ..."
         N1SP0336 = "FLOW (IN MLS/SEC) AT 1.0 SECONDS AFT ..."
         N1SP0341 = "VOLUME (IN MLS) AT TIME OF (PEAK FLO ..."
         N1SP0346 = "FLOW (IN MLS/SEC) AT TIME OF (PEAK F ..."
         N1SP0351 = "TIME (IN 1000TH OF SECONDS) OF ACHIE ..."
         N1SP0356 = "FLOW (IN MLS/SEC) AT 3.0 LITERS VOLUME"
         N1SP0361 = "VOLUME (IN MLS) AT 2.0 SECONDS AFTER ..."
         N1SP0366 = "FLOW (IN MLS/SEC AT 2.0 SECONDS AFTE ..."
         N1SP0371 = "VOLUME (IN MLS) AT TIME OF (PEAK FLO ..."
         N1SP0376 = "FLOW (IN MLS/SEC) AT TIME OF (PEAK F ..."
         N1SP0381 = "TIME (IN 1000TH OF SECONDS) OF ACHIE ..."
         N1SP0386 = "FLOW (IN MLS/SEC) AT 4.0 LITERS VOLUME"
         N1SP0391 = "VOLUME (IN MLS) AT 3.0 SECONDS AFTER ..."
         N1SP0396 = "FLOW (IN MLS/SEC AT 3.0 SECONDS AFTE ..."
         N1SP0401 = "VOLUME (IN MLS) AT TIME OF (PEAK FLO ..."
         N1SP0406 = "FLOW (IN MLS/SEC) AT TIME OF (PEAK F ..."
         N1SP0411 = "TIME (IN 1000TH OF SECONDS) OF ACHIE ..."
         N1SP0416 = "FLOW (IN MLS/SEC) AT 5.0 LITERS VOLUME"
         N1SP0421 = "VOLUME (IN MLS) AT 4.0 SECONDS AFTER ..."
         N1SP0426 = "FLOW (IN MLS/SEC) AT 4.0 SECONDS AFT ..."
         N1SP0431 = "VOLUME (IN MLS) AT TIME OF (PEAK FLO ..."
         N1SP0436 = "FLOW (IN MLS/SEC) AT TIME OF (PEAK F ..."
         N1SP0441 = "TIME (IN 1000TH OF SECONDS) OF ACHIE ..."
         N1SP0446 = "FLOW (IN MLS/SEC) AT 6.0 LITERS VOLUME"
         N1SP0451 = "TIME (IN 1000TH OF SECONDS) OF ACHIE ..."
         N1SP0456 = "FLOW (IN MLS/SEC) AT 25% OF FORCED V ..."
         N1SP0461 = "TIME (IN 1000TH OF SECONDS) OF ACHIE ..."
         N1SP0466 = "FLOW (IN MLS/SEC)AT 50% OF FORCED VI ..."
         N1SP0471 = "FVC (FORCED VITAL CAPACITY)"
         N1SP0476 = "MEER (MID-EXPIRATORY FLOW RATE)= AVE ..."
         N1SP0481 = "MMEF (MAXIMUM MID-EXPIRATIORY FLOW)"
         N1SP0486 = "TIME (IN 1000TH OF SECONDS) OF ACHIE ..."
         N1SP0491 = "FLOW (IN MLS/SEC) AT 75% OF FORCED V ..."
         N1SP0496 = "FVCt =TIME OF FVC, MEASURED IN 1000T ..."
         N1SP0501 = "BTPS FACTOR"
         N1SP0508 = "CALIBRATION FACTOR (DECIMAL IS SHOWN ..."
         N1SP0515 = "DIAGNOSIS CODE"
         N1SP0516 = "REPRODUCIBILITY CODE"
         N1SP0517 = "REST TRIAL"
         N1SP0518 = "BLANK-DATA USER WORK AREA"
      ;
RUN;
