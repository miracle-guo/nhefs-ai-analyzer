/*
 *  Survey:           NHANES I
 *  Years:            1971-1975
 *  Questionnaire:    Near and Distant Vision
 *  Tape Number:      4163
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

VALUE VI0010F
     1='3,000,000 or more'
     2='1,000,000 to 2,999,999'
     3='250,000 to 999,999'
     4='under 250,000'
     5='Urban place 25,000 or more outside urbanized area'
     6='Urban place 10,000 to 24,999 outside urbanized area'
     7='Urban place 2,500 to 9,999 outside urbanized area'
     8='Rural'
     ;

VALUE VI0011F
     1='In SMSA, in central city'
     2='In SMSA, not in central city'
     3='Not in SMSA'
     ;

VALUE VI0012F
     1='Housing Unit'
     2='Other unit'
     ;

VALUE VI0013F
     1='All other'
     2='Rural  7136'
     ;

VALUE VI0014F
     1='10 or more acres'
     2='Less than 10 acres'
     9='Not applicable'
     ;

VALUE VI0015F
     2='Yes'
     4='No'
     9='Not applicable'
     ;

VALUE VI0016F
     3='Yes'
     5='No'
     9='Not applicable'
     ;

VALUE VI0017F
     00='Blank, but applicable'
     ;

VALUE VI0019F
     1='Male'
     2='Female'
     ;

VALUE VI0020F
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

VALUE VI0022F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE VI0027F
     9='9 or more'
     ;

VALUE VI0028F
     1='Yes'
     2='No'
     ;

VALUE VI0029F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE VI0030F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE VI0031F
     1='Yes'
     2='No'
     ;

VALUE VI0032F
     1='Yes'
     2='No'
     ;

VALUE VI0033F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE VI0034F
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

VALUE VI0036F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE VI0037F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE VI0041F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE VI0042F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE VI0046F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE VI0047F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE VI0051F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE VI0052F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE VI0056F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE VI0057F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE VI0061F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE VI0062F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE VI0066F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE VI0067F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE VI0071F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE VI0072F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE VI0076F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE VI0077F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE VI0081F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE VI0082F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE VI0086F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE VI0087F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE VI0091F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE VI0100F
     1='Head (1 person living along or with non-relatives)'
     2='Head (2 or more related persons in family)'
     3='Wife'
     4='Child'
     5='Other relative'
     ;

VALUE VI0103F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE VI0104F
     1='Male'
     2='Female'
     ;

VALUE VI0105F
     1='Under 17'
     2='Married'
     3='Widowed'
     4='Never Married'
     5='Divorced'
     6='Separated'
     8='Blank, but applicable'
     ;

VALUE VI0112F
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

VALUE VI0114F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE VI0115F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE VI0116F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE VI0117F
     1='Nursery'
     2='Kindergarten'
     3='Other'
     4='Headstart'
     5='Daycare'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE VI0118F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE VI0119F
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

VALUE VI0120F
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

VALUE VI0122F
     1='Working'
     2='Keeping house'
     3='Something else'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE VI0123F
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

VALUE VI0124F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE VI0125F
     1='Full-time'
     2='Part-time'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE VI0126F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE VI0127F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE VI0128F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE VI0129F
     1='Looking'
     2='Lay-off'
     3='Both'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE VI0130F
     1='Private paid'
     2='Government-Federal'
     3='Government-Other'
     4='Own'
     5='Non-paid'
     6='Never worked'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE VI0131F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE VI0146F
     1='Farm'
     2='Nonfarm'
     ;

VALUE VI0147F
     998='Index computed 998 or greater'
     999='Unknown'
     ;

VALUE VI0150F
     1='Northeast'
     2='Midwest'
     3='South'
     4='West'
     ;

VALUE VI0151F
     1='Not applicable'
     2='No program available'
     3='Food stamps available'
     4='Commodities available'
     8='Blank, but applicable'
     ;

VALUE VI0152F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE VI0153F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE VI0154F
     1='No need'
     2='Not enough money at the time'
     3='No transportation'
     4='Pride'
     5='Other'
     8='Blank, but applicable'
     ;

VALUE VI0155F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE VI0156F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE VI0157F
     1='No need'
     2='No transportation'
     3='Pride'
     4='Other'
     8='Blank, but applicable'
     ;

VALUE VI0225F
     1='Wears glasses for test'
     2='Wears contact lenses for test'
     3='Forgot (glasses, contact lenses)'
     4='Does not wear either glasses or  contact lenses'
     8='Blank, but applicable'
     ;

VALUE VI0234F
     1='Test not done'
     2='Test  unsatisfactory'
     ;

VALUE VI0235F
     1='Wears glasses for test'
     2='Wears contact lenses for test'
     3='Forgot (glasses, contact lenses)'
     4='Does not wear either glasses or contact lenses'
     8='Blank, but applicable'
     ;

VALUE VI0236F
     1='Attempted'
     ;

VALUE VI0240F
     1='Read satisfactorily'
     ;

VALUE VI0242F
     1='Attempted'
     ;

VALUE VI0246F
     1='Read satisfactorily'
     ;

VALUE VI0249F
     1='Attempted'
     ;

VALUE VI0253F
     1='Read satisfactorily'
     ;

VALUE VI0256F
     1='Attempted'
     ;

VALUE VI0260F
     1='Read satisfactorily'
     ;

VALUE VI0263F
     1='Attempted'
     ;

VALUE VI0267F
     1='Read satisfactorily'
     ;

VALUE VI0270F
     1='Attempted'
     ;

VALUE VI0271F
     888='Blank, but applicable'
     ;

VALUE VI0274F
     1='Read satisfactorily'
     ;

VALUE VI0277F
     1='Attempted'
     ;

VALUE VI0281F
     1='Read satisfactorily'
     ;

VALUE VI0284F
     1='Attempted'
     ;

VALUE VI0285F
     888='Blank, but applicable'
     ;

VALUE VI0288F
     1='Read satisfactorily'
     ;

VALUE VI0289F
     888='Blank, but applicable'
     ;

VALUE VI0292F
     1='Attempted'
     ;

VALUE VI0296F
     1='Read satisfactorily'
     ;

VALUE VI0300F
     1='Attempted'
     ;

VALUE VI0304F
     1='Read satisfactorily'
     ;

VALUE VI0307F
     1='Attempted'
     ;

VALUE VI0311F
     1='Read satisfactorily'
     ;

VALUE VI0314F
     1='Attempted'
     ;

VALUE VI0318F
     1='Read satisfactorily'
     ;

VALUE VI0321F
     1='Attempted'
     ;

VALUE VI0325F
     1='Read satisfactorily'
     ;

VALUE VI0328F
     1='Attempted'
     ;

VALUE VI0332F
     1='Read satisfactorily'
     ;

VALUE VI0335F
     1='Attempted'
     ;

VALUE VI0339F
     1='Read satisfactorily'
     ;

VALUE VI0342F
     1='Attempted'
     ;

VALUE VI0346F
     1='Read satisfactorily'
     ;

VALUE VI0349F
     1='Attempted'
     ;

VALUE VI0353F
     1='Read satisfactorily'
     ;

VALUE VI0356F
     1='Cannot read English'
     2='Cannot read'
     3='Difficulty speaking'
     4='Other'
     ;

VALUE VI0357F
     1='Wears glasses for test'
     2='Wears contact lenses for test'
     3='Forgot (glasses, contact lenses)'
     4='Does not wear either glasses or contact lenses'
     ;

VALUE VI0361F
     1='Completed'
     ;

VALUE VI0365F
     1='Completed'
     ;

VALUE VI0369F
     1='Completed'
     ;

VALUE VI0373F
     1='Completed'
     ;

VALUE VI0377F
     1='Completed'
     ;

VALUE VI0381F
     1='Completed'
     ;

VALUE VI0385F
     1='Completed'
     ;

VALUE VI0389F
     1='Completed'
     ;

VALUE VI0393F
     1='Completed'
     ;

VALUE VI0397F
     1='Completed'
     ;

VALUE VI0401F
     1='Completed'
     ;

VALUE VI0405F
     1='Completed'
     ;

VALUE VI0409F
     1='Completed'
     ;

VALUE VI0413F
     1='Completed'
     ;

VALUE VI0417F
     1='Completed'
     ;

VALUE VI0421F
     1='Completed'
     ;

VALUE VI0425F
     1='Completed'
     ;
RUN;


DATA D_4163;
   INFILE 'c:\temp\DU4163.txt' LRECL = 2000 MISSOVER;
      LENGTH
         SEQN 8
         N1VI0006 8
         N1VI0010 4
         N1VI0011 4
         N1VI0012 4
         N1VI0013 4
         N1VI0014 4
         N1VI0015 4
         N1VI0016 4
         N1VI0017 4
         N1VI0019 4
         N1VI0020 4
         N1VI0022 4
         N1VI0023 4
         N1VI0025 4
         N1VI0027 4
         N1VI0028 4
         N1VI0029 4
         N1VI0030 4
         N1VI0031 4
         N1VI0032 4
         N1VI0033 4
         N1VI0034 4
         N1VI0036 4
         N1VI0037 8
         N1VI0041 4
         N1VI0042 8
         N1VI0046 4
         N1VI0047 8
         N1VI0051 4
         N1VI0052 8
         N1VI0056 4
         N1VI0057 8
         N1VI0061 4
         N1VI0062 8
         N1VI0066 4
         N1VI0067 8
         N1VI0071 4
         N1VI0072 8
         N1VI0076 4
         N1VI0077 8
         N1VI0081 4
         N1VI0082 8
         N1VI0086 4
         N1VI0087 8
         N1VI0091 8
         N1VI0095 8
         N1VI0100 4
         N1VI0101 4
         N1VI0103 4
         N1VI0104 4
         N1VI0105 4
         N1VI0106 8
         N1VI0110 4
         N1VI0112 4
         N1VI0114 4
         N1VI0115 4
         N1VI0116 4
         N1VI0117 4
         N1VI0118 4
         N1VI0119 4
         N1VI0120 4
         N1VI0122 4
         N1VI0123 4
         N1VI0124 4
         N1VI0125 4
         N1VI0126 4
         N1VI0127 4
         N1VI0128 4
         N1VI0129 4
         N1VI0130 4
         N1VI0131 4
         N1VI0132 4
         N1VI0135 4
         N1VI0138 8
         N1VI0144 4
         N1VI0146 4
         N1VI0147 4
         N1VI0150 4
         N1VI0151 4
         N1VI0152 4
         N1VI0153 4
         N1VI0154 4
         N1VI0155 4
         N1VI0156 4
         N1VI0157 4
         N1VI0158 8
         N1VI0164 $6
         N1VI0170 8
         N1VI0176 $6
         N1VI0182 $12
         N1VI0194 4
         N1VI0196 4
         N1VI0199 4
         N1VI0201 8
         N1VI0205 $4
         N1VI0209 4
         N1VI0211 $2
         N1VI0213 4
         N1VI0215 $10
         N1VI0225 4
         N1VI0226 4
         N1VI0228 4
         N1VI0230 4
         N1VI0232 4
         N1VI0234 4
         N1VI0235 4
         N1VI0236 4
         N1VI0237 4
         N1VI0240 4
         N1VI0241 4
         N1VI0242 4
         N1VI0243 4
         N1VI0246 4
         N1VI0247 4
         N1VI0249 4
         N1VI0250 4
         N1VI0253 4
         N1VI0254 4
         N1VI0256 4
         N1VI0257 4
         N1VI0260 4
         N1VI0261 4
         N1VI0263 4
         N1VI0264 4
         N1VI0267 4
         N1VI0268 4
         N1VI0270 4
         N1VI0271 4
         N1VI0274 4
         N1VI0275 4
         N1VI0277 4
         N1VI0278 4
         N1VI0281 4
         N1VI0282 4
         N1VI0284 4
         N1VI0285 4
         N1VI0288 4
         N1VI0289 4
         N1VI0292 4
         N1VI0293 4
         N1VI0296 4
         N1VI0297 4
         N1VI0300 4
         N1VI0301 4
         N1VI0304 4
         N1VI0305 4
         N1VI0307 4
         N1VI0308 4
         N1VI0311 4
         N1VI0312 4
         N1VI0314 4
         N1VI0315 4
         N1VI0318 4
         N1VI0319 4
         N1VI0321 4
         N1VI0322 4
         N1VI0325 4
         N1VI0326 4
         N1VI0328 4
         N1VI0329 4
         N1VI0332 4
         N1VI0333 4
         N1VI0335 4
         N1VI0336 4
         N1VI0339 4
         N1VI0340 4
         N1VI0342 4
         N1VI0343 4
         N1VI0346 4
         N1VI0347 4
         N1VI0349 4
         N1VI0350 4
         N1VI0353 4
         N1VI0354 4
         N1VI0356 4
         N1VI0357 4
         N1VI0358 4
         N1VI0361 4
         N1VI0362 4
         N1VI0365 4
         N1VI0366 4
         N1VI0369 4
         N1VI0370 4
         N1VI0373 4
         N1VI0374 4
         N1VI0377 4
         N1VI0378 4
         N1VI0381 4
         N1VI0382 4
         N1VI0385 4
         N1VI0386 4
         N1VI0389 4
         N1VI0390 4
         N1VI0393 4
         N1VI0394 4
         N1VI0397 4
         N1VI0398 4
         N1VI0401 4
         N1VI0402 4
         N1VI0405 4
         N1VI0406 4
         N1VI0409 4
         N1VI0410 4
         N1VI0413 4
         N1VI0414 4
         N1VI0417 4
         N1VI0418 4
         N1VI0421 4
         N1VI0422 4
         N1VI0425 4
         N1VI0426 8
         N1VI0430 8
         N1VI0434 8
         N1VI0438 8
         N1VI0442 $59
      ;



FORMAT
     N1VI0010 VI0010F.
     N1VI0011 VI0011F.
     N1VI0012 VI0012F.
     N1VI0013 VI0013F.
     N1VI0014 VI0014F.
     N1VI0015 VI0015F.
     N1VI0016 VI0016F.
     N1VI0017 VI0017F.
     N1VI0019 VI0019F.
     N1VI0020 VI0020F.
     N1VI0022 VI0022F.
     N1VI0027 VI0027F.
     N1VI0028 VI0028F.
     N1VI0029 VI0029F.
     N1VI0030 VI0030F.
     N1VI0031 VI0031F.
     N1VI0032 VI0032F.
     N1VI0033 VI0033F.
     N1VI0034 VI0034F.
     N1VI0036 VI0036F.
     N1VI0037 VI0037F.
     N1VI0041 VI0041F.
     N1VI0042 VI0042F.
     N1VI0046 VI0046F.
     N1VI0047 VI0047F.
     N1VI0051 VI0051F.
     N1VI0052 VI0052F.
     N1VI0056 VI0056F.
     N1VI0057 VI0057F.
     N1VI0061 VI0061F.
     N1VI0062 VI0062F.
     N1VI0066 VI0066F.
     N1VI0067 VI0067F.
     N1VI0071 VI0071F.
     N1VI0072 VI0072F.
     N1VI0076 VI0076F.
     N1VI0077 VI0077F.
     N1VI0081 VI0081F.
     N1VI0082 VI0082F.
     N1VI0086 VI0086F.
     N1VI0087 VI0087F.
     N1VI0091 VI0091F.
     N1VI0100 VI0100F.
     N1VI0103 VI0103F.
     N1VI0104 VI0104F.
     N1VI0105 VI0105F.
     N1VI0112 VI0112F.
     N1VI0114 VI0114F.
     N1VI0115 VI0115F.
     N1VI0116 VI0116F.
     N1VI0117 VI0117F.
     N1VI0118 VI0118F.
     N1VI0119 VI0119F.
     N1VI0120 VI0120F.
     N1VI0122 VI0122F.
     N1VI0123 VI0123F.
     N1VI0124 VI0124F.
     N1VI0125 VI0125F.
     N1VI0126 VI0126F.
     N1VI0127 VI0127F.
     N1VI0128 VI0128F.
     N1VI0129 VI0129F.
     N1VI0130 VI0130F.
     N1VI0131 VI0131F.
     N1VI0146 VI0146F.
     N1VI0147 VI0147F.
     N1VI0150 VI0150F.
     N1VI0151 VI0151F.
     N1VI0152 VI0152F.
     N1VI0153 VI0153F.
     N1VI0154 VI0154F.
     N1VI0155 VI0155F.
     N1VI0156 VI0156F.
     N1VI0157 VI0157F.
     N1VI0225 VI0225F.
     N1VI0234 VI0234F.
     N1VI0235 VI0235F.
     N1VI0236 VI0236F.
     N1VI0240 VI0240F.
     N1VI0242 VI0242F.
     N1VI0246 VI0246F.
     N1VI0249 VI0249F.
     N1VI0253 VI0253F.
     N1VI0256 VI0256F.
     N1VI0260 VI0260F.
     N1VI0263 VI0263F.
     N1VI0267 VI0267F.
     N1VI0270 VI0270F.
     N1VI0271 VI0271F.
     N1VI0274 VI0274F.
     N1VI0277 VI0277F.
     N1VI0281 VI0281F.
     N1VI0284 VI0284F.
     N1VI0285 VI0285F.
     N1VI0288 VI0288F.
     N1VI0289 VI0289F.
     N1VI0292 VI0292F.
     N1VI0296 VI0296F.
     N1VI0300 VI0300F.
     N1VI0304 VI0304F.
     N1VI0307 VI0307F.
     N1VI0311 VI0311F.
     N1VI0314 VI0314F.
     N1VI0318 VI0318F.
     N1VI0321 VI0321F.
     N1VI0325 VI0325F.
     N1VI0328 VI0328F.
     N1VI0332 VI0332F.
     N1VI0335 VI0335F.
     N1VI0339 VI0339F.
     N1VI0342 VI0342F.
     N1VI0346 VI0346F.
     N1VI0349 VI0349F.
     N1VI0353 VI0353F.
     N1VI0356 VI0356F.
     N1VI0357 VI0357F.
     N1VI0361 VI0361F.
     N1VI0365 VI0365F.
     N1VI0369 VI0369F.
     N1VI0373 VI0373F.
     N1VI0377 VI0377F.
     N1VI0381 VI0381F.
     N1VI0385 VI0385F.
     N1VI0389 VI0389F.
     N1VI0393 VI0393F.
     N1VI0397 VI0397F.
     N1VI0401 VI0401F.
     N1VI0405 VI0405F.
     N1VI0409 VI0409F.
     N1VI0413 VI0413F.
     N1VI0417 VI0417F.
     N1VI0421 VI0421F.
     N1VI0425 VI0425F.
     ;

	INPUT
         SEQN 1-5
         N1VI0006 6-9
         N1VI0010 10
         N1VI0011 11
         N1VI0012 12
         N1VI0013 13
         N1VI0014 14
         N1VI0015 15
         N1VI0016 16
         N1VI0017 17-18
         N1VI0019 19
         N1VI0020 20-21
         N1VI0022 22
         N1VI0023 23-24
         N1VI0025 25-26
         N1VI0027 27
         N1VI0028 28
         N1VI0029 29
         N1VI0030 30
         N1VI0031 31
         N1VI0032 32
         N1VI0033 33
         N1VI0034 34-35
         N1VI0036 36
         N1VI0037 37-40
         N1VI0041 41
         N1VI0042 42-45
         N1VI0046 46
         N1VI0047 47-50
         N1VI0051 51
         N1VI0052 52-55
         N1VI0056 56
         N1VI0057 57-60
         N1VI0061 61
         N1VI0062 62-65
         N1VI0066 66
         N1VI0067 67-70
         N1VI0071 71
         N1VI0072 72-75
         N1VI0076 76
         N1VI0077 77-80
         N1VI0081 81
         N1VI0082 82-85
         N1VI0086 86
         N1VI0087 87-90
         N1VI0091 91-94
         N1VI0095 95-99
         N1VI0100 100
         N1VI0101 101-102
         N1VI0103 103
         N1VI0104 104
         N1VI0105 105
         N1VI0106 106-109
         N1VI0110 110-111
         N1VI0112 112-113
         N1VI0114 114
         N1VI0115 115
         N1VI0116 116
         N1VI0117 117
         N1VI0118 118
         N1VI0119 119
         N1VI0120 120-121
         N1VI0122 122
         N1VI0123 123
         N1VI0124 124
         N1VI0125 125
         N1VI0126 126
         N1VI0127 127
         N1VI0128 128
         N1VI0129 129
         N1VI0130 130
         N1VI0131 131
         N1VI0132 132-134
         N1VI0135 135-137
         N1VI0138 138-143
         N1VI0144 144-145
         N1VI0146 146
         N1VI0147 147-149
         N1VI0150 150
         N1VI0151 151
         N1VI0152 152
         N1VI0153 153
         N1VI0154 154
         N1VI0155 155
         N1VI0156 156
         N1VI0157 157
         N1VI0158 158-163
         N1VI0164 164-169
         N1VI0170 170-175
         N1VI0176 176-181
         N1VI0182 182-193
         N1VI0194 194-195
         N1VI0196 196-198
         N1VI0199 199-200
         N1VI0201 201-204
         N1VI0205 205-208
         N1VI0209 209-210
         N1VI0211 211-212
         N1VI0213 213-214
         N1VI0215 215-224
         N1VI0225 225
         N1VI0226 226-227
         N1VI0228 228-229
         N1VI0230 230-231
         N1VI0232 232-233
         N1VI0234 234
         N1VI0235 235
         N1VI0236 236
         N1VI0237 237-239
         N1VI0240 240
         N1VI0241 241
         N1VI0242 242
         N1VI0243 243-245
         N1VI0246 246
         N1VI0247 247-248
         N1VI0249 249
         N1VI0250 250-252
         N1VI0253 253
         N1VI0254 254-255
         N1VI0256 256
         N1VI0257 257-259
         N1VI0260 260
         N1VI0261 261-262
         N1VI0263 263
         N1VI0264 264-266
         N1VI0267 267
         N1VI0268 268-269
         N1VI0270 270
         N1VI0271 271-273
         N1VI0274 274
         N1VI0275 275-276
         N1VI0277 277
         N1VI0278 278-280
         N1VI0281 281
         N1VI0282 282-283
         N1VI0284 284
         N1VI0285 285-287
         N1VI0288 288
         N1VI0289 289-291
         N1VI0292 292
         N1VI0293 293-295
         N1VI0296 296
         N1VI0297 297-299
         N1VI0300 300
         N1VI0301 301-303
         N1VI0304 304
         N1VI0305 305-306
         N1VI0307 307
         N1VI0308 308-310
         N1VI0311 311
         N1VI0312 312-313
         N1VI0314 314
         N1VI0315 315-317
         N1VI0318 318
         N1VI0319 319-320
         N1VI0321 321
         N1VI0322 322-324
         N1VI0325 325
         N1VI0326 326-327
         N1VI0328 328
         N1VI0329 329-331
         N1VI0332 332
         N1VI0333 333-334
         N1VI0335 335
         N1VI0336 336-338
         N1VI0339 339
         N1VI0340 340-341
         N1VI0342 342
         N1VI0343 343-345
         N1VI0346 346
         N1VI0347 347-348
         N1VI0349 349
         N1VI0350 350-352
         N1VI0353 353
         N1VI0354 354-355
         N1VI0356 356
         N1VI0357 357
         N1VI0358 358-360
         N1VI0361 361
         N1VI0362 362-364
         N1VI0365 365
         N1VI0366 366-368
         N1VI0369 369
         N1VI0370 370-372
         N1VI0373 373
         N1VI0374 374-376
         N1VI0377 377
         N1VI0378 378-380
         N1VI0381 381
         N1VI0382 382-384
         N1VI0385 385
         N1VI0386 386-388
         N1VI0389 389
         N1VI0390 390-392
         N1VI0393 393
         N1VI0394 394-396
         N1VI0397 397
         N1VI0398 398-400
         N1VI0401 401
         N1VI0402 402-404
         N1VI0405 405
         N1VI0406 406-408
         N1VI0409 409
         N1VI0410 410-412
         N1VI0413 413
         N1VI0414 414-416
         N1VI0417 417
         N1VI0418 418-420
         N1VI0421 421
         N1VI0422 422-424
         N1VI0425 425
         N1VI0426 426-429
         N1VI0430 430-433
         N1VI0434 434-437
         N1VI0438 438-441
         N1VI0442 442-500
      ;

      LABEL
         SEQN = "SAMPLE SEQUENCE NUMBER"
         N1VI0006 = "CATALOG NUMBER 4271"
         N1VI0010 = "SIZE OF PLACE"
         N1VI0011 = "SMSA-NOT SMSA"
         N1VI0012 = "TYPE OF LIVING QUARTERS"
         N1VI0013 = "LAND USAGE"
         N1VI0014 = "IF RURAL, ASKED HOW MANY ACRES OF LA ..."
         N1VI0015 = "IF 10 ACRES OR LESS, ASKED IF SALE O ..."
         N1VI0016 = "IF 10 ACRES OR LESS, ASKED IF SALE O ..."
         N1VI0017 = "AGE-HEAD OF HOUSEHOLD"
         N1VI0019 = "SEX-HEAD OF HOUSEHOLD"
         N1VI0020 = "HIGHEST GRADE ATTENDED-HEAD OF HOUSEHOLD"
         N1VI0022 = "RACE- HEAD OF HOUSE HOLD"
         N1VI0023 = "TOTAL NUMBER OF PERSONS IN HOUSEHOLD"
         N1VI0025 = "TOTAL SAMPLE PERSONS IN HOUSEHOLD"
         N1VI0027 = "NUMBER OF ROOMS IN HOUSE "
         N1VI0028 = "IS THERE PIPED WATER?"
         N1VI0029 = "IS THERE HOT AND COLD PIPED WATER?"
         N1VI0030 = "IF YES TO PIPED WATER-DOES HOUSE HAV ..."
         N1VI0031 = "DOES HOUSE HAVE A RANGE OR COOK STOVE?"
         N1VI0032 = "DOES HOUSE HAVE A REFRIGERATOR?"
         N1VI0033 = "ARE KITCHEN FACILITIES USED BY ANYON ..."
         N1VI0034 = "TOTAL FAMILY INCOME GROUP"
         N1VI0036 = "WAGES OR SALARIES?"
         N1VI0037 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER ..."
         N1VI0041 = "SOCIAL SECURITY OR  RAILROAD RETIREMENT?"
         N1VI0042 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1VI0046 = "WELFARE PAYMENTS OR OTHER PUBLIC ASS ..."
         N1VI0047 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1VI0051 = "UNEMPLOYMENT OR WORKMEN'S COMPENSATION?"
         N1VI0052 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1VI0056 = "GOVERNMENT EMPLOYEE PENSIONS OR PRIV ..."
         N1VI0057 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1VI0061 = "DIVIDENDS, INTEREST OR RENT?"
         N1VI0062 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1VI0066 = "NET INCOME FROM  OWN NON-FARM BUSINE ..."
         N1VI0067 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1VI0071 = "NET INCOME FROM A FARM?"
         N1VI0072 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1VI0076 = "VETERAN'S PAYMENTS"
         N1VI0077 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1VI0081 = "ALIMONY, CHILD SUPPORT OR CONTRIBUTI ..."
         N1VI0082 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1VI0086 = "ANY OTHER INCOME?"
         N1VI0087 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1VI0091 = "TOTAL AMOUNT(TOTAL OF POSITIONS 37-90)"
         N1VI0095 = "FAMILY UNIT CODE"
         N1VI0100 = "RELATIONSHIP TO HEAD OF HOUSEHOLD"
         N1VI0101 = "AGE AT INTERVIEW"
         N1VI0103 = "RACE OF EXAMINED PERSON"
         N1VI0104 = "SEX OF EXAMINED PERSON"
         N1VI0105 = "MARITAL STATUS"
         N1VI0106 = "DATE OF BIRTH (MONTH, YEAR)"
         N1VI0110 = "PLACE OF BIRTH"
         N1VI0112 = "HIGHEST GRADE OF REGULAR SCHOOL EVER ..."
         N1VI0114 = "DID HE FINISH THE GRADE?"
         N1VI0115 = "IS HE ATTENDING SCHOOL NOW?"
         N1VI0116 = "HAS HE EVER ATTENDED A SCHOOL OF ANY ..."
         N1VI0117 = "IF YES, WHAT KIND OF SCHOOL?"
         N1VI0118 = "IS ANY LANGUAGE OTHER THAN ENGLISH F ..."
         N1VI0119 = "IF YES, WHAT LANGUAGE"
         N1VI0120 = "WHAT IS YOUR MAIN ANCESTRY OR NATION ..."
         N1VI0122 = "WHAT WAS HE DOING MOST PAST THREE MO ..."
         N1VI0123 = "IF ' SOMETHING ELSE' FROM ABOVE, WHA ..."
         N1VI0124 = "IF 'KEEPING HOUSE' OR 'SOMETHING ELS ..."
         N1VI0125 = "IF 'WORKING' FROM ABOVE, DID HE WORK ..."
         N1VI0126 = "DID HE WORK AT ANY TIME LAST WEEK OR ..."
         N1VI0127 = "IF 'NO TO ABOVE, EVEN THOUGH HE DID  ..."
         N1VI0128 = "IF 'NO' IN POSITION 126, WAS HE LOOK ..."
         N1VI0129 = "IF YES TO ABOVE-WHICH?"
         N1VI0130 = "CLASS OF WORKER"
         N1VI0131 = "IF SELF-EMPLOYED IN 'OWN' BUSINESS A ..."
         N1VI0132 = "BUSINESS OR INDUSTRY CODE"
         N1VI0135 = "OCCUPATION CODE"
         N1VI0138 = "DATE OF EXAMINATION"
         N1VI0144 = "AGE AT EXAMINATION"
         N1VI0146 = "FARM"
         N1VI0147 = "POVERTY INDEX (X.XX)"
         N1VI0150 = "RELIGION"
         N1VI0151 = "FOOD PROGRAMS APPLICABILITY"
         N1VI0152 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1VI0153 = "ARE YOU BUYING STAMPS NOW?"
         N1VI0154 = "WHAT IS THE MAIN REASON YOU AREN'T P ..."
         N1VI0155 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1VI0156 = "ARE YOU RECEIVING COMMODITY FOODS  N ..."
         N1VI0157 = "WHY AREN'T YOU PARTICIPATING IN THE  ..."
         N1VI0158 = "DETAILED PERSONS-LOCATIONS 1-35"
         N1VI0164 = "BLANK-DATA USER WORK AREA"
         N1VI0170 = "DETAILED PERSONS-LOCATIONS 1-65"
         N1VI0176 = "BLANK-DATA USER WORK AREA"
         N1VI0182 = "DETAILED PERSONS-LOCATIONS 1-100"
         N1VI0194 = "STRATA1/"
         N1VI0196 = " PRIMARY SAMPLING UNITS1/"
         N1VI0199 = "DATA WORK AREA"
         N1VI0201 = "CATALOG NUMBER 4163"
         N1VI0205 = "BLANK-DATA USER WORK AREA"
         N1VI0209 = "EXAMINER NUMBER (DISTANCE)"
         N1VI0211 = "BLANK-DATA USER WORK AREA"
         N1VI0213 = "EXAMINER NUMBER (NEAR)"
         N1VI0215 = "BLANK-DATA USER WORK AREA"
         N1VI0225 = "DISTANCE VISION-WEIGHT OR WITHOUT CO ..."
         N1VI0226 = "WITH CORRECTION-BOTH EYE (BINOCULAR)"
         N1VI0228 = "WITHOUT CORRECTION-BOTH EYES (BINOCULAR)"
         N1VI0230 = "WEIGHT USUAL CORRECTION-LEFT EYE (MO ..."
         N1VI0232 = "WEIGHT USUAL CORRECTION_RIGHT EYE (M ..."
         N1VI0234 = "TEST RESULTS"
         N1VI0235 = "NEAR VISION-WITH OR WITHOUT CORRECTION"
         N1VI0236 = "SELECTION 500 (8 POSSIBLE WORDS) ATT ..."
         N1VI0237 = "DISTANCE VISION-WIGH OR WITHOUT CORR ..."
         N1VI0240 = "SMALLEST READ SATISFACTORILY"
         N1VI0241 = "NUMBER WRONG"
         N1VI0242 = "SELECTION 350 (12 POSSIBLE WORDS) "
         N1VI0243 = "DISTANCE VISION-WIGH OR WITHOUT CORR ..."
         N1VI0246 = "SMALLEST READ SATISFACTORILY"
         N1VI0247 = "NUMBER WRONG"
         N1VI0249 = "SELECTION 250 (18 POSSIBLE WORDS) AT ..."
         N1VI0250 = "DISTANCE VISION-WEIGHT OR WITHOUT CO ..."
         N1VI0253 = "SMALLEST READ SATISFACTORILY"
         N1VI0254 = "NUMBER WRONG"
         N1VI0256 = "SELECTION 200 (29 POSSIBLE WORDS) AT ..."
         N1VI0257 = "DISTANCE VISION-WEIGHT OR WITHOUT CO ..."
         N1VI0260 = "SMALLEST READ SATISFACTORILY"
         N1VI0261 = "NUMBER WRONG"
         N1VI0263 = "SELECTION 150 (37 POSSIBLE WORDS) AT ..."
         N1VI0264 = "DISTANCE   "
         N1VI0267 = "SMALLEST READ SATISFACTORILY"
         N1VI0268 = "NUMBER WRONG"
         N1VI0270 = "SELECTION 125 (44 POSSIBLE WORDS) (4 ..."
         N1VI0271 = "DISTANCE"
         N1VI0274 = "SMALLEST READ SATISFACTORILY"
         N1VI0275 = "NUMBER WRONG"
         N1VI0277 = "SELECTION 100 (73 POSSIBLE WORDS)-AT ..."
         N1VI0278 = "DISTANCE"
         N1VI0281 = "SMALLEST READ SATISFACTORILY"
         N1VI0282 = "NUMBER WRONG"
         N1VI0284 = "SELECTION 75 (122 POSSIBLE WORDS)-AT ..."
         N1VI0285 = "DISTANCE"
         N1VI0288 = "SMALLEST READ SATISFACTORILY"
         N1VI0289 = "NUMBER WRONG"
         N1VI0292 = "ATTEMPTED"
         N1VI0292 = "DISTANCE"
         N1VI0296 = "SMALLEST READ SATISFACTORILY"
         N1VI0297 = "NUMBER WRONG"
         N1VI0300 = "SELECTION 130 (11 POSSIBLE WORDS) AT ..."
         N1VI0301 = "DISTANCE"
         N1VI0304 = "SMALLEST READ  SATISFACTORILY"
         N1VI0305 = "NUMBER WRONG"
         N1VI0307 = "SELECTION 120 (11 POSSIBLE WORDS) AT ..."
         N1VI0308 = "DISTANCE"
         N1VI0311 = "SMALLEST READ SATISFACTORILY"
         N1VI0312 = "NUMBER WRONG"
         N1VI0314 = "SELECTION 85 (17 POSSIBLE WORDS) ATT ..."
         N1VI0315 = "DISTANCE"
         N1VI0318 = "SMALLEST READ SATISFACTORILY"
         N1VI0319 = "NUMBER WRONG"
         N1VI0321 = "SELECTION 65 (25 POSSIBLE WORDS) ATT ..."
         N1VI0322 = "DISTANCE"
         N1VI0325 = "SMALLEST READ SATISFACTORILY"
         N1VI0326 = "NUMBER WRONG"
         N1VI0328 = "SELECTION 50 (30 POSSIBLE WORDS) ATT ..."
         N1VI0329 = "DISTANCE"
         N1VI0332 = "SMALLEST READ SATISFACTORILY"
         N1VI0333 = "NUMBER WRONG"
         N1VI0335 = "SELECTION 40 (32 POSSIBLE WORDS) ATT ..."
         N1VI0336 = "DISTANCE"
         N1VI0339 = "SELECTION 40 (32 POSSIBLE WORDS) ATT ..."
         N1VI0340 = "NUMBER WRONG"
         N1VI0342 = "SELECTION 30 (50 POSSIBLE WORDS)-ATT ..."
         N1VI0343 = "DISTANCE"
         N1VI0346 = "SMALLEST READ SATISFACTORILY"
         N1VI0347 = "NUMBER WRONG"
         N1VI0349 = "SELECTION 20 (61  POSSIBLE WORDS) AT ..."
         N1VI0350 = "DISTANCE"
         N1VI0353 = "SMALLEST READ SATISFACTORILY"
         N1VI0354 = "NUMBER WRONG"
         N1VI0356 = "CONDITIONS INTERFERING WITH TEST"
         N1VI0357 = "NEAR VISION (FOR NON-ENGLISH OR ILLI ..."
         N1VI0358 = "TEST USING SLOAN LETTERS (BOTH EYES) ..."
         N1VI0361 = "SCORE"
         N1VI0362 = "SELECTION 350 (4 ERRORS ALLOWED) DIS ..."
         N1VI0365 = "SCORE"
         N1VI0366 = "SELECTION 250 (4 ERRORS ALLOWED) DIS ..."
         N1VI0369 = "SCORE"
         N1VI0370 = "SELECTION 200 (4 ERRORS ALLOWED) DIS ..."
         N1VI0373 = "SCORE"
         N1VI0374 = "SELECTION 150 (4 ERRORS ALLOWED) DIS ..."
         N1VI0377 = "SCORE"
         N1VI0378 = "SELECTION 125 (4 ERRORS ALLOWED) DIS ..."
         N1VI0381 = "SCORE"
         N1VI0382 = "SELECTION 100 (4 ERROR ALLOWED) DISTANCE"
         N1VI0385 = "SCORE"
         N1VI0386 = "SELECTION 75 (4 ERRORS ALLOWED) DISTANCE"
         N1VI0389 = "SCORE"
         N1VI0390 = "SELECTION 50 (4 ERRORS ALLOWED) DISTANCE"
         N1VI0393 = "SCORE"
         N1VI0394 = "TEST USING KEENEY LETTERS (BOTH EYES ..."
         N1VI0397 = "SCORE"
         N1VI0398 = "SELECTION 120 (4 ERRORS ALLOWED) DIS ..."
         N1VI0401 = "SCORE"
         N1VI0402 = "SELECTION 85 (4 ERRORS ALLOWED) DISTANCE"
         N1VI0405 = "SCORE"
         N1VI0406 = "SELECTION 60 (4 ERROR ALLOWED) DISTANCE"
         N1VI0409 = "SCORE"
         N1VI0410 = "SELECTION 50 (4 ERRORS ALLOWED) DISTANCE"
         N1VI0413 = "SCORE"
         N1VI0414 = "SELECTION 40 (4 ERRORS ALLOWED) DISTANCE"
         N1VI0417 = "SCORE"
         N1VI0418 = "SELECTION 30 (4 ERRORS ALLOWED) DIST ..."
         N1VI0421 = "SCORE"
         N1VI0422 = "SELECTION 20 (4 ERRORS ALLOWED) DISTANCE"
         N1VI0425 = "SCORE"
         N1VI0426 = "ANGLE OF VISUAL ACUITY (SLOAN) NON-I ..."
         N1VI0430 = "ANGLE OF VISUAL ACUITY (KENNEY) NON- ..."
         N1VI0434 = "ANGLE OF VISUAL ACUITY (SLOAN) ILLIT ..."
         N1VI0438 = "ANGLE OF VISUAL ACUITY (KEENEY) ILLI ..."
         N1VI0442 = "BLANK-DATA USER WORK AREA"
      ;
RUN;
