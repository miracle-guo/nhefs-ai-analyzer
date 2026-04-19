/*
 *  Survey:           NHANES I
 *  Years:            1971-1975
 *  Questionnaire:    Biochemistry, Serology, Hematology, Blood Slides, Urine Dipst.
 *  Tape Number:      4800
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

VALUE LB0010F
     1='3,000,000 or more'
     2='1,000,000 to 2,999,999'
     3='250,000 to 999,999'
     4='under 250,000'
     5='Urban place 25,000 or more outside urbanized area'
     6='Urban place 10,000 to 24,999 outside urbanized area'
     7='Urban place 2,500 to 9,999 outside urbanized area'
     8='Rural'
     ;

VALUE LB0011F
     1='In SMSA, in central city'
     2='In SMSA, not in central city'
     3='Not in SMSA'
     ;

VALUE LB0012F
     1='Housing Unit'
     2='Other unit'
     ;

VALUE LB0013F
     1='All other'
     2='Rural  7136'
     ;

VALUE LB0014F
     1='10 or more acres'
     2='Less than 10 acres'
     9='Not applicable'
     ;

VALUE LB0015F
     2='Yes'
     4='No'
     9='Not applicable'
     ;

VALUE LB0016F
     3='Yes'
     5='No'
     9='Not applicable'
     ;

VALUE LB0017F
     00='Blank, but applicable'
     ;

VALUE LB0019F
     1='Male'
     2='Female'
     ;

VALUE LB0020F
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

VALUE LB0022F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE LB0027F
     9='9 or more'
     ;

VALUE LB0028F
     1='Yes'
     2='No'
     ;

VALUE LB0029F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE LB0030F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE LB0031F
     1='Yes'
     2='No'
     ;

VALUE LB0032F
     1='Yes'
     2='No'
     ;

VALUE LB0033F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE LB0034F
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

VALUE LB0036F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE LB0037F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE LB0041F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE LB0042F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE LB0046F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE LB0047F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE LB0051F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE LB0052F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE LB0056F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE LB0057F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE LB0061F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE LB0062F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE LB0066F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE LB0067F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE LB0071F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE LB0072F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE LB0076F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE LB0077F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE LB0081F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE LB0082F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE LB0086F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE LB0087F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE LB0091F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE LB0100F
     1='Head (1 person living along or with non-relatives)'
     2='Head (2 or more related persons in family)'
     3='Wife'
     4='Child'
     5='Other relative'
     ;

VALUE LB0103F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE LB0104F
     1='Male'
     2='Female'
     ;

VALUE LB0105F
     1='Under 17'
     2='Married'
     3='Widowed'
     4='Never Married'
     5='Divorced'
     6='Separated'
     8='Blank, but applicable'
     ;

VALUE LB0110F
     88='Blank, but applicable'
     ;

VALUE LB0112F
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

VALUE LB0114F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE LB0115F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE LB0116F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE LB0117F
     1='Nursery'
     2='Kindergarten'
     3='Other'
     4='Headstart'
     5='Daycare'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE LB0118F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE LB0119F
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

VALUE LB0120F
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

VALUE LB0122F
     1='Working'
     2='Keeping house'
     3='Something else'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE LB0123F
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

VALUE LB0124F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE LB0125F
     1='Full-time'
     2='Part-time'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE LB0126F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE LB0127F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE LB0128F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE LB0129F
     1='Looking'
     2='Lay-off'
     3='Both'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE LB0130F
     1='Private paid'
     2='Government-Federal'
     3='Government-Other'
     4='Own'
     5='Non-paid'
     6='Never worked'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE LB0131F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE LB0146F
     1='Farm'
     2='Nonfarm'
     ;

VALUE LB0147F
     998='Index computed 998'
     999='Unknown'
     ;

VALUE LB0150F
     1='Northeast'
     2='Midwest'
     3='South'
     4='West'
     ;

VALUE LB0151F
     1='Not applicable'
     2='No program available'
     3='Food stamps available'
     4='Commodities available'
     8='Blank, but applicable'
     ;

VALUE LB0152F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE LB0153F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE LB0154F
     1='No need'
     2='Not enough money at the time'
     3='No transportation'
     4='Pride'
     5='Other'
     8='Blank, but applicable'
     ;

VALUE LB0155F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE LB0156F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE LB0157F
     1='No need'
     2='No transportation'
     3='Pride'
     4='Other'
     8='Blank, but applicable'
     ;

VALUE LB0205F
     88='Blank but applicable'
     ;

VALUE LB0207F
     1='AM'
     2='PM'
     8='Blank, but applicable'
     ;

VALUE LB0208F
     88='Blank, but applicable'
     ;

VALUE LB0210F
     1='Light'
     2='Medium'
     3='Heavy'
     8='Blank, but applicable'
     ;

VALUE LB0211F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE LB0212F
     88='Blank, but applicable'
     99='Not applicable'
     ;

VALUE LB0214F
     30='days?'
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE LB0215F
     88='Blank, but applicable'
     99='Not applicable'
     ;

VALUE LB0217F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE LB0218F
     88='Blank, but applicable'
     99='Not applicable'
     ;

VALUE LB0220F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE LB0221F
     88='Blank, but applicable'
     99='Not applicable'
     ;

VALUE LB0223F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE LB0224F
     88='Blank, but applicable'
     99='Not applicable'
     ;

VALUE LB0226F
     1='None'
     2='Light'
     3='Moderate'
     4='Heavy'
     8='Blank, but applicable'
     ;

VALUE LB0227F
     9999='Missing value (ages 1-3)'
     ;

VALUE LB0231F
     0='Not imputed'
     1='Missing value imputed'
     9='Missing value not imputed (ages 1-3)'
     ;

VALUE LB0232F
     9999='Missing value (ages 1-3)'
     ;

VALUE LB0236F
     0='Not imputed'
     1='Missing value imputed'
     9='Missing value not imputed (ages 1-3)'
     ;

VALUE LB0237F
     8888='Missing value'
     9999='Missing value (ages 1-3)'
     ;

VALUE LB0241F
     0='Not imputed'
     1='Missing and imputed'
     8='Missing value not imputed'
     9='Missing value not imputed (ages 1-3)'
     ;

VALUE LB0242F
     8888='Missing value'
     9999='Missing value (ages 1-3)'
     ;

VALUE LB0246F
     0='Not imputed'
     1='Missing and imputed'
     8='Missing value not imputed'
     9='Missing value not imputed (ages 1-3)'
     ;

VALUE LB0247F
     7777='Unacceptable data'
     8888='Missing value'
     ;

VALUE LB0251F
     0='Not imputed'
     1='Missing value imputed'
     7='Unacceptable data not imputed'
     8='Missing value not imputed'
     ;

VALUE LB0252F
     777='Unacceptable data'
     888='Missing values'
     ;

VALUE LB0255F
     0='Not imputed'
     1='Missing value imputed'
     7='Unacceptable data not imputed'
     8='Missing values not imputed'
     ;

VALUE LB0256F
     7777='Unacceptable data'
     9999='Missing value (ages 1-3)'
     ;

VALUE LB0260F
     0='Not imputed'
     1='Missing value imputed'
     7='Unacceptable data not imputed'
     9='Missing values not imputed (ages 1-3)'
     ;

VALUE LB0261F
     7777='Unacceptable data'
     9999='Missing value (ages 1-3)'
     ;

VALUE LB0265F
     0='Not imputed'
     1='Missing value imputed'
     7='Unacceptable data not imputed'
     9='Missing values not imputed (ages 1-3)'
     ;

VALUE LB0266F
     7777='Unacceptable data'
     9999='Missing value (ages 1-3)'
     ;

VALUE LB0270F
     0='Not imputed'
     1='Missing value imputed'
     7='Unacceptable data not imputed'
     9='Missing values not imputed (ages 1-3)'
     ;

VALUE LB0271F
     888='Blank, but applicable'
     ;

VALUE LB0274F
     888='Blank, but applicable'
     ;

VALUE LB0277F
     888='Blank, but applicable'
     ;

VALUE LB0280F
     888='Blank, but applicable'
     ;

VALUE LB0331F
     0='Normal'
     ;

VALUE LB0332F
     0='Normal'
     ;

VALUE LB0333F
     0='Normal'
     ;

VALUE LB0334F
     0='Normal'
     ;

VALUE LB0335F
     0='Normal'
     ;

VALUE LB0336F
     00='Normal'
     ;

VALUE LB0338F
     0='Normal'
     2='Increased Platelet Count'
     3='Decreased Platelet Count'
     9='No Estimate'
     ;

VALUE LB0339F
     88='Blank, Slide Read'
     ;

VALUE LB0341F
     88='Blank, Slide Read'
     ;

VALUE LB0343F
     88='Blank, Slide Read'
     ;

VALUE LB0345F
     88='Blank, Slide Read'
     ;

VALUE LB0347F
     88='Blank, Slide Read'
     ;

VALUE LB0349F
     88='Blank, Slide Read'
     ;

VALUE LB0353F
     88='Blank, Slide Read'
     ;

VALUE LB0355F
     88='Blank, Slide Read'
     ;

VALUE LB0357F
     88='Blank, Slide Read'
     ;

VALUE LB0359F
     88='Blank, Slide Read'
     ;

VALUE LB0361F
     88='Blank, Slide Read'
     ;

VALUE LB0363F
     1='Good-Satisfactory'
     2='Fair'
     3='Other'
     9='Blank, but applicable'
     ;

VALUE LB0364F
     9='Blank, but applicable'
     ;

VALUE LB0365F
     1='Missing or Unsatisfactory'
     2='Available'
     ;

VALUE LB0401F
     998='Results unavailable'
     999='Test not done'
     ;

VALUE LB0404F
     998='Results unavailable'
     999='Test not done'
     ;

VALUE LB0407F
     998='Results unavailable'
     999='Test not done'
     ;

VALUE LB0410F
     998='Results unavailable'
     999='Test not done'
     ;

VALUE LB0413F
     998='Results unavailable'
     999='Test not done'
     ;

VALUE LB0416F
     99998='Results unavailable'
     99999='Test not done'
     ;

VALUE LB0421F
     99998='Results unavailable'
     99999='Test not done'
     ;

VALUE LB0426F
     99998='Results unavailable'
     99999='Test not done'
     ;

VALUE LB0431F
     1='Reactive'
     2='Non-reactive'
     8='Unsuitable for testing'
     9='Quantity insufficient'
     ;

VALUE LB0432F
     1='Reactive'
     2='Non-reactive'
     8='Unsuitable for testing'
     9='Quantity insufficient'
     ;

VALUE LB0433F
     011='Reactive 1:1 Dilution'
     012='Reactive 1:2 Dilution'
     014='Reactive 1:4 Dilution'
     018='Reactive 1:8 Dilution'
     318='Reactive at a dilution greater than 1:8'
     888='Unsuitable for testing'
     999='Quantity insufficient'
     ;

VALUE LB0436F
     055='Weakly Reactive'
     011='Reactive 1:1 Dilution'
     012='Reactive 1:2 Dilution'
     014='Reactive 1:4 Dilution'
     018='Reactive 1:8 Dilution'
     318='Reactive at a dilution greater than 1:8'
     888='Unsuitable for testing'
     999='Quantity insufficient'
     ;

VALUE LB0441F
     02='AA2 ( A2 = B thal trait)'
     05='AF (F   10%)'
     08='AI'
     11='AS'
     12='SAF or SA (S-B thal)'
     17='AC'
     18='AD or AG (no further determination)'
     19='AAF (   F but   10%)'
     20='A+ fast'
     28='Other unidentified 46 present'
     88='Blank, but applicable'
     99='Blank (not in phenotype study)'
     ;

VALUE LB0443F
     888='Blank, but applicable'
     999='Blank (no entry)'
     999='Blank (not in hemoglobin phenotype study)'
     ;

VALUE LB0446F
     888='Blank, but applicable'
     998='Blank (no entry)'
     999='Blank (not in hemoglobin phenotype study)'
     ;

VALUE LB0451F
     7777='Unacceptable data'
     8888='Blank, but applicable'
     9999='Test not done'
     ;

VALUE LB0455F
     7777='Unacceptable data'
     8888='Blank, but applicable'
     9999='Test not done'
     ;

VALUE LB0459F
     7777='Unacceptable data'
     8888='Blank, but applicable'
     9999='Test not done'
     ;

VALUE LB0463F
     777='Unacceptable data'
     888='Blank, but applicable'
     999='Test not done'
     ;

VALUE LB0466F
     777='Unacceptable data'
     888='Blank, but applicable'
     999='Test not done'
     ;

VALUE LB0469F
     777='Unacceptable data'
     888='Blank, but applicable'
     999='Test not done'
     ;

VALUE LB0472F
     777='Unacceptable data'
     999='Test not done'
     ;

VALUE LB0475F
     777='Unacceptable data'
     999='Test not done'
     ;

VALUE LB0478F
     99='Test not done'
     ;

VALUE LB0481F
     888='Blank, but applicable'
     999='Test not done'
     ;

VALUE LB0501F
     0='Negative'
     1='30+'
     2='100++'
     3='300+++'
     4='Over 1000++++'
     5='Trace'
     8='Blank, but applicable'
     ;

VALUE LB0502F
     0='Negative'
     1='Light'
     2='Medium'
     3='Dark'
     4='Very dark'
     5='Trace'
     8='Blank, but applicable'
     ;

VALUE LB0503F
     4='Blank, but applicable'
     ;

VALUE LB0504F
     0='Negative'
     1='Small'
     2='Moderate'
     3='Large'
     4='Very large'
     5='Trace'
     8='Blank, but applicable'
     ;

VALUE LB0505F
     1='Negative, 0.1 or 1'
     2='4'
     3='8'
     4='12'
     8='Blank, but applicable'
     ;

VALUE LB0506F
     0='Negative'
     1='Small+'
     2='Moderate++'
     3='Large+++'
     4='Very large++++'
     5='Trace'
     8='Blank, but applicable'
     ;

VALUE LB0507F
     0='Negative'
     1='Small'
     2='Moderate'
     3='Large'
     8='Blank, but applicable'
     ;

VALUE LB0508F
     88='Blank, but applicable'
     ;

VALUE LB0526F
     777='Unacceptable data'
     888='Blank, but applicable'
     ;

VALUE LB0529F
     777='Unacceptable data'
     888='Blank, but applicable'
     ;

VALUE LB0532F
     8888='Blank, but applicable'
     ;

VALUE LB0536F
     8888='Blank, but applicable'
     ;

VALUE LB0540F
     8888='Blank, but applicable'
     ;

VALUE LB0544F
     8888='Blank, but applicable'
     ;

VALUE LB0548F
     888888='Blank, but applicable'
     ;

VALUE LB0554F
     888888='Blank, but applicable'
     ;

VALUE LB0560F
     888888='Blank, but applicable'
     ;
RUN;


DATA D_4800;
   INFILE 'c:\temp\DU4800.txt' LRECL = 2000 MISSOVER;
      LENGTH
         SEQN 8
         N1LB0006 8
         N1LB0010 4
         N1LB0011 4
         N1LB0012 4
         N1LB0013 4
         N1LB0014 4
         N1LB0015 4
         N1LB0016 4
         N1LB0017 4
         N1LB0019 4
         N1LB0020 4
         N1LB0022 4
         N1LB0023 4
         N1LB0025 4
         N1LB0027 4
         N1LB0028 4
         N1LB0029 4
         N1LB0030 4
         N1LB0031 4
         N1LB0032 4
         N1LB0033 4
         N1LB0034 4
         N1LB0036 4
         N1LB0037 8
         N1LB0041 4
         N1LB0042 8
         N1LB0046 4
         N1LB0047 8
         N1LB0051 4
         N1LB0052 8
         N1LB0056 4
         N1LB0057 8
         N1LB0061 4
         N1LB0062 8
         N1LB0066 4
         N1LB0067 8
         N1LB0071 4
         N1LB0072 8
         N1LB0076 4
         N1LB0077 8
         N1LB0081 4
         N1LB0082 8
         N1LB0086 4
         N1LB0087 8
         N1LB0091 8
         N1LB0095 8
         N1LB0100 4
         N1LB0101 4
         N1LB0103 4
         N1LB0104 4
         N1LB0105 4
         N1LB0106 8
         N1LB0110 4
         N1LB0112 4
         N1LB0114 4
         N1LB0115 4
         N1LB0116 4
         N1LB0117 4
         N1LB0118 4
         N1LB0119 4
         N1LB0120 4
         N1LB0122 4
         N1LB0123 4
         N1LB0124 4
         N1LB0125 4
         N1LB0126 4
         N1LB0127 4
         N1LB0128 4
         N1LB0129 4
         N1LB0130 4
         N1LB0131 4
         N1LB0132 4
         N1LB0135 4
         N1LB0138 8
         N1LB0144 4
         N1LB0146 4
         N1LB0147 4
         N1LB0150 4
         N1LB0151 4
         N1LB0152 4
         N1LB0153 4
         N1LB0154 4
         N1LB0155 4
         N1LB0156 4
         N1LB0157 4
         N1LB0158 8
         N1LB0164 8
         N1LB0170 8
         N1LB0176 8
         N1LB0182 $12
         N1LB0194 4
         N1LB0196 4
         N1LB0199 $2
         N1LB0201 8
         N1LB0205 4
         N1LB0207 4
         N1LB0208 4
         N1LB0210 4
         N1LB0211 4
         N1LB0212 4
         N1LB0214 4
         N1LB0215 4
         N1LB0217 4
         N1LB0218 4
         N1LB0220 4
         N1LB0221 4
         N1LB0223 4
         N1LB0224 4
         N1LB0226 4
         N1LB0227 8
         N1LB0231 4
         N1LB0232 8
         N1LB0236 4
         N1LB0237 8
         N1LB0241 4
         N1LB0242 8
         N1LB0246 4
         N1LB0247 8
         N1LB0251 4
         N1LB0252 4
         N1LB0255 4
         N1LB0256 8
         N1LB0260 4
         N1LB0261 8
         N1LB0265 4
         N1LB0266 8
         N1LB0270 4
         N1LB0271 4
         N1LB0274 4
         N1LB0277 4
         N1LB0280 4
         N1LB0283 8
         N1LB0289 8
         N1LB0295 $6
         N1LB0301 $10
         N1LB0311 4
         N1LB0313 4
         N1LB0315 4
         N1LB0317 4
         N1LB0319 4
         N1LB0321 4
         N1LB0323 4
         N1LB0325 4
         N1LB0327 4
         N1LB0329 4
         N1LB0331 4
         N1LB0332 4
         N1LB0333 4
         N1LB0334 4
         N1LB0335 4
         N1LB0336 4
         N1LB0338 4
         N1LB0339 4
         N1LB0341 4
         N1LB0343 4
         N1LB0345 4
         N1LB0347 4
         N1LB0349 4
         N1LB0351 4
         N1LB0353 4
         N1LB0355 4
         N1LB0357 4
         N1LB0359 4
         N1LB0361 4
         N1LB0363 4
         N1LB0364 4
         N1LB0365 4
         N1LB0366 $35
         N1LB0401 4
         N1LB0404 4
         N1LB0407 4
         N1LB0410 4
         N1LB0413 4
         N1LB0416 8
         N1LB0421 8
         N1LB0426 8
         N1LB0431 4
         N1LB0432 4
         N1LB0433 4
         N1LB0436 4
         N1LB0439 $2
         N1LB0441 4
         N1LB0443 4
         N1LB0446 4
         N1LB0449 $2
         N1LB0451 8
         N1LB0455 8
         N1LB0459 8
         N1LB0463 4
         N1LB0466 4
         N1LB0469 4
         N1LB0472 4
         N1LB0475 4
         N1LB0478 4
         N1LB0481 4
         N1LB0484 4
         N1LB0487 $14
         N1LB0501 4
         N1LB0502 4
         N1LB0503 4
         N1LB0504 4
         N1LB0505 4
         N1LB0506 4
         N1LB0507 4
         N1LB0508 4
         N1LB0510 $16
         N1LB0526 4
         N1LB0529 4
         N1LB0532 8
         N1LB0536 8
         N1LB0540 8
         N1LB0544 8
         N1LB0548 8
         N1LB0554 8
         N1LB0560 8
         N1LB0566 $35
      ;



FORMAT
     N1LB0010 LB0010F.
     N1LB0011 LB0011F.
     N1LB0012 LB0012F.
     N1LB0013 LB0013F.
     N1LB0014 LB0014F.
     N1LB0015 LB0015F.
     N1LB0016 LB0016F.
     N1LB0017 LB0017F.
     N1LB0019 LB0019F.
     N1LB0020 LB0020F.
     N1LB0022 LB0022F.
     N1LB0027 LB0027F.
     N1LB0028 LB0028F.
     N1LB0029 LB0029F.
     N1LB0030 LB0030F.
     N1LB0031 LB0031F.
     N1LB0032 LB0032F.
     N1LB0033 LB0033F.
     N1LB0034 LB0034F.
     N1LB0036 LB0036F.
     N1LB0037 LB0037F.
     N1LB0041 LB0041F.
     N1LB0042 LB0042F.
     N1LB0046 LB0046F.
     N1LB0047 LB0047F.
     N1LB0051 LB0051F.
     N1LB0052 LB0052F.
     N1LB0056 LB0056F.
     N1LB0057 LB0057F.
     N1LB0061 LB0061F.
     N1LB0062 LB0062F.
     N1LB0066 LB0066F.
     N1LB0067 LB0067F.
     N1LB0071 LB0071F.
     N1LB0072 LB0072F.
     N1LB0076 LB0076F.
     N1LB0077 LB0077F.
     N1LB0081 LB0081F.
     N1LB0082 LB0082F.
     N1LB0086 LB0086F.
     N1LB0087 LB0087F.
     N1LB0091 LB0091F.
     N1LB0100 LB0100F.
     N1LB0103 LB0103F.
     N1LB0104 LB0104F.
     N1LB0105 LB0105F.
     N1LB0110 LB0110F.
     N1LB0112 LB0112F.
     N1LB0114 LB0114F.
     N1LB0115 LB0115F.
     N1LB0116 LB0116F.
     N1LB0117 LB0117F.
     N1LB0118 LB0118F.
     N1LB0119 LB0119F.
     N1LB0120 LB0120F.
     N1LB0122 LB0122F.
     N1LB0123 LB0123F.
     N1LB0124 LB0124F.
     N1LB0125 LB0125F.
     N1LB0126 LB0126F.
     N1LB0127 LB0127F.
     N1LB0128 LB0128F.
     N1LB0129 LB0129F.
     N1LB0130 LB0130F.
     N1LB0131 LB0131F.
     N1LB0146 LB0146F.
     N1LB0147 LB0147F.
     N1LB0150 LB0150F.
     N1LB0151 LB0151F.
     N1LB0152 LB0152F.
     N1LB0153 LB0153F.
     N1LB0154 LB0154F.
     N1LB0155 LB0155F.
     N1LB0156 LB0156F.
     N1LB0157 LB0157F.
     N1LB0205 LB0205F.
     N1LB0207 LB0207F.
     N1LB0208 LB0208F.
     N1LB0210 LB0210F.
     N1LB0211 LB0211F.
     N1LB0212 LB0212F.
     N1LB0214 LB0214F.
     N1LB0215 LB0215F.
     N1LB0217 LB0217F.
     N1LB0218 LB0218F.
     N1LB0220 LB0220F.
     N1LB0221 LB0221F.
     N1LB0223 LB0223F.
     N1LB0224 LB0224F.
     N1LB0226 LB0226F.
     N1LB0227 LB0227F.
     N1LB0231 LB0231F.
     N1LB0232 LB0232F.
     N1LB0236 LB0236F.
     N1LB0237 LB0237F.
     N1LB0241 LB0241F.
     N1LB0242 LB0242F.
     N1LB0246 LB0246F.
     N1LB0247 LB0247F.
     N1LB0251 LB0251F.
     N1LB0252 LB0252F.
     N1LB0255 LB0255F.
     N1LB0256 LB0256F.
     N1LB0260 LB0260F.
     N1LB0261 LB0261F.
     N1LB0265 LB0265F.
     N1LB0266 LB0266F.
     N1LB0270 LB0270F.
     N1LB0271 LB0271F.
     N1LB0274 LB0274F.
     N1LB0277 LB0277F.
     N1LB0280 LB0280F.
     N1LB0331 LB0331F.
     N1LB0332 LB0332F.
     N1LB0333 LB0333F.
     N1LB0334 LB0334F.
     N1LB0335 LB0335F.
     N1LB0336 LB0336F.
     N1LB0338 LB0338F.
     N1LB0339 LB0339F.
     N1LB0341 LB0341F.
     N1LB0343 LB0343F.
     N1LB0345 LB0345F.
     N1LB0347 LB0347F.
     N1LB0349 LB0349F.
     N1LB0353 LB0353F.
     N1LB0355 LB0355F.
     N1LB0357 LB0357F.
     N1LB0359 LB0359F.
     N1LB0361 LB0361F.
     N1LB0363 LB0363F.
     N1LB0364 LB0364F.
     N1LB0365 LB0365F.
     N1LB0401 LB0401F.
     N1LB0404 LB0404F.
     N1LB0407 LB0407F.
     N1LB0410 LB0410F.
     N1LB0413 LB0413F.
     N1LB0416 LB0416F.
     N1LB0421 LB0421F.
     N1LB0426 LB0426F.
     N1LB0431 LB0431F.
     N1LB0432 LB0432F.
     N1LB0433 LB0433F.
     N1LB0436 LB0436F.
     N1LB0441 LB0441F.
     N1LB0446 LB0446F.
     N1LB0451 LB0451F.
     N1LB0455 LB0455F.
     N1LB0459 LB0459F.
     N1LB0463 LB0463F.
     N1LB0466 LB0466F.
     N1LB0469 LB0469F.
     N1LB0472 LB0472F.
     N1LB0475 LB0475F.
     N1LB0478 LB0478F.
     N1LB0481 LB0481F.
     N1LB0501 LB0501F.
     N1LB0502 LB0502F.
     N1LB0503 LB0503F.
     N1LB0504 LB0504F.
     N1LB0505 LB0505F.
     N1LB0506 LB0506F.
     N1LB0507 LB0507F.
     N1LB0508 LB0508F.
     N1LB0526 LB0526F.
     N1LB0529 LB0529F.
     N1LB0532 LB0532F.
     N1LB0536 LB0536F.
     N1LB0540 LB0540F.
     N1LB0544 LB0544F.
     N1LB0548 LB0548F.
     N1LB0554 LB0554F.
     N1LB0560 LB0560F.
     ;

	INPUT
         SEQN 1-5
         N1LB0006 6-9
         N1LB0010 10
         N1LB0011 11
         N1LB0012 12
         N1LB0013 13
         N1LB0014 14
         N1LB0015 15
         N1LB0016 16
         N1LB0017 17-18
         N1LB0019 19
         N1LB0020 20-21
         N1LB0022 22
         N1LB0023 23-24
         N1LB0025 25-26
         N1LB0027 27
         N1LB0028 28
         N1LB0029 29
         N1LB0030 30
         N1LB0031 31
         N1LB0032 32
         N1LB0033 33
         N1LB0034 34-35
         N1LB0036 36
         N1LB0037 37-40
         N1LB0041 41
         N1LB0042 42-45
         N1LB0046 46
         N1LB0047 47-50
         N1LB0051 51
         N1LB0052 52-55
         N1LB0056 56
         N1LB0057 57-60
         N1LB0061 61
         N1LB0062 62-65
         N1LB0066 66
         N1LB0067 67-70
         N1LB0071 71
         N1LB0072 72-75
         N1LB0076 76
         N1LB0077 77-80
         N1LB0081 81
         N1LB0082 82-85
         N1LB0086 86
         N1LB0087 87-90
         N1LB0091 91-94
         N1LB0095 95-99
         N1LB0100 100
         N1LB0101 101-102
         N1LB0103 103
         N1LB0104 104
         N1LB0105 105
         N1LB0106 106-109
         N1LB0110 110-111
         N1LB0112 112-113
         N1LB0114 114
         N1LB0115 115
         N1LB0116 116
         N1LB0117 117
         N1LB0118 118
         N1LB0119 119
         N1LB0120 120-121
         N1LB0122 122
         N1LB0123 123
         N1LB0124 124
         N1LB0125 125
         N1LB0126 126
         N1LB0127 127
         N1LB0128 128
         N1LB0129 129
         N1LB0130 130
         N1LB0131 131
         N1LB0132 132-134
         N1LB0135 135-137
         N1LB0138 138-143
         N1LB0144 144-145
         N1LB0146 146
         N1LB0147 147-149
         N1LB0150 150
         N1LB0151 151
         N1LB0152 152
         N1LB0153 153
         N1LB0154 154
         N1LB0155 155
         N1LB0156 156
         N1LB0157 157
         N1LB0158 158-163
         N1LB0164 164-169
         N1LB0170 170-175
         N1LB0176 176-181
         N1LB0182 182-193
         N1LB0194 194-195
         N1LB0196 196-198
         N1LB0199 199-200
         N1LB0201 201-204
         N1LB0205 205-206
         N1LB0207 207
         N1LB0208 208-209
         N1LB0210 210
         N1LB0211 211
         N1LB0212 212-213
         N1LB0214 214
         N1LB0215 215-216
         N1LB0217 217
         N1LB0218 218-219
         N1LB0220 220
         N1LB0221 221-222
         N1LB0223 223
         N1LB0224 224-225
         N1LB0226 226
         N1LB0227 227-230
         N1LB0231 231
         N1LB0232 232-235
         N1LB0236 236
         N1LB0237 237-240
         N1LB0241 241
         N1LB0242 242-245
         N1LB0246 246
         N1LB0247 247-250
         N1LB0251 251
         N1LB0252 252-254
         N1LB0255 255
         N1LB0256 256-259
         N1LB0260 260
         N1LB0261 261-264
         N1LB0265 265
         N1LB0266 266-269
         N1LB0270 270
         N1LB0271 271-273
         N1LB0274 274-276
         N1LB0277 277-279
         N1LB0280 280-282
         N1LB0283 283-288
         N1LB0289 289-294
         N1LB0295 295-300
         N1LB0301 301-310
         N1LB0311 311-312
         N1LB0313 313-314
         N1LB0315 315-316
         N1LB0317 317-318
         N1LB0319 319-320
         N1LB0321 321-322
         N1LB0323 323-324
         N1LB0325 325-326
         N1LB0327 327-328
         N1LB0329 329-330
         N1LB0331 331
         N1LB0332 332
         N1LB0333 333
         N1LB0334 334
         N1LB0335 335
         N1LB0336 336-337
         N1LB0338 338
         N1LB0339 339-340
         N1LB0341 341-342
         N1LB0343 343-344
         N1LB0345 345-346
         N1LB0347 347-348
         N1LB0349 349-350
         N1LB0351 351-352
         N1LB0353 353-354
         N1LB0355 355-356
         N1LB0357 357-358
         N1LB0359 359-360
         N1LB0361 361-362
         N1LB0363 363
         N1LB0364 364
         N1LB0365 365
         N1LB0366 366-400
         N1LB0401 401-403
         N1LB0404 404-406
         N1LB0407 407-409
         N1LB0410 410-412
         N1LB0413 413-415
         N1LB0416 416-420
         N1LB0421 421-425
         N1LB0426 426-430
         N1LB0431 431
         N1LB0432 432
         N1LB0433 433-435
         N1LB0436 436-438
         N1LB0439 439-440
         N1LB0441 441-442
         N1LB0443 443-445
         N1LB0446 446-448
         N1LB0449 449-450
         N1LB0451 451-454
         N1LB0455 455-458
         N1LB0459 459-462
         N1LB0463 463-465
         N1LB0466 466-468
         N1LB0469 469-471
         N1LB0472 472-474
         N1LB0475 475-477
         N1LB0478 478-480
         N1LB0481 481-483
         N1LB0484 484-486
         N1LB0487 487-500
         N1LB0501 501
         N1LB0502 502
         N1LB0503 503
         N1LB0504 504
         N1LB0505 505
         N1LB0506 506
         N1LB0507 507
         N1LB0508 508-509
         N1LB0510 510-525
         N1LB0526 526-528
         N1LB0529 529-531
         N1LB0532 532-535
         N1LB0536 536-539
         N1LB0540 540-543
         N1LB0544 544-547
         N1LB0548 548-553
         N1LB0554 554-559
         N1LB0560 560-565
         N1LB0566 566-600
      ;

      LABEL
         SEQN = "SAMPLE SEQUENCE NUMBER"
         N1LB0006 = "CATALOG NUMBER 4271"
         N1LB0010 = "SIZE OF PLACE"
         N1LB0011 = "SMSA-NOT SMSA"
         N1LB0012 = "TYPE OF LIVING QUARTERS"
         N1LB0013 = "LAND USAGE"
         N1LB0014 = "IF RURAL, ASKED HOW MANY ACRES OF LA ..."
         N1LB0015 = "IF 10 ACRES OF MORE, ASKED IF SALE O ..."
         N1LB0016 = "IF 10 ACRES OR LESS, ASKED IF SALE O ..."
         N1LB0017 = "AGE-HEAD OF HOUSEHOLD"
         N1LB0019 = "SEX-HEAD OF HOUSEHOLD"
         N1LB0020 = "HIGHEST GRADE ATTENDED-HEAD OF HOUSEHOLD"
         N1LB0022 = "RACE-HEAD OF HOUSEHOLD"
         N1LB0023 = "TOTAL NUMBER OF PERSONS IN HOUSEHOLD"
         N1LB0025 = "TOTAL SAMPLE PERSONS IN HOUSEHOLD"
         N1LB0027 = "NUMBER OF ROOMS IN H9OUSE "
         N1LB0028 = "IS THERE PIPED WATER?"
         N1LB0029 = "IS THERE HOT AND COLD PIPED WATER?"
         N1LB0030 = "IF YES TO PIPED WATER-DOES HOUSE HAV ..."
         N1LB0031 = "DOES HOUSE HAVE A RANGE OR COOK STOVE?"
         N1LB0032 = "DOES HOUSE HAVE A REFRIGERATOR?"
         N1LB0033 = "ARE KITCHEN FACILITIES USED BY ANYON ..."
         N1LB0034 = "TOTAL FAMILY INCOME GROUP"
         N1LB0036 = "WAGES OR SALARIES?"
         N1LB0037 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER ..."
         N1LB0041 = "SOCIAL SECURITY OR  RAILROAD RETIREMENT?"
         N1LB0042 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1LB0046 = "WELFARE PAYMENTS OR OTHER PUBLIC ASS ..."
         N1LB0047 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1LB0051 = "UNEMPLOYMENT OR WORKMEN'S COMPENSATION?"
         N1LB0052 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1LB0056 = "GOVERNMENT EMPLOYEE PENSIONS OR PRIV ..."
         N1LB0057 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1LB0061 = "DIVIDENDS, INTEREST OR RENT?"
         N1LB0062 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1LB0066 = "NET INCOME FROM  OWN NON-FARM BUSINE ..."
         N1LB0067 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1LB0071 = "NET INCOME FROM A FARM?"
         N1LB0072 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1LB0076 = "VETERAN'S PAYMENTS"
         N1LB0077 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1LB0081 = "ALIMONY, CHILD SUPPORT OR CONTRIBUTI ..."
         N1LB0082 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1LB0086 = "ANY OTHER INCOME?"
         N1LB0087 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1LB0091 = "TOTAL AMOUNT(TOTAL OF POSITIONS 37-90)"
         N1LB0095 = "FAMILY UNIT CODE"
         N1LB0100 = "RELATIONSHIP TO HEAD OF HOUSEHOLD"
         N1LB0101 = "AGE AT INTERVIEW"
         N1LB0103 = "RACE OF EXAMINED PERSON"
         N1LB0104 = "SEX OF EXAMINED PERSON"
         N1LB0105 = "MARITAL STATUS"
         N1LB0106 = "DATE OF BIRTH (MONTH, YEAR)"
         N1LB0110 = "PLACE OF BIRTH"
         N1LB0112 = "HIGHEST GRADE OF REGULAR SCHOOL EVER ..."
         N1LB0114 = "DID HE FINISH THE GRADE?"
         N1LB0115 = "IS HE ATTENDING SCHOOL NOW?"
         N1LB0116 = "HAS HE EVER ATTENDED A SCHOOL OF ANY ..."
         N1LB0117 = "IF YES, WHAT KIND OF SCHOOL?"
         N1LB0118 = "IS ANY LANGUAGE OTHER THAN ENGLISH F ..."
         N1LB0119 = "IF YES, WHAT LANGUAGE"
         N1LB0120 = "WHAT IS YOUR MAIN ANCESTRY OR NATION ..."
         N1LB0122 = "WHAT WAS HE DOING MOST PAST THREE MO ..."
         N1LB0123 = "IF ' SOMETHING ELSE' FROM ABOVE, WHA ..."
         N1LB0124 = "IF 'KEEPING HOUSE' OR 'SOMETHING ELS ..."
         N1LB0125 = "IF 'WORKING' FROM ABOVE, DID HE WORK ..."
         N1LB0126 = "DID HE WORK AT ANY TIME LAST WEEK OR ..."
         N1LB0127 = "IF 'NO TO ABOVE, EVEN THOUGH HE DID  ..."
         N1LB0128 = "IF 'NO' IN POSITION 126, WAS HE LOOK ..."
         N1LB0129 = "IF YES TO ABOVE-WHICH?"
         N1LB0130 = "CLASS OF WORKER"
         N1LB0131 = "IF SELF-EMPLOYED IN 'OWN' BUSINESS A ..."
         N1LB0132 = "BUSINESS OR INDUSTRY CODE"
         N1LB0135 = "OCCUPATION CODE"
         N1LB0138 = "DATE OF EXAMINATION"
         N1LB0144 = "AGE AT EXAMINATION"
         N1LB0146 = "FARM"
         N1LB0147 = "POVERTY INDEX (X.XX)"
         N1LB0150 = "RELIGION"
         N1LB0151 = "FOOD PROGRAMS APPLICABILITY"
         N1LB0152 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1LB0153 = "ARE YOU BUYING STAMPS NOW?"
         N1LB0154 = "WHAT IS THE MAIN REASON YOU AREN'T P ..."
         N1LB0155 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1LB0156 = "ARE YOU RECEIVING COMMODITY FOODS  N ..."
         N1LB0157 = "WHY AREN'T YOU PARTICIPATING IN THE  ..."
         N1LB0158 = "DETAILED PERSONS-LOCATIONS 1-35"
         N1LB0164 = "ALL SAMPLE PERSONS-LOCATIONS 1-35"
         N1LB0170 = "DETAILED PERSONS-LOCATIONS 1-65"
         N1LB0176 = "ALL SAMPLE PERSONS-LOCATIONS 1-65"
         N1LB0182 = "WORK AREA"
         N1LB0194 = "STRATA 1/"
         N1LB0196 = "PRIMARY SAMPLING UNIT 1/"
         N1LB0199 = "DATA USER WORK AREA"
         N1LB0201 = "CATALOG NUMBER 4800"
         N1LB0205 = "HOUR OF COLLECTION"
         N1LB0207 = "AM OR PM"
         N1LB0208 = "HOURS SINCE LAST MEAL?"
         N1LB0210 = "TYPE OF LAST MEAL?"
         N1LB0211 = "HAVE YOU TAKEN VITAMINS WITHIN LAST  ..."
         N1LB0212 = "HOW MANY DAYS SINCE VITAMINS TAKEN?"
         N1LB0214 = "HAVE YOU TAKEN MINERALS WITHIN LAST  ..."
         N1LB0215 = "HOW MANY DAYS SINCE VITAMINS TAKEN?"
         N1LB0217 = "HAVE YOU TAKEN ASPIRIN WITHIN LAST 3 ..."
         N1LB0218 = "HOW MANY DAYS HAVE YOU TAKEN ASPIRIN ..."
         N1LB0220 = "HAVE YOU TAKEN DIURETICS WITHIN LAST ..."
         N1LB0221 = "HOW MANY DAYS SINCE DIURETICS TAKEN?"
         N1LB0223 = "HAVE YOU TAKEN OTHER MEDICATION WITH ..."
         N1LB0224 = "HOW MANY DAYS SINCE OTHER MEDICATION ..."
         N1LB0226 = "PHYSICAL ACTIVITY IN PAST 24 HOURS?"
         N1LB0227 = "SERUM PROTEIN (GM/100ML)(XXX.X-DECIM ..."
         N1LB0231 = "SERUM PROTEIN IMPUTATION"
         N1LB0232 = "SERUM ALBUMIN (GM/100ML) (XXX.X-DECI ..."
         N1LB0236 = "SERUM ALBUMIN IMPUTATION"
         N1LB0237 = "SERUM CHOLESTEROL (MG/100ML) (XXXX)"
         N1LB0241 = "SERUM CHOLESTEROL IMPUTATION "
         N1LB0242 = "SERUM MAGNESIUM (MEQ/LETER) (XX.XX-D ..."
         N1LB0246 = "SERUM MAGNESIUM  IMPUTATION"
         N1LB0247 = "HEMOGLOBIN (GM/100ML)(XXX.X-DECIMAL  ..."
         N1LB0251 = "HEMOGLOBIN IMPUTATION"
         N1LB0252 = "HEMATOCRIT"
         N1LB0255 = "HEMATOCRIT IMPUTATION"
         N1LB0256 = "SERUM IRON (MG/100ML) (XXXX.-DECIMAL ..."
         N1LB0260 = "SERUM IRON IMPUTATION"
         N1LB0261 = "TOTAL IRON BINDING CAPACITY (MG/100M ..."
         N1LB0265 = "TOTAL IRON BINDING CAPACITY "
         N1LB0266 = "TRANFERRIN SATURATION (PERCEN)(XXX. ..."
         N1LB0270 = "TRANFERRIN SATURATION IMPUTATION"
         N1LB0271 = "SERUM SODIUM (XXX.-DECIMAL NOT SHOWN ..."
         N1LB0274 = "SERUM POTASSIUM (XXX.-DECIMAL NOT SH ..."
         N1LB0277 = "SERUM FOLATE (XX.X-DECIMAL NOT SHOWN ..."
         N1LB0280 = "SEDIMENTATION RATE (XXX.-DECIMAL NOT ..."
         N1LB0283 = "WEIGHTS-ALL SAMPLE PERSONS-LOCATIONS ..."
         N1LB0289 = "ALL SAMPLE PERSONS-LOCATIONS 1-65 (F ..."
         N1LB0295 = "BLANK-DATA USER WORK AREA"
         N1LB0301 = "PERIPHERAL BLOOD FILM"
         N1LB0311 = "LEUKOBLASTS (PERCENT OF 100 CELLS)"
         N1LB0313 = "PROMYELOCYTES (PERCENT OF 100 CELLS)"
         N1LB0315 = "MYELOCYTES (PERCENT OF 100 CELLS)"
         N1LB0317 = "METAMYELOCYTES (PERCENT OF 100 CELLS)"
         N1LB0319 = "BAND NEUTROPHILS (PERCENT OF 100 CELLS)"
         N1LB0321 = "SEGMENTED NEUTROPHILS"
         N1LB0323 = "EOSINOPHILS (PERCENT OF 100 CELLS)"
         N1LB0325 = "BASOPHILS (PERCENT OF 100 CELLS)"
         N1LB0327 = "LYMPHOCYTES (PERCENT OF 100 CELLS)"
         N1LB0329 = "MONOCYTES (PERCENT OF 100 CELLS)"
         N1LB0331 = "ANISOCYTOSIS (VARIATION IN CELL SIZE)"
         N1LB0332 = "POIKILOCYTOSIS (VARIATION IN CELL SHAPE)"
         N1LB0333 = "MACROCYOSIS (LARGE CELL PREVALENCE)"
         N1LB0334 = "MICROCYTOSIS (SMALL CELL PREVALENCE)"
         N1LB0335 = "HYPOCHROMIA (STAINING INTENSITY OF C ..."
         N1LB0336 = "NUMBER OF NUCLEATED RED CELLS PER 10 ..."
         N1LB0338 = "PLATELET ESTIMATE"
         N1LB0339 = "MISCELLANEOUS FINDING-FIRST GLOSSARY ..."
         N1LB0341 = "SECOND GLOSSARY CODE"
         N1LB0343 = "THIRD GLOSSARY CODE"
         N1LB0345 = "FOURTH GLOSSARY CODE"
         N1LB0347 = "FIFTH GLOSSARY CODE"
         N1LB0349 = "SIXTH GLOSSARY CODE"
         N1LB0351 = "MORPHOLOGICAL INTERPRETATIONS-FIRST  ..."
         N1LB0353 = "SECOND GLOSSARY CODE"
         N1LB0355 = "THIRD GLOSSARY CODE"
         N1LB0357 = "FOURTH GLOSSARY CODE"
         N1LB0359 = "FIFTH GLOSSARY CODE"
         N1LB0361 = "SIXTH GLOSSARY CODE"
         N1LB0363 = "QUALITY OF SLIDE"
         N1LB0364 = "TECHNICIAN (READER ) NUMBER"
         N1LB0365 = "SLIDE READING RESULTS"
         N1LB0366 = "BLANK-DATA USER WORK AREA"
         N1LB0401 = "SEROLOGY-POLIO I"
         N1LB0404 = "POLIO II"
         N1LB0407 = "POLIO III"
         N1LB0410 = "MEASLES"
         N1LB0413 = "RUBELLA"
         N1LB0416 = "DIPHTHERIA"
         N1LB0421 = "TETANUS"
         N1LB0426 = "AMEBIASIS"
         N1LB0431 = "SYPHILIS SCREEN-ART (AUTOMATED REAGI ..."
         N1LB0432 = "SYPHILIS VERIFIED-(FLOURESCENT TREPO ..."
         N1LB0433 = "QUANTITATIVE SYPHILIS-ART (AUTOMATED ..."
         N1LB0436 = "QUANTITATIVE SYPHILIS-(AUTOMATED REA ..."
         N1LB0439 = "BLANK, USER WORKSPACE"
         N1LB0441 = "HEMOGLOBIN PHENOTYPE "
         N1LB0443 = "PERCENT A2  HEMOGLOBIN (XX.X)+A167"
         N1LB0446 = "PERCENT F HEMOGLOBIN (XX.X)"
         N1LB0449 = "BLANK, USER WORKSPACE"
         N1LB0451 = "SMA DETAILED BLOOD (DECIMALS NOT SHO ..."
         N1LB0455 = "SGOT(XXX.X)"
         N1LB0459 = "ALKALINE PHOSHATASE XXX.X)"
         N1LB0463 = "URIC ACID (XX.X)"
         N1LB0466 = "CALCIUM (XX.X)"
         N1LB0469 = "PHOSPHATE (XX.X)"
         N1LB0472 = "BUN (XX.X)"
         N1LB0475 = "CREATININE (XX.X)"
         N1LB0478 = "T4  TEST (X.XX)"
         N1LB0481 = "T3 TEST (X.XX)"
         N1LB0484 = "T4  MURPHY-PATTEE (XX.X)"
         N1LB0487 = "BLANK-DATA USER WORK AREA"
         N1LB0501 = "URINE DIPSTICK ANALYSIS-ALBUMIN (PRO ..."
         N1LB0502 = "GLUCOSE"
         N1LB0503 = "pH"
         N1LB0504 = "HEMATEST (BLOOD)"
         N1LB0505 = "UROBILINOGEN"
         N1LB0506 = "BILIRUBIN"
         N1LB0507 = "KETONES"
         N1LB0508 = "TECHNICIAN NUMBER"
         N1LB0510 = "BLANK-DATA USER WORK AREA"
         N1LB0526 = "RED BLOOD CELLS (MILLIONS/MM3) (X.XX ..."
         N1LB0529 = "WHITE BLOOD CELLS (THOUSANDS/MM3)(XX ..."
         N1LB0532 = "URINARY IODINE (MG/ML) (XX.XX-DECIMA ..."
         N1LB0536 = "URINARY RIBOFLAVIN (G/ML)(XX.XX-DECI ..."
         N1LB0540 = "URINARY THIAMINE (MG/ML)(XX.XX-DECIM ..."
         N1LB0544 = "URINARY CREATININE (MG/DL)XXX.X-DECI ..."
         N1LB0548 = "URINARY IODINE/CREATININE(MG/GM)XXXX ..."
         N1LB0554 = "URINARY RIBOFLAVIN/CREATININE(MG/GM) ..."
         N1LB0560 = "URINARY THIAMINE/CREATININE (MG/GM)( ..."
         N1LB0566 = "BLANK-DATA USER WORK AREA"
      ;
RUN;
