/*
 *  Survey:           NHANES I
 *  Years:            1971-1975
 *  Questionnaire:    Medical History, 1 - 11 years
 *  Tape Number:      4067
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

VALUE CH0010F
     1='3,000,000 or more'
     2='1,000,000 to 2,999,999'
     3='250,000 to 999,999'
     4='under 250,000'
     5='Urban place 25,000 or more outside urbanized area'
     6='Urban place 10,000 to 24,999 outside urbanized area'
     7='Urban place 2,500 to 9,999 outside urbanized area'
     8='Rural'
     ;

VALUE CH0011F
     1='In SMSA, in central city'
     2='In SMSA, not in central city'
     3='Not in SMSA'
     ;

VALUE CH0012F
     1='Housing Unit'
     2='Other unit'
     ;

VALUE CH0013F
     1='All other'
     2='Rural  7136'
     ;

VALUE CH0014F
     1='10 or more acres'
     2='Less than 10 acres'
     9='Not applicable'
     ;

VALUE CH0015F
     2='Yes'
     4='No'
     9='Not applicable'
     ;

VALUE CH0016F
     3='Yes'
     5='No'
     9='Not applicable'
     ;

VALUE CH0017F
     00='Blank, but applicable'
     ;

VALUE CH0019F
     1='Male'
     2='Female'
     ;

VALUE CH0020F
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

VALUE CH0022F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE CH0027F
     9='9 or more'
     ;

VALUE CH0028F
     1='Yes'
     2='No'
     ;

VALUE CH0029F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE CH0030F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE CH0031F
     1='Yes'
     2='No'
     ;

VALUE CH0032F
     1='Yes'
     2='No'
     ;

VALUE CH0033F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE CH0034F
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

VALUE CH0036F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE CH0037F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE CH0041F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE CH0042F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE CH0046F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE CH0047F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE CH0051F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE CH0052F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE CH0056F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE CH0057F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE CH0061F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE CH0062F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE CH0066F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE CH0067F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE CH0071F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE CH0072F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE CH0076F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE CH0077F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE CH0081F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE CH0082F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE CH0086F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE CH0087F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE CH0091F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE CH0100F
     1='Head (1 person living along or with non-relatives)'
     2='Head (2 or more related persons in family)'
     3='Wife'
     4='Child'
     5='Other relative'
     ;

VALUE CH0103F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE CH0104F
     1='Male'
     2='Female'
     ;

VALUE CH0105F
     1='Under 17'
     2='Married'
     3='Widowed'
     4='Never Married'
     5='Divorced'
     6='Separated'
     8='Blank, but applicable'
     ;

VALUE CH0110F
     88='Blank, but applicable'
     ;

VALUE CH0112F
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

VALUE CH0114F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE CH0115F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE CH0116F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE CH0117F
     1='Nursery'
     2='Kindergarten'
     3='Other'
     4='Headstart'
     5='Daycare'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE CH0118F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0119F
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

VALUE CH0120F
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

VALUE CH0122F
     1='Working'
     2='Keeping house'
     3='Something else'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE CH0123F
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

VALUE CH0124F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE CH0125F
     1='Full-time'
     2='Part-time'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE CH0126F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE CH0127F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE CH0128F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE CH0129F
     1='Looking'
     2='Lay-off'
     3='Both'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE CH0130F
     1='Private paid'
     2='Government-Federal'
     3='Government-Other'
     4='Own'
     5='Non-paid'
     6='Never worked'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE CH0131F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE CH0146F
     1='Farm'
     2='Nonfarm'
     ;

VALUE CH0147F
     998='Index computed 998 or greater'
     999='Unknown'
     ;

VALUE CH0150F
     1='Northeast'
     2='Midwest'
     3='South'
     4='West'
     ;

VALUE CH0151F
     1='Not applicable'
     2='No program available'
     3='Food stamps available'
     4='Commodities available'
     8='Blank, but applicable'
     ;

VALUE CH0152F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0153F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE CH0154F
     1='No need'
     2='Not enough money at the time'
     3='No transportation'
     4='Pride'
     5='Other'
     8='Blank, but applicable'
     ;

VALUE CH0155F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0156F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE CH0157F
     1='No need'
     2='No transportation'
     3='Pride'
     4='Other'
     8='Blank, but applicable'
     ;

VALUE CH0228F
     99='Dont know'
     ;

VALUE CH0230F
     99='Dont know'
     ;

VALUE CH0232F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0233F
     99='Dont know'
     ;

VALUE CH0235F
     99='Dont know'
     ;

VALUE CH0237F
     99='Dont know'
     ;

VALUE CH0239F
     99='Dont know'
     ;

VALUE CH0241F
     99='Dont know'
     ;

VALUE CH0243F
     88='Not yet two'
     99='Dont know or Blank, but applicable'
     ;

VALUE CH0245F
     88='Blank, but applicable'
     99='Dont know'
     ;

VALUE CH0247F
     88='Doesnt sit up yet'
     99='Dont know or Blank, but applicable'
     ;

VALUE CH0249F
     88='Doesnt walk yet'
     99='Dont know & Blank, but applicable'
     ;

VALUE CH0251F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0252F
     88='Still breast fed'
     99='Dont know and Blank, but applicable'
     ;

VALUE CH0254F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0255F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0256F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0257F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0258F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0259F
     99='Dont know'
     ;

VALUE CH0261F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0262F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0263F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0264F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0265F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0266F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0267F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0268F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0269F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0270F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0271F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0272F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0273F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0274F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0275F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0276F
     1='Yes'
     2='No'
     ;

VALUE CH0277F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0278F
     1='Yes'
     2='No'
     ;

VALUE CH0279F
     1='Yes'
     2='No'
     ;

VALUE CH0280F
     1='Yes'
     2='No'
     ;

VALUE CH0281F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0283F
     1='Yes'
     2='No'
     ;

VALUE CH0285F
     1='Yes'
     2='No'
     ;

VALUE CH0286F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0287F
     1='Tiny white'
     2='Pencil size'
     3='Both'
     ;

VALUE CH0290F
     1='Yes'
     2='No'
     ;

VALUE CH0291F
     1='Yes'
     2='No'
     ;

VALUE CH0292F
     1='Yes'
     2='No'
     ;

VALUE CH0293F
     1='Yes'
     2='No'
     ;

VALUE CH0294F
     1='Yes'
     2='No'
     ;

VALUE CH0295F
     1='Yes'
     2='No'
     ;

VALUE CH0296F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0297F
     999='Dont know'
     ;

VALUE CH0300F
     9='Dont know'
     ;

VALUE CH0301F
     88='Blank, but applicable'
     99='Dont know'
     ;

VALUE CH0303F
     999='Dont know'
     ;

VALUE CH0306F
     9='Dont know'
     ;

VALUE CH0307F
     88='Blank, but applicable'
     99='Dont know'
     ;

VALUE CH0310F
     1='Iodized'
     2='Not iodized'
     3='No box'
     ;

VALUE CH0311F
     1='Mother'
     2='Other'
     ;

VALUE CH0312F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0314F
     88='Blank, but applicable'
     99='Greater than $1.00'
     ;

VALUE CH0316F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0317F
     9='Greater than 10 times a week'
     ;

VALUE CH0318F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0320F
     99='Greater than $1.00'
     ;

VALUE CH0328F
     9999='Dont know'
     ;

VALUE CH0332F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0333F
     99='Dont know'
     ;

VALUE CH0335F
     99='Dont know'
     ;

VALUE CH0337F
     99='Dont know'
     ;

VALUE CH0339F
     99='Dont know'
     ;

VALUE CH0341F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0342F
     99='Dont know'
     ;

VALUE CH0344F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0345F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0346F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0347F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0348F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0349F
     99='Dont know'
     ;

VALUE CH0351F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0352F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0353F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0354F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0355F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0356F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0357F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0358F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0359F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0360F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0361F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0362F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0363F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0364F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0365F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0366F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0367F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0368F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0369F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0370F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0371F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0372F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE CH0373F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0374F
     1='Yes'
     2='No'
     ;

VALUE CH0375F
     1='Yes'
     2='No'
     ;

VALUE CH0376F
     1='Yes'
     2='No'
     ;

VALUE CH0377F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0378F
     8='Blank, but applicable'
     ;

VALUE CH0379F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0380F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0381F
     1='Tiny white'
     2='Pencil size'
     3='Both'
     ;

VALUE CH0384F
     1='Yes'
     2='No'
     ;

VALUE CH0385F
     1='Yes'
     2='No'
     ;

VALUE CH0386F
     1='Yes'
     2='No'
     ;

VALUE CH0387F
     1='Yes'
     2='No'
     ;

VALUE CH0388F
     1='Yes'
     2='No'
     ;

VALUE CH0389F
     1='Yes'
     2='No'
     ;

VALUE CH0390F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0391F
     1='Yes'
     2='No'
     ;

VALUE CH0392F
     1='Yes'
     2='No'
     ;

VALUE CH0393F
     1='Yes'
     2='No'
     ;

VALUE CH0394F
     1='Yes'
     2='No'
     ;

VALUE CH0395F
     1='Yes'
     2='No'
     ;

VALUE CH0396F
     1='Yes'
     2='No'
     ;

VALUE CH0397F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0398F
     1='Yes'
     2='No'
     ;

VALUE CH0399F
     1='Yes'
     2='No'
     ;

VALUE CH0400F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0401F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0402F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0403F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0404F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0405F
     88='Blank, but applicable'
     ;

VALUE CH0407F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE CH0408F
     999='Dont know'
     ;

VALUE CH0411F
     9='Dont know'
     ;

VALUE CH0412F
     88='Blank, but applicable'
     99='Dont know'
     ;

VALUE CH0414F
     999='Dont know'
     ;

VALUE CH0417F
     9='Dont know'
     ;

VALUE CH0418F
     88='Blank, but applicable'
     99='Dont know'
     ;

VALUE CH0421F
     1='Iodized'
     2='Not iodized'
     3='No box'
     ;

VALUE CH0422F
     1='Mother'
     2='Other'
     8='Blank, but applicable'
     ;

VALUE CH0423F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0425F
     88='Blank, but applicable'
     ;

VALUE CH0427F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE CH0428F
     9='Greater than 10 times a week'
     ;

VALUE CH0429F
     1='Yes'
     2='No'
     9='Dont know'
     ;
RUN;


DATA D_4067;
   INFILE 'c:\temp\DU4067.txt' LRECL = 2000 MISSOVER;
      LENGTH
         SEQN 8
         N1CH0006 8
         N1CH0010 4
         N1CH0011 4
         N1CH0012 4
         N1CH0013 4
         N1CH0014 4
         N1CH0015 4
         N1CH0016 4
         N1CH0017 4
         N1CH0019 4
         N1CH0020 4
         N1CH0022 4
         N1CH0023 4
         N1CH0025 4
         N1CH0027 4
         N1CH0028 4
         N1CH0029 4
         N1CH0030 4
         N1CH0031 4
         N1CH0032 4
         N1CH0033 4
         N1CH0034 4
         N1CH0036 4
         N1CH0037 8
         N1CH0041 4
         N1CH0042 8
         N1CH0046 4
         N1CH0047 8
         N1CH0051 4
         N1CH0052 8
         N1CH0056 4
         N1CH0057 8
         N1CH0061 4
         N1CH0062 8
         N1CH0066 4
         N1CH0067 8
         N1CH0071 4
         N1CH0072 8
         N1CH0076 4
         N1CH0077 8
         N1CH0081 4
         N1CH0082 8
         N1CH0086 4
         N1CH0087 8
         N1CH0091 8
         N1CH0095 8
         N1CH0100 4
         N1CH0101 4
         N1CH0103 4
         N1CH0104 4
         N1CH0105 4
         N1CH0106 8
         N1CH0110 4
         N1CH0112 4
         N1CH0114 4
         N1CH0115 4
         N1CH0116 4
         N1CH0117 4
         N1CH0118 4
         N1CH0119 4
         N1CH0120 4
         N1CH0122 4
         N1CH0123 4
         N1CH0124 4
         N1CH0125 4
         N1CH0126 4
         N1CH0127 4
         N1CH0128 4
         N1CH0129 4
         N1CH0130 4
         N1CH0131 4
         N1CH0132 4
         N1CH0135 4
         N1CH0138 8
         N1CH0144 4
         N1CH0146 4
         N1CH0147 4
         N1CH0150 4
         N1CH0151 4
         N1CH0152 4
         N1CH0153 4
         N1CH0154 4
         N1CH0155 4
         N1CH0156 4
         N1CH0157 4
         N1CH0158 8
         N1CH0164 8
         N1CH0170 8
         N1CH0176 8
         N1CH0182 $12
         N1CH0194 4
         N1CH0196 4
         N1CH0199 $2
         N1CH0201 8
         N1CH0205 $23
         N1CH0228 4
         N1CH0230 4
         N1CH0232 4
         N1CH0233 4
         N1CH0235 4
         N1CH0237 4
         N1CH0239 4
         N1CH0241 4
         N1CH0243 4
         N1CH0245 4
         N1CH0247 4
         N1CH0249 4
         N1CH0251 4
         N1CH0252 4
         N1CH0254 4
         N1CH0255 4
         N1CH0256 4
         N1CH0257 4
         N1CH0258 4
         N1CH0259 4
         N1CH0261 4
         N1CH0262 4
         N1CH0263 4
         N1CH0264 4
         N1CH0265 4
         N1CH0266 4
         N1CH0267 4
         N1CH0268 4
         N1CH0269 4
         N1CH0270 4
         N1CH0271 4
         N1CH0272 4
         N1CH0273 4
         N1CH0274 4
         N1CH0275 4
         N1CH0276 4
         N1CH0277 4
         N1CH0278 4
         N1CH0279 4
         N1CH0280 4
         N1CH0281 4
         N1CH0282 4
         N1CH0283 4
         N1CH0284 4
         N1CH0285 4
         N1CH0286 4
         N1CH0287 4
         N1CH0288 4
         N1CH0290 4
         N1CH0291 4
         N1CH0292 4
         N1CH0293 4
         N1CH0294 4
         N1CH0295 4
         N1CH0296 4
         N1CH0297 4
         N1CH0300 4
         N1CH0301 $2
         N1CH0303 4
         N1CH0306 4
         N1CH0307 $2
         N1CH0309 4
         N1CH0310 4
         N1CH0311 4
         N1CH0312 4
         N1CH0313 4
         N1CH0314 4
         N1CH0316 4
         N1CH0317 4
         N1CH0318 4
         N1CH0319 4
         N1CH0320 4
         N1CH0322 $6
         N1CH0328 8
         N1CH0332 4
         N1CH0333 4
         N1CH0335 4
         N1CH0337 4
         N1CH0339 4
         N1CH0341 4
         N1CH0342 4
         N1CH0344 4
         N1CH0345 4
         N1CH0346 4
         N1CH0347 4
         N1CH0348 4
         N1CH0349 4
         N1CH0351 4
         N1CH0352 4
         N1CH0353 4
         N1CH0354 4
         N1CH0355 4
         N1CH0356 4
         N1CH0357 4
         N1CH0358 4
         N1CH0359 4
         N1CH0360 4
         N1CH0361 4
         N1CH0362 4
         N1CH0363 4
         N1CH0364 4
         N1CH0365 4
         N1CH0366 4
         N1CH0367 4
         N1CH0368 4
         N1CH0369 4
         N1CH0370 4
         N1CH0371 4
         N1CH0372 4
         N1CH0373 4
         N1CH0374 4
         N1CH0375 4
         N1CH0376 4
         N1CH0377 4
         N1CH0378 4
         N1CH0379 4
         N1CH0380 4
         N1CH0381 4
         N1CH0382 4
         N1CH0384 4
         N1CH0385 4
         N1CH0386 4
         N1CH0387 4
         N1CH0388 4
         N1CH0389 4
         N1CH0390 4
         N1CH0391 4
         N1CH0392 4
         N1CH0393 4
         N1CH0394 4
         N1CH0395 4
         N1CH0396 4
         N1CH0397 4
         N1CH0398 4
         N1CH0399 4
         N1CH0400 4
         N1CH0401 4
         N1CH0402 4
         N1CH0403 4
         N1CH0404 4
         N1CH0405 4
         N1CH0407 4
         N1CH0408 4
         N1CH0411 4
         N1CH0412 $2
         N1CH0414 4
         N1CH0417 4
         N1CH0418 $2
         N1CH0420 4
         N1CH0421 4
         N1CH0422 4
         N1CH0423 4
         N1CH0424 4
         N1CH0425 4
         N1CH0427 4
         N1CH0428 4
         N1CH0429 4
         N1CH0430 4
         N1CH0431 4
         N1CH0433 $18
      ;



FORMAT
     N1CH0010 CH0010F.
     N1CH0011 CH0011F.
     N1CH0012 CH0012F.
     N1CH0013 CH0013F.
     N1CH0014 CH0014F.
     N1CH0015 CH0015F.
     N1CH0016 CH0016F.
     N1CH0017 CH0017F.
     N1CH0019 CH0019F.
     N1CH0020 CH0020F.
     N1CH0022 CH0022F.
     N1CH0027 CH0027F.
     N1CH0028 CH0028F.
     N1CH0029 CH0029F.
     N1CH0030 CH0030F.
     N1CH0031 CH0031F.
     N1CH0032 CH0032F.
     N1CH0033 CH0033F.
     N1CH0034 CH0034F.
     N1CH0036 CH0036F.
     N1CH0037 CH0037F.
     N1CH0041 CH0041F.
     N1CH0042 CH0042F.
     N1CH0046 CH0046F.
     N1CH0047 CH0047F.
     N1CH0051 CH0051F.
     N1CH0052 CH0052F.
     N1CH0056 CH0056F.
     N1CH0057 CH0057F.
     N1CH0061 CH0061F.
     N1CH0062 CH0062F.
     N1CH0066 CH0066F.
     N1CH0067 CH0067F.
     N1CH0071 CH0071F.
     N1CH0072 CH0072F.
     N1CH0076 CH0076F.
     N1CH0077 CH0077F.
     N1CH0081 CH0081F.
     N1CH0082 CH0082F.
     N1CH0086 CH0086F.
     N1CH0087 CH0087F.
     N1CH0091 CH0091F.
     N1CH0100 CH0100F.
     N1CH0103 CH0103F.
     N1CH0104 CH0104F.
     N1CH0105 CH0105F.
     N1CH0110 CH0110F.
     N1CH0112 CH0112F.
     N1CH0114 CH0114F.
     N1CH0115 CH0115F.
     N1CH0116 CH0116F.
     N1CH0117 CH0117F.
     N1CH0118 CH0118F.
     N1CH0119 CH0119F.
     N1CH0120 CH0120F.
     N1CH0122 CH0122F.
     N1CH0123 CH0123F.
     N1CH0124 CH0124F.
     N1CH0125 CH0125F.
     N1CH0126 CH0126F.
     N1CH0127 CH0127F.
     N1CH0128 CH0128F.
     N1CH0129 CH0129F.
     N1CH0130 CH0130F.
     N1CH0131 CH0131F.
     N1CH0146 CH0146F.
     N1CH0147 CH0147F.
     N1CH0150 CH0150F.
     N1CH0151 CH0151F.
     N1CH0152 CH0152F.
     N1CH0153 CH0153F.
     N1CH0154 CH0154F.
     N1CH0155 CH0155F.
     N1CH0156 CH0156F.
     N1CH0157 CH0157F.
     N1CH0228 CH0228F.
     N1CH0230 CH0230F.
     N1CH0232 CH0232F.
     N1CH0233 CH0233F.
     N1CH0235 CH0235F.
     N1CH0237 CH0237F.
     N1CH0239 CH0239F.
     N1CH0241 CH0241F.
     N1CH0243 CH0243F.
     N1CH0245 CH0245F.
     N1CH0247 CH0247F.
     N1CH0249 CH0249F.
     N1CH0251 CH0251F.
     N1CH0252 CH0252F.
     N1CH0254 CH0254F.
     N1CH0255 CH0255F.
     N1CH0256 CH0256F.
     N1CH0257 CH0257F.
     N1CH0258 CH0258F.
     N1CH0259 CH0259F.
     N1CH0261 CH0261F.
     N1CH0262 CH0262F.
     N1CH0263 CH0263F.
     N1CH0264 CH0264F.
     N1CH0265 CH0265F.
     N1CH0266 CH0266F.
     N1CH0267 CH0267F.
     N1CH0268 CH0268F.
     N1CH0269 CH0269F.
     N1CH0270 CH0270F.
     N1CH0271 CH0271F.
     N1CH0272 CH0272F.
     N1CH0273 CH0273F.
     N1CH0274 CH0274F.
     N1CH0275 CH0275F.
     N1CH0276 CH0276F.
     N1CH0277 CH0277F.
     N1CH0278 CH0278F.
     N1CH0279 CH0279F.
     N1CH0280 CH0280F.
     N1CH0281 CH0281F.
     N1CH0283 CH0283F.
     N1CH0285 CH0285F.
     N1CH0286 CH0286F.
     N1CH0287 CH0287F.
     N1CH0290 CH0290F.
     N1CH0291 CH0291F.
     N1CH0292 CH0292F.
     N1CH0293 CH0293F.
     N1CH0294 CH0294F.
     N1CH0295 CH0295F.
     N1CH0296 CH0296F.
     N1CH0297 CH0297F.
     N1CH0300 CH0300F.
     N1CH0303 CH0303F.
     N1CH0306 CH0306F.
     N1CH0310 CH0310F.
     N1CH0311 CH0311F.
     N1CH0312 CH0312F.
     N1CH0314 CH0314F.
     N1CH0316 CH0316F.
     N1CH0317 CH0317F.
     N1CH0318 CH0318F.
     N1CH0320 CH0320F.
     N1CH0328 CH0328F.
     N1CH0332 CH0332F.
     N1CH0333 CH0333F.
     N1CH0335 CH0335F.
     N1CH0337 CH0337F.
     N1CH0339 CH0339F.
     N1CH0341 CH0341F.
     N1CH0342 CH0342F.
     N1CH0344 CH0344F.
     N1CH0345 CH0345F.
     N1CH0346 CH0346F.
     N1CH0347 CH0347F.
     N1CH0348 CH0348F.
     N1CH0349 CH0349F.
     N1CH0351 CH0351F.
     N1CH0352 CH0352F.
     N1CH0353 CH0353F.
     N1CH0354 CH0354F.
     N1CH0355 CH0355F.
     N1CH0356 CH0356F.
     N1CH0357 CH0357F.
     N1CH0358 CH0358F.
     N1CH0359 CH0359F.
     N1CH0360 CH0360F.
     N1CH0361 CH0361F.
     N1CH0362 CH0362F.
     N1CH0363 CH0363F.
     N1CH0364 CH0364F.
     N1CH0365 CH0365F.
     N1CH0366 CH0366F.
     N1CH0367 CH0367F.
     N1CH0368 CH0368F.
     N1CH0369 CH0369F.
     N1CH0370 CH0370F.
     N1CH0371 CH0371F.
     N1CH0372 CH0372F.
     N1CH0373 CH0373F.
     N1CH0374 CH0374F.
     N1CH0375 CH0375F.
     N1CH0376 CH0376F.
     N1CH0377 CH0377F.
     N1CH0378 CH0378F.
     N1CH0379 CH0379F.
     N1CH0380 CH0380F.
     N1CH0381 CH0381F.
     N1CH0384 CH0384F.
     N1CH0385 CH0385F.
     N1CH0386 CH0386F.
     N1CH0387 CH0387F.
     N1CH0388 CH0388F.
     N1CH0389 CH0389F.
     N1CH0390 CH0390F.
     N1CH0391 CH0391F.
     N1CH0392 CH0392F.
     N1CH0393 CH0393F.
     N1CH0394 CH0394F.
     N1CH0395 CH0395F.
     N1CH0396 CH0396F.
     N1CH0397 CH0397F.
     N1CH0398 CH0398F.
     N1CH0399 CH0399F.
     N1CH0400 CH0400F.
     N1CH0401 CH0401F.
     N1CH0402 CH0402F.
     N1CH0403 CH0403F.
     N1CH0404 CH0404F.
     N1CH0405 CH0405F.
     N1CH0407 CH0407F.
     N1CH0408 CH0408F.
     N1CH0411 CH0411F.
     N1CH0414 CH0414F.
     N1CH0417 CH0417F.
     N1CH0421 CH0421F.
     N1CH0422 CH0422F.
     N1CH0423 CH0423F.
     N1CH0425 CH0425F.
     N1CH0427 CH0427F.
     N1CH0428 CH0428F.
     N1CH0429 CH0429F.
     ;

	INPUT
         SEQN 1-5
         N1CH0006 6-9
         N1CH0010 10
         N1CH0011 11
         N1CH0012 12
         N1CH0013 13
         N1CH0014 14
         N1CH0015 15
         N1CH0016 16
         N1CH0017 17-18
         N1CH0019 19
         N1CH0020 20-21
         N1CH0022 22
         N1CH0023 23-24
         N1CH0025 25-26
         N1CH0027 27
         N1CH0028 28
         N1CH0029 29
         N1CH0030 30
         N1CH0031 31
         N1CH0032 32
         N1CH0033 33
         N1CH0034 34-35
         N1CH0036 36
         N1CH0037 37-40
         N1CH0041 41
         N1CH0042 42-45
         N1CH0046 46
         N1CH0047 47-50
         N1CH0051 51
         N1CH0052 52-55
         N1CH0056 56
         N1CH0057 57-60
         N1CH0061 61
         N1CH0062 62-65
         N1CH0066 66
         N1CH0067 67-70
         N1CH0071 71
         N1CH0072 72-75
         N1CH0076 76
         N1CH0077 77-80
         N1CH0081 81
         N1CH0082 82-85
         N1CH0086 86
         N1CH0087 87-90
         N1CH0091 91-94
         N1CH0095 95-99
         N1CH0100 100
         N1CH0101 101-102
         N1CH0103 103
         N1CH0104 104
         N1CH0105 105
         N1CH0106 106-109
         N1CH0110 110-111
         N1CH0112 112-113
         N1CH0114 114
         N1CH0115 115
         N1CH0116 116
         N1CH0117 117
         N1CH0118 118
         N1CH0119 119
         N1CH0120 120-121
         N1CH0122 122
         N1CH0123 123
         N1CH0124 124
         N1CH0125 125
         N1CH0126 126
         N1CH0127 127
         N1CH0128 128
         N1CH0129 129
         N1CH0130 130
         N1CH0131 131
         N1CH0132 132-134
         N1CH0135 135-137
         N1CH0138 138-143
         N1CH0144 144-145
         N1CH0146 146
         N1CH0147 147-149
         N1CH0150 150
         N1CH0151 151
         N1CH0152 152
         N1CH0153 153
         N1CH0154 154
         N1CH0155 155
         N1CH0156 156
         N1CH0157 157
         N1CH0158 158-163
         N1CH0164 164-169
         N1CH0170 170-175
         N1CH0176 176-181
         N1CH0182 182-193
         N1CH0194 194-195
         N1CH0196 196-198
         N1CH0199 199-200
         N1CH0201 201-204
         N1CH0205 205-227
         N1CH0228 228-229
         N1CH0230 230-231
         N1CH0232 232
         N1CH0233 233-234
         N1CH0235 235-236
         N1CH0237 237-238
         N1CH0239 239-240
         N1CH0241 241-242
         N1CH0243 243-244
         N1CH0245 245-246
         N1CH0247 247-248
		 N1CH0249 249-250
         N1CH0251 251
         N1CH0252 252-253
         N1CH0254 254
         N1CH0255 255
         N1CH0256 256
         N1CH0257 257
         N1CH0258 258
         N1CH0259 259-260
         N1CH0261 261
         N1CH0262 262
         N1CH0263 263
         N1CH0264 264
         N1CH0265 265
         N1CH0266 266
         N1CH0267 267
         N1CH0268 268
         N1CH0269 269
         N1CH0270 270
         N1CH0271 271
         N1CH0272 272
         N1CH0273 273
         N1CH0274 274
         N1CH0275 275
         N1CH0276 276
         N1CH0277 277
         N1CH0278 278
         N1CH0279 279
         N1CH0280 280
         N1CH0281 281
         N1CH0282 282
         N1CH0283 283
         N1CH0284 284
         N1CH0285 285
         N1CH0286 286
         N1CH0287 287
         N1CH0288 288-289
         N1CH0290 290
         N1CH0291 291
         N1CH0292 292
         N1CH0293 293
         N1CH0294 294
         N1CH0295 295
         N1CH0296 296
         N1CH0297 297-299
         N1CH0300 300
         N1CH0301 301-302
         N1CH0303 303-305
         N1CH0306 306
         N1CH0307 307-308
         N1CH0309 309
         N1CH0310 310
         N1CH0311 311
         N1CH0312 312
         N1CH0313 313
         N1CH0314 314-315
         N1CH0316 316
         N1CH0317 317
         N1CH0318 318
         N1CH0319 319
         N1CH0320 320-321
         N1CH0322 322-327
         N1CH0328 328-331
         N1CH0332 332
         N1CH0333 333-334
         N1CH0335 335-336
         N1CH0337 337-338
         N1CH0339 339-340
         N1CH0341 341
         N1CH0342 342-343
         N1CH0344 344
         N1CH0345 345
         N1CH0346 346
         N1CH0347 347
         N1CH0348 348
         N1CH0349 349-350
         N1CH0351 351
         N1CH0352 352
         N1CH0353 353
         N1CH0354 354
         N1CH0355 355
         N1CH0356 356
         N1CH0357 357
         N1CH0358 358
         N1CH0359 359
         N1CH0360 360
         N1CH0361 361
         N1CH0362 362
         N1CH0363 363
         N1CH0364 364
         N1CH0365 365
         N1CH0366 366
         N1CH0367 367
         N1CH0368 368
         N1CH0369 369
         N1CH0370 370
         N1CH0371 371
         N1CH0372 372
         N1CH0373 373
         N1CH0374 374
         N1CH0375 375
         N1CH0376 376
         N1CH0377 377
         N1CH0378 378
         N1CH0379 379
         N1CH0380 380
         N1CH0381 381
         N1CH0382 382-383
         N1CH0384 384
         N1CH0385 385
         N1CH0386 386
         N1CH0387 387
         N1CH0388 388
         N1CH0389 389
         N1CH0390 390
         N1CH0391 391
         N1CH0392 392
         N1CH0393 393
         N1CH0394 394
         N1CH0395 395
         N1CH0396 396
         N1CH0397 397
         N1CH0398 398
         N1CH0399 399
         N1CH0400 400
         N1CH0401 401
         N1CH0402 402
         N1CH0403 403
         N1CH0404 404
         N1CH0405 405-406
         N1CH0407 407
         N1CH0408 408-410
         N1CH0411 411
         N1CH0412 412-413
         N1CH0414 414-416
         N1CH0417 417
         N1CH0418 418-419
         N1CH0420 420
         N1CH0421 421
         N1CH0422 422
         N1CH0423 423
         N1CH0424 424
         N1CH0425 425-426
         N1CH0427 427
         N1CH0428 428
         N1CH0429 429
         N1CH0430 430
         N1CH0431 431-432
         N1CH0433 433-450
      ;

      LABEL
         SEQN = "SAMPLE SEQUENCE NUMBER"
         N1CH0006 = "CATALOG NUMBER 4271"
         N1CH0010 = "SIZE OF PLACE"
         N1CH0011 = "SMSA-NOT SMSA"
         N1CH0012 = "TYPE OF LIVING QUARTERS"
         N1CH0013 = "LAND USAGE"
         N1CH0014 = "IF RURAL, ASKED HOW MANY ACRES OF LA ..."
         N1CH0015 = "IF 10 ACRES OR MORE ASKED IF BILE OF ..."
         N1CH0016 = "IF 10 ACRES OR MORE ASKED IF BILE OF ..."
         N1CH0017 = "AGE-HEAD OF HOUSEHOLD"
         N1CH0019 = "SEX-HEAD OF HOUSEHOLD"
         N1CH0020 = "HIGHEST GRADE-ATTENDED-HEAD OF HOUSEHOLD"
         N1CH0022 = "RACE-HEAD OF HOUSEHOLD"
         N1CH0023 = "TOTAL NUMBER OF PERSONS IN HOUSEHOLD"
         N1CH0025 = "TOTAL SAMPLE PERSONS IN HOUSEHOLD"
         N1CH0027 = "TOTAL NUMBER OF ROOMS IN HOUSE"
         N1CH0028 = "IS THERE PIPED WATER?"
         N1CH0029 = "IF YES, IS THERE HOT AND COLD PIPED  ..."
         N1CH0030 = "IF YES TO PIPED WATER-DOES HOUSE HAV ..."
         N1CH0031 = "DOES HOUSE HAVE RANGE OR COOK STOVE?"
         N1CH0032 = "DOES HOUSE HAVE A REFRIGERATOR"
         N1CH0033 = "ARE KITCHEN FACILITIES USED BY ANYON ..."
         N1CH0034 = "TOTAL FAMILY INCOME GROUP"
         N1CH0036 = "WAGES OR SALARIES?"
         N1CH0037 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER ..."
         N1CH0041 = "SOCIAL SECURITY OR RAILROAD RETIREMENT?"
         N1CH0042 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1CH0046 = "WELFARE PAYMENTS OR OTHER PUBLIC ASS ..."
         N1CH0047 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1CH0051 = "UNEMPLOYMENT OR WORKMEN'S COMPENSATIONS?"
         N1CH0052 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1CH0056 = "GOVERNMENT EMPLOYEE PENSIONS OR PRIV ..."
         N1CH0057 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1CH0061 = "DIVIDENDS, INTEREST OR RENT?"
         N1CH0062 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1CH0066 = "NET INCOME FROM OWN NON-FARM BUSINES ..."
         N1CH0067 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1CH0071 = "NET INCOME FROM A FARM?"
         N1CH0072 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1CH0076 = "VETERAN'S PAYMENTS"
         N1CH0077 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1CH0081 = "ALIMONY, CHILD SUPPORT OR CONTRIBUTI ..."
         N1CH0082 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1CH0086 = "ANY OTHER INCOME?"
         N1CH0087 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1CH0091 = "TOTAL AMOUNT (TOTAL OF POSITIONS (37-90)"
         N1CH0095 = "FAMILY UNIT CODE"
         N1CH0100 = "RELATIONSHIP TO HEAD OF HOUSE HOLD"
         N1CH0101 = "AGE AT INTERVIEW"
         N1CH0103 = "RACE OF EXAMINED PERSON"
         N1CH0104 = "SEX OF EXAMINED PERSON"
         N1CH0105 = "MARITAL STATUS"
         N1CH0106 = "DATE OF BIRTH (MONTH,YEAR)"
         N1CH0110 = "PLACE OF BIRTH (MONTH,YEAR)"
         N1CH0112 = "HIGHEST GRADE OF REGULAR SCHOOL EVER ..."
         N1CH0114 = "DID HE FINISH THE GRADE?"
         N1CH0115 = "IS HE ATTENDING SCHOOL NOW?"
         N1CH0116 = "HAS HE EVER ATTENDED A SCHOOL OF ANY ..."
         N1CH0117 = "IF YES, WHAT KIND OF SCHOOL?"
         N1CH0118 = "IS ANY LANGUAGE OTHER THAN ENGLISH F ..."
         N1CH0119 = "IF YES, WHAT LANGUAGE?"
         N1CH0120 = "WHAT IS YOUR MAIN ANCESTRY OR NATION ..."
         N1CH0122 = "WHAT WAS HE DOING MOST OF PAST THREE ..."
         N1CH0123 = "IF 'SOMETHING ELSE' FROM ABOVE, WHAT ..."
         N1CH0124 = "IF 'KEEPING HOUSE' OR 'SOMETHING ELS ..."
         N1CH0125 = "IF 'WORKING' FROM ABOVE, DID HE WORK ..."
         N1CH0126 = "DID HE WORK AT ANY TIME LAST WEEK OR ..."
         N1CH0127 = "IF 'NO' TO ABOVE, EVEN THOUGH HE DID ..."
         N1CH0128 = "IF 'NO' IN POSITION 126, WAS LOOKING ..."
         N1CH0129 = "IF YES TO ABOVE-WHICH?"
         N1CH0130 = "CLASS OF WORKER"
         N1CH0131 = "IF SELF-EMPLOYED IN 'OWN' BUSINESS A ..."
         N1CH0132 = "BUSINESS OR INDUSTRY CODE"
         N1CH0135 = "OCCUPATION CODE"
         N1CH0138 = "DATE OF EXAMINATION"
         N1CH0144 = "AGE OF EXAMINATION"
         N1CH0146 = "FARM"
         N1CH0147 = "POVERTY INDEX (XX.X)"
         N1CH0150 = "REGION"
         N1CH0151 = "FOOD PROGRAMS APPLICABILITY"
         N1CH0152 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1CH0153 = "ARE YOU BUYING FOOD STAMPS NOW?"
         N1CH0154 = "WHAT IS THE MAIN REASON YOU AREN'T P ..."
         N1CH0155 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1CH0156 = "ARE YOU RECEIVING COMMODITY FOODS NO ..."
         N1CH0157 = "WHY AREN'T YOU PARTICIPATING IN THE  ..."
         N1CH0158 = "WORK AREA"
         N1CH0164 = "ALL SAMPLE PERSONS-LOCATIONS 01-35"
         N1CH0170 = "WORK AREA"
         N1CH0176 = "ALL SAMPLE PERSONS-LOCATIONS 01-65"
         N1CH0182 = "WORK AREA"
         N1CH0194 = "STRATA 1/"
         N1CH0196 = "PRIMARY SAMPLING UNITS1/"
         N1CH0199 = "DATA USER WORK AREA"
         N1CH0201 = "CATALOG NUMBER 4067"
         N1CH0205 = "DATA USER WORK AREA"
         N1CH0228 = "POUNDS"
         N1CH0230 = "OUNCES"
         N1CH0232 = "WAS HE BORN PREMATURELY?"
         N1CH0233 = "HOW OLD WAS HIS MOTHER WHEN HE WAS BORN?"
         N1CH0235 = "HOW MANY CHILDREN HAS HIS MOTHER HAD?"
         N1CH0237 = "HOW MANY WERE BORN BEFORE HIM?"
         N1CH0239 = "HOW MANY OF HIS BROTHERS/SISTERS WEI ..."
         N1CH0241 = "HOW MUCH DID HE WEIGH WHEN HE WAS ON ..."
         N1CH0243 = "HOW MUCH DID HE WEIGH WHEN HE WAS TW ..."
         N1CH0245 = "HOW OLD WAS HE WHEN HE GOT HIS FIRST ..."
         N1CH0247 = "HOW OLD WAS HE WHEN HE FIRST SAT UP  ..."
         N1CH0249 = "HOW OLD WAS HE WHEN HE WALKED BY HI  ..."
         N1CH0251 = "WAS HE BREAST FED AT ANYTIME?"
         N1CH0252 = "HOW OLD WAS HE WHEN HE STOPPED BREAS ..."
         N1CH0254 = "AS A BABY, WAS HE AT ANY TIME FED MI ..."
         N1CH0255 = "WHAT TYPE OF MILK WAS USED? WHOLE CO ..."
         N1CH0256 = "COMMERCIALLY PREPARED MILK"
         N1CH0257 = "A SOY BASE FORMULA"
         N1CH0258 = "OTHER"
         N1CH0259 = "HOW OLD WAS HE WHEN HE FIRST STARTED ..."
         N1CH0261 = "HE HAD THE FOLLOWING IMMUNIZATIONS? DPT"
         N1CH0262 = "POLIO"
         N1CH0263 = "SMALLPOX"
         N1CH0264 = "MEASLES"
         N1CH0265 = "GERMAN MEASLES"
         N1CH0266 = "MUMPS"
         N1CH0267 = "OTHER, DON'T KNOW WHAT FOR"
         N1CH0268 = "DOES OR DID HE HAVE ANY OF THE FOLLO ..."
         N1CH0269 = "EYES"
         N1CH0270 = "MOUTH OR THROAT"
         N1CH0271 = "STOMACH OR INTESTINES"
         N1CH0272 = "KIDNEYS OR URINARY SYSTEM"
         N1CH0273 = "MUSCLES, BONES OR JOINTS"
         N1CH0274 = "BRAIN OR NERVOUS SYSTEM"
         N1CH0275 = "HAS HE EVER ACCIDENTALLY SWALLOWED A ..."
         N1CH0276 = "DID THIS RESULT IN ANY SERIOUS DAMAGE?"
         N1CH0277 = "HAS HE EVER HAD A BAD ACCIDENT?"
         N1CH0278 = "DOES HE STILL HAVE THE EFFECTS OF IT?"
         N1CH0279 = "HAS HE EVER STAYED IN A HOSPITAL OVE ..."
         N1CH0280 = "HAS HE EVER HAD AN OPERATION?"
         N1CH0281 = "DOES HE HAVE ANY ALLERGIES?"
         N1CH0282 = "HOW MANY TIMES HAS HE HAD PNEUMONIA?"
         N1CH0283 = "DOES HE HAVE IT NOW?"
         N1CH0284 = "DURING THE PAST SIX MONTHS HOW MANY  ..."
         N1CH0285 = "DOES HE HAVE ONE NOW?"
         N1CH0286 = "DURING THE PAST SIX MONTHS HAS HE PA ..."
         N1CH0287 = "WHAT TYPE--TINY WHITE OR PENCIL SIZE?"
         N1CH0288 = "DURING THE PAST SIX MONTHS HOW MANY  ..."
         N1CH0290 = "DOES HE HAVE IT NOW?"
         N1CH0291 = "DOES HE EVER EAT DIRT OR CLAY, STARC ..."
         N1CH0292 = "DIRT OR CLAY"
         N1CH0293 = "STARCH"
         N1CH0294 = "PAINT OR PLASTER"
         N1CH0295 = "OTHER "
         N1CH0296 = "DOES HE HAVE A UNUSUAL TROUBLE SEEIN ..."
         N1CH0297 = "HOW MUCH DOES HIS MOTHER WEIGH?"
         N1CH0300 = "HOW TALL IS SHE?"
         N1CH0301 = "BLANK"
         N1CH0303 = "HOW MUCH DOES HIS FATHER WEIGH?"
         N1CH0306 = "HOW TALL IS HE?"
         N1CH0307 = "BLANK"
         N1CH0309 = "WORK AREA"
         N1CH0310 = "MAY I SEE YOUR BOX OF TABLE SALT?"
         N1CH0311 = "RESPONDENT'S RELATIONSHIP TO SAMPLE  ..."
         N1CH0312 = "IS THERE A SCHOOL LUNCH PROGRAM AT T ..."
         N1CH0313 = "HOW MANY TIMES A WEEK DOES HE USUALL ..."
         N1CH0314 = "HOW MUCH DOES HE PAY FOR HIS LUNCH P ..."
         N1CH0316 = "IS THERE A SPECIAL MILK PROGRAM AT T ..."
         N1CH0317 = "HOW MANY TIMES A WEEK DOES HE USUALL ..."
         N1CH0318 = "IS THERE A SCHOOL BREAKFAST PROGRAM  ..."
         N1CH0319 = "HOW MANY TIMES A WEEK DOES HE USUALL ..."
         N1CH0320 = "HOW MUCH DOES HE PAY FOR HIS BREAKFA ..."
         N1CH0322 = "DATA USER WORK AREA"
         N1CH0328 = "HOW MUCH DID HE WEIGH WHEN HE WAS BORN?"
         N1CH0332 = "WAS HE BORN PREMATURELY?"
         N1CH0333 = "HOW MANY CHILDREN HAS HIS MOTHER HAD?"
         N1CH0335 = "HOW MANY WERE BORN BEFORE HIM?"
         N1CH0337 = "HOW MANY OF HIS BROTHERS/SISTERS WEI ..."
         N1CH0339 = "HOW MUCH DID HE WEIGH WHEN 1 YEAR OLD?"
         N1CH0341 = "WAS HE BREAST FED AT ANYTIME?"
         N1CH0342 = "HOW OLD WAS HE WHEN HE STOPPED BREAS ..."
         N1CH0344 = "AS A BABY WAS HE AT ANY TIME FED MIL ..."
         N1CH0345 = "WHAT TYPE OF MILK WAS USED? WHOLE CO ..."
         N1CH0346 = "COMMERCIALLY PREPARED MILK"
         N1CH0347 = "A SOY BASE FORMULA"
         N1CH0348 = "OTHER"
         N1CH0349 = "HOW OLD WAS HE WHEN HE FIRST STARTED ..."
         N1CH0351 = "DOES OR DID HE HAVE ANY CONDITION HE ..."
         N1CH0352 = "EYES"
         N1CH0353 = "MOUTH OR THROAT"
         N1CH0354 = "STOMACH OR INTESTINES"
         N1CH0355 = "KIDNEYS OR URINARY SYSTEM"
         N1CH0356 = "MUSCLES, BONES OR JOINTS"
         N1CH0357 = "BRAIN OR NERVOUS SYSTEM"
         N1CH0358 = "ANEMIA"
         N1CH0359 = "ABNORMAL BLEEDING"
         N1CH0360 = "ASTHMA"
         N1CH0361 = "OTHER ALLERGIES"
         N1CH0362 = "TUBERCULOSIS"
         N1CH0363 = "PNEUMONIA"
         N1CH0364 = "OTHER CHEST OR LUNG CONDITION"
         N1CH0365 = "HEART CONDITION"
         N1CH0366 = "DIABETES"
         N1CH0367 = "EPILEPSY OR CONVULSIONS"
         N1CH0368 = "STOMACH OR INTESTINAL DISORDER"
         N1CH0369 = "KIDNEYS DISEASE OR INFECTION"
         N1CH0370 = "THYROID DISEASE OR GOITER"
         N1CH0371 = "CANCER OR TUMORS"
         N1CH0372 = "OTHER CONDITIONS"
         N1CH0373 = "HAS HE EVER HAD A BAD ACCIDENT?"
         N1CH0374 = "DOES HE STILL HAVE THE EFFECTS OF IT?"
         N1CH0375 = "HAS HE EVER STAYED OVERNIGHT IN A HO ..."
         N1CH0376 = "HAS HE EVER HAD AN OPERATION?"
         N1CH0377 = "IS HE UNABLE TO DO SOME THINGS BECAU ..."
         N1CH0378 = "DURING THE PAST 6 MONTHS HOW MANY CO ..."
         N1CH0379 = "DOES HE HAVE ONE NOW?"
         N1CH0380 = "DURING THE PAST 6 MONTHS HAS HE PASS ..."
         N1CH0381 = "WHAT TYPE--TINY WHITE OR PENCIL SIZED?"
         N1CH0382 = "DURING THE PAST 6 MONTHS HOW MAY TIM ..."
         N1CH0384 = "DOES HE HAVE IT NOW?"
         N1CH0385 = "DOES HE EVER EAT DIRT OR CLAY, STARC ..."
         N1CH0386 = "DIRT OR CLAY"
         N1CH0387 = "STARCH"
         N1CH0388 = "PAINT OR PLASTER"
         N1CH0389 = "OTHER"
         N1CH0390 = "DOES HE HAVE UNUSUAL TROUBLE SEEING  ..."
         N1CH0391 = "HAS HE EVER HAD ANY OTHER TROUBLE SE ..."
         N1CH0392 = "WAS IT BECAUSE OF AN EYE INJURY?"
         N1CH0393 = "WAS IT BECAUSE OF AN EYE INFECTION O ..."
         N1CH0394 = "DID HE SEE A DOCTOR ABOUT THE EYE IN ..."
         N1CH0395 = "DID HE SEE A DOCTOR ABOUT THE EYE IN ..."
         N1CH0396 = "HAS HE EVER HAD AN EYE ACCIDENT OR E ..."
         N1CH0397 = "DID HE SEE A DOCTOR ABOUT IT?"
         N1CH0398 = "HAS HE EVER WORN GLASSES OR CONTACT  ..."
         N1CH0399 = "DOES HE STILL WEAR THEN?"
         N1CH0400 = "WHEN DOES HE WEAR THEM? ARE THE TIME"
         N1CH0401 = "FOR READING OR CLOSE WORK"
         N1CH0402 = "FOR DISTANCE VISION"
         N1CH0403 = "AT OTHER TIMES"
         N1CH0404 = "DOES (DID) HE HAVE TROUBLE WITH HIS  ..."
         N1CH0405 = "HOW OLD WAS HE WHEN HE FIRST WORE THEM?"
         N1CH0407 = "HAS HE EVER HAD TO MISS SCHOOL BECAU ..."
         N1CH0408 = "HOW MUCH DOES HIS MOTHER WEIGH?"
         N1CH0411 = "HOW TALL SHE?"
         N1CH0412 = "BLANK"
         N1CH0414 = "HOW MUCH DOES HIS FATHER WEIGH?"
         N1CH0417 = "HOW TALL IS HE?"
         N1CH0418 = "BLANK"
         N1CH0420 = "WORK AREA"
         N1CH0421 = "MAY I SEE YOUR BOX OF TABLE SALT?"
         N1CH0422 = "RESPONDENT'S RELATIONSHIP TO SAMPLE  ..."
         N1CH0423 = "IS THERE A SCHOOL LUNCH PROGRAM AT T ..."
         N1CH0424 = "HOW MAY TIMES A WEEK DOES HE USUALLY ..."
         N1CH0425 = "HOW MUCH DOES HE PAY FOR HIS LUNCH P ..."
         N1CH0427 = "IS THERE A SPECIAL MILK PROGRAM AT T ..."
         N1CH0428 = "HOW MANY TIMES A WEEK DOES HE USUALL ..."
         N1CH0429 = "IS THERE A SCHOOL BREAKFAST PROGRAM  ..."
         N1CH0430 = "HOW MAY TIMES A WEEK DOES HE USUALLY ..."
         N1CH0431 = "HOW MUCH DOES HE PAY FOR HIS BREAKFA ..."
         N1CH0433 = "DATA USER WORK AREA"
      ;
RUN;
