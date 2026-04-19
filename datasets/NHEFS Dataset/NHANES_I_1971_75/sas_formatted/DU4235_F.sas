/*
 *  Survey:           NHANES I
 *  Years:            1971-1975
 *  Questionnaire:    Dental
 *  Tape Number:      4235
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

VALUE OH0010F
     1='3,000,000 or more'
     2='1,000,000 to 2,999,999'
     3='250,000 to 999,999'
     4='under 250,000'
     5='Urban place 25,000 or more outside urbanized area'
     6='Urban place 10,000 to 24,999 outside urbanized area'
     7='Urban place 2,500 to 9,999 outside urbanized area'
     8='Rural'
     ;

VALUE OH0011F
     1='In SMSA, in central city'
     2='In SMSA, not in central city'
     3='Not in SMSA'
     ;

VALUE OH0012F
     1='Housing Unit'
     2='Other unit'
     ;

VALUE OH0013F
     1='All other'
     2='Rural  7136'
     ;

VALUE OH0014F
     1='10 or more acres'
     2='Less than 10 acres'
     9='Not applicable'
     ;

VALUE OH0015F
     2='Yes'
     4='No'
     9='Not applicable'
     ;

VALUE OH0016F
     3='Yes'
     5='No'
     9='Not applicable'
     ;

VALUE OH0017F
     00='Blank, but applicable'
     ;

VALUE OH0019F
     1='Male'
     2='Female'
     ;

VALUE OH0020F
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

VALUE OH0022F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE OH0027F
     9='9 or more'
     ;

VALUE OH0028F
     1='Yes'
     2='No'
     ;

VALUE OH0029F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE OH0030F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE OH0031F
     1='Yes'
     2='No'
     ;

VALUE OH0032F
     1='Yes'
     2='No'
     ;

VALUE OH0033F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE OH0034F
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

VALUE OH0036F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE OH0037F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE OH0041F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE OH0042F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE OH0046F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE OH0047F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE OH0051F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE OH0052F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE OH0056F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE OH0057F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE OH0061F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE OH0062F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE OH0066F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE OH0067F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE OH0071F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE OH0072F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE OH0076F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE OH0077F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE OH0081F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE OH0082F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE OH0086F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE OH0087F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE OH0091F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE OH0100F
     1='Head (1 person living along or with non-relatives)'
     2='Head (2 or more related persons in family)'
     3='Wife'
     4='Child'
     5='Other relative'
     ;

VALUE OH0103F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE OH0104F
     1='Male'
     2='Female'
     ;

VALUE OH0105F
     1='Under 17'
     2='Married'
     3='Widowed'
     4='Never Married'
     5='Divorced'
     6='Separated'
     8='Blank, but applicable'
     ;

VALUE OH0112F
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

VALUE OH0114F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE OH0115F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE OH0116F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE OH0117F
     1='Nursery'
     2='Kindergarten'
     3='Other'
     4='Headstart'
     5='Daycare'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE OH0118F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE OH0119F
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

VALUE OH0120F
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

VALUE OH0122F
     1='Working'
     2='Keeping house'
     3='Something else'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE OH0123F
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

VALUE OH0124F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE OH0125F
     1='Full-time'
     2='Part-time'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE OH0126F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE OH0127F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE OH0128F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE OH0129F
     1='Looking'
     2='Lay-off'
     3='Both'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE OH0130F
     1='Private paid'
     2='Government-Federal'
     3='Government-Other'
     4='Own'
     5='Non-paid'
     6='Never worked'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE OH0131F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE OH0146F
     1='Farm'
     2='Nonfarm'
     ;

VALUE OH0147F
     998='Index computed 998 or greater'
     999='Unknown'
     ;

VALUE OH0150F
     1='Northeast'
     2='Midwest'
     3='South'
     4='West'
     ;

VALUE OH0151F
     1='Not applicable'
     2='No program available'
     3='Food stamps available'
     4='Commodities available'
     8='Blank, but applicable'
     ;

VALUE OH0152F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE OH0153F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE OH0154F
     1='No need'
     2='Not enough money at the time'
     3='No transportation'
     4='Pride'
     5='Other'
     8='Blank, but applicable'
     ;

VALUE OH0155F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE OH0156F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE OH0157F
     1='No need'
     2='No transportation'
     3='Pride'
     4='Other'
     8='Blank, but applicable'
     ;

VALUE OH0211F
     0='Dentulous'
     1='Edentulous, denture absent'
     2='Edentulous, denture present'
     3='Edentulous, denture defective'
     4='Edentulous, denture status unknown'
     6='No teeth erupted, ages 1-2'
     ;

VALUE OH0212F
     0='Dentulous'
     1='Edentulous, denture absent'
     2='Edentulous, denture present'
     3='Edentulous, denture defective'
     4='Edentulous, denture status unknown'
     6='No teeth erupted, ages 1-2'
     ;

VALUE OH0213F
     999='Data missing or none of teeth used for DI-S were present'
     ;

VALUE OH0216F
     999='Data missing or none of teeth used for CI-S were present'
     ;

VALUE OH0219F
     999='Data missing or none of teeth used for OHI-S were present'
     ;

VALUE OH0222F
     888='Inconsistent data'
     999='N/A Edentulous Arch, or all present teeth are nonfunctional'
     ;

VALUE OH0225F
     888='Inconsistent data'
     999='N/A Edentulous Arch, or all present teeth are nonfunctional carious'
     ;

VALUE OH0228F
     999='Both arches edentulous or all present teeth are non-functional carious'
     ;

VALUE OH0231F
     1='Zero Perio (no periodontal disease; PIU less than 0.05)'
     2='Gingivitis'
     3='Pockets'
     4='4+ pockets'
     5='Inconsistent data'
     6='Edentulous or all teeth present are nonfunctional carious'
     7='No teeth erupted, ages 1-2'
     ;

VALUE OH0232F
     1='Zero Perio (no periodontal disease; PIL less than 0.05)'
     2='Gingivitis'
     3='Pockets'
     4='4+ pockets'
     5='Inconsistent data'
     6='Edentulous or all teeth present are nonfunctional carious'
     7='No teeth erupted, ages 1-2'
     ;

VALUE OH0233F
     1='Zero Perio (no periodontal disease; PI less than 0.05)'
     2='Gingivitis'
     3='Pockets'
     4='4+ pockets'
     5='Inconsistent data'
     6='Both arches edentulous or all teeth present are nonfunctional carious'
     7='No teeth erupted, ages 1-2'
     ;

VALUE OH0364F
     0='No need'
     ;

VALUE OH0365F
     0='No need'
     1='Need indicated'
     ;

VALUE OH0366F
     0='No need'
     1='Need indicated'
     ;

VALUE OH0367F
     0='No need'
     1='Need indicated'
     ;

VALUE OH0368F
     0='No need'
     1='Need indicated'
     ;

VALUE OH0369F
     0='No need'
     ;

VALUE OH0378F
     0='No need'
     1='Need indicated'
     ;

VALUE OH0381F
     0='No need'
     1='Need indicated'
     ;

VALUE OH0384F
     0='No need'
     1='Need indicated'
     ;

VALUE OH0391F
     0='No need'
     1='Need indicated'
     ;

VALUE OH0392F
     0='Not applicable'
     1='Full denture'
     2='Partial denture'
     ;

VALUE OH0393F
     0='Not applicable'
     1='Full denture'
     2='Partial denture'
     ;

VALUE OH0394F
     0='Not applicable'
     1='Full denture'
     2='Partial denture'
     ;

VALUE OH0395F
     0='Not applicable'
     1='Full denture'
     2='Partial denture'
     ;

VALUE OH0396F
     0='No need'
     1='Need indicated'
     ;

VALUE OH0397F
     0='Not applicable'
     1='Full upper'
     2='Full lower'
     3='Full upper and full lower'
     ;

VALUE OH0398F
     0='No need'
     ;

VALUE OH0407F
     01='Mesial - severe'
     02='Mesial - moderate'
     03='Normal'
     04='Distal - moderate'
     05='Distal - severe'
     06='Mesial - severe'
     07='Mesial - moderate'
     08='Normal'
     09='Distal - severe'
     10='Distal - severe'
     99='Not applicable'
     ;

VALUE OH0409F
     01='Mesial - severe'
     02='Mesial - moderate'
     03='Normal'
     04='Distal - moderate'
     05='Distal - severe'
     06='Mesial - severe'
     07='Mesial - moderate'
     08='Normal'
     09='Distal - moderate'
     10='Distal - severe'
     99='Not applicable'
     ;

VALUE OH0411F
     9='Not applicable'
     ;

VALUE OH0412F
     9='Not applicable'
     ;

VALUE OH0413F
     9='Not applicable'
     ;

VALUE OH0414F
     9='Not applicable'
     ;

VALUE OH0415F
     1='Over 4 mm.'
     2='Greater than 2, but less than or equal to 4 mm.'
     3='0 to 2 mm.'
     4='Incisal 3rd'
     5='Middle 3rd'
     6='Gingival 3rd'
     7='Tissue'
     8='Impinging'
     9='Not applicable'
     ;

VALUE OH0416F
     99='Not applicable'
     ;

VALUE OH0418F
     99='Not applicable'
     ;

VALUE OH0420F
     99='Not applicable'
     ;

VALUE OH0422F
     99='Not applicable'
     ;

VALUE OH0424F
     0='Applicable'
     1='Not applicable'
     ;

VALUE OH0425F
     9='Not applicable or not given'
     ;

VALUE OH0426F
     9='Not applicable or not given'
     ;

VALUE OH0427F
     9='Not applicable or not given'
     ;

VALUE OH0428F
     9='Not applicable or not given'
     ;

VALUE OH0429F
     9='Not applicable or not given'
     ;

VALUE OH0430F
     9='Not applicable or not given'
     ;

VALUE OH0431F
     9='Not applicable or not given'
     ;

VALUE OH0432F
     9='Not applicable or not given'
     ;

VALUE OH0433F
     0='Absent'
     1='Present'
     ;

VALUE OH0434F
     0='Yes, no data received'
     1='Yes, tooth number unknown'
     2='No, teeth absent'
     3='No, equipment failure'
     4='No, other reason'
     5='No, reason unknown'
     6='Yes, tooth number 10'
     7='Yes, tooth number 7'
     8='Yes, tooth number 8'
     9='Yes, tooth number 9'
     ;

VALUE OH0444F
     0='No'
     1='Yes'
     8='Unknown'
     9='Not edentulous or under 5 years of age'
     ;

VALUE OH0445F
     0='No'
     1='Yes'
     8='Unknown'
     9='Not edentulous or under 5 years of age'
     ;

VALUE OH0446F
     0='No'
     1='Yes'
     9='Under 12 years of age'
     ;

VALUE OH0447F
     0='No'
     1='Yes'
     9='Under 12 years of age'
     ;

VALUE OH0448F
     0='No'
     1='Yes'
     9='Under 12 years of age'
     ;

VALUE OH0449F
     0='Absent'
     1='Present'
     8='Unknown (edentulous, dental status unknown in one or both arches)'
     ;

VALUE OH0450F
     0='No'
     1='Yes'
     9='Not applicable (fully edentulous)'
     ;

VALUE OH0451F
     0='No'
     1='Yes'
     9='Not applicable (fully edentulous)'
     ;

VALUE OH0452F
     0='No'
     1='Yes'
     9='Not applicable (fully edentulous)'
     ;

VALUE OH0453F
     0='No'
     1='Yes'
     9='Not applicable (fully edentulous)'
     ;
RUN;


DATA D_4235;
   INFILE 'c:\temp\DU4235.txt' LRECL = 2000 MISSOVER;
      LENGTH
         SEQN 8
         N1OH0006 8
         N1OH0010 4
         N1OH0011 4
         N1OH0012 4
         N1OH0013 4
         N1OH0014 4
         N1OH0015 4
         N1OH0016 4
         N1OH0017 4
         N1OH0019 4
         N1OH0020 4
         N1OH0022 4
         N1OH0023 4
         N1OH0025 4
         N1OH0027 4
         N1OH0028 4
         N1OH0029 4
         N1OH0030 4
         N1OH0031 4
         N1OH0032 4
         N1OH0033 4
         N1OH0034 4
         N1OH0036 4
         N1OH0037 8
         N1OH0041 4
         N1OH0042 8
         N1OH0046 4
         N1OH0047 8
         N1OH0051 4
         N1OH0052 8
         N1OH0056 4
         N1OH0057 8
         N1OH0061 4
         N1OH0062 8
         N1OH0066 4
         N1OH0067 8
         N1OH0071 4
         N1OH0072 8
         N1OH0076 4
         N1OH0077 8
         N1OH0081 4
         N1OH0082 8
         N1OH0086 4
         N1OH0087 8
         N1OH0091 8
         N1OH0095 8
         N1OH0100 4
         N1OH0101 4
         N1OH0103 4
         N1OH0104 4
         N1OH0105 4
         N1OH0106 8
         N1OH0110 4
         N1OH0112 4
         N1OH0114 4
         N1OH0115 4
         N1OH0116 4
         N1OH0117 4
         N1OH0118 4
         N1OH0119 4
         N1OH0120 4
         N1OH0122 4
         N1OH0123 4
         N1OH0124 4
         N1OH0125 4
         N1OH0126 4
         N1OH0127 4
         N1OH0128 4
         N1OH0129 4
         N1OH0130 4
         N1OH0131 4
         N1OH0132 4
         N1OH0135 4
         N1OH0138 8
         N1OH0144 4
         N1OH0146 4
         N1OH0147 4
         N1OH0150 4
         N1OH0151 4
         N1OH0152 4
         N1OH0153 4
         N1OH0154 4
         N1OH0155 4
         N1OH0156 4
         N1OH0157 4
         N1OH0158 8
         N1OH0164 8
         N1OH0170 8
         N1OH0176 8
         N1OH0182 $12
         N1OH0194 4
         N1OH0196 4
         N1OH0199 $2
         N1OH0201 8
         N1OH0205 $6
         N1OH0211 4
         N1OH0212 4
         N1OH0213 4
         N1OH0216 4
         N1OH0219 4
         N1OH0222 4
         N1OH0225 4
         N1OH0228 4
         N1OH0231 4
         N1OH0232 4
         N1OH0233 4
         N1OH0234 4
         N1OH0236 4
         N1OH0238 4
         N1OH0240 4
         N1OH0242 4
         N1OH0244 4
         N1OH0246 4
         N1OH0248 4
         N1OH0250 4
         N1OH0252 4
         N1OH0254 4
         N1OH0256 4
         N1OH0258 4
         N1OH0260 4
         N1OH0262 4
         N1OH0264 4
         N1OH0266 4
         N1OH0268 4
         N1OH0270 4
         N1OH0272 4
         N1OH0274 4
         N1OH0276 4
         N1OH0278 4
         N1OH0280 4
         N1OH0282 4
         N1OH0284 4
         N1OH0286 4
         N1OH0288 4
         N1OH0290 4
         N1OH0292 4
         N1OH0294 4
         N1OH0296 4
         N1OH0298 4
         N1OH0300 4
         N1OH0302 4
         N1OH0304 4
         N1OH0306 4
         N1OH0308 4
         N1OH0310 4
         N1OH0312 4
         N1OH0314 4
         N1OH0316 4
         N1OH0318 4
         N1OH0320 4
         N1OH0322 4
         N1OH0324 4
         N1OH0326 4
         N1OH0328 4
         N1OH0330 4
         N1OH0332 4
         N1OH0334 4
         N1OH0336 4
         N1OH0338 4
         N1OH0340 4
         N1OH0342 4
         N1OH0344 4
         N1OH0346 4
         N1OH0348 4
         N1OH0350 4
         N1OH0352 4
         N1OH0354 4
         N1OH0356 4
         N1OH0358 4
         N1OH0360 4
         N1OH0362 4
         N1OH0364 4
         N1OH0365 4
         N1OH0366 4
         N1OH0367 4
         N1OH0368 4
         N1OH0369 4
         N1OH0370 4
         N1OH0372 4
         N1OH0374 4
         N1OH0376 4
         N1OH0378 4
         N1OH0379 4
         N1OH0381 4
         N1OH0382 4
         N1OH0384 4
         N1OH0385 4
         N1OH0387 4
         N1OH0389 4
         N1OH0390 4
         N1OH0391 4
         N1OH0392 4
         N1OH0393 4
         N1OH0394 4
         N1OH0395 4
         N1OH0396 4
         N1OH0397 4
         N1OH0398 4
         N1OH0399 4
         N1OH0401 4
         N1OH0403 4
         N1OH0405 4
         N1OH0407 4
         N1OH0409 4
         N1OH0411 4
         N1OH0412 4
         N1OH0413 4
         N1OH0414 4
         N1OH0415 4
         N1OH0416 4
         N1OH0418 4
         N1OH0420 4
         N1OH0422 4
         N1OH0424 4
         N1OH0425 4
         N1OH0426 4
         N1OH0427 4
         N1OH0428 4
         N1OH0429 4
         N1OH0430 4
         N1OH0431 4
         N1OH0432 4
         N1OH0433 4
         N1OH0434 4
         N1OH0435 8
         N1OH0439 8
         N1OH0444 4
         N1OH0445 4
         N1OH0446 4
         N1OH0447 4
         N1OH0448 4
         N1OH0449 4
         N1OH0450 4
         N1OH0451 4
         N1OH0452 4
         N1OH0453 4
         N1OH0454 $47
      ;



FORMAT
     N1OH0010 OH0010F.
     N1OH0011 OH0011F.
     N1OH0012 OH0012F.
     N1OH0013 OH0013F.
     N1OH0014 OH0014F.
     N1OH0015 OH0015F.
     N1OH0016 OH0016F.
     N1OH0017 OH0017F.
     N1OH0019 OH0019F.
     N1OH0020 OH0020F.
     N1OH0022 OH0022F.
     N1OH0027 OH0027F.
     N1OH0028 OH0028F.
     N1OH0029 OH0029F.
     N1OH0030 OH0030F.
     N1OH0031 OH0031F.
     N1OH0032 OH0032F.
     N1OH0033 OH0033F.
     N1OH0034 OH0034F.
     N1OH0036 OH0036F.
     N1OH0037 OH0037F.
     N1OH0041 OH0041F.
     N1OH0042 OH0042F.
     N1OH0046 OH0046F.
     N1OH0047 OH0047F.
     N1OH0051 OH0051F.
     N1OH0052 OH0052F.
     N1OH0056 OH0056F.
     N1OH0057 OH0057F.
     N1OH0061 OH0061F.
     N1OH0062 OH0062F.
     N1OH0066 OH0066F.
     N1OH0067 OH0067F.
     N1OH0071 OH0071F.
     N1OH0072 OH0072F.
     N1OH0076 OH0076F.
     N1OH0077 OH0077F.
     N1OH0081 OH0081F.
     N1OH0082 OH0082F.
     N1OH0086 OH0086F.
     N1OH0087 OH0087F.
     N1OH0091 OH0091F.
     N1OH0100 OH0100F.
     N1OH0103 OH0103F.
     N1OH0104 OH0104F.
     N1OH0105 OH0105F.
     N1OH0112 OH0112F.
     N1OH0114 OH0114F.
     N1OH0115 OH0115F.
     N1OH0116 OH0116F.
     N1OH0117 OH0117F.
     N1OH0118 OH0118F.
     N1OH0119 OH0119F.
     N1OH0120 OH0120F.
     N1OH0122 OH0122F.
     N1OH0123 OH0123F.
     N1OH0124 OH0124F.
     N1OH0125 OH0125F.
     N1OH0126 OH0126F.
     N1OH0127 OH0127F.
     N1OH0128 OH0128F.
     N1OH0129 OH0129F.
     N1OH0130 OH0130F.
     N1OH0131 OH0131F.
     N1OH0146 OH0146F.
     N1OH0147 OH0147F.
     N1OH0150 OH0150F.
     N1OH0151 OH0151F.
     N1OH0152 OH0152F.
     N1OH0153 OH0153F.
     N1OH0154 OH0154F.
     N1OH0155 OH0155F.
     N1OH0156 OH0156F.
     N1OH0157 OH0157F.
     N1OH0211 OH0211F.
     N1OH0212 OH0212F.
     N1OH0213 OH0213F.
     N1OH0216 OH0216F.
     N1OH0219 OH0219F.
     N1OH0222 OH0222F.
     N1OH0225 OH0225F.
     N1OH0228 OH0228F.
     N1OH0231 OH0231F.
     N1OH0232 OH0232F.
     N1OH0233 OH0233F.
     N1OH0364 OH0364F.
     N1OH0365 OH0365F.
     N1OH0366 OH0366F.
     N1OH0367 OH0367F.
     N1OH0368 OH0368F.
     N1OH0369 OH0369F.
     N1OH0378 OH0378F.
     N1OH0381 OH0381F.
     N1OH0384 OH0384F.
     N1OH0391 OH0391F.
     N1OH0392 OH0392F.
     N1OH0393 OH0393F.
     N1OH0394 OH0394F.
     N1OH0395 OH0395F.
     N1OH0396 OH0396F.
     N1OH0397 OH0397F.
     N1OH0398 OH0398F.
     N1OH0407 OH0407F.
     N1OH0409 OH0409F.
     N1OH0411 OH0411F.
     N1OH0412 OH0412F.
     N1OH0413 OH0413F.
     N1OH0414 OH0414F.
     N1OH0415 OH0415F.
     N1OH0416 OH0416F.
     N1OH0418 OH0418F.
     N1OH0420 OH0420F.
     N1OH0422 OH0422F.
     N1OH0424 OH0424F.
     N1OH0425 OH0425F.
     N1OH0426 OH0426F.
     N1OH0427 OH0427F.
     N1OH0428 OH0428F.
     N1OH0429 OH0429F.
     N1OH0430 OH0430F.
     N1OH0431 OH0431F.
     N1OH0432 OH0432F.
     N1OH0433 OH0433F.
     N1OH0434 OH0434F.
     N1OH0444 OH0444F.
     N1OH0445 OH0445F.
     N1OH0446 OH0446F.
     N1OH0447 OH0447F.
     N1OH0448 OH0448F.
     N1OH0449 OH0449F.
     N1OH0450 OH0450F.
     N1OH0451 OH0451F.
     N1OH0452 OH0452F.
     N1OH0453 OH0453F.
     ;

	INPUT
         SEQN 1-5
         N1OH0006 6-9
         N1OH0010 10
         N1OH0011 11
         N1OH0012 12
         N1OH0013 13
         N1OH0014 14
         N1OH0015 15
         N1OH0016 16
         N1OH0017 17-18
         N1OH0019 19
         N1OH0020 20-21
         N1OH0022 22
         N1OH0023 23-24
         N1OH0025 25-26
         N1OH0027 27
         N1OH0028 28
         N1OH0029 29
         N1OH0030 30
         N1OH0031 31
         N1OH0032 32
         N1OH0033 33
         N1OH0034 34-35
         N1OH0036 36
         N1OH0037 37-40
         N1OH0041 41
         N1OH0042 42-45
         N1OH0046 46
         N1OH0047 47-50
         N1OH0051 51
         N1OH0052 52-55
         N1OH0056 56
         N1OH0057 57-60
         N1OH0061 61
         N1OH0062 62-65
         N1OH0066 66
         N1OH0067 67-70
         N1OH0071 71
         N1OH0072 72-75
         N1OH0076 76
         N1OH0077 77-80
         N1OH0081 81
         N1OH0082 82-85
         N1OH0086 86
         N1OH0087 87-90
         N1OH0091 91-94
         N1OH0095 95-99
         N1OH0100 100
         N1OH0101 101-102
         N1OH0103 103
         N1OH0104 104
         N1OH0105 105
         N1OH0106 106-109
         N1OH0110 110-111
         N1OH0112 112-113
         N1OH0114 114
         N1OH0115 115
         N1OH0116 116
         N1OH0117 117
         N1OH0118 118
         N1OH0119 119
         N1OH0120 120-121
         N1OH0122 122
         N1OH0123 123
         N1OH0124 124
         N1OH0125 125
         N1OH0126 126
         N1OH0127 127
         N1OH0128 128
         N1OH0129 129
         N1OH0130 130
         N1OH0131 131
         N1OH0132 132-134
         N1OH0135 135-137
         N1OH0138 138-143
         N1OH0144 144-145
         N1OH0146 146
         N1OH0147 147-149
         N1OH0150 150
         N1OH0151 151
         N1OH0152 152
         N1OH0153 153
         N1OH0154 154
         N1OH0155 155
         N1OH0156 156
         N1OH0157 157
         N1OH0158 158-163
         N1OH0164 164-169
         N1OH0170 170-175
         N1OH0176 176-181
         N1OH0182 182-193
         N1OH0194 194-195
         N1OH0196 196-198
         N1OH0199 199-200
         N1OH0201 201-204
         N1OH0205 205-210
         N1OH0211 211
         N1OH0212 212
         N1OH0213 213-215
         N1OH0216 216-218
         N1OH0219 219-221
         N1OH0222 222-224
         N1OH0225 225-227
         N1OH0228 228-230
         N1OH0231 231
         N1OH0232 232
         N1OH0233 233
         N1OH0234 234-235
         N1OH0236 236-237
         N1OH0238 238-239
         N1OH0240 240-241
         N1OH0242 242-243
         N1OH0244 244-245
         N1OH0246 246-247
         N1OH0248 248-249
         N1OH0250 250-251
         N1OH0252 252-253
         N1OH0254 254-255
         N1OH0256 256-257
         N1OH0258 258-259
         N1OH0260 260-261
         N1OH0262 262-263
         N1OH0264 264-265
         N1OH0266 266-267
         N1OH0268 268-269
         N1OH0270 270-271
         N1OH0272 272-273
         N1OH0274 274-275
         N1OH0276 276-277
         N1OH0278 278-279
         N1OH0280 280-281
         N1OH0282 282-283
         N1OH0284 284-285
         N1OH0286 286-287
         N1OH0288 288-289
         N1OH0290 290-291
         N1OH0292 292-293
         N1OH0294 294-295
         N1OH0296 296-297
         N1OH0298 298-299
         N1OH0300 300-301
         N1OH0302 302-303
         N1OH0304 304-305
         N1OH0306 306-307
         N1OH0308 308-309
         N1OH0310 310-311
         N1OH0312 312-313
         N1OH0314 314-315
         N1OH0316 316-317
         N1OH0318 318-319
         N1OH0320 320-321
         N1OH0322 322-323
         N1OH0324 324-325
         N1OH0326 326-327
         N1OH0328 328-329
         N1OH0330 330-331
         N1OH0332 332-333
         N1OH0334 334-335
         N1OH0336 336-337
         N1OH0338 338-339
         N1OH0340 340-341
         N1OH0342 342-343
         N1OH0344 344-345
         N1OH0346 346-347
         N1OH0348 348-349
         N1OH0350 350-351
         N1OH0352 352-353
         N1OH0354 354-355
         N1OH0356 356-357
         N1OH0358 358-359
         N1OH0360 360-361
         N1OH0362 362-363
         N1OH0364 364
         N1OH0365 365
         N1OH0366 366
         N1OH0367 367
         N1OH0368 368
         N1OH0369 369
         N1OH0370 370-371
         N1OH0372 372-373
         N1OH0374 374-375
         N1OH0376 376-377
         N1OH0378 378
         N1OH0379 379-380
         N1OH0381 381
         N1OH0382 382-383
         N1OH0384 384
         N1OH0385 385-386
         N1OH0387 387-388
         N1OH0389 389
         N1OH0390 390
         N1OH0391 391
         N1OH0392 392
         N1OH0393 393
         N1OH0394 394
         N1OH0395 395
         N1OH0396 396
         N1OH0397 397
         N1OH0398 398
         N1OH0399 399-400
         N1OH0401 401-402
         N1OH0403 403-404
         N1OH0405 405-406
         N1OH0407 407-408
         N1OH0409 409-410
         N1OH0411 411
         N1OH0412 412
         N1OH0413 413
         N1OH0414 414
         N1OH0415 415
         N1OH0416 416-417
         N1OH0418 418-419
         N1OH0420 420-421
         N1OH0422 422-423
         N1OH0424 424
         N1OH0425 425
         N1OH0426 426
         N1OH0427 427
         N1OH0428 428
         N1OH0429 429
         N1OH0430 430
         N1OH0431 431
         N1OH0432 432
         N1OH0433 433
         N1OH0434 434
         N1OH0435 435-438
         N1OH0439 439-443
         N1OH0444 444
         N1OH0445 445
         N1OH0446 446
         N1OH0447 447
         N1OH0448 448
         N1OH0449 449
         N1OH0450 450
         N1OH0451 451
         N1OH0452 452
         N1OH0453 453
         N1OH0454 454-500
      ;

      LABEL
         SEQN = "SAMPLE SEQUENCE NUMBER"
         N1OH0006 = "CATALOG NUMBER 4271"
         N1OH0010 = "SIZE OF PLACE"
         N1OH0011 = "SMSA-NOT SMSA"
         N1OH0012 = "TYPE OF LIVING QUARTERS"
         N1OH0013 = "LAND USAGE"
         N1OH0014 = "IF RURAL, ASKED HOW MANY ACRES OF LA ..."
         N1OH0015 = "IF 10 ACRES OF MORE, ASKED IF SALE O ..."
         N1OH0016 = "IF 10 ACRES OR LESS, ASKED IF SALE O ..."
         N1OH0017 = "AGE-HEAD OF HOUSEHOLD"
         N1OH0019 = "SEX-HEAD OF HOUSEHOLD"
         N1OH0020 = "HIGHEST GRADE ATTENDED-HEAD OF HOUSEHOLD"
         N1OH0022 = "RACE-HEAD OF HOUSEHOLD"
         N1OH0023 = "TOTAL NUMBER OF PERSONS IN HOUSEHOLD"
         N1OH0025 = "TOTAL SAMPLE PERSONS IN HOUSEHOLD"
         N1OH0027 = "NUMBER OF ROOMS IN HOUSE "
         N1OH0028 = "IS THERE PIPED WATER?"
         N1OH0029 = "IS THERE HOT AND COLD PIPED WATER?"
         N1OH0030 = "IF YES TO PIPED WATER-DOES HOUSE HAV ..."
         N1OH0031 = "DOES HOUSE HAVE A RANGE OR COOK STOVE?"
         N1OH0032 = "DOES HOUSE HAVE A REFRIGERATOR?"
         N1OH0033 = "ARE KITCHEN FACILITIES USED BY ANYON ..."
         N1OH0034 = "TOTAL FAMILY INCOME GROUP"
         N1OH0036 = "WAGES OR SALARIES?"
         N1OH0037 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER ..."
         N1OH0041 = "SOCIAL SECURITY OR  RAILROAD RETIREMENT?"
         N1OH0042 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1OH0046 = "WELFARE PAYMENTS OR OTHER PUBLIC ASS ..."
         N1OH0047 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1OH0051 = "UNEMPLOYMENT OR WORKMEN'S COMPENSATION?"
         N1OH0052 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1OH0056 = "GOVERNMENT EMPLOYEE PENSIONS OR PRIV ..."
         N1OH0057 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1OH0061 = "DIVIDENDS, INTEREST OR RENT?"
         N1OH0062 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1OH0066 = "NET INCOME FROM  OWN NON-FARM BUSINE ..."
         N1OH0067 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1OH0071 = "NET INCOME FROM A FARM?"
         N1OH0072 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1OH0076 = "VETERAN'S PAYMENTS"
         N1OH0077 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1OH0081 = "ALIMONY, CHILD SUPPORT OR CONTRIBUTI ..."
         N1OH0082 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1OH0086 = "ANY OTHER INCOME?"
         N1OH0087 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1OH0091 = "TOTAL AMOUNT(TOTAL OF POSITIONS 37-90)"
         N1OH0095 = "FAMILY UNIT CODE"
         N1OH0100 = "RELATIONSHIP TO HEAD OF HOUSEHOLD"
         N1OH0101 = "AGE AT INTERVIEW"
         N1OH0103 = "RACE OF EXAMINED PERSON"
         N1OH0104 = "SEX OF EXAMINED PERSON"
         N1OH0105 = "MARITAL STATUS"
         N1OH0106 = "DATE OF BIRTH (MONTH, YEAR)"
         N1OH0110 = "PLACE OF BIRTH"
         N1OH0112 = "HIGHEST GRADE OF REGULAR SCHOOL EVER ..."
         N1OH0114 = "DID HE FINISH THE GRADE?"
         N1OH0115 = "IS HE ATTENDING SCHOOL NOW?"
         N1OH0116 = "HAS HE EVER ATTENDED A SCHOOL OF ANY ..."
         N1OH0117 = "IF YES, WHAT KIND OF SCHOOL?"
         N1OH0118 = "IS ANY LANGUAGE OTHER THAN ENGLISH F ..."
         N1OH0119 = "IF YES, WHAT LANGUAGE"
         N1OH0120 = "WHAT IS YOUR MAIN ANCESTRY OR NATION ..."
         N1OH0122 = "WHAT WAS HE DOING MOST PAST THREE MO ..."
         N1OH0123 = "IF ' SOMETHING ELSE' FROM ABOVE, WHA ..."
         N1OH0124 = "IF 'KEEPING HOUSE' OR 'SOMETHING ELS ..."
         N1OH0125 = "IF 'WORKING' FROM ABOVE, DID HE WORK ..."
         N1OH0126 = "DID HE WORK AT ANY TIME LAST WEEK OR ..."
         N1OH0127 = "IF 'NO TO ABOVE, EVEN THOUGH HE DID  ..."
         N1OH0128 = "IF 'NO' IN POSITION 126, WAS HE LOOK ..."
         N1OH0129 = "IF YES TO ABOVE-WHICH?"
         N1OH0130 = "CLASS OF WORKER"
         N1OH0131 = "IF SELF-EMPLOYED IN 'OWN' BUSINESS A ..."
         N1OH0132 = "BUSINESS OR INDUSTRY CODE"
         N1OH0135 = "OCCUPATION CODE"
         N1OH0138 = "DATE OF EXAMINATION"
         N1OH0144 = "AGE AT EXAMINATION"
         N1OH0146 = "FARM"
         N1OH0147 = "POVERTY INDEX (X.XX)"
         N1OH0150 = "RELIGION"
         N1OH0151 = "FOOD PROGRAMS APPLICABILITY"
         N1OH0152 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1OH0153 = "ARE YOU BUYING STAMPS NOW?"
         N1OH0154 = "WHAT IS THE MAIN REASON YOU AREN'T P ..."
         N1OH0155 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1OH0156 = "ARE YOU RECEIVING COMMODITY FOODS  N ..."
         N1OH0157 = "WHY AREN'T YOU PARTICIPATING IN THE  ..."
         N1OH0158 = "DETAILED PERSONS-LOCATIONS 1-35"
         N1OH0164 = "ALL SAMPLE PERSONS, LOCATIONS 1-35"
         N1OH0170 = "DETAILED PERSONS-LOCATIONS 1-65"
         N1OH0176 = "ALL SAMPLE PERSONS, LOCATIONS 1-65"
         N1OH0182 = "DATA USER WORK AREA"
         N1OH0194 = "STRATA 1/"
         N1OH0196 = " PRIMARY SAMPLING UNITS1"
         N1OH0199 = "DATA USER WORK AREA"
         N1OH0201 = "CATALOG NUMBER 4235"
         N1OH0205 = "BLANK-DATA USER WORK AREA"
         N1OH0211 = "DENTURE STATUS-UPPER ARCH"
         N1OH0212 = "LOWER ARCH"
         N1OH0213 = "SIMPLIFIED DEBRIS INDEX (DI-S)"
         N1OH0216 = "SIMPLIFIED DEBRIS INDEX (CI-S)"
         N1OH0219 = "SIMPLIFIED ORAL HYGIENE INDEX (OHI-S)"
         N1OH0222 = "PERIODONTAL INDEX FOR UPPER ARCH (PIU)"
         N1OH0225 = "PERIODONTAL INDEX FOR LOVER ARCH (PIL)"
         N1OH0228 = "PERIODONTAL INDEX FOR  MOUTH (PI)"
         N1OH0231 = "PERIODONTAL CLASSIFICATION, UPPER ARCH"
         N1OH0232 = "PERIODONTAL CLASSIFICATION, LOWER ARCH"
         N1OH0233 = "PERIODONTAL CLASSIFICATION, MOUTH"
         N1OH0234 = "COUNTS: POSITION 234-363 TOTAL PERMA ..."
         N1OH0236 = "LOWER ARCH:00-16 AS GIVEN"
         N1OH0238 = "MOUTH: 00-32 AS GIVEN"
         N1OH0240 = "TOTAL NORMAL PERMANENT TEETH PRESENT ..."
         N1OH0242 = "LOWER ARCH: 00-16 AS GIVEN"
         N1OH0244 = "MOUTH:00-32 AS GIVEN "
         N1OH0246 = "TOTAL PERMANENT TEETH ERUPTED (PTE)  ..."
         N1OH0248 = "LOWER ARCH: 00-16 AS GIVEN"
         N1OH0250 = "MOUTH:00-32 AS GIVEN "
         N1OH0252 = "TOTAL NON-FUNCTIONAL CARIOUS PERMANE ..."
         N1OH0254 = "LOWER ARCH: 00-16 AS GIVEN"
         N1OH0256 = "MOUTH:00-27 AS GIVEN "
         N1OH0258 = "TOTAL DECAYED PERMANENT TEETH PRESEN ..."
         N1OH0260 = "LOWER ARCH: 00-11 AS GIVEN"
         N1OH0262 = "MOUTH:00-25 AS GIVEN "
         N1OH0264 = "TOTAL MISSING PERMANENT TEETH (BECAU ..."
         N1OH0266 = "LOWER ARCH: 00-16 AS GIVEN"
         N1OH0268 = "MOUTH ARCH: 00-32 AS GIVEN"
         N1OH0270 = "TOTAL TEETH MISSING FOR UNKNOWN REAS ..."
         N1OH0272 = "UPPER ARCH: 00-08 AS GIVEN"
         N1OH0274 = "LOWER ARCH: 00-08 AS GIVEN"
         N1OH0276 = "TOTAL TEETH EXTRACTED FOR REASON OTH ..."
         N1OH0278 = "TOTAL FILLED PERMANENT TEETH WITHOUT ..."
         N1OH0280 = "LOWER ARCH:00-15 AS GIVEN"
         N1OH0282 = "MOUTH: 00-28 AS GIVEN"
         N1OH0284 = "TOTAL FILLED DEFECTIVEPERMANENT TEET ..."
         N1OH0286 = "LOWER ARCH: 00-08 AS GIVEN"
         N1OH0288 = "MOUTH: 00-10 AS GIVEN"
         N1OH0290 = "SUM OF DECAYED (D), MISSING (M), AND ..."
         N1OH0292 = "LOWER ARCH:00-16 AS GIVEN"
         N1OH0294 = "MOUTH ARCH: 00-32 AS GIVEN"
         N1OH0296 = "TOTAL TEETH REPLACED ON SATISFACTORY ..."
         N1OH0298 = "LOWER ARCH: 00-07 AS GIVEN"
         N1OH0300 = "MOUTH ARCH: 00-10 AS GIVEN"
         N1OH0302 = "TOTAL TEETH REPLACED ON DEFECTIVE FI ..."
         N1OH0304 = "LOWER ARCH:00-07 AS GIVEN"
         N1OH0306 = "MOUTH: 00-09 AS GIVEN"
         N1OH0308 = "TOTAL TEETH REPLACED ON SATISFACTORY ..."
         N1OH0310 = "LOWER ARCH: 00-12 AS GIVEN"
         N1OH0312 = "MOUTH: 00-21 AS GIVEN"
         N1OH0314 = "TOTAL TEETH REPLACED ON DEFECTIVE  R ..."
         N1OH0316 = "LOWER ARCH: 00-14 AS GIVEN"
         N1OH0318 = "MOUTH: 00-28 AS GIVEN"
         N1OH0320 = "TOTAL PRIMARY TEETH PRESENT (PRI) UP ..."
         N1OH0322 = "LOWER ARCH: 00-10 AS GIVEN"
         N1OH0324 = "MOUTH: 00-20 AS GIVEN"
         N1OH0326 = "TOTAL NORMAL PRIMARY TEETH PRESENT ( ..."
         N1OH0328 = "LOWER ARCH: 00-10 AS GIVEN"
         N1OH0330 = "MOUTH: 00-20 AS GIVEN"
         N1OH0332 = "TOTAL DECAYED PRIMARY TEETH (d0 (INC ..."
         N1OH0334 = "LOWER ARCH: 00-10 AS GIVEN"
         N1OH0336 = "MOUTH: 00-20 AS GIVEN"
         N1OH0338 = "TOTAL NONFUNCTIONAL CARIOUS PRIMARY  ..."
         N1OH0340 = "LOWER ARCH: 00-08 AS GIVEN"
         N1OH0342 = "MOUTH: 00-16 AS GIVEN"
         N1OH0344 = "TOTAL UNERUPTED PRIMARY TEETH FOR AL ..."
         N1OH0346 = "TOTAL FILLED PRIMARY TEETH WITHOUT D ..."
         N1OH0348 = "LOWER ARCH: 00-07 AS GIVEN"
         N1OH0350 = "MOUTH: 00-04 AS GIVEN"
         N1OH0352 = "FILLED DEFECTIVE PRIMARY TEETH (fd)  ..."
         N1OH0354 = "LOWER ARCH: 00-03 AS GIVEN"
         N1OH0356 = "MOUTH: 00-20 AS GIVEN"
         N1OH0358 = "SUM OF DECAYED (d), NONFUNCTIONAL (e ..."
         N1OH0360 = "LOWER ARCH: 00-10 AS GIVEN"
         N1OH0362 = "MOUTH: 00-20 AS GIVEN"
         N1OH0364 = "TREATMENT NEEDS: POSITIONS 364-406 N ..."
         N1OH0365 = "REMOVAL OF DEBRIS AND CALCULUS"
         N1OH0366 = "GINGIVITIS TREATMENT"
         N1OH0367 = "PERIODONTAL DISEASE TREATMENT "
         N1OH0368 = "SEVERE MALOCCLUSION TREATMENT"
         N1OH0369 = "DECAYED PERMANENT TEETH: POSITIONS 3 ..."
         N1OH0370 = "NUMBER OF 1-SURFACE FILLINGS"
         N1OH0372 = "NUMBER OF 2-SURFACE FILLINGS"
         N1OH0374 = "NUMBER OF 3-(OR MORE)SURFACE FILLINGS"
         N1OH0376 = "NUMBER OF EXTRACTIONS INDICATED"
         N1OH0378 = "EXTRACTIONS, PERIODONTAL DISEASE: PO ..."
         N1OH0379 = "NUMBER OF TEETH TO BE EXTRACTED"
         N1OH0381 = "EXTRACTIONS, OTHER REASON: POSITIONS ..."
         N1OH0382 = "NUMBER OF TEETH TO EXTRACTED"
         N1OH0384 = "FIXED BRIDGES AND/OR PARTIAL REMOVAB ..."
         N1OH0385 = "NUMBER OF UPPER TEETH"
         N1OH0387 = "NUMBER OF LOWER TEETH"
         N1OH0389 = "NUMBER OF BRIDGES"
         N1OH0390 = "NUMBER OF PARTIALS"
         N1OH0391 = "REPAIR OR RELINE OF DENTURE OR BRIDG ..."
         N1OH0392 = "REPAIR UPPER"
         N1OH0393 = "REPAIR LOWER"
         N1OH0394 = "RELINE UPPER"
         N1OH0395 = "RELINE LOWER"
         N1OH0396 = "CONSTRUCTION FULL DENTURES: POSITION ..."
         N1OH0397 = "WHAT TO CONSTRUCT"
         N1OH0398 = "DECAYED PRIMARY TEETH: POSITIONS 398-406"
         N1OH0399 = "NUMBER OF 1-SURFACE FILLINGS"
         N1OH0401 = "NUMBER OF 2-SURFACE FILLINGS"
         N1OH0403 = "NUMBER OF 3- (OR MORE) SURFACE FILLINGS"
         N1OH0405 = "NUMBER OF EXTRACTIONS INDICATED"
         N1OH0407 = "OCCLUSION DATA-POSUTUIBS 407-433 BUC ..."
         N1OH0409 = "LEFT PERMANENT TEETH-PRIMARY TEETH"
         N1OH0411 = "POSTERIOR CROSSBITE RIGHT BUCCAL"
         N1OH0412 = "RIGHT LINGUAL"
         N1OH0413 = "LEFT BUCCAL"
         N1OH0414 = "LEFT LINGUAL"
         N1OH0415 = "INCISOR VERTICAL RELATIONSHIP OPENBI ..."
         N1OH0416 = "HLD (HANDICAPPING LABIO-LANGUAL DEVI ..."
         N1OH0418 = "MANDIBULAR PROTRUSION"
         N1OH0420 = "OVERBITE"
         N1OH0422 = "OPENBITE"
         N1OH0424 = "MALALIGNED TEETH NOT APPLICABLE"
         N1OH0425 = "UPPER ANTERIOR-MINOR"
         N1OH0426 = "UPPER ANTERIOR-MAJOR"
         N1OH0427 = "UPPER POSTERIOR-MINOR"
         N1OH0428 = "UPPER POSTERIOR-MAJOR"
         N1OH0429 = "LOWER ANTERIOR-MINOR"
         N1OH0430 = "LOWER ANTERIOR-MAJOR"
         N1OH0431 = "LOWER POSTERIOR-MINOR"
         N1OH0432 = "LOWER POSTERIOR-MAJOR"
         N1OH0433 = "ORTHODONTIC APPLIANCES"
         N1OH0434 = "ENAMEL BIOPSY: POSITIONS 434-443 WAS ..."
         N1OH0435 = "DEPTH IN MICRONS"
         N1OH0439 = "PARTS PER MILLION FLUORIDE"
         N1OH0444 = "OTHER DATA-POSITIONS 444-453-WHEN YO ..."
         N1OH0445 = "WHEN  YOU EAT, DO YOU USE A LOWER PLATE?"
         N1OH0446 = "DO YOU HAVE ANY TROUBLE CHEWING STEA ..."
         N1OH0447 = "DO YOU HAVE ANY TROUBLE BITING APPLE ..."
         N1OH0448 = "DO YOU HAVE ANY TROUBLE BITING OR CH ..."
         N1OH0449 = "FOUR OR MORE PAIRS OF POSING SERVICE ..."
         N1OH0450 = "BLEEDING GUMS"
         N1OH0451 = "DIFFUSE MARGINAL INFLAMMATION"
         N1OH0452 = "SWOLLEN RED PAPILLAE"
         N1OH0453 = "RECESSION"
         N1OH0454 = "BLANK-DATA USER WORK AREA"
      ;
RUN;
