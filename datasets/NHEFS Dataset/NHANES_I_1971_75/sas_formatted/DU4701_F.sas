/*
 *  Survey:           NHANES I
 *  Years:            1971-1975
 *  Questionnaire:    Dietary Frequency and Adequacy
 *  Tape Number:      4701
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

VALUE FF0010F
     1='3,000,000 or more'
     2='1,000,000 to 2,999,999'
     3='250,000 to 999,999'
     4='under 250,000'
     5='Urban place 25,000 or more outside urbanized area'
     6='Urban place 10,000 to 24,999 outside urbanized area'
     7='Urban place 2,500 to 9,999 outside urbanized area'
     8='Rural'
     ;

VALUE FF0011F
     1='In SMSA, in central city'
     2='In SMSA, not in central city'
     3='Not in SMSA'
     ;

VALUE FF0012F
     1='Housing Unit'
     2='Other unit'
     ;

VALUE FF0013F
     1='All other'
     2='Rural'
     ;

VALUE FF0014F
     1='10 or more acres'
     2='Less than 10 acres'
     9='Not applicable'
     ;

VALUE FF0015F
     2='Yes'
     4='No'
     9='Not applicable'
     ;

VALUE FF0016F
     3='Yes'
     5='No'
     9='Not applicable'
     ;

VALUE FF0017F
     00='Blank, but applicable'
     ;

VALUE FF0019F
     1='Male'
     2='Female'
     ;

VALUE FF0020F
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

VALUE FF0022F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE FF0027F
     9='9 or more'
     ;

VALUE FF0028F
     1='Yes'
     2='No'
     ;

VALUE FF0029F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE FF0030F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE FF0031F
     1='Yes'
     2='No'
     ;

VALUE FF0032F
     1='Yes'
     2='No'
     ;

VALUE FF0033F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE FF0034F
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

VALUE FF0036F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE FF0037F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE FF0041F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE FF0042F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE FF0046F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE FF0047F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE FF0051F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE FF0052F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE FF0056F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE FF0057F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE FF0061F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE FF0062F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE FF0066F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE FF0067F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE FF0071F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE FF0072F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE FF0076F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE FF0077F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE FF0081F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE FF0082F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE FF0086F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE FF0087F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE FF0091F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE FF0100F
     1='Head (1 person living along or with non-relatives)'
     2='Head (2 or more related persons in family)'
     3='Wife'
     4='Child'
     5='Other relative'
     ;

VALUE FF0103F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE FF0104F
     1='Male'
     2='Female'
     ;

VALUE FF0105F
     1='Under 17'
     2='Married'
     3='Widowed'
     4='Never Married'
     5='Divorced'
     6='Separated'
     8='Blank, but applicable'
     ;

VALUE FF0110F
     88='Blank, but applicable'
     ;

VALUE FF0112F
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

VALUE FF0114F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE FF0115F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE FF0116F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE FF0117F
     1='Nursery'
     2='Kindergarten'
     3='Other'
     4='Headstart'
     5='Daycare'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE FF0118F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE FF0119F
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

VALUE FF0120F
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

VALUE FF0122F
     1='Working'
     2='Keeping house'
     3='Something else'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE FF0123F
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

VALUE FF0124F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE FF0125F
     1='Full-time'
     2='Part-time'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE FF0126F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE FF0127F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE FF0128F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE FF0129F
     1='Looking'
     2='Lay-off'
     3='Both'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE FF0130F
     1='Private paid'
     2='Government-Federal'
     3='Government-Other'
     4='Own'
     5='Non-paid'
     6='Never worked'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE FF0131F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE FF0146F
     1='Farm'
     2='Nonfarm'
     ;

VALUE FF0147F
     998='Index computed 998 or greater'
     999='Unknown'
     ;

VALUE FF0150F
     1='Northeast'
     2='Midwest'
     3='South'
     4='West'
     ;

VALUE FF0151F
     1='Not applicable'
     2='No program available'
     3='Food stamps available'
     4='Commodities available'
     8='Blank, but applicable'
     ;

VALUE FF0152F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE FF0153F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE FF0154F
     1='No need'
     2='Not enough money at the time'
     3='No transportation'
     4='Pride'
     5='Other'
     8='Blank, but applicable'
     ;

VALUE FF0155F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE FF0156F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE FF0157F
     1='No need'
     2='No transportation'
     3='Pride'
     4='Other'
     8='Blank, but applicable'
     ;

VALUE FF0216F
     1='Sample Person'
     2='Spouse'
     3='Parent'
     4='Grandparent'
     5='Combination of above'
     6='Other'
     9='Unknown'
     ;

VALUE FF0217F
     0000='Never'
     0005='Less than once a week'
     9999='Unknown'
     ;

VALUE FF0221F
     0000='Never'
     0005='Less than once a week'
     9999='Unknown'
     ;

VALUE FF0225F
     0000='Never'
     0005='Less than once a week'
     9999='Unknown'
     ;

VALUE FF0229F
     0000='Never'
     0005='Less than once a week'
     9999='Unknown'
     ;

VALUE FF0233F
     0000='Never'
     0005='Less than once a week'
     9999='Unknown'
     ;

VALUE FF0237F
     0000='Never'
     0005='Less than once a week'
     9999='Unknown'
     ;

VALUE FF0241F
     0000='Never'
     0005='Less than once a week'
     9999='Unknown'
     ;

VALUE FF0245F
     0000='Never'
     0005='Less than once a week'
     9999='Unknown'
     ;

VALUE FF0249F
     0000='Never'
     0005='Less than once a week'
     9999='Unknown'
     ;

VALUE FF0253F
     0000='Never'
     0005='Less than once a week'
     9999='Unknown'
     ;

VALUE FF0257F
     0000='Never'
     0005='Less than once a week'
     9999='Unknown'
     ;

VALUE FF0261F
     0000='Never'
     0005='Less than once a week'
     9999='Unknown'
     ;

VALUE FF0265F
     0000='Never'
     0005='Less than once a week'
     9999='Unknown'
     ;

VALUE FF0269F
     0000='Never'
     0005='Less than once a week'
     9999='Unknown'
     ;

VALUE FF0273F
     0000='Never'
     0005='Less than once a week'
     9999='Unknown'
     ;

VALUE FF0277F
     0000='Never'
     0005='Less than once a week'
     9999='Unknown'
     ;

VALUE FF0281F
     0000='Never'
     0005='Less than once a week'
     9999='Unknown'
     ;

VALUE FF0285F
     0000='Never'
     0005='Less than once a week'
     9999='Unknown'
     ;

VALUE FF0289F
     0000='Never'
     0005='Less than once a week'
     9999='Unknown'
     ;

VALUE FF0293F
     999='Blank'
     ;

VALUE FF0296F
     1='Satisfactory'
     2='Unsatisfactory'
     ;

VALUE FF0312F
     1='Sample Person'
     2='Spouse'
     3='Parent'
     4='Grandparent'
     5='Combination of above'
     6='Other'
     ;

VALUE FF0313F
     1='Sunday'
     2='Monday'
     3='Tuesday'
     4='Wednesday'
     5='Thursday'
     6='Friday'
     7='Saturday'
     8='Blank'
     ;

VALUE FF0314F
     1='Yes'
     2='No, ill'
     3='No, no money'
     4='No, Sunday'
     5='No, other reason'
     ;

VALUE FF0315F
     0='No'
     1='Yes, eating more'
     3='Yes, eating less'
     4='Yes, on a prescribed diet'
     ;

VALUE FF0316F
     0='No'
     1='Yes, regularly'
     2='Yes, irregularly'
     ;

VALUE FF0317F
     0='Unknown, prescriptions'
     1='Multiple vitamins'
     2='Multiple vitamins and minerals'
     3='Iron only'
     4='Multiple vitamins with iron'
     5='Vitamins E, A and D'
     6='Vitamin C'
     7='Calcium'
     8='Not applicable/Vitamin B'
     9='Miscellaneous'
     ;

VALUE FF0318F
     0='Seldom, never'
     1='1-3 times per week'
     2='4-6 times per week'
     3='7 or more times per week'
     ;

VALUE FF0319F
     0='Rarely, never'
     1='Occasionally, seldom'
     2='Frequently, always'
     8='Not applicable (less than 20 yrs. old)'
     ;

VALUE FF0481F
     0='Not imputed'
     2='Imputed'
     ;

VALUE FF0482F
     99999='Blank, but applicable'
     ;

VALUE FF0490F
     99999999='Blank, but applicable'
     ;

VALUE FF0498F
     99999999='Blank, but applicable'
     ;

VALUE FF0506F
     99999999='Blank, but applicable'
     ;
RUN;

DATA D_4701;
   INFILE 'c:\temp\DU4701.txt' LRECL = 2000 MISSOVER;
      LENGTH
         SEQN 8
         N1FF0006 8
         N1FF0010 4
         N1FF0011 4
         N1FF0012 4
         N1FF0013 4
         N1FF0014 4
         N1FF0015 4
         N1FF0016 4
         N1FF0017 4
         N1FF0019 4
         N1FF0020 4
         N1FF0022 4
         N1FF0023 4
         N1FF0025 4
         N1FF0027 4
         N1FF0028 4
         N1FF0029 4
         N1FF0030 4
         N1FF0031 4
         N1FF0032 4
         N1FF0033 4
         N1FF0034 4
         N1FF0036 4
         N1FF0037 8
         N1FF0041 4
         N1FF0042 8
         N1FF0046 4
         N1FF0047 8
         N1FF0051 4
         N1FF0052 8
         N1FF0056 4
         N1FF0057 8
         N1FF0061 4
         N1FF0062 8
         N1FF0066 4
         N1FF0067 8
         N1FF0071 4
         N1FF0072 8
         N1FF0076 4
         N1FF0077 8
         N1FF0081 4
         N1FF0082 8
         N1FF0086 4
         N1FF0087 8
         N1FF0091 8
         N1FF0095 8
         N1FF0100 4
         N1FF0101 4
         N1FF0103 4
         N1FF0104 4
         N1FF0105 4
         N1FF0106 8
         N1FF0110 4
         N1FF0112 4
         N1FF0114 4
         N1FF0115 4
         N1FF0116 4
         N1FF0117 4
         N1FF0118 4
         N1FF0119 4
         N1FF0120 4
         N1FF0122 4
         N1FF0123 4
         N1FF0124 4
         N1FF0125 4
         N1FF0126 4
         N1FF0127 4
         N1FF0128 4
         N1FF0129 4
         N1FF0130 4
         N1FF0131 4
         N1FF0132 4
         N1FF0135 4
         N1FF0138 8
         N1FF0144 4
         N1FF0146 4
         N1FF0147 4
         N1FF0150 4
         N1FF0151 4
         N1FF0152 4
         N1FF0153 4
         N1FF0154 4
         N1FF0155 4
         N1FF0156 4
         N1FF0157 4
         N1FF0158 8
         N1FF0164 8
         N1FF0170 8
         N1FF0176 8
         N1FF0182 $12
         N1FF0194 4
         N1FF0196 4
         N1FF0199 4
         N1FF0201 8
         N1FF0205 $11
         N1FF0216 4
         N1FF0217 8
         N1FF0221 8
         N1FF0225 8
         N1FF0229 8
         N1FF0233 8
         N1FF0237 8
         N1FF0241 8
         N1FF0245 8
         N1FF0249 8
         N1FF0253 8
         N1FF0257 8
         N1FF0261 8
         N1FF0265 8
         N1FF0269 8
         N1FF0273 8
         N1FF0277 8
         N1FF0281 8
         N1FF0285 8
         N1FF0289 8
         N1FF0293 4
         N1FF0296 4
         N1FF0297 $15
         N1FF0312 4
         N1FF0313 4
         N1FF0314 4
         N1FF0315 4
         N1FF0316 4
         N1FF0317 4
         N1FF0318 4
         N1FF0319 4
         N1FF0320 8
         N1FF0325 4
         N1FF0328 8
         N1FF0336 8
         N1FF0344 8
         N1FF0352 8
         N1FF0360 8
         N1FF0368 8
         N1FF0376 8
         N1FF0384 8
         N1FF0392 8
         N1FF0400 8
         N1FF0408 8
         N1FF0416 8
         N1FF0424 8
         N1FF0432 8
         N1FF0440 $5
         N1FF0445 8
         N1FF0451 8
         N1FF0457 8
         N1FF0463 8
         N1FF0469 8
         N1FF0475 8
         N1FF0481 4
         N1FF0482 8
         N1FF0490 8
         N1FF0498 8
         N1FF0506 8
      ;




FORMAT
     N1FF0010 FF0010F.
     N1FF0011 FF0011F.
     N1FF0012 FF0012F.
     N1FF0013 FF0013F.
     N1FF0014 FF0014F.
     N1FF0015 FF0015F.
     N1FF0016 FF0016F.
     N1FF0017 FF0017F.
     N1FF0019 FF0019F.
     N1FF0020 FF0020F.
     N1FF0022 FF0022F.
     N1FF0027 FF0027F.
     N1FF0028 FF0028F.
     N1FF0029 FF0029F.
     N1FF0030 FF0030F.
     N1FF0031 FF0031F.
     N1FF0032 FF0032F.
     N1FF0033 FF0033F.
     N1FF0034 FF0034F.
     N1FF0036 FF0036F.
     N1FF0037 FF0037F.
     N1FF0041 FF0041F.
     N1FF0042 FF0042F.
     N1FF0046 FF0046F.
     N1FF0047 FF0047F.
     N1FF0051 FF0051F.
     N1FF0052 FF0052F.
     N1FF0056 FF0056F.
     N1FF0057 FF0057F.
     N1FF0061 FF0061F.
     N1FF0062 FF0062F.
     N1FF0066 FF0066F.
     N1FF0067 FF0067F.
     N1FF0071 FF0071F.
     N1FF0072 FF0072F.
     N1FF0076 FF0076F.
     N1FF0077 FF0077F.
     N1FF0081 FF0081F.
     N1FF0082 FF0082F.
     N1FF0086 FF0086F.
     N1FF0087 FF0087F.
     N1FF0091 FF0091F.
     N1FF0100 FF0100F.
     N1FF0103 FF0103F.
     N1FF0104 FF0104F.
     N1FF0105 FF0105F.
     N1FF0110 FF0110F.
     N1FF0112 FF0112F.
     N1FF0114 FF0114F.
     N1FF0115 FF0115F.
     N1FF0116 FF0116F.
     N1FF0117 FF0117F.
     N1FF0118 FF0118F.
     N1FF0119 FF0119F.
     N1FF0120 FF0120F.
     N1FF0122 FF0122F.
     N1FF0123 FF0123F.
     N1FF0124 FF0124F.
     N1FF0125 FF0125F.
     N1FF0126 FF0126F.
     N1FF0127 FF0127F.
     N1FF0128 FF0128F.
     N1FF0129 FF0129F.
     N1FF0130 FF0130F.
     N1FF0131 FF0131F.
     N1FF0146 FF0146F.
     N1FF0147 FF0147F.
     N1FF0150 FF0150F.
     N1FF0151 FF0151F.
     N1FF0152 FF0152F.
     N1FF0153 FF0153F.
     N1FF0154 FF0154F.
     N1FF0155 FF0155F.
     N1FF0156 FF0156F.
     N1FF0157 FF0157F.
     N1FF0216 FF0216F.
     N1FF0217 FF0217F.
     N1FF0221 FF0221F.
     N1FF0225 FF0225F.
     N1FF0229 FF0229F.
     N1FF0233 FF0233F.
     N1FF0237 FF0237F.
     N1FF0241 FF0241F.
     N1FF0245 FF0245F.
     N1FF0249 FF0249F.
     N1FF0253 FF0253F.
     N1FF0257 FF0257F.
     N1FF0261 FF0261F.
     N1FF0265 FF0265F.
     N1FF0269 FF0269F.
     N1FF0273 FF0273F.
     N1FF0277 FF0277F.
     N1FF0281 FF0281F.
     N1FF0285 FF0285F.
     N1FF0289 FF0289F.
     N1FF0293 FF0293F.
     N1FF0296 FF0296F.
     N1FF0312 FF0312F.
     N1FF0313 FF0313F.
     N1FF0314 FF0314F.
     N1FF0315 FF0315F.
     N1FF0316 FF0316F.
     N1FF0317 FF0317F.
     N1FF0318 FF0318F.
     N1FF0319 FF0319F.
     N1FF0481 FF0481F.
     N1FF0482 FF0482F.
     N1FF0490 FF0490F.
     N1FF0498 FF0498F.
     N1FF0506 FF0506F.
     ;

	INPUT
         SEQN 1-5
         N1FF0006 6-9
         N1FF0010 10
         N1FF0011 11
         N1FF0012 12
         N1FF0013 13
         N1FF0014 14
         N1FF0015 15
         N1FF0016 16
         N1FF0017 17-18
         N1FF0019 19
         N1FF0020 20-21
         N1FF0022 22
         N1FF0023 23-24
         N1FF0025 25-26
         N1FF0027 27
         N1FF0028 28
         N1FF0029 29
         N1FF0030 30
         N1FF0031 31
         N1FF0032 32
         N1FF0033 33
         N1FF0034 34-35
         N1FF0036 36
         N1FF0037 37-40
         N1FF0041 41
         N1FF0042 42-45
         N1FF0046 46
         N1FF0047 47-50
         N1FF0051 51
         N1FF0052 52-55
         N1FF0056 56
         N1FF0057 57-60
         N1FF0061 61
         N1FF0062 62-65
         N1FF0066 66
         N1FF0067 67-70
         N1FF0071 71
         N1FF0072 72-75
         N1FF0076 76
         N1FF0077 77-80
         N1FF0081 81
         N1FF0082 82-85
         N1FF0086 86
         N1FF0087 87-90
         N1FF0091 91-94
         N1FF0095 95-99
         N1FF0100 100
         N1FF0101 101-102
         N1FF0103 103
         N1FF0104 104
         N1FF0105 105
         N1FF0106 106-109
         N1FF0110 110-111
         N1FF0112 112-113
         N1FF0114 114
         N1FF0115 115
         N1FF0116 116
         N1FF0117 117
         N1FF0118 118
         N1FF0119 119
         N1FF0120 120-121
         N1FF0122 122
         N1FF0123 123
         N1FF0124 124
         N1FF0125 125
         N1FF0126 126
         N1FF0127 127
         N1FF0128 128
         N1FF0129 129
         N1FF0130 130
         N1FF0131 131
         N1FF0132 132-134
         N1FF0135 135-137
         N1FF0138 138-143
         N1FF0144 144-145
         N1FF0146 146
         N1FF0147 147-149
         N1FF0150 150
         N1FF0151 151
         N1FF0152 152
         N1FF0153 153
         N1FF0154 154
         N1FF0155 155
         N1FF0156 156
         N1FF0157 157
         N1FF0158 158-163
         N1FF0164 164-169
         N1FF0170 170-175
         N1FF0176 176-181
         N1FF0182 182-193
         N1FF0194 194-195
         N1FF0196 196-198
         N1FF0199 199-200
         N1FF0201 201-204
         N1FF0205 205-215
         N1FF0216 216
         N1FF0217 217-220
         N1FF0221 221-224
         N1FF0225 225-228
         N1FF0229 229-232
         N1FF0233 233-236
         N1FF0237 237-240
         N1FF0241 241-244
         N1FF0245 245-248
         N1FF0249 249-252
         N1FF0253 253-256
         N1FF0257 257-260
         N1FF0261 261-264
         N1FF0265 265-268
         N1FF0269 269-272
         N1FF0273 273-276
         N1FF0277 277-280
         N1FF0281 281-284
         N1FF0285 285-288
         N1FF0289 289-292
         N1FF0293 293-295
         N1FF0296 296
         N1FF0297 297-311
         N1FF0312 312
         N1FF0313 313
         N1FF0314 314
         N1FF0315 315
         N1FF0316 316
         N1FF0317 317
         N1FF0318 318
         N1FF0319 319
         N1FF0320 320-324
         N1FF0325 325-327
         N1FF0328 328-335
         N1FF0336 336-343
         N1FF0344 344-351
         N1FF0352 352-359
         N1FF0360 360-367
         N1FF0368 368-375
         N1FF0376 376-383
         N1FF0384 384-391
         N1FF0392 392-399
         N1FF0400 400-407
         N1FF0408 408-415
         N1FF0416 416-423
         N1FF0424 424-431
         N1FF0432 432-439
         N1FF0440 440-444
         N1FF0445 445-450
         N1FF0451 451-456
         N1FF0457 457-462
         N1FF0463 463-468
         N1FF0469 469-474
         N1FF0475 475-480
         N1FF0481 481
         N1FF0482 482-489
         N1FF0490 490-497
         N1FF0498 498-505
         N1FF0506 506-513
      ;

      LABEL
         SEQN = "SAMPLE SEQUENCE NUMBER"
         N1FF0006 = "CATALOG NUMBER 4271"
         N1FF0010 = "SIZE OF PLACE"
         N1FF0011 = "SMSA-NOT SMSA"
         N1FF0012 = "TYPE OF LIVING QUARTERS"
         N1FF0013 = "LAND USAGE"
         N1FF0014 = "IF RURAL, ASKED HOW MANY ACRES OF LA ..."
         N1FF0015 = "IF 10 ACRES OF MORE, ASKED IF SALE O ..."
         N1FF0016 = "IF 10 ACRES OR LESS, ASKED IF SALE O ..."
         N1FF0017 = "AGE-HEAD OF HOUSEHOLD"
         N1FF0019 = "SEX-HEAD OF HOUSEHOLD"
         N1FF0020 = "HIGHEST GRADE ATTENDED-HEAD OF HOUSEHOLD"
         N1FF0022 = "RACE-HEAD OF HOUSEHOLD"
         N1FF0023 = "TOTAL NUMBER OF PERSONS IN HOUSEHOLD"
         N1FF0025 = "TOTAL SAMPLE PERSONS IN HOUSEHOLD"
         N1FF0027 = "NUMBER OF ROOMS IN HOUSE "
         N1FF0028 = "IS THERE PIPED WATER?"
         N1FF0029 = "IS THERE HOT AND COLD PIPED WATER?"
         N1FF0030 = "IF YES TO PIPED WATER-DOES HOUSE HAV ..."
         N1FF0031 = "DOES HOUSE HAVE A RANGE OR COOK STOVE?"
         N1FF0032 = "DOES HOUSE HAVE A REFRIGERATOR?"
         N1FF0033 = "ARE KITCHEN FACILITIES USED BY ANYON ..."
         N1FF0034 = "TOTAL FAMILY INCOME GROUP"
         N1FF0036 = "WAGES OR SALARIES?"
         N1FF0037 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER ..."
         N1FF0041 = "SOCIAL SECURITY OR  RAILROAD RETIREMENT?"
         N1FF0042 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1FF0046 = "WELFARE PAYMENTS OR OTHER PUBLIC ASS ..."
         N1FF0047 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1FF0051 = "UNEMPLOYMENT OR WORKMEN'S COMPENSATION?"
         N1FF0052 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1FF0056 = "GOVERNMENT EMPLOYEE PENSIONS OR PRIV ..."
         N1FF0057 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1FF0061 = "DIVIDENDS, INTEREST OR RENT?"
         N1FF0062 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1FF0066 = "NET INCOME FROM  OWN NON-FARM BUSINE ..."
         N1FF0067 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1FF0071 = "NET INCOME FROM A FARM?"
         N1FF0072 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1FF0076 = "VETERAN'S PAYMENTS"
         N1FF0077 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1FF0081 = "ALIMONY, CHILD SUPPORT OR CONTRIBUTI ..."
         N1FF0082 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1FF0086 = "ANY OTHER INCOME?"
         N1FF0087 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1FF0091 = "TOTAL AMOUNT(TOTAL OF POSITIONS 37-90)"
         N1FF0095 = "FAMILY UNIT CODE"
         N1FF0100 = "RELATIONSHIP TO HEAD OF HOUSEHOLD"
         N1FF0101 = "AGE AT INTERVIEW"
         N1FF0103 = "RACE OF EXAMINED PERSON"
         N1FF0104 = "SEX OF EXAMINED PERSON"
         N1FF0105 = "MARITAL STATUS"
         N1FF0106 = "DATE OF BIRTH (MONTH, YEAR)"
         N1FF0110 = "PLACE OF BIRTH"
         N1FF0112 = "HIGHEST GRADE OF REGULAR SCHOOL EVER ..."
         N1FF0114 = "DID HE FINISH THE GRADE?"
         N1FF0115 = "IS HE ATTENDING SCHOOL NOW?"
         N1FF0116 = "HAS HE EVER ATTENDED A SCHOOL OF ANY ..."
         N1FF0117 = "IF YES, WHAT KIND OF SCHOOL?"
         N1FF0118 = "IS ANY LANGUAGE OTHER THAN ENGLISH F ..."
         N1FF0119 = "IF YES, WHAT LANGUAGE"
         N1FF0120 = "WHAT IS YOUR MAIN ANCESTRY OR NATION ..."
         N1FF0122 = "WHAT WAS HE DOING MOST PAST THREE MO ..."
         N1FF0123 = "IF ' SOMETHING ELSE' FROM ABOVE, WHA ..."
         N1FF0124 = "IF 'KEEPING HOUSE' OR 'SOMETHING ELS ..."
         N1FF0125 = "IF 'WORKING' FROM ABOVE, DID HE WORK ..."
         N1FF0126 = "DID HE WORK AT ANY TIME LAST WEEK OR ..."
         N1FF0127 = "IF 'NO TO ABOVE, EVEN THOUGH HE DID  ..."
         N1FF0128 = "IF 'NO' IN POSITION 126, WAS HE LOOK ..."
         N1FF0129 = "IF YES TO ABOVE-WHICH?"
         N1FF0130 = "CLASS OF WORKER"
         N1FF0131 = "IF SELF-EMPLOYED IN 'OWN' BUSINESS A ..."
         N1FF0132 = "BUSINESS OR INDUSTRY CODE"
         N1FF0135 = "OCCUPATION CODE"
         N1FF0138 = "DATE OF EXAMINATION"
         N1FF0144 = "AGE AT EXAMINATION"
         N1FF0146 = "FARM"
         N1FF0147 = "POVERTY INDEX (X.XX)"
         N1FF0150 = "REGION"
         N1FF0151 = "FOOD PROGRAMS APPLICABILITY"
         N1FF0152 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1FF0153 = "ARE YOU BUYING STAMPS NOW?"
         N1FF0154 = "WHAT IS THE MAIN REASON YOU AREN'T P ..."
         N1FF0155 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1FF0156 = "ARE YOU RECEIVING COMMODITY FOODS  N ..."
         N1FF0157 = "WHY AREN'T YOU PARTICIPATING IN THE  ..."
         N1FF0158 = "DETAILED PERSONS-LOCATIONS 1-35"
         N1FF0164 = "ALL SAMPLE PERSONS-LOCATIONS 1-35"
         N1FF0170 = "DETAILED PERSONS-LOCATIONS 1-65"
         N1FF0176 = "ALL SAMPLE PERSONS-LOCATIONS 1-65"
         N1FF0182 = "WORK AREA"
         N1FF0194 = "STRATA 1/"
         N1FF0196 = "PRIMARY SAMPLING UNIT 1/"
         N1FF0199 = "WORK AREA"
         N1FF0201 = "CATALOGUE NUMBER 4701"
         N1FF0205 = "DATA USER WORK AREA"
         N1FF0216 = "RESPONDENT CODE"
         N1FF0217 = "MILK (WHOLE)"
         N1FF0221 = "MILK (SKIM) OR BUTTERMILK"
         N1FF0225 = "MEAT AND POULTRY"
         N1FF0229 = "FISH OR SHELLFISH"
         N1FF0233 = "EGGS"
         N1FF0237 = "CHEESE AND CHEESE DISHES"
         N1FF0241 = "DRY BEANS AND PEAS"
         N1FF0245 = "FRUITS AND VEGETABLES (ALL KINDS)"
         N1FF0249 = "FRUITS AND VEGETABLES (RICH IN VITAM ..."
         N1FF0253 = "FRUITS AND VEGETABLES (RICH IN VITAM ..."
         N1FF0257 = "BREAD"
         N1FF0261 = "CEREALS"
         N1FF0265 = "BUTTER AND MARGARINE"
         N1FF0269 = "DESSERTS AND SWEETS"
         N1FF0273 = "CANDY"
         N1FF0277 = "BEVERAGES--SWEETENED, CARBONATED AND ..."
         N1FF0281 = "COLD DRINKS--ARTIFICIALLY SWEETENED  ..."
         N1FF0285 = "COFFEE OR TEA"
         N1FF0289 = "SNACK FOODS"
         N1FF0293 = "INTERVIEWER CODE"
         N1FF0296 = "COMPLETION CODE"
         N1FF0297 = "BLANK-DATA USER WORK AREA"
         N1FF0312 = "RESPONDENT  "
         N1FF0313 = "DAY OF RECALL"
         N1FF0314 = "IS WHAT YOU ATE YESTERDAY THE WAY YO ..."
         N1FF0315 = "HAS YOUR DIET CHANGED RECENTLY?"
         N1FF0316 = "ARE YOU TAKING VITAMINS OR ARE YOU T ..."
         N1FF0317 = "IF YES TO ABOVE "
         N1FF0318 = "HOW MANY TIMES A WEEK DO YOU EAT A M ..."
         N1FF0319 = "HOW OFTEN DO YOU USE SALT SHAKER AT  ..."
         N1FF0320 = "WEIGHT IN POUNDS (XXX.XX) DECIMAL NO ..."
         N1FF0325 = "HEIGHT IN INCHES (XX.XX) DECIMAL NOT ..."
         N1FF0328 = "CALORIES"
         N1FF0336 = "PROTEIN (IN GRAMS)"
         N1FF0344 = "FAT (IN GRAMS)"
         N1FF0352 = "TOTAL CARBOHYDRATE (IN GRAMS)"
         N1FF0360 = "CALCIUM ( IN MILLIGRAMS)"
         N1FF0368 = "PHOSPHORUS (IN MILLIGRAMS)"
         N1FF0376 = "IRON (IN MILLIGRAMS)"
         N1FF0384 = "SODIUM (IN MILLIGRAMS)"
         N1FF0392 = "POTASSIUM (IN MILLIGRAMS)"
         N1FF0400 = "VITAMIN A (INTERNATIONAL UNITS)"
         N1FF0408 = "THIAMINE(IN MILLIGRAMS)"
         N1FF0416 = "RIBOFLAVIN (IN MILLIGRAMS)"
         N1FF0424 = "NIACIN (IN MILLIGRAMS) (NIACIN FROM  ..."
         N1FF0432 = "VITAMIN C (IN MILLIGRAMS)"
         N1FF0440 = "BLANK-DATA USER WORK AREA"
         N1FF0445 = "CALORIES"
         N1FF0451 = "PROTEIN "
         N1FF0457 = "CALCIUM  "
         N1FF0463 = "IRON   "
         N1FF0469 = "VITAMIN A   "
         N1FF0475 = "VITAMIN C   "
         N1FF0481 = "IMPUTATION CODE"
         N1FF0482 = "SATURATED FATTY ACID (IN GRAMS)"
         N1FF0490 = "OLEIC ACID (IN GRAMS)"
         N1FF0498 = "LINOLEIC ACID (IN GRAMS)"
         N1FF0506 = "CHOLESTEROL (IN MILLIGRAMS)"
      ;
RUN;
