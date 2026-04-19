/*
 *  Survey:           NHANES I
 *  Years:            1971-1975
 *  Questionnaire:    Anthropometry Goniometry, Skeletal Age, Bone Density, and Cortical Thickness
 *  Tape Number:      4111
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

VALUE BM0010F
     1='3,000,000 or more'
     2='1,000,000 to 2,999,999'
     3='250,000 to 999,999'
     4='under 250,000'
     5='Urban place 25,000 or more outside urbanized area'
     6='Urban place 10,000 to 24,999 outside urbanized area'
     7='Urban place 2,500 to 9,999 outside urbanized area'
     8='Rural'
     ;

VALUE BM0011F
     1='In SMSA, in central city'
     2='In SMSA, not in central city'
     3='Not in SMSA'
     ;

VALUE BM0012F
     1='Housing Unit'
     2='Other unit'
     ;

VALUE BM0013F
     1='All other'
     2='Rural  7136'
     ;

VALUE BM0014F
     1='10 or more acres'
     2='Less than 10 acres'
     9='Not applicable'
     ;

VALUE BM0015F
     2='Yes'
     4='No'
     9='Not applicable'
     ;

VALUE BM0016F
     3='Yes'
     5='No'
     9='Not applicable'
     ;

VALUE BM0017F
     00='Blank, but applicable'
     ;

VALUE BM0019F
     1='Male'
     2='Female'
     ;

VALUE BM0020F
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

VALUE BM0022F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE BM0027F
     9='9 or more'
     ;

VALUE BM0028F
     1='Yes'
     2='No'
     ;

VALUE BM0029F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE BM0030F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE BM0031F
     1='Yes'
     2='No'
     ;

VALUE BM0032F
     1='Yes'
     2='No'
     ;

VALUE BM0033F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE BM0034F
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

VALUE BM0036F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE BM0037F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE BM0041F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE BM0042F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE BM0046F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE BM0047F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE BM0051F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE BM0052F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE BM0056F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE BM0057F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE BM0061F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE BM0062F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE BM0066F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE BM0067F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE BM0071F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE BM0072F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE BM0076F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE BM0077F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE BM0081F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE BM0082F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE BM0086F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE BM0087F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE BM0091F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE BM0100F
     1='Head (1 person living along or with non-relatives)'
     2='Head (2 or more related persons in family)'
     3='Wife'
     4='Child'
     5='Other relative'
     ;

VALUE BM0103F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE BM0104F
     1='Male'
     2='Female'
     ;

VALUE BM0105F
     1='Under 17'
     2='Married'
     3='Widowed'
     4='Never Married'
     5='Divorced'
     6='Separated'
     8='Blank, but applicable'
     ;

VALUE BM0110F
     88='Blank, but applicable'
     ;

VALUE BM0112F
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

VALUE BM0114F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE BM0115F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE BM0116F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE BM0117F
     1='Nursery'
     2='Kindergarten'
     3='Other'
     4='Headstart'
     5='Daycare'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE BM0118F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE BM0119F
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

VALUE BM0120F
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

VALUE BM0122F
     1='Working'
     2='Keeping house'
     3='Something else'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE BM0123F
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

VALUE BM0124F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE BM0125F
     1='Full-time'
     2='Part-time'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE BM0126F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE BM0127F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE BM0128F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE BM0129F
     1='Looking'
     2='Lay-off'
     3='Both'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE BM0130F
     1='Private paid'
     2='Government-Federal'
     3='Government-Other'
     4='Own'
     5='Non-paid'
     6='Never worked'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE BM0131F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE BM0146F
     1='Farm'
     2='Nonfarm'
     ;

VALUE BM0147F
     998='Index computed 998 or greater'
     999='Unknown'
     ;

VALUE BM0150F
     1='Northeast'
     2='Midwest'
     3='South'
     4='West'
     ;

VALUE BM0151F
     1='Not applicable'
     2='No program available'
     3='Food stamps available'
     4='Commodities available'
     8='Blank, but applicable'
     ;

VALUE BM0152F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE BM0153F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE BM0154F
     1='No need'
     2='Not enough money at the time'
     3='No transportation'
     4='Pride'
     5='Other'
     8='Blank, but applicable'
     ;

VALUE BM0155F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE BM0156F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE BM0157F
     1='No need'
     2='No transportation'
     3='Pride'
     4='Other'
     8='Blank, but applicable'
     ;

VALUE BM0208F
     88='Blank, but applicable'
     ;

VALUE BM0210F
     888='Blank, but applicable'
     ;

VALUE BM0213F
     0='As observed'
     1='Missing data - imputed'
     8='Missing data - not imputed'
     ;

VALUE BM0214F
     888='Blank, but applicable'
     999='Not applicable'
     ;

VALUE BM0217F
     888='Blank, but applicable'
     ;

VALUE BM0220F
     0='As observed'
     1='Missing data - imputed'
     8='Missing data - not imputed'
     ;

VALUE BM0221F
     888='Blank, but applicable'
     999='Not applicable'
     ;

VALUE BM0224F
     888='Blank, but applicable'
     ;

VALUE BM0227F
     0='As observed'
     1='Missing data - imputed'
     8='Missing data - not imputed'
     ;

VALUE BM0228F
     888='Blank, but applicable'
     999='Not applicable'
     ;

VALUE BM0231F
     888='Blank, but applicable'
     ;

VALUE BM0234F
     0='As observed'
     1='Missing data - imputed'
     8='Missing data - not imputed'
     ;

VALUE BM0235F
     888='Blank, but applicable'
     999='Not applicable'
     ;

VALUE BM0238F
     888='Blank, but applicable'
     ;

VALUE BM0241F
     0='As observed'
     1='Missing data - imputed'
     8='Missing data - not imputed'
     ;

VALUE BM0242F
     8888='Blank, but applicable'
     9999='Not applicable - less'
     ;

VALUE BM0246F
     0='As observed'
     1='Missing data - imputed'
     8='Missing data - not imputed'
     9='Less than 2 years old'
     ;

VALUE BM0247F
     999='Not applicable - 8-74 years old'
     ;

VALUE BM0250F
     0='As observed'
     1='Missing data - imputed'
     9='Not applicable - 8-74 years old'
     ;

VALUE BM0251F
     999='Not applicable - 8-74 years old'
     ;

VALUE BM0254F
     0='As observed'
     1='Missing data - imputed'
     9='Not applicable - 8-74 years old'
     ;

VALUE BM0255F
     88888='Blank, but applicable'
     ;

VALUE BM0260F
     88888='Blank, but applicable'
     ;

VALUE BM0265F
     0='As observed'
     1='Missing data - imputed'
     8='Missing data - not imputed'
     ;

VALUE BM0266F
     8888='Blank, but applicable'
     ;

VALUE BM0270F
     888='Blank, but applicable'
     ;

VALUE BM0273F
     0='As observed'
     1='Missing data - imputed'
     8='Blank, but applicable'
     ;

VALUE BM0274F
     2='Left'
     3='Uses both hands the same'
     4='Not sure'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE BM0275F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE BM0279F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE BM0325F
     888='Blank but applicable'
     ;

VALUE BM0328F
     888='Blank but applicable'
     ;

VALUE BM0331F
     88='Blank but applicable'
     ;

VALUE BM0333F
     888='Blank but applicable'
     ;

VALUE BM0336F
     888='Blank but applicable'
     ;

VALUE BM0339F
     88='Blank but applicable'
     ;

VALUE BM0341F
     888='Blank but applicable'
     ;

VALUE BM0344F
     88='Blank but applicable'
     ;

VALUE BM0346F
     888='Blank but applicable'
     ;

VALUE BM0349F
     888='Blank but applicable'
     ;

VALUE BM0352F
     88='Blank but applicable'
     ;

VALUE BM0354F
     888='Blank but applicable'
     ;

VALUE BM0357F
     99='Blank but applicable'
     ;

VALUE BM0359F
     888='Blank but applicable'
     ;

VALUE BM0362F
     888='Blank but applicable'
     ;

VALUE BM0365F
     99='Blank but applicable'
     ;

VALUE BM0406F
     88='Blank, but applicable'
     ;

VALUE BM0408F
     1='Satisfactory'
     2='Poor, readable'
     3='Unreadable'
     4='No film'
     5='Questionable reading - poor film'
     6='Questionable reading - poor hand position'
     8='Blank, but applicable'
     ;

VALUE BM0409F
     888='Blank but applicable'
     999='Adult stage'
     ;

VALUE BM0412F
     888='Blank but applicable'
     999='Adult stage'
     ;

VALUE BM0415F
     888='Blank but applicable'
     999='Adult stage'
     ;

VALUE BM0418F
     888='Blank but applicable'
     999='Adult stage'
     ;

VALUE BM0421F
     888='Blank but applicable'
     999='Adult stage'
     ;

VALUE BM0424F
     888='Blank but applicable'
     999='Adult stage'
     ;

VALUE BM0427F
     888='Blank but applicable'
     999='Adult stage'
     ;

VALUE BM0430F
     888='Blank but applicable'
     999='Adult stage'
     ;

VALUE BM0433F
     888='Blank but applicable'
     999='Adult stage'
     ;

VALUE BM0436F
     888='Blank but applicable'
     999='Adult stage'
     ;

VALUE BM0439F
     888='Blank but applicable'
     999='Adult stage'
     ;

VALUE BM0442F
     888='Blank, but applicable'
     999='Adult stage'
     ;

VALUE BM0445F
     888='Blank, but applicable'
     999='Adult stage'
     ;

VALUE BM0448F
     888='Blank, but applicable'
     999='Adult stage'
     ;

VALUE BM0451F
     888='Blank but applicable'
     999='Adult stage'
     ;

VALUE BM0454F
     888='Blank but applicable'
     999='Adult stage'
     ;

VALUE BM0457F
     888='Blank but applicable'
     999='Adult stage'
     ;

VALUE BM0460F
     888='Blank, but applicable'
     999='Adult stage'
     ;

VALUE BM0463F
     888='Blank, but applicable'
     999='Adult stage'
     ;

VALUE BM0466F
     888='Blank, but applicable'
     999='Adult stage'
     ;

VALUE BM0469F
     888='Blank, but applicable'
     999='Adult stage'
     ;

VALUE BM0472F
     888='Blank, but applicable'
     999='Adult stage'
     ;

VALUE BM0475F
     888='Blank, but applicable'
     999='Adult stage'
     ;

VALUE BM0478F
     888='Blank, but applicable'
     999='Adult stage'
     ;

VALUE BM0481F
     888='Blank, but applicable'
     999='Adult stage'
     ;

VALUE BM0484F
     888='Blank, but applicable'
     999='Adult stage'
     ;

VALUE BM0487F
     888='Blank, but applicable'
     999='Adult stage'
     ;

VALUE BM0490F
     888='Blank, but applicable'
     999='Adult stage'
     ;

VALUE BM0493F
     888='Blank, but applicable'
     999='Adult stage'
     ;

VALUE BM0496F
     888='Blank, but applicable'
     999='Adult stage'
     ;

VALUE BM0499F
     888='Blank, but applicable'
     999='Adult stage'
     ;

VALUE BM0502F
     1='Some present'
     2='None'
     3='Comments regarding film or reading quality only'
     4='Both code 1 and code 3'
     8='Blank, but applicable'
     ;

VALUE BM0516F
     88='Blank, but applicable'
     ;

VALUE BM0518F
     8888='Blank, but applicable'
     ;

VALUE BM0522F
     88888='Blank, but applicable'
     ;

VALUE BM0537F
     88='Blank, but applicable'
     ;

VALUE BM0539F
     88='Blank, but applicable'
     ;

VALUE BM0541F
     888='Blank, but applicable'
     ;

VALUE BM0551F
     888='Blank, but applicable'
     ;

VALUE BM0554F
     888='Blank, but applicable'
     ;

VALUE BM0557F
     888='Blank, but applicable'
     ;

VALUE BM0560F
     888='Blank, but applicable'
     ;

VALUE BM0563F
     888='Blank, but applicable'
     ;

VALUE BM0566F
     888='Blank, but applicable'
     ;

VALUE BM0569F
     888='Blank, but applicable'
     ;

VALUE BM0572F
     888='Blank, but applicable'
     ;

VALUE BM0575F
     00='Blank, but applicable'
     ;

VALUE BM0577F
     00='Blank, but applicable'
     ;

VALUE BM0579F
     00='Blank, but applicable'
     ;
RUN;



DATA D_4111;
   INFILE 'c:\temp\DU4111.txt' LRECL = 2000 MISSOVER;
      LENGTH
         SEQN 8
         N1BM0006 8
         N1BM0010 4
         N1BM0011 4
         N1BM0012 4
         N1BM0013 4
         N1BM0014 4
         N1BM0015 4
         N1BM0016 4
         N1BM0017 4
         N1BM0019 4
         N1BM0020 4
         N1BM0022 4
         N1BM0023 4
         N1BM0025 4
         N1BM0027 4
         N1BM0028 4
         N1BM0029 4
         N1BM0030 4
         N1BM0031 4
         N1BM0032 4
         N1BM0033 4
         N1BM0034 4
         N1BM0036 4
         N1BM0037 8
         N1BM0041 4
         N1BM0042 8
         N1BM0046 4
         N1BM0047 8
         N1BM0051 4
         N1BM0052 8
         N1BM0056 4
         N1BM0057 8
         N1BM0061 4
         N1BM0062 8
         N1BM0066 4
         N1BM0067 8
         N1BM0071 4
         N1BM0072 8
         N1BM0076 4
         N1BM0077 8
         N1BM0081 4
         N1BM0082 8
         N1BM0086 4
         N1BM0087 8
         N1BM0091 8
         N1BM0095 8
         N1BM0100 4
         N1BM0101 4
         N1BM0103 4
         N1BM0104 4
         N1BM0105 4
         N1BM0106 8
         N1BM0110 4
         N1BM0112 4
         N1BM0114 4
         N1BM0115 4
         N1BM0116 4
         N1BM0117 4
         N1BM0118 4
         N1BM0119 4
         N1BM0120 4
         N1BM0122 4
         N1BM0123 4
         N1BM0124 4
         N1BM0125 4
         N1BM0126 4
         N1BM0127 4
         N1BM0128 4
         N1BM0129 4
         N1BM0130 4
         N1BM0131 4
         N1BM0132 4
         N1BM0135 4
         N1BM0138 8
         N1BM0144 4
         N1BM0146 4
         N1BM0147 4
         N1BM0150 4
         N1BM0151 4
         N1BM0152 4
         N1BM0153 4
         N1BM0154 4
         N1BM0155 4
         N1BM0156 4
         N1BM0157 4
         N1BM0158 8
         N1BM0164 8
         N1BM0170 8
         N1BM0176 8
         N1BM0182 8
         N1BM0188 8
         N1BM0194 4
         N1BM0196 4
         N1BM0199 $2
         N1BM0201 8
         N1BM0205 $3
         N1BM0208 4
         N1BM0210 4
         N1BM0213 4
         N1BM0214 4
         N1BM0217 4
         N1BM0220 4
         N1BM0221 4
         N1BM0224 4
         N1BM0227 4
         N1BM0228 4
         N1BM0231 4
         N1BM0234 4
         N1BM0235 4
         N1BM0238 4
         N1BM0241 4
         N1BM0242 8
         N1BM0246 4
         N1BM0247 4
         N1BM0250 4
         N1BM0251 4
         N1BM0254 4
         N1BM0255 8
         N1BM0260 8
         N1BM0265 4
         N1BM0266 8
         N1BM0270 4
         N1BM0273 4
         N1BM0274 4
         N1BM0275 8
         N1BM0279 8
         N1BM0283 $18
         N1BM0301 $6
         N1BM0307 4
         N1BM0309 $16
         N1BM0325 4
         N1BM0328 4
         N1BM0331 4
         N1BM0333 4
         N1BM0336 4
         N1BM0339 4
         N1BM0341 4
         N1BM0344 4
         N1BM0346 4
         N1BM0349 4
         N1BM0352 4
         N1BM0354 4
         N1BM0357 4
         N1BM0359 4
         N1BM0362 4
         N1BM0365 4
         N1BM0367 $34
         N1BM0401 $5
         N1BM0406 4
         N1BM0408 4
         N1BM0409 4
         N1BM0412 4
         N1BM0415 4
         N1BM0418 4
         N1BM0421 4
         N1BM0424 4
         N1BM0427 4
         N1BM0430 4
         N1BM0433 4
         N1BM0436 4
         N1BM0439 4
         N1BM0442 4
         N1BM0445 4
         N1BM0448 4
         N1BM0451 4
         N1BM0454 4
         N1BM0457 4
         N1BM0460 4
         N1BM0463 4
         N1BM0466 4
         N1BM0469 4
         N1BM0472 4
         N1BM0475 4
         N1BM0478 4
         N1BM0481 4
         N1BM0484 4
         N1BM0487 4
         N1BM0490 4
         N1BM0493 4
         N1BM0496 4
         N1BM0499 4
         N1BM0502 4
         N1BM0503 $13
         N1BM0516 4
         N1BM0518 8
         N1BM0522 8
         N1BM0527 $10
         N1BM0537 4
         N1BM0539 4
         N1BM0541 4
         N1BM0544 $7
         N1BM0551 4
         N1BM0554 4
         N1BM0557 4
         N1BM0560 4
         N1BM0563 4
         N1BM0566 4
         N1BM0569 4
         N1BM0572 4
         N1BM0575 4
         N1BM0577 4
         N1BM0579 4
         N1BM0581 $20
      ;


FORMAT
     N1BM0010 BM0010F.
     N1BM0011 BM0011F.
     N1BM0012 BM0012F.
     N1BM0013 BM0013F.
     N1BM0014 BM0014F.
     N1BM0015 BM0015F.
     N1BM0016 BM0016F.
     N1BM0017 BM0017F.
     N1BM0019 BM0019F.
     N1BM0020 BM0020F.
     N1BM0022 BM0022F.
     N1BM0027 BM0027F.
     N1BM0028 BM0028F.
     N1BM0029 BM0029F.
     N1BM0030 BM0030F.
     N1BM0031 BM0031F.
     N1BM0032 BM0032F.
     N1BM0033 BM0033F.
     N1BM0034 BM0034F.
     N1BM0036 BM0036F.
     N1BM0037 BM0037F.
     N1BM0041 BM0041F.
     N1BM0042 BM0042F.
     N1BM0046 BM0046F.
     N1BM0047 BM0047F.
     N1BM0051 BM0051F.
     N1BM0052 BM0052F.
     N1BM0056 BM0056F.
     N1BM0057 BM0057F.
     N1BM0061 BM0061F.
     N1BM0062 BM0062F.
     N1BM0066 BM0066F.
     N1BM0067 BM0067F.
     N1BM0071 BM0071F.
     N1BM0072 BM0072F.
     N1BM0076 BM0076F.
     N1BM0077 BM0077F.
     N1BM0081 BM0081F.
     N1BM0082 BM0082F.
     N1BM0086 BM0086F.
     N1BM0087 BM0087F.
     N1BM0091 BM0091F.
     N1BM0100 BM0100F.
     N1BM0103 BM0103F.
     N1BM0104 BM0104F.
     N1BM0105 BM0105F.
     N1BM0110 BM0110F.
     N1BM0112 BM0112F.
     N1BM0114 BM0114F.
     N1BM0115 BM0115F.
     N1BM0116 BM0116F.
     N1BM0117 BM0117F.
     N1BM0118 BM0118F.
     N1BM0119 BM0119F.
     N1BM0120 BM0120F.
     N1BM0122 BM0122F.
     N1BM0123 BM0123F.
     N1BM0124 BM0124F.
     N1BM0125 BM0125F.
     N1BM0126 BM0126F.
     N1BM0127 BM0127F.
     N1BM0128 BM0128F.
     N1BM0129 BM0129F.
     N1BM0130 BM0130F.
     N1BM0131 BM0131F.
     N1BM0146 BM0146F.
     N1BM0147 BM0147F.
     N1BM0150 BM0150F.
     N1BM0151 BM0151F.
     N1BM0152 BM0152F.
     N1BM0153 BM0153F.
     N1BM0154 BM0154F.
     N1BM0155 BM0155F.
     N1BM0156 BM0156F.
     N1BM0157 BM0157F.
     N1BM0208 BM0208F.
     N1BM0210 BM0210F.
     N1BM0213 BM0213F.
     N1BM0214 BM0214F.
     N1BM0217 BM0217F.
     N1BM0220 BM0220F.
     N1BM0221 BM0221F.
     N1BM0224 BM0224F.
     N1BM0227 BM0227F.
     N1BM0228 BM0228F.
     N1BM0231 BM0231F.
     N1BM0234 BM0234F.
     N1BM0235 BM0235F.
     N1BM0238 BM0238F.
     N1BM0241 BM0241F.
     N1BM0242 BM0242F.
     N1BM0246 BM0246F.
     N1BM0247 BM0247F.
     N1BM0250 BM0250F.
     N1BM0251 BM0251F.
     N1BM0254 BM0254F.
     N1BM0255 BM0255F.
     N1BM0260 BM0260F.
     N1BM0265 BM0265F.
     N1BM0266 BM0266F.
     N1BM0270 BM0270F.
     N1BM0273 BM0273F.
     N1BM0274 BM0274F.
     N1BM0275 BM0275F.
     N1BM0279 BM0279F.
     N1BM0325 BM0325F.
     N1BM0328 BM0328F.
     N1BM0331 BM0331F.
     N1BM0333 BM0333F.
     N1BM0336 BM0336F.
     N1BM0339 BM0339F.
     N1BM0341 BM0341F.
     N1BM0344 BM0344F.
     N1BM0346 BM0346F.
     N1BM0349 BM0349F.
     N1BM0352 BM0352F.
     N1BM0354 BM0354F.
     N1BM0357 BM0357F.
     N1BM0359 BM0359F.
     N1BM0362 BM0362F.
     N1BM0365 BM0365F.
     N1BM0406 BM0406F.
     N1BM0408 BM0408F.
     N1BM0409 BM0409F.
     N1BM0412 BM0412F.
     N1BM0415 BM0415F.
     N1BM0418 BM0418F.
     N1BM0421 BM0421F.
     N1BM0424 BM0424F.
     N1BM0427 BM0427F.
     N1BM0430 BM0430F.
     N1BM0433 BM0433F.
     N1BM0436 BM0436F.
     N1BM0439 BM0439F.
     N1BM0442 BM0442F.
     N1BM0445 BM0445F.
     N1BM0448 BM0448F.
     N1BM0451 BM0451F.
     N1BM0454 BM0454F.
     N1BM0457 BM0457F.
     N1BM0460 BM0460F.
     N1BM0463 BM0463F.
     N1BM0466 BM0466F.
     N1BM0469 BM0469F.
     N1BM0472 BM0472F.
     N1BM0475 BM0475F.
     N1BM0478 BM0478F.
     N1BM0481 BM0481F.
     N1BM0484 BM0484F.
     N1BM0487 BM0487F.
     N1BM0490 BM0490F.
     N1BM0493 BM0493F.
     N1BM0496 BM0496F.
     N1BM0499 BM0499F.
     N1BM0502 BM0502F.
     N1BM0516 BM0516F.
     N1BM0518 BM0518F.
     N1BM0522 BM0522F.
     N1BM0537 BM0537F.
     N1BM0539 BM0539F.
     N1BM0541 BM0541F.
     N1BM0551 BM0551F.
     N1BM0554 BM0554F.
     N1BM0557 BM0557F.
     N1BM0560 BM0560F.
     N1BM0563 BM0563F.
     N1BM0566 BM0566F.
     N1BM0569 BM0569F.
     N1BM0572 BM0572F.
     N1BM0575 BM0575F.
     N1BM0577 BM0577F.
     N1BM0579 BM0579F.
     ;

	INPUT
         SEQN 1-5
         N1BM0006 6-9
         N1BM0010 10
         N1BM0011 11
         N1BM0012 12
         N1BM0013 13
         N1BM0014 14
         N1BM0015 15
         N1BM0016 16
         N1BM0017 17-18
         N1BM0019 19
         N1BM0020 20-21
         N1BM0022 22
         N1BM0023 23-24
         N1BM0025 25-26
         N1BM0027 27
         N1BM0028 28
         N1BM0029 29
         N1BM0030 30
         N1BM0031 31
         N1BM0032 32
         N1BM0033 33
         N1BM0034 34-35
         N1BM0036 36
         N1BM0037 37-40
         N1BM0041 41
         N1BM0042 42-45
         N1BM0046 46
         N1BM0047 47-50
         N1BM0051 51
         N1BM0052 52-55
         N1BM0056 56
         N1BM0057 57-60
         N1BM0061 61
         N1BM0062 62-65
         N1BM0066 66
         N1BM0067 67-70
         N1BM0071 71
         N1BM0072 72-75
         N1BM0076 76
         N1BM0077 77-80
         N1BM0081 81
         N1BM0082 82-85
         N1BM0086 86
         N1BM0087 87-90
         N1BM0091 91-94
         N1BM0095 95-99
         N1BM0100 100
         N1BM0101 101-102
         N1BM0103 103
         N1BM0104 104
         N1BM0105 105
         N1BM0106 106-109
         N1BM0110 110-111
         N1BM0112 112-113
         N1BM0114 114
         N1BM0115 115
         N1BM0116 116
         N1BM0117 117
         N1BM0118 118
         N1BM0119 119
         N1BM0120 120-121
         N1BM0122 122
         N1BM0123 123
         N1BM0124 124
         N1BM0125 125
         N1BM0126 126
         N1BM0127 127
         N1BM0128 128
         N1BM0129 129
         N1BM0130 130
         N1BM0131 131
         N1BM0132 132-134
         N1BM0135 135-137
         N1BM0138 138-143
         N1BM0144 144-145
         N1BM0146 146
         N1BM0147 147-149
         N1BM0150 150
         N1BM0151 151
         N1BM0152 152
         N1BM0153 153
         N1BM0154 154
         N1BM0155 155
         N1BM0156 156
         N1BM0157 157
         N1BM0158 158-163
         N1BM0164 164-169
         N1BM0170 170-175
         N1BM0176 176-181
         N1BM0182 182-187
         N1BM0188 188-193
         N1BM0194 194-195
         N1BM0196 196-198
         N1BM0199 199-200
         N1BM0201 201-204
         N1BM0205 205-207
         N1BM0208 208-209
         N1BM0210 210-212
         N1BM0213 213
         N1BM0214 214-216
         N1BM0217 217-219
         N1BM0220 220
         N1BM0221 221-223
         N1BM0224 224-226
         N1BM0227 227
         N1BM0228 228-230
         N1BM0231 231-233
         N1BM0234 234
         N1BM0235 235-237
         N1BM0238 238-240
         N1BM0241 241
         N1BM0242 242-245
         N1BM0246 246
         N1BM0247 247-249
         N1BM0250 250
         N1BM0251 251-253
         N1BM0254 254
         N1BM0255 255-259
         N1BM0260 260-264
         N1BM0265 265
         N1BM0266 266-269
         N1BM0270 270-272
         N1BM0273 273
         N1BM0274 274
         N1BM0275 275-278
         N1BM0279 279-282
         N1BM0283 283-300
         N1BM0301 301-306
         N1BM0307 307-308
         N1BM0309 309-324
         N1BM0325 325-327
         N1BM0328 328-330
         N1BM0331 331-332
         N1BM0333 333-335
         N1BM0336 336-338
         N1BM0339 339-340
         N1BM0341 341-343
         N1BM0344 344-345
         N1BM0346 346-348
         N1BM0349 349-351
         N1BM0352 352-353
         N1BM0354 354-356
         N1BM0357 357-358
         N1BM0359 359-361
         N1BM0362 362-364
         N1BM0365 365-366
         N1BM0367 367-400
         N1BM0401 401-405
         N1BM0406 406-407
         N1BM0408 408
         N1BM0409 409-411
         N1BM0412 412-414
         N1BM0415 415-417
         N1BM0418 418-420
         N1BM0421 421-423
         N1BM0424 424-426
         N1BM0427 427-429
         N1BM0430 430-432
         N1BM0433 433-435
         N1BM0436 436-438
         N1BM0439 439-441
         N1BM0442 442-444
         N1BM0445 445-447
         N1BM0448 448-450
         N1BM0451 451-453
         N1BM0454 454-456
         N1BM0457 457-459
         N1BM0460 460-462
         N1BM0463 463-465
         N1BM0466 466-468
         N1BM0469 469-471
         N1BM0472 472-474
         N1BM0475 475-477
         N1BM0478 478-480
         N1BM0481 481-483
         N1BM0484 484-486
         N1BM0487 487-489
         N1BM0490 490-492
         N1BM0493 493-495
         N1BM0496 496-498
         N1BM0499 499-501
         N1BM0502 502
         N1BM0503 503-515
         N1BM0516 516-517
         N1BM0518 518-521
         N1BM0522 522-526
         N1BM0527 527-536
         N1BM0537 537-538
         N1BM0539 539-540
         N1BM0541 541-543
         N1BM0544 544-550
         N1BM0551 551-553
         N1BM0554 554-556
         N1BM0557 557-559
         N1BM0560 560-562
         N1BM0563 563-565
         N1BM0566 566-568
         N1BM0569 569-571
         N1BM0572 572-574
         N1BM0575 575-576
         N1BM0577 577-578
         N1BM0579 579-580
         N1BM0581 581-600
      ;

      LABEL
         SEQN = "SAMPLE SEQUENCE NUMBER"
         N1BM0006 = "CATALOG NUMBER 4271"
         N1BM0010 = "SIZE OF PLACE"
         N1BM0011 = "SMSA-NOT SMSA"
         N1BM0012 = "TYPE OF LIVING QUARTERS"
         N1BM0013 = "LAND USAGE"
         N1BM0014 = "IF RURAL, ASKED HOW MANY ACRES OF LA ..."
         N1BM0015 = "IF 10 ACRES OR MORE, ASKED IF SALE O ..."
         N1BM0016 = "IF 10 ACRES OR MORE, ASKED IF SALE O ..."
         N1BM0017 = "AGE-HEAD OF HOUSEHOLD"
         N1BM0019 = "SEX-HEAD OF HOUSEHOLD"
         N1BM0020 = "HIGHEST GRADE ATTENDED-HEAD OF HOUSEHOLD"
         N1BM0022 = "RACE-HEAD OF HOUSEHOLD"
         N1BM0023 = "TOTAL NUMBER OF PERSONS IN HOUSEHOLD"
         N1BM0025 = "TOTAL SAMPLE OF PERSONS IN HOUSEHOLD"
         N1BM0027 = "NUMBER OF ROOMS IN HOUSE"
         N1BM0028 = "IS THERE PIPED WATER?"
         N1BM0029 = "IS THERE HOT AND COLD PIPED WATER?"
         N1BM0030 = "IF YES TO PIPED WATER-DOES HOUSE HAV ..."
         N1BM0031 = "DOES HOUSE HAVE A RANGE OR COOK STOVE?"
         N1BM0032 = "DOES HOUSE HAVE A REFRIGERATOR?"
         N1BM0033 = "ARE KITCHEN FACILITIES USED BY ANYON ..."
         N1BM0034 = "TOTAL FAMILY INCOME GROUP"
         N1BM0036 = "WAGES OR SALARIES?"
         N1BM0037 = "IF YES TO ABOVE, HOW MANY ALTOGETHER ..."
         N1BM0041 = "SOCIAL SECURITY OR RAILROAD RETIREMENT?"
         N1BM0042 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1BM0046 = "WELFARE PAYMENTS OR OTHER PUBLIC ASS ..."
         N1BM0047 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1BM0051 = "UNEMPLOYMENT OR WORKMEN'S COMPENSATION?"
         N1BM0052 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1BM0056 = "GOVERNMENT EMPLOYEE PENSION OR PRIVA ..."
         N1BM0057 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1BM0061 = "DIVIDENDS, INTEREST OR RENT?"
         N1BM0062 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1BM0066 = "NET INCOME FROM OWN NON-FARM BUSINES ..."
         N1BM0067 = "IF YES TO ABOVE,  HOW MUCH ALTOGETHER?"
         N1BM0071 = "NET INCOME FROM A FARM?"
         N1BM0072 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1BM0076 = "VETERAN'S PAYMENTS"
         N1BM0077 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1BM0081 = "ALIMONY, CHILD SUPPORT OR CONTRIBUTI ..."
         N1BM0082 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1BM0086 = "ANY OTHER INCOME?"
         N1BM0087 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1BM0091 = "TOTAL AMOUNT (TOTAL OF POSITIONS 37-90)"
         N1BM0095 = "FAMILY UNIT CODE"
         N1BM0100 = "RELATIONSHIP TO HEAD OF HOUSEHOLD"
         N1BM0101 = "AGE AT INTERVIEW"
         N1BM0103 = "RACE OF EXAMINED PERSON"
         N1BM0104 = "SEX OF EXAMINED PERSON"
         N1BM0105 = "MARTIAL STATUS"
         N1BM0106 = "DATE OF BIRTH (MONTH,YEAR)"
         N1BM0110 = "PLACE OF BIRTH"
         N1BM0112 = "HIGHEST GRADE OF REGULAR SCHOOL EVER ..."
         N1BM0114 = "DID HE FINISH THE GRADE?"
         N1BM0115 = "IS HE ATTENDING SCHOOL NOW?"
         N1BM0116 = "HAS HE EVER ATTENDED A SCHOOL OF ANY ..."
         N1BM0117 = "IF YES, WHAT KIND OF SCHOOL?"
         N1BM0118 = "IS ANY LANGUAGE OTHER THAN ENGLISH F ..."
         N1BM0119 = "IF YES, WHAT LANGUAGE?"
         N1BM0120 = "WHAT IS YOUR MAIN ANCESTRY OR NATION ..."
         N1BM0122 = "WHAT WAS HE DOING MOST OF PAST THE M ..."
         N1BM0123 = "IF 'SOMETHING ELSE' FROM ABOVE, WHAT ..."
         N1BM0124 = "IF 'KEEPING HOUSE' OR 'SOMETHING ELS ..."
         N1BM0125 = "IF 'WORKING' FROM ABOVE, DID HE WORK ..."
         N1BM0126 = "DID HE WORK AT ANY TIME LAST WEEK OR ..."
         N1BM0127 = "IF 'NO' TO ABOVE, EVEN THOUGH HE DID ..."
         N1BM0128 = "IF 'NO' IN POSITION 126, WAS HE LOOK ..."
         N1BM0129 = "IF YES TO ABOVE-WHICH?"
         N1BM0130 = "CLASS OF WORKER"
         N1BM0131 = "IF SELF-EMPLOYED IN 'OWN' BUSINESS A ..."
         N1BM0132 = "BUSINESS OR INDUSTRY CODE"
         N1BM0135 = "OCCUPATION CODE"
         N1BM0138 = "DATE OF EXAMINATION"
         N1BM0144 = "AGE AT EXAMINATION"
         N1BM0146 = "FARM"
         N1BM0147 = "POVERTY INDEX  (X.XX)"
         N1BM0150 = "REGION"
         N1BM0151 = "FOOD PROGRAMS APPLICABILITY"
         N1BM0152 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1BM0153 = "ARE YOU BUYING STAMPS NOW?"
         N1BM0154 = "WHAT IS THE MAIN REASON YOU AREN'T   ..."
         N1BM0155 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1BM0156 = "ARE YOU RECEIVING COMMODITY FOODS NO ..."
         N1BM0157 = "WHY AREN'T YOU PARTICIPATING IN THE  ..."
         N1BM0158 = "DETAILED PERSONS-LOCATIONS 1-35"
         N1BM0164 = "ALL SAMPLE PERSONS-LOCATIONS 1-35"
         N1BM0170 = "DETAILED PERSONS-LOCATIONS 1-65"
         N1BM0176 = "ALL SAMPLE PERSONS-LOCATIONS 1-65"
         N1BM0182 = "DETAILED PERSONS-LOCATIONS 66-100"
         N1BM0188 = "DETAILED PERSONS-LOCATIONS 1-100"
         N1BM0194 = "STRATA 1"
         N1BM0196 = "PRIMARY SAMPLING UNITS 1"
         N1BM0199 = "DATA USER WORK AREA"
         N1BM0201 = "CATALOG NUMBER 4111"
         N1BM0205 = "BLANK"
         N1BM0208 = "EXAMINER NUMBER"
         N1BM0210 = "RIGHT SIDE MEASUREMENT"
         N1BM0213 = "IMPUTATION CODE (RIGHT SIDE)"
         N1BM0214 = "LEFT SIDE MEASUREMENT"
         N1BM0217 = "RIGHT SIDE MEASUREMENT"
         N1BM0220 = "IMPUTATION CODE (RIGHT SIDE)"
         N1BM0221 = "LEFT SIDE MEASUREMENT"
         N1BM0224 = "RIGHT SIDE MEASUREMENT"
         N1BM0227 = "IMPUTATION CODE (RIGHT SIDE)"
         N1BM0228 = "LEFT SIDE MEASUREMENT"
         N1BM0231 = "RIGHT SIDE MEASUREMENT"
         N1BM0234 = "IMPUTATION CODE (RIGHT SIDE)"
         N1BM0235 = "LEFT SIDE MEASUREMENT"
         N1BM0238 = "BITROCHANTERIC BREADTH (IN CM.-XX.X- ..."
         N1BM0241 = "IMPUTATION CODE (RIGHT SIDE)"
         N1BM0242 = "SITTING HEIGHT (IN CM.-XXX.X-DECIMAL ..."
         N1BM0246 = "IMPUTATION CODE "
         N1BM0247 = "HEAD CIRCUMFERENCE (AGES 1-7 ONLY)"
         N1BM0250 = "IMPUTATION CODE"
         N1BM0251 = "CHEST CIRCUMFERENCE (AGES 1-7 ONLY)"
         N1BM0254 = "IMPUTATION CODE"
         N1BM0255 = "WEIGHT (IN POUNDS-XXX.XX-DECIMAL NOT ..."
         N1BM0260 = "WEIGHT (IN KILOGRAMS-XXX.XX-DECIMAL  ..."
         N1BM0265 = "IMPUTATION CODE"
         N1BM0266 = "HEIGHT (IN CENTIMETERS-XXX.X-DECIMAL ..."
         N1BM0270 = "HEIGHT (IN INCHES-XX.X-DECIMAL NOT S ..."
         N1BM0273 = "IMPUTATION CODE"
         N1BM0274 = "HANDEDNESS"
         N1BM0275 = "CHEST CIRCUMFENCE (IN CM.-XXX.X-DECI ..."
         N1BM0279 = "FULL EXPIRATION"
         N1BM0283 = "BLANK-DATA USER WORK AREA"
         N1BM0301 = "BLANK-DATA USER WORK AREA"
         N1BM0307 = "EXAMINER NUMBER"
         N1BM0309 = "BLANK"
         N1BM0325 = "EXTENSION OF RIGHT HIP"
         N1BM0328 = "EXTENSION OF LEFT HIP"
         N1BM0331 = "EXTENSION OF RIGHT KNEE"
         N1BM0333 = "FLEXION OF RIGHT KNEE"
         N1BM0336 = "FLEXION OF RIGHT HIP"
         N1BM0339 = "ADDUCTION OF RIGHT HIP"
         N1BM0341 = "ABDUCTION OF RIGHT HIP"
         N1BM0344 = "EXTENSION OF LEFT KNEE"
         N1BM0346 = "FLEXION OF LEFT KNEE"
         N1BM0349 = "FLEXION OF LEFT HIP"
         N1BM0352 = "ADDUCTION OF LEFT HIP"
         N1BM0354 = "ABDUCTION OF LEFT HIP"
         N1BM0357 = "INTERNAL ROTATION OF THE RIGHT HIP"
         N1BM0359 = "EXTERNAL ROTATION OF RIGHT HIP"
         N1BM0362 = "INTERNAL ROTATION OF LEFT HIP"
         N1BM0365 = "EXTERNAL ROTATION OF LEFT HIP"
         N1BM0367 = "BLANK-DATA USER WORK AREA"
         N1BM0401 = "BLANK-DATA USER WORK AREA"
         N1BM0406 = "READER NUMBER"
         N1BM0408 = "QUALITY OF FILM"
         N1BM0409 = "DISTAL END OF RADIUS"
         N1BM0412 = "DISTAL END OF ULNA"
         N1BM0415 = "CAPITATE"
         N1BM0418 = "HAMATE"
         N1BM0421 = "TRIQUETRAL"
         N1BM0424 = "LUNATE"
         N1BM0427 = "SCAPHOID"
         N1BM0430 = "TRAPEZIUM"
         N1BM0433 = "TRAPEZOID"
         N1BM0436 = "METACARPAL I"
         N1BM0439 = "METACARPAL II"
         N1BM0442 = "METACARPAL III"
         N1BM0445 = "METACARPAL IV"
         N1BM0448 = "METACARPAL V"
         N1BM0451 = "PISIFORM"
         N1BM0454 = "ADDUCTOR SESAMOID"
         N1BM0457 = "FLEXOR SESAMOID"
         N1BM0460 = "PROXIMAL PHALANX I"
         N1BM0463 = "PROXIMAL PHALANX II"
         N1BM0466 = "PROXIMAL PHALANX III"
         N1BM0469 = "PROXIMAL PHALANX IV"
         N1BM0472 = "PROXIMAL PHALANX V"
         N1BM0475 = "MIDDLE PHALANX II"
         N1BM0478 = "MIDDLE PHALANX III"
         N1BM0481 = "MIDDLE PHALANX IV"
         N1BM0484 = "MIDDLE PHALANX V"
         N1BM0487 = "DISTAL PHALANX I"
         N1BM0490 = "DISTAL PHALANX II"
         N1BM0493 = "DISTAL PHALANX III"
         N1BM0496 = "DISTAL PHALANX IV"
         N1BM0499 = "DISTAL PHALANX V"
         N1BM0502 = "ENTRY UNDER INDIVIDUAL DIFFERENCES"
         N1BM0503 = "BLANK-DATA USER WORK AREA"
         N1BM0516 = "NUMBER OF FIELDS WITH BONE AGE ENTRY"
         N1BM0518 = "SUM OF BONE AGE ENTRIES"
         N1BM0522 = "AVERAGE BONE AGE"
         N1BM0527 = "BLANK-DATA USER WORK AREA"
         N1BM0537 = "NUMBER OF ADULT BONE PER YOUTH"
         N1BM0539 = "NUMBER OF UNFORMED BONES PER YOUTH"
         N1BM0541 = "BONE AGE RANGE"
         N1BM0544 = "BLANK-DATA USER WORK AREA"
         N1BM0551 = "PHALANX V-2"
         N1BM0554 = "RADIUM"
         N1BM0557 = "CORTICAL THICKNESS(IN MM,-XX.X) III-2 D"
         N1BM0560 = "III-2 d"
         N1BM0563 = "III-4 D"
         N1BM0566 = "III-4 d"
         N1BM0569 = "II-4 D"
         N1BM0572 = "II-4 D"
         N1BM0575 = "WALL/TOTAL BONE RATIO (.XX) III-2, D-d/D"
         N1BM0577 = "III-4,  D-d/D"
         N1BM0579 = "II-4, D-d/D"
         N1BM0581 = "BLANK-DATA USER WORK AREA"
      ;
RUN;
