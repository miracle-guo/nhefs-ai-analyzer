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

PROC FORMAT;

VALUE DR0010F
     1='3,000,000 or more'
     2='1,000,000 to 2,999,999'
     3='250,000 to 999,999'
     4='under 250,000'
     5='Urban place 25,000 or more outside urbanized area'
     6='Urban place 10,000 to 24,999 outside urbanized area'
     7='Urban place 2,500 to 9,999 outside urbanized area'
     8='Rural'
     ;

VALUE DR0011F
     1='In SMSA, in central city'
     2='In SMSA, not in central city'
     3='Not in SMSA'
     ;

VALUE DR0012F
     1='Housing Unit'
     2='Other unit'
     ;

VALUE DR0013F
     1='All other'
     2='Rural  7136'
     ;

VALUE DR0014F
     1='10 or more acres'
     2='Less than 10 acres'
     9='Not applicable'
     ;

VALUE DR0015F
     2='Yes'
     4='No'
     9='Not applicable'
     ;

VALUE DR0016F
     3='Yes'
     5='No'
     9='Not applicable'
     ;

VALUE DR0017F
     00='Blank, but applicable'
     ;

VALUE DR0019F
     1='Male'
     2='Female'
     ;

VALUE DR0020F
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

VALUE DR0022F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE DR0027F
     9='9 or more'
     ;

VALUE DR0028F
     1='Yes'
     2='No'
     ;

VALUE DR0029F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE DR0030F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE DR0031F
     1='Yes'
     2='No'
     ;

VALUE DR0032F
     1='Yes'
     2='No'
     ;

VALUE DR0033F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE DR0034F
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

VALUE DR0036F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE DR0037F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE DR0041F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE DR0042F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE DR0046F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE DR0047F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE DR0051F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE DR0052F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE DR0056F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE DR0057F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE DR0061F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE DR0062F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE DR0066F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE DR0067F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE DR0071F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE DR0072F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE DR0076F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE DR0077F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE DR0081F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE DR0082F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE DR0086F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE DR0087F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE DR0091F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE DR0100F
     1='Head (1 person living along or with non-relatives)'
     2='Head (2 or more related persons in family)'
     3='Wife'
     4='Child'
     5='Other relative'
     ;

VALUE DR0103F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE DR0104F
     1='Male'
     2='Female'
     ;

VALUE DR0105F
     1='Under 17'
     2='Married'
     3='Widowed'
     4='Never Married'
     5='Divorced'
     6='Separated'
     8='Blank, but applicable'
     ;

VALUE DR0110F
     88='Blank, but applicable'
     ;

VALUE DR0112F
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

VALUE DR0114F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE DR0115F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE DR0116F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE DR0117F
     1='Nursery'
     2='Kindergarten'
     3='Other'
     4='Headstart'
     5='Daycare'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE DR0118F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE DR0119F
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

VALUE DR0120F
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

VALUE DR0122F
     1='Working'
     2='Keeping house'
     3='Something else'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE DR0123F
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

VALUE DR0124F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE DR0125F
     1='Full-time'
     2='Part-time'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE DR0126F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE DR0127F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE DR0128F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE DR0129F
     1='Looking'
     2='Lay-off'
     3='Both'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE DR0130F
     1='Private paid'
     2='Government-Federal'
     3='Government-Other'
     4='Own'
     5='Non-paid'
     6='Never worked'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE DR0131F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE DR0146F
     1='Farm'
     2='Nonfarm'
     ;

VALUE DR0147F
     998='Index computed 998 or greater'
     999='Unknown'
     ;

VALUE DR0150F
     1='Northeast'
     2='Midwest'
     3='South'
     4='West'
     ;

VALUE DR0151F
     1='Not applicable'
     2='No program available'
     3='Food stamps available'
     4='Commodities available'
     8='Blank, but applicable'
     ;

VALUE DR0152F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE DR0153F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE DR0154F
     1='No need'
     2='Not enough money at the time'
     3='No transportation'
     4='Pride'
     5='Other'
     8='Blank, but applicable'
     ;

VALUE DR0155F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE DR0156F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE DR0157F
     1='No need'
     2='No transportation'
     3='Pride'
     4='Other'
     8='Blank, but applicable'
     ;

VALUE DR0225F
     1='Sample person'
     2='Spouse'
     3='Parent'
     4='Grandparent'
     5='Combination of above'
     6='Other'
     ;

VALUE DR0226F
     0='Blank, but applicable'
     1='Sunday'
     2='Monday'
     3='Tuesday'
     4='Wednesday'
     5='Thursday'
     6='Friday'
     7='Saturday'
     ;

VALUE DR0227F
     1='A.M.'
     2='Noon'
     3='Between meals'
     4='P.M.'
     5='Total Day'
     ;

VALUE DR0228F
     09999='Ingestion period skipped'
     ;

VALUE DR0239F
     1='Home'
     2='School'
     3='Restaurant'
     4='Other'
     ;

VALUE DR0240F
     999='Blank, but applicable'
     ;

VALUE DR0243F
     1='Satisfactory'
     2='Unsatisfactory'
     3='Refusal'
     4='Not available'
     5='Informant incapable'
     6='Other'
     ;

VALUE DR0244F
     00='Ingestion period skipped'
     01='Milk'
     02='Meats'
     03='Poultry'
     04='Organ meats'
     05='Fish and shellfish'
     06='Eggs'
     07='Soups'
     08='Fats, oils'
     09='Legumes'
     10='Cereals'
     11='Fruits, vegetables, and juices'
     12='Sugar and sugar products'
     13='Desserts'
     14='Miscellaneous'
     15='Mixed protein dishes'
     16='Alcoholic beverages'
     17='Sugar free beverages'
     18='Salty snacks'
     ;

VALUE DR0246F
     99999999='Unknown'
     ;

VALUE DR0254F
     99999999='Unknown'
     ;

VALUE DR0262F
     99999999='Unknown'
     ;

VALUE DR0270F
     99999999='Unknown'
     ;

VALUE DR0278F
     99999999='Unknown'
     ;

VALUE DR0286F
     99999999='Unknown'
     ;

VALUE DR0294F
     99999999='Unknown'
     ;

VALUE DR0302F
     99999999='Unknown'
     ;

VALUE DR0310F
     99999999='Unknown'
     ;

VALUE DR0318F
     99999999='Unknown'
     ;

VALUE DR0326F
     99999999='Unknown'
     ;

VALUE DR0334F
     99999999='Unknown'
     ;

VALUE DR0342F
     99999999='Unknown'
     ;

VALUE DR0350F
     99999999='Unknown'
     ;

VALUE DR0358F
     99999999='Unknown'
     ;

VALUE DR0366F
     99999999='Unknown'
     ;

VALUE DR0374F
     99999999='Unknown'
     ;

VALUE DR0382F
     99999999='Unknown'
     ;

VALUE DR0390F
     99999999='Unknown'
     ;

VALUE DR0398F
     99999999='Unknown'
     ;
RUN;


DATA D_4704;
   INFILE 'c:\temp\DU4704.txt' LRECL = 2000 MISSOVER;
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



FORMAT
     N1DR0010 DR0010F.
     N1DR0011 DR0011F.
     N1DR0012 DR0012F.
     N1DR0013 DR0013F.
     N1DR0014 DR0014F.
     N1DR0015 DR0015F.
     N1DR0016 DR0016F.
     N1DR0017 DR0017F.
     N1DR0019 DR0019F.
     N1DR0020 DR0020F.
     N1DR0022 DR0022F.
     N1DR0027 DR0027F.
     N1DR0028 DR0028F.
     N1DR0029 DR0029F.
     N1DR0030 DR0030F.
     N1DR0031 DR0031F.
     N1DR0032 DR0032F.
     N1DR0033 DR0033F.
     N1DR0034 DR0034F.
     N1DR0036 DR0036F.
     N1DR0037 DR0037F.
     N1DR0041 DR0041F.
     N1DR0042 DR0042F.
     N1DR0046 DR0046F.
     N1DR0047 DR0047F.
     N1DR0051 DR0051F.
     N1DR0052 DR0052F.
     N1DR0056 DR0056F.
     N1DR0057 DR0057F.
     N1DR0061 DR0061F.
     N1DR0062 DR0062F.
     N1DR0066 DR0066F.
     N1DR0067 DR0067F.
     N1DR0071 DR0071F.
     N1DR0072 DR0072F.
     N1DR0076 DR0076F.
     N1DR0077 DR0077F.
     N1DR0081 DR0081F.
     N1DR0082 DR0082F.
     N1DR0086 DR0086F.
     N1DR0087 DR0087F.
     N1DR0091 DR0091F.
     N1DR0100 DR0100F.
     N1DR0103 DR0103F.
     N1DR0104 DR0104F.
     N1DR0105 DR0105F.
     N1DR0110 DR0110F.
     N1DR0112 DR0112F.
     N1DR0114 DR0114F.
     N1DR0115 DR0115F.
     N1DR0116 DR0116F.
     N1DR0117 DR0117F.
     N1DR0118 DR0118F.
     N1DR0119 DR0119F.
     N1DR0120 DR0120F.
     N1DR0122 DR0122F.
     N1DR0123 DR0123F.
     N1DR0124 DR0124F.
     N1DR0125 DR0125F.
     N1DR0126 DR0126F.
     N1DR0127 DR0127F.
     N1DR0128 DR0128F.
     N1DR0129 DR0129F.
     N1DR0130 DR0130F.
     N1DR0131 DR0131F.
     N1DR0146 DR0146F.
     N1DR0147 DR0147F.
     N1DR0150 DR0150F.
     N1DR0151 DR0151F.
     N1DR0152 DR0152F.
     N1DR0153 DR0153F.
     N1DR0154 DR0154F.
     N1DR0155 DR0155F.
     N1DR0156 DR0156F.
     N1DR0157 DR0157F.
     N1DR0225 DR0225F.
     N1DR0226 DR0226F.
     N1DR0227 DR0227F.
     N1DR0228 DR0228F.
     N1DR0239 DR0239F.
     N1DR0240 DR0240F.
     N1DR0243 DR0243F.
     N1DR0244 DR0244F.
     N1DR0246 DR0246F.
     N1DR0254 DR0254F.
     N1DR0262 DR0262F.
     N1DR0270 DR0270F.
     N1DR0278 DR0278F.
     N1DR0286 DR0286F.
     N1DR0294 DR0294F.
     N1DR0302 DR0302F.
     N1DR0310 DR0310F.
     N1DR0318 DR0318F.
     N1DR0326 DR0326F.
     N1DR0334 DR0334F.
     N1DR0342 DR0342F.
     N1DR0350 DR0350F.
     N1DR0358 DR0358F.
     N1DR0366 DR0366F.
     N1DR0374 DR0374F.
     N1DR0382 DR0382F.
     N1DR0390 DR0390F.
     N1DR0398 DR0398F.
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
