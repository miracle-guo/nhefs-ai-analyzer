/*
 *  Survey:           NHANES I
 *  Years:            1971-1975
 *  Questionnaire:    Arthritis Data
 *  Tape Number:      4121
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

VALUE AR0010F
     1='3,000,000 or more'
     2='1,000,000 to 2,999,999'
     3='250,000 to 999,999'
     4='under 250,000'
     5='Urban place 25,000 or more outside urbanized area'
     6='Urban place 10,000 to 24,999 outside urbanized area'
     7='Urban place 2,500 to 9,999 outside urbanized area'
     8='Rural'
     ;

VALUE AR0011F
     1='In SMSA, in central city'
     2='In SMSA, not in central city'
     3='Not in SMSA'
     ;

VALUE AR0012F
     1='Housing Unit'
     2='Other unit'
     ;

VALUE AR0013F
     1='All other'
     2='Rural  7136'
     ;

VALUE AR0014F
     1='10 or more acres'
     2='Less than 10 acres'
     9='Not applicable'
     ;

VALUE AR0015F
     2='Yes'
     4='No'
     9='Not applicable'
     ;

VALUE AR0016F
     3='Yes'
     5='No'
     9='Not applicable'
     ;

VALUE AR0017F
     00='Blank, but applicable'
     ;

VALUE AR0019F
     1='Male'
     2='Female'
     ;

VALUE AR0020F
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

VALUE AR0022F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE AR0027F
     9='9 or more'
     ;

VALUE AR0028F
     1='Yes'
     2='No'
     ;

VALUE AR0029F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE AR0030F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE AR0031F
     1='Yes'
     2='No'
     ;

VALUE AR0032F
     1='Yes'
     2='No'
     ;

VALUE AR0033F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE AR0034F
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

VALUE AR0036F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AR0037F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AR0041F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AR0042F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AR0046F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AR0047F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AR0051F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AR0052F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AR0056F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AR0057F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AR0061F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AR0062F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AR0066F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AR0067F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AR0071F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AR0072F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AR0076F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AR0077F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AR0081F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AR0082F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AR0086F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AR0087F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AR0091F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AR0100F
     1='Head (1 person living along or with non-relatives)'
     2='Head (2 or more related persons in family)'
     3='Wife'
     4='Child'
     5='Other relative'
     ;

VALUE AR0103F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE AR0104F
     1='Male'
     2='Female'
     ;

VALUE AR0105F
     1='Under 17'
     2='Married'
     3='Widowed'
     4='Never Married'
     5='Divorced'
     6='Separated'
     8='Blank, but applicable'
     ;

VALUE AR0110F
     88='Blank, but applicable'
     ;

VALUE AR0112F
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

VALUE AR0114F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AR0115F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AR0116F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AR0117F
     1='Nursery'
     2='Kindergarten'
     3='Other'
     4='Headstart'
     5='Daycare'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AR0118F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0119F
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

VALUE AR0120F
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

VALUE AR0122F
     1='Working'
     2='Keeping house'
     3='Something else'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AR0123F
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

VALUE AR0124F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AR0125F
     1='Full-time'
     2='Part-time'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AR0126F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AR0127F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AR0128F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AR0129F
     1='Looking'
     2='Lay-off'
     3='Both'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AR0130F
     1='Private paid'
     2='Government-Federal'
     3='Government-Other'
     4='Own'
     5='Non-paid'
     6='Never worked'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AR0131F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AR0146F
     1='Farm'
     2='Nonfarm'
     ;

VALUE AR0147F
     998='Index computed 998 or greater'
     999='Unknown'
     ;

VALUE AR0150F
     1='Northeast'
     2='Midwest'
     3='South'
     4='West'
     ;

VALUE AR0151F
     1='Not applicable'
     2='No program available'
     3='Food stamps available'
     4='Commodities available'
     8='Blank, but applicable'
     ;

VALUE AR0152F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE AR0153F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE AR0154F
     1='No need'
     2='Not enough money at the time'
     3='No transportation'
     4='Pride'
     5='Other'
     8='Blank, but applicable'
     ;

VALUE AR0155F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE AR0156F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE AR0157F
     1='No need'
     2='No transportation'
     3='Pride'
     4='Other'
     8='Blank, but applicable'
     ;

VALUE AR0225F
     1='Yes'
     2='No'
     ;

VALUE AR0226F
     1='Yes'
     2='No'
     ;

VALUE AR0227F
     1='Yes'
     2='No'
     ;

VALUE AR0228F
     1='Yes'
     2='No'
     ;

VALUE AR0229F
     1='Yes'
     2='No'
     ;

VALUE AR0230F
     1='Yes'
     2='No'
     ;

VALUE AR0231F
     1='Yes'
     2='No'
     ;

VALUE AR0232F
     1='Yes'
     2='No'
     ;

VALUE AR0233F
     1='Yes'
     2='No'
     ;

VALUE AR0234F
     1='Yes'
     2='No'
     ;

VALUE AR0235F
     1='Yes'
     2='No'
     ;

VALUE AR0236F
     1='Yes'
     2='No'
     ;

VALUE AR0237F
     1='Yes'
     2='No'
     3='Not applicable - no pain in back'
     ;

VALUE AR0238F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0239F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0240F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0241F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0242F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0243F
     1='Yes'
     2='No'
     3='Not applicable - no pain in neck'
     ;

VALUE AR0244F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0245F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0246F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0247F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0248F
     1='Yes'
     2='No'
     ;

VALUE AR0249F
     1='Yes'
     2='No'
     ;

VALUE AR0250F
     1='Yes'
     2='No'
     ;

VALUE AR0251F
     1='Yes'
     2='No'
     ;

VALUE AR0252F
     1='Yes'
     2='No'
     ;

VALUE AR0253F
     1='Less than 20 years old'
     2='20-29 years old'
     3='30-39 years old'
     4='40-49 years old'
     5='50-59 years old'
     6='60 years old or older'
     ;

VALUE AR0254F
     1='Now'
     2='Less than 1 year ago but not now'
     3='1-2 years ago'
     4='3-5 years ago'
     5='6 years ago or more'
     ;

VALUE AR0255F
     1='Less than one month'
     2='One but less than two months'
     3='2-3 months'
     4='4-5 months'
     5='6 months or more'
     9='Dont remember'
     ;

VALUE AR0256F
     1='Yes'
     2='No'
     ;

VALUE AR0257F
     1='Yes'
     2='No'
     ;

VALUE AR0258F
     1='Yes'
     2='No'
     ;

VALUE AR0259F
     1='Yes'
     2='No'
     ;

VALUE AR0260F
     88='Blank but applicable'
     ;

VALUE AR0262F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0263F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0264F
     1='Yes'
     2='No'
     ;

VALUE AR0265F
     1='Yes'
     2='No'
     ;

VALUE AR0266F
     1='Yes'
     2='No'
     ;

VALUE AR0267F
     1='Left hip'
     2='Right hip'
     3='Both hips'
     ;

VALUE AR0268F
     1='Yes'
     2='No'
     ;

VALUE AR0269F
     1='Yes'
     2='No'
     ;

VALUE AR0270F
     1='Yes'
     2='No'
     ;

VALUE AR0271F
     1='Yes'
     2='No'
     ;

VALUE AR0272F
     1='Yes'
     2='No'
     ;

VALUE AR0273F
     1='Yes'
     2='No'
     ;

VALUE AR0274F
     1='Yes'
     2='No'
     ;

VALUE AR0275F
     1='Yes'
     2='No'
     ;

VALUE AR0276F
     1='Yes'
     2='No'
     ;

VALUE AR0277F
     1='Yes'
     2='No'
     ;

VALUE AR0278F
     1='Yes'
     2='No'
     ;

VALUE AR0279F
     1='Yes'
     2='No'
     ;

VALUE AR0280F
     1='Yes'
     2='No'
     ;

VALUE AR0281F
     1='Yes'
     2='No'
     ;

VALUE AR0282F
     1='Yes'
     2='No'
     ;

VALUE AR0283F
     1='Yes'
     2='No'
     ;

VALUE AR0284F
     1='Less than 20 years old'
     2='20-29 years old'
     3='30-39 years old'
     4='40-49 years old'
     5='50-59 years old'
     6='60 years old or older'
     ;

VALUE AR0285F
     1='Now'
     2='Less than one year ago but not now'
     3='1-2 years ago'
     4='3-5 years ago'
     5='6 years ago or more'
     ;

VALUE AR0286F
     1='Less than one month'
     2='One but less than 2 months'
     3='2-3 months'
     4='4-5 months'
     5='6 months or more'
     9='Dont remember'
     ;

VALUE AR0287F
     1='Yes'
     2='No'
     ;

VALUE AR0288F
     1='Right'
     2='Left'
     3='Both'
     ;

VALUE AR0291F
     1='Yes'
     2='No'
     ;

VALUE AR0292F
     1='Yes'
     2='No'
     ;

VALUE AR0293F
     1='Yes'
     2='No'
     ;

VALUE AR0294F
     1='Right'
     2='Left'
     3='Both'
     ;

VALUE AR0295F
     88='Blank, but applicable'
     ;

VALUE AR0297F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0298F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0299F
     1='Yes'
     2='No'
     ;

VALUE AR0300F
     1='Yes'
     2='No'
     ;

VALUE AR0301F
     1='Left knee'
     2='Right knee'
     3='Both knees'
     9='Dont remember'
     ;

VALUE AR0302F
     1='Less than 20 years old'
     2='20-29 years old'
     3='30-39 years old'
     4='40-49 years old'
     5='50-59 years old'
     6='60 years old or older'
     ;

VALUE AR0303F
     1='Yes'
     2='No'
     ;

VALUE AR0304F
     1='Yes'
     2='No'
     ;

VALUE AR0305F
     1='Yes'
     2='No'
     ;

VALUE AR0306F
     1='Yes'
     2='No'
     ;

VALUE AR0307F
     1='Yes'
     2='No'
     ;

VALUE AR0308F
     1='Yes'
     2='No'
     ;

VALUE AR0309F
     1='Yes'
     2='No'
     ;

VALUE AR0310F
     1='Yes'
     2='No'
     ;

VALUE AR0311F
     1='Yes'
     2='No'
     ;

VALUE AR0312F
     1='Yes'
     2='No'
     ;

VALUE AR0313F
     1='Left'
     2='Right'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE AR0314F
     1='Now'
     2='Less than one year ago but not now'
     3='1-2 years ago'
     4='3-5 years ago'
     5='6 years ago or more'
     ;

VALUE AR0315F
     1='Less than one month'
     2='One but less than two months'
     3='2-3 months'
     4='4-5 months'
     5='6 months or more'
     9='Dont remember'
     ;

VALUE AR0316F
     1='Yes'
     2='No'
     ;

VALUE AR0317F
     1='Right'
     2='Left'
     3='Both'
     ;

VALUE AR0318F
     1='Yes'
     2='No'
     ;

VALUE AR0319F
     1='Right'
     2='Left'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE AR0320F
     1='Yes'
     2='No'
     ;

VALUE AR0321F
     1='Right'
     2='Left'
     3='Both'
     ;

VALUE AR0322F
     1='Yes'
     2='No'
     ;

VALUE AR0323F
     1='Hip'
     2='Knee'
     3='Back'
     4='Hip and knee'
     5='Back and knee'
     6='Hip and back'
     7='All'
     ;

VALUE AR0324F
     1='Right'
     2='Left'
     3='Both'
     ;

VALUE AR0325F
     1='Right'
     2='Left'
     3='Both'
     ;

VALUE AR0326F
     1='Yes'
     2='No'
     ;

VALUE AR0327F
     1='Yes'
     2='No'
     ;

VALUE AR0328F
     1='Right'
     2='Left'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE AR0329F
     1='Yes'
     2='No'
     ;

VALUE AR0330F
     1='Right'
     2='Left'
     3='Both'
     ;

VALUE AR0331F
     1='Yes'
     2='No'
     ;

VALUE AR0332F
     1='Right'
     2='Left'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE AR0333F
     1='Yes'
     2='No'
     ;

VALUE AR0334F
     1='Right'
     2='Left'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE AR0335F
     1='Yes'
     2='No'
     ;

VALUE AR0336F
     1='Right'
     2='Left'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE AR0337F
     1='Yes'
     2='No'
     ;

VALUE AR0338F
     1='Right'
     2='Left'
     3='Both'
     ;

VALUE AR0339F
     1='Yes'
     2='No'
     ;

VALUE AR0340F
     1='Yes'
     2='No'
     ;

VALUE AR0341F
     1='Yes'
     2='No'
     ;

VALUE AR0342F
     1='Right'
     2='Left'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE AR0343F
     1='Yes'
     2='No'
     ;

VALUE AR0344F
     1='Right'
     2='Left'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE AR0345F
     1='Yes'
     2='No'
     ;

VALUE AR0346F
     1='Right'
     2='Left'
     3='Both'
     ;

VALUE AR0347F
     1='Yes'
     2='No'
     ;

VALUE AR0348F
     1='Right'
     2='Left'
     3='Both'
     ;

VALUE AR0349F
     1='Yes'
     2='No'
     ;

VALUE AR0350F
     1='Right'
     2='Left'
     3='Both'
     ;

VALUE AR0351F
     1='Yes'
     2='No'
     ;

VALUE AR0352F
     1='Right'
     2='Left'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE AR0353F
     1='Yes'
     2='No'
     ;

VALUE AR0354F
     1='Right'
     2='Left'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE AR0355F
     1='Yes'
     2='No'
     ;

VALUE AR0356F
     1='Right'
     2='Left'
     3='Both'
     ;

VALUE AR0357F
     1='Less than 20 years old'
     2='20-29 years old'
     3='30-39 years old'
     4='40-49 years old'
     5='50-59 years old'
     6='60 years old or older'
     ;

VALUE AR0358F
     1='Now'
     2='Less than one year ago but not now'
     3='1-2 years ago'
     4='3-5 years ago'
     5='6 years ago or more'
     ;

VALUE AR0359F
     1='Yes'
     2='No'
     ;

VALUE AR0360F
     1='Yes'
     2='No'
     ;

VALUE AR0361F
     1='Yes'
     2='No'
     ;

VALUE AR0362F
     1='Right'
     2='Left'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE AR0363F
     1='Yes'
     2='No'
     ;

VALUE AR0364F
     1='Right'
     2='Left'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE AR0365F
     1='Yes'
     2='No'
     ;

VALUE AR0366F
     1='Right'
     2='Left'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE AR0367F
     1='Yes'
     2='No'
     ;

VALUE AR0368F
     1='Right'
     2='Left'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE AR0369F
     1='Yes'
     2='No'
     ;

VALUE AR0370F
     1='Right'
     2='Left'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE AR0371F
     1='Yes'
     2='No'
     ;

VALUE AR0372F
     1='Right'
     2='Left'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE AR0373F
     1='Yes'
     2='No'
     ;

VALUE AR0374F
     1='Right'
     2='Left'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE AR0375F
     1='Yes'
     2='No'
     ;

VALUE AR0376F
     1='Right'
     2='Left'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE AR0377F
     1='Yes'
     2='No'
     ;

VALUE AR0379F
     1='Less than 15 minutes'
     2='15 minutes to one-half hour'
     3='More than one-half hour but less than all day'
     4='All day'
     ;

VALUE AR0380F
     1='Less than 20 years old'
     2='20-29 years old'
     3='30-39 years old'
     4='40-49 years old'
     5='50-59 years old'
     6='60 years old or older'
     ;

VALUE AR0381F
     1='Now'
     2='Less than one year ago but not now'
     3='1-3 years ago'
     4='4-9 years ago'
     5='10 years ago or more'
     ;

VALUE AR0382F
     1='Yes'
     2='No'
     ;

VALUE AR0383F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE AR0384F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE AR0385F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0386F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0387F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0388F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0389F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0390F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0391F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0392F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0393F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0394F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0395F
     9='Never been treated'
     ;

VALUE AR0396F
     1='Yes'
     2='No'
     ;

VALUE AR0397F
     1='General Practitioner'
     2='Internist'
     3='Rheumatologist'
     4='Orthopedist'
     5='Chiropractor'
     6='Osteopath'
     7='Other specialist'
     8='Other'
     ;

VALUE AR0398F
     1='Yes'
     ;

VALUE AR0399F
     1='Yes'
     ;

VALUE AR0400F
     1='Yes'
     ;

VALUE AR0401F
     1='Yes'
     ;

VALUE AR0402F
     1='Yes'
     ;

VALUE AR0403F
     1='Yes'
     ;

VALUE AR0404F
     1='Less than 2 month ago'
     2='1-3 months ago'
     3='4-6 months ago'
     4='7-11 months ago'
     5='1 year ago or more'
     9='Dont know'
     ;

VALUE AR0405F
     1='No one'
     2='Hes the regular doctor'
     3='Another doctor'
     4='Family'
     5='Clinic'
     6='Health Nurse'
     7='Friend'
     8='Other'
     ;

VALUE AR0406F
     1='His office'
     2='At a clinic'
     3='At home'
     4='Other'
     ;

VALUE AR0407F
     1='Less than 1 month'
     2='1-2 months'
     3='3-6 months'
     4='7-11 months'
     5='1 year or more'
     9='Dont know'
     ;

VALUE AR0408F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0409F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0410F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0411F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0412F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0413F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0414F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0415F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0416F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0417F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0418F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0419F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0420F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0421F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0422F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0423F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0424F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0425F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0426F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0427F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0428F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0429F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0430F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0431F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0432F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0433F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0434F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0435F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0436F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0437F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0438F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0439F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0440F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0441F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0442F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0443F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0444F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0445F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0446F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0447F
     1='Yes'
     2='No'
     ;

VALUE AR0448F
     1='Yes'
     2='No'
     ;

VALUE AR0449F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AR0450F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AR0451F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AR0452F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AR0453F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AR0454F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AR0455F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AR0456F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AR0457F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0458F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0459F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0460F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0461F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0462F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0463F
     1='Very little'
     2='Quite a bit'
     3='A whole lot'
     8='Blank, but applicable'
     ;

VALUE AR0464F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0465F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AR0466F
     1='Mild?'
     2='Moderate?'
     3='Severe?'
     8='Blank, but applicable'
     ;

VALUE AR0467F
     1='Retired because of age'
     2='Retired because of disability'
     3='Unemployed'
     4='Working full-time'
     5='Working part-time'
     6='Housewife with full duties'
     7='Housewife with partial or no duties'
     8='Other'
     9='Blank, but applicable'
     ;

VALUE AR0468F
     1='Yes'
     2='No'
     ;

VALUE AR0469F
     1='Retired because of disability'
     2='Unemployed'
     3='Changed to easier job'
     4='Working'
     5='Housewife with partial duties'
     6='Housewife with no duties'
     7='Other'
     ;

VALUE AR0470F
     1='None'
     2='1-4 days'
     3='5-9 days'
     4='10-14 days'
     5='15-19 days'
     6='20-29 days'
     7='30 days or more'
     8='Blank, but applicable'
     ;

VALUE AR0471F
     0='No film'
     1='Unreadable'
     2='Poor'
     3='Satisfactory'
     4='Excellent'
     ;

VALUE AR0472F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0473F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0474F
     0='No film'
     1='Unreadable'
     2='Poor'
     3='Satisfactory'
     4='Excellent'
     9='X-ray not taken--Examinee--Female under 50 years of age'
     ;

VALUE AR0475F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0476F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0477F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0478F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0484F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0485F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0486F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0487F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0488F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0489F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0490F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0491F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0492F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0493F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0494F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0495F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0496F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0497F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0498F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0499F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0500F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0501F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0502F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0503F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0504F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0506F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0507F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0508F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0509F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0510F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0511F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0512F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0513F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0514F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0515F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0516F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0517F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0518F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0519F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0520F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0521F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0522F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0523F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0524F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0525F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0526F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0527F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0528F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0529F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0530F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0531F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0532F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0533F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0534F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0535F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0536F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0537F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0538F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0539F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0540F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0541F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0542F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0543F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0544F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0545F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0546F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0547F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0549F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0550F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0551F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0552F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0553F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0554F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0555F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0556F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0557F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0558F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0559F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0560F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0561F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0562F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0563F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0564F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0565F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0566F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0567F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0568F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0569F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0570F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0571F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0572F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0573F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0574F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0575F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0576F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0577F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0578F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0579F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0580F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0581F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0582F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0583F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0585F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0586F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0587F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0588F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0589F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0590F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0591F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0592F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0593F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0594F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0595F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0596F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0597F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0598F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0599F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0600F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0601F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0602F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0603F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0604F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0605F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0606F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0607F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0608F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0609F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0610F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0611F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0612F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0613F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0614F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0615F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0616F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0617F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0618F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0619F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0620F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0621F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0622F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0623F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0624F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0625F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0626F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0627F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0628F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0629F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0630F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0631F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0632F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0633F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0634F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0635F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0636F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0637F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0638F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0639F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0640F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0641F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0642F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0643F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0644F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0645F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0646F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0647F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0648F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0649F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0650F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0651F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0652F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0653F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0654F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0656F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0657F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0658F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0659F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0660F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0661F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0662F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0664F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0665F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0666F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0667F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0668F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0669F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0670F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0671F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0672F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0673F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0674F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0675F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0676F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;

VALUE AR0677F
     0='Normal'
     1='Questionable'
     2='Minimal'
     3='Moderate'
     4='Severe'
     ;
RUN;



DATA D_4121;
   INFILE 'c:\temp\DU4121.txt' LRECL = 2000 MISSOVER;
      LENGTH
         SEQN 8
         N1AR0006 8
         N1AR0010 4
         N1AR0011 4
         N1AR0012 4
         N1AR0013 4
         N1AR0014 4
         N1AR0015 4
         N1AR0016 4
         N1AR0017 4
         N1AR0019 4
         N1AR0020 4
         N1AR0022 4
         N1AR0023 4
         N1AR0025 4
         N1AR0027 4
         N1AR0028 4
         N1AR0029 4
         N1AR0030 4
         N1AR0031 4
         N1AR0032 4
         N1AR0033 4
         N1AR0034 4
         N1AR0036 4
         N1AR0037 8
         N1AR0041 4
         N1AR0042 8
         N1AR0046 4
         N1AR0047 8
         N1AR0051 4
         N1AR0052 8
         N1AR0056 4
         N1AR0057 8
         N1AR0061 4
         N1AR0062 8
         N1AR0066 4
         N1AR0067 8
         N1AR0071 4
         N1AR0072 8
         N1AR0076 4
         N1AR0077 8
         N1AR0081 4
         N1AR0082 8
         N1AR0086 4
         N1AR0087 8
         N1AR0091 8
         N1AR0095 8
         N1AR0100 4
         N1AR0101 4
         N1AR0103 4
         N1AR0104 4
         N1AR0105 4
         N1AR0106 8
         N1AR0110 4
         N1AR0112 4
         N1AR0114 4
         N1AR0115 4
         N1AR0116 4
         N1AR0117 4
         N1AR0118 4
         N1AR0119 4
         N1AR0120 4
         N1AR0122 4
         N1AR0123 4
         N1AR0124 4
         N1AR0125 4
         N1AR0126 4
         N1AR0127 4
         N1AR0128 4
         N1AR0129 4
         N1AR0130 4
         N1AR0131 4
         N1AR0132 4
         N1AR0135 4
         N1AR0138 8
         N1AR0144 4
         N1AR0146 4
         N1AR0147 4
         N1AR0150 4
         N1AR0151 4
         N1AR0152 4
         N1AR0153 4
         N1AR0154 4
         N1AR0155 4
         N1AR0156 4
         N1AR0157 4
         N1AR0158 8
         N1AR0164 $6
         N1AR0170 8
         N1AR0176 $6
         N1AR0182 8
         N1AR0188 8
         N1AR0194 4
         N1AR0196 4
         N1AR0199 4
         N1AR0201 8
         N1AR0205 $20
         N1AR0225 4
         N1AR0226 4
         N1AR0227 4
         N1AR0228 4
         N1AR0229 4
         N1AR0230 4
         N1AR0231 4
         N1AR0232 4
         N1AR0233 4
         N1AR0234 4
         N1AR0235 4
         N1AR0236 4
         N1AR0237 4
         N1AR0238 4
         N1AR0239 4
         N1AR0240 4
         N1AR0241 4
         N1AR0242 4
         N1AR0243 4
         N1AR0244 4
         N1AR0245 4
         N1AR0246 4
         N1AR0247 4
         N1AR0248 4
         N1AR0249 4
         N1AR0250 4
         N1AR0251 4
         N1AR0252 4
         N1AR0253 4
         N1AR0254 4
         N1AR0255 4
         N1AR0256 4
         N1AR0257 4
         N1AR0258 4
         N1AR0259 4
         N1AR0260 4
         N1AR0262 4
         N1AR0263 4
         N1AR0264 4
         N1AR0265 4
         N1AR0266 4
         N1AR0267 4
         N1AR0268 4
         N1AR0269 4
         N1AR0270 4
         N1AR0271 4
         N1AR0272 4
         N1AR0273 4
         N1AR0274 4
         N1AR0275 4
         N1AR0276 4
         N1AR0277 4
         N1AR0278 4
         N1AR0279 4
         N1AR0280 4
         N1AR0281 4
         N1AR0282 4
         N1AR0283 4
         N1AR0284 4
         N1AR0285 4
         N1AR0286 4
         N1AR0287 4
         N1AR0288 4
         N1AR0289 4
         N1AR0291 4
         N1AR0292 4
         N1AR0293 4
         N1AR0294 4
         N1AR0295 4
         N1AR0297 4
         N1AR0298 4
         N1AR0299 4
         N1AR0300 4
         N1AR0301 4
         N1AR0302 4
         N1AR0303 4
         N1AR0304 4
         N1AR0305 4
         N1AR0306 4
         N1AR0307 4
         N1AR0308 4
         N1AR0309 4
         N1AR0310 4
         N1AR0311 4
         N1AR0312 4
         N1AR0313 4
         N1AR0314 4
         N1AR0315 4
         N1AR0316 4
         N1AR0317 4
         N1AR0318 4
         N1AR0319 4
         N1AR0320 4
         N1AR0321 4
         N1AR0322 4
         N1AR0323 4
         N1AR0324 4
         N1AR0325 4
         N1AR0326 4
         N1AR0327 4
         N1AR0328 4
         N1AR0329 4
         N1AR0330 4
         N1AR0331 4
         N1AR0332 4
         N1AR0333 4
         N1AR0334 4
         N1AR0335 4
         N1AR0336 4
         N1AR0337 4
         N1AR0338 4
         N1AR0339 4
         N1AR0340 4
         N1AR0341 4
         N1AR0342 4
         N1AR0343 4
         N1AR0344 4
         N1AR0345 4
         N1AR0346 4
         N1AR0347 4
         N1AR0348 4
         N1AR0349 4
         N1AR0350 4
         N1AR0351 4
         N1AR0352 4
         N1AR0353 4
         N1AR0354 4
         N1AR0355 4
         N1AR0356 4
         N1AR0357 4
         N1AR0358 4
         N1AR0359 4
         N1AR0360 4
         N1AR0361 4
         N1AR0362 4
         N1AR0363 4
         N1AR0364 4
         N1AR0365 4
         N1AR0366 4
         N1AR0367 4
         N1AR0368 4
         N1AR0369 4
         N1AR0370 4
         N1AR0371 4
         N1AR0372 4
         N1AR0373 4
         N1AR0374 4
         N1AR0375 4
         N1AR0376 4
         N1AR0377 4
         N1AR0378 $1
         N1AR0379 4
         N1AR0380 4
         N1AR0381 4
         N1AR0382 4
         N1AR0383 4
         N1AR0384 4
         N1AR0385 4
         N1AR0386 4
         N1AR0387 4
         N1AR0388 4
         N1AR0389 4
         N1AR0390 4
         N1AR0391 4
         N1AR0392 4
         N1AR0393 4
         N1AR0394 4
         N1AR0395 4
         N1AR0396 4
         N1AR0397 4
         N1AR0398 4
         N1AR0399 4
         N1AR0400 4
         N1AR0401 4
         N1AR0402 4
         N1AR0403 4
         N1AR0404 4
         N1AR0405 4
         N1AR0406 4
         N1AR0407 4
         N1AR0408 4
         N1AR0409 4
         N1AR0410 4
         N1AR0411 4
         N1AR0412 4
         N1AR0413 4
         N1AR0414 4
         N1AR0415 4
         N1AR0416 4
         N1AR0417 4
         N1AR0418 4
         N1AR0419 4
         N1AR0420 4
         N1AR0421 4
         N1AR0422 4
         N1AR0423 4
         N1AR0424 4
         N1AR0425 4
         N1AR0426 4
         N1AR0427 4
         N1AR0428 4
         N1AR0429 4
         N1AR0430 4
         N1AR0431 4
         N1AR0432 4
         N1AR0433 4
         N1AR0434 4
         N1AR0435 4
         N1AR0436 4
         N1AR0437 4
         N1AR0438 4
         N1AR0439 4
         N1AR0440 4
         N1AR0441 4
         N1AR0442 4
         N1AR0443 4
         N1AR0444 4
         N1AR0445 4
         N1AR0446 4
         N1AR0447 4
         N1AR0448 4
         N1AR0449 4
         N1AR0450 4
         N1AR0451 4
         N1AR0452 4
         N1AR0453 4
         N1AR0454 4
         N1AR0455 4
         N1AR0456 4
         N1AR0457 4
         N1AR0458 4
         N1AR0459 4
         N1AR0460 4
         N1AR0461 4
         N1AR0462 4
         N1AR0463 4
         N1AR0464 4
         N1AR0465 4
         N1AR0466 4
         N1AR0467 4
         N1AR0468 4
         N1AR0469 4
         N1AR0470 4
         N1AR0471 4
         N1AR0472 4
         N1AR0473 4
         N1AR0474 4
         N1AR0475 4
         N1AR0476 4
         N1AR0477 4
         N1AR0478 4
         N1AR0479 $1
         N1AR0480 4
         N1AR0483 4
         N1AR0484 4
         N1AR0485 4
         N1AR0486 4
         N1AR0487 4
         N1AR0488 4
         N1AR0489 4
         N1AR0490 4
         N1AR0491 4
         N1AR0492 4
         N1AR0493 4
         N1AR0494 4
         N1AR0495 4
         N1AR0496 4
         N1AR0497 4
         N1AR0498 4
         N1AR0499 4
         N1AR0500 4
         N1AR0501 4
         N1AR0502 4
         N1AR0503 4
         N1AR0504 4
         N1AR0505 4
         N1AR0506 4
         N1AR0507 4
         N1AR0508 4
         N1AR0509 4
         N1AR0510 4
         N1AR0511 4
         N1AR0512 4
         N1AR0513 4
         N1AR0514 4
         N1AR0515 4
         N1AR0516 4
         N1AR0517 4
         N1AR0518 4
         N1AR0519 4
         N1AR0520 4
         N1AR0521 4
         N1AR0522 4
         N1AR0523 4
         N1AR0524 4
         N1AR0525 4
         N1AR0526 4
         N1AR0527 4
         N1AR0528 4
         N1AR0529 4
         N1AR0530 4
         N1AR0531 4
         N1AR0532 4
         N1AR0533 4
         N1AR0534 4
         N1AR0535 4
         N1AR0536 4
         N1AR0537 4
         N1AR0538 4
         N1AR0539 4
         N1AR0540 4
         N1AR0541 4
         N1AR0542 4
         N1AR0543 4
         N1AR0544 4
         N1AR0545 4
         N1AR0546 4
         N1AR0547 4
         N1AR0548 4
         N1AR0549 4
         N1AR0550 4
         N1AR0551 4
         N1AR0552 4
         N1AR0553 4
         N1AR0554 4
         N1AR0555 4
         N1AR0556 4
         N1AR0557 4
         N1AR0558 4
         N1AR0559 4
         N1AR0560 4
         N1AR0561 4
         N1AR0562 4
         N1AR0563 4
         N1AR0564 4
         N1AR0565 4
         N1AR0566 4
         N1AR0567 4
         N1AR0568 4
         N1AR0569 4
         N1AR0570 4
         N1AR0571 4
         N1AR0572 4
         N1AR0573 4
         N1AR0574 4
         N1AR0575 4
         N1AR0576 4
         N1AR0577 4
         N1AR0578 4
         N1AR0579 4
         N1AR0580 4
         N1AR0581 4
         N1AR0582 4
         N1AR0583 4
         N1AR0584 4
         N1AR0585 4
         N1AR0586 4
         N1AR0587 4
         N1AR0588 4
         N1AR0589 4
         N1AR0590 4
         N1AR0591 4
         N1AR0592 4
         N1AR0593 4
         N1AR0594 4
         N1AR0595 4
         N1AR0596 4
         N1AR0597 4
         N1AR0598 4
         N1AR0599 4
         N1AR0600 4
         N1AR0601 4
         N1AR0602 4
         N1AR0603 4
         N1AR0604 4
         N1AR0605 4
         N1AR0606 4
         N1AR0607 4
         N1AR0608 4
         N1AR0609 4
         N1AR0610 4
         N1AR0611 4
         N1AR0612 4
         N1AR0613 4
         N1AR0614 4
         N1AR0615 4
         N1AR0616 4
         N1AR0617 4
         N1AR0618 4
         N1AR0619 4
         N1AR0620 4
         N1AR0621 4
         N1AR0622 4
         N1AR0623 4
         N1AR0624 4
         N1AR0625 4
         N1AR0626 4
         N1AR0627 4
         N1AR0628 4
         N1AR0629 4
         N1AR0630 4
         N1AR0631 4
         N1AR0632 4
         N1AR0633 4
         N1AR0634 4
         N1AR0635 4
         N1AR0636 4
         N1AR0637 4
         N1AR0638 4
         N1AR0639 4
         N1AR0640 4
         N1AR0641 4
         N1AR0642 4
         N1AR0643 4
         N1AR0644 4
         N1AR0645 4
         N1AR0646 4
         N1AR0647 4
         N1AR0648 4
         N1AR0649 4
         N1AR0650 4
         N1AR0651 4
         N1AR0652 4
         N1AR0653 4
         N1AR0654 4
         N1AR0655 4
         N1AR0656 4
         N1AR0657 4
         N1AR0658 4
         N1AR0659 4
         N1AR0660 4
         N1AR0661 4
         N1AR0662 4
         N1AR0663 4
         N1AR0664 4
         N1AR0665 4
         N1AR0666 4
         N1AR0667 4
         N1AR0668 4
         N1AR0669 4
         N1AR0670 4
         N1AR0671 4
         N1AR0672 4
         N1AR0673 4
         N1AR0674 4
         N1AR0675 4
         N1AR0676 4
         N1AR0677 4
         N1AR0678 $23
      ;


FORMAT
     N1AR0010 AR0010F.
     N1AR0011 AR0011F.
     N1AR0012 AR0012F.
     N1AR0013 AR0013F.
     N1AR0014 AR0014F.
     N1AR0015 AR0015F.
     N1AR0016 AR0016F.
     N1AR0017 AR0017F.
     N1AR0019 AR0019F.
     N1AR0020 AR0020F.
     N1AR0022 AR0022F.
     N1AR0027 AR0027F.
     N1AR0028 AR0028F.
     N1AR0029 AR0029F.
     N1AR0030 AR0030F.
     N1AR0031 AR0031F.
     N1AR0032 AR0032F.
     N1AR0033 AR0033F.
     N1AR0034 AR0034F.
     N1AR0036 AR0036F.
     N1AR0037 AR0037F.
     N1AR0041 AR0041F.
     N1AR0042 AR0042F.
     N1AR0046 AR0046F.
     N1AR0047 AR0047F.
     N1AR0051 AR0051F.
     N1AR0052 AR0052F.
     N1AR0056 AR0056F.
     N1AR0057 AR0057F.
     N1AR0061 AR0061F.
     N1AR0062 AR0062F.
     N1AR0066 AR0066F.
     N1AR0067 AR0067F.
     N1AR0071 AR0071F.
     N1AR0072 AR0072F.
     N1AR0076 AR0076F.
     N1AR0077 AR0077F.
     N1AR0081 AR0081F.
     N1AR0082 AR0082F.
     N1AR0086 AR0086F.
     N1AR0087 AR0087F.
     N1AR0091 AR0091F.
     N1AR0100 AR0100F.
     N1AR0103 AR0103F.
     N1AR0104 AR0104F.
     N1AR0105 AR0105F.
     N1AR0110 AR0110F.
     N1AR0112 AR0112F.
     N1AR0114 AR0114F.
     N1AR0115 AR0115F.
     N1AR0116 AR0116F.
     N1AR0117 AR0117F.
     N1AR0118 AR0118F.
     N1AR0119 AR0119F.
     N1AR0120 AR0120F.
     N1AR0122 AR0122F.
     N1AR0123 AR0123F.
     N1AR0124 AR0124F.
     N1AR0125 AR0125F.
     N1AR0126 AR0126F.
     N1AR0127 AR0127F.
     N1AR0128 AR0128F.
     N1AR0129 AR0129F.
     N1AR0130 AR0130F.
     N1AR0131 AR0131F.
     N1AR0146 AR0146F.
     N1AR0147 AR0147F.
     N1AR0150 AR0150F.
     N1AR0151 AR0151F.
     N1AR0152 AR0152F.
     N1AR0153 AR0153F.
     N1AR0154 AR0154F.
     N1AR0155 AR0155F.
     N1AR0156 AR0156F.
     N1AR0157 AR0157F.
     N1AR0225 AR0225F.
     N1AR0226 AR0226F.
     N1AR0227 AR0227F.
     N1AR0228 AR0228F.
     N1AR0229 AR0229F.
     N1AR0230 AR0230F.
     N1AR0231 AR0231F.
     N1AR0232 AR0232F.
     N1AR0233 AR0233F.
     N1AR0234 AR0234F.
     N1AR0235 AR0235F.
     N1AR0236 AR0236F.
     N1AR0237 AR0237F.
     N1AR0238 AR0238F.
     N1AR0239 AR0239F.
     N1AR0240 AR0240F.
     N1AR0241 AR0241F.
     N1AR0242 AR0242F.
     N1AR0243 AR0243F.
     N1AR0244 AR0244F.
     N1AR0245 AR0245F.
     N1AR0246 AR0246F.
     N1AR0247 AR0247F.
     N1AR0248 AR0248F.
     N1AR0249 AR0249F.
     N1AR0250 AR0250F.
     N1AR0251 AR0251F.
     N1AR0252 AR0252F.
     N1AR0253 AR0253F.
     N1AR0254 AR0254F.
     N1AR0255 AR0255F.
     N1AR0256 AR0256F.
     N1AR0257 AR0257F.
     N1AR0258 AR0258F.
     N1AR0259 AR0259F.
     N1AR0260 AR0260F.
     N1AR0262 AR0262F.
     N1AR0263 AR0263F.
     N1AR0264 AR0264F.
     N1AR0265 AR0265F.
     N1AR0266 AR0266F.
     N1AR0267 AR0267F.
     N1AR0268 AR0268F.
     N1AR0269 AR0269F.
     N1AR0270 AR0270F.
     N1AR0271 AR0271F.
     N1AR0272 AR0272F.
     N1AR0273 AR0273F.
     N1AR0274 AR0274F.
     N1AR0275 AR0275F.
     N1AR0276 AR0276F.
     N1AR0277 AR0277F.
     N1AR0278 AR0278F.
     N1AR0279 AR0279F.
     N1AR0280 AR0280F.
     N1AR0281 AR0281F.
     N1AR0282 AR0282F.
     N1AR0283 AR0283F.
     N1AR0284 AR0284F.
     N1AR0285 AR0285F.
     N1AR0286 AR0286F.
     N1AR0287 AR0287F.
     N1AR0288 AR0288F.
     N1AR0291 AR0291F.
     N1AR0292 AR0292F.
     N1AR0293 AR0293F.
     N1AR0294 AR0294F.
     N1AR0295 AR0295F.
     N1AR0297 AR0297F.
     N1AR0298 AR0298F.
     N1AR0299 AR0299F.
     N1AR0300 AR0300F.
     N1AR0301 AR0301F.
     N1AR0302 AR0302F.
     N1AR0303 AR0303F.
     N1AR0304 AR0304F.
     N1AR0305 AR0305F.
     N1AR0306 AR0306F.
     N1AR0307 AR0307F.
     N1AR0308 AR0308F.
     N1AR0309 AR0309F.
     N1AR0310 AR0310F.
     N1AR0311 AR0311F.
     N1AR0312 AR0312F.
     N1AR0313 AR0313F.
     N1AR0314 AR0314F.
     N1AR0315 AR0315F.
     N1AR0316 AR0316F.
     N1AR0317 AR0317F.
     N1AR0318 AR0318F.
     N1AR0319 AR0319F.
     N1AR0320 AR0320F.
     N1AR0321 AR0321F.
     N1AR0322 AR0322F.
     N1AR0323 AR0323F.
     N1AR0324 AR0324F.
     N1AR0325 AR0325F.
     N1AR0326 AR0326F.
     N1AR0327 AR0327F.
     N1AR0328 AR0328F.
     N1AR0329 AR0329F.
     N1AR0330 AR0330F.
     N1AR0331 AR0331F.
     N1AR0332 AR0332F.
     N1AR0333 AR0333F.
     N1AR0334 AR0334F.
     N1AR0335 AR0335F.
     N1AR0336 AR0336F.
     N1AR0337 AR0337F.
     N1AR0338 AR0338F.
     N1AR0339 AR0339F.
     N1AR0340 AR0340F.
     N1AR0341 AR0341F.
     N1AR0342 AR0342F.
     N1AR0343 AR0343F.
     N1AR0344 AR0344F.
     N1AR0345 AR0345F.
     N1AR0346 AR0346F.
     N1AR0347 AR0347F.
     N1AR0348 AR0348F.
     N1AR0349 AR0349F.
     N1AR0350 AR0350F.
     N1AR0351 AR0351F.
     N1AR0352 AR0352F.
     N1AR0353 AR0353F.
     N1AR0354 AR0354F.
     N1AR0355 AR0355F.
     N1AR0356 AR0356F.
     N1AR0357 AR0357F.
     N1AR0358 AR0358F.
     N1AR0359 AR0359F.
     N1AR0360 AR0360F.
     N1AR0361 AR0361F.
     N1AR0362 AR0362F.
     N1AR0363 AR0363F.
     N1AR0364 AR0364F.
     N1AR0365 AR0365F.
     N1AR0366 AR0366F.
     N1AR0367 AR0367F.
     N1AR0368 AR0368F.
     N1AR0369 AR0369F.
     N1AR0370 AR0370F.
     N1AR0371 AR0371F.
     N1AR0372 AR0372F.
     N1AR0373 AR0373F.
     N1AR0374 AR0374F.
     N1AR0375 AR0375F.
     N1AR0376 AR0376F.
     N1AR0377 AR0377F.
     N1AR0379 AR0379F.
     N1AR0380 AR0380F.
     N1AR0381 AR0381F.
     N1AR0382 AR0382F.
     N1AR0383 AR0383F.
     N1AR0384 AR0384F.
     N1AR0385 AR0385F.
     N1AR0386 AR0386F.
     N1AR0387 AR0387F.
     N1AR0388 AR0388F.
     N1AR0389 AR0389F.
     N1AR0390 AR0390F.
     N1AR0391 AR0391F.
     N1AR0392 AR0392F.
     N1AR0393 AR0393F.
     N1AR0394 AR0394F.
     N1AR0395 AR0395F.
     N1AR0396 AR0396F.
     N1AR0397 AR0397F.
     N1AR0398 AR0398F.
     N1AR0399 AR0399F.
     N1AR0400 AR0400F.
     N1AR0401 AR0401F.
     N1AR0402 AR0402F.
     N1AR0403 AR0403F.
     N1AR0404 AR0404F.
     N1AR0405 AR0405F.
     N1AR0406 AR0406F.
     N1AR0407 AR0407F.
     N1AR0408 AR0408F.
     N1AR0409 AR0409F.
     N1AR0410 AR0410F.
     N1AR0411 AR0411F.
     N1AR0412 AR0412F.
     N1AR0413 AR0413F.
     N1AR0414 AR0414F.
     N1AR0415 AR0415F.
     N1AR0416 AR0416F.
     N1AR0417 AR0417F.
     N1AR0418 AR0418F.
     N1AR0419 AR0419F.
     N1AR0420 AR0420F.
     N1AR0421 AR0421F.
     N1AR0422 AR0422F.
     N1AR0423 AR0423F.
     N1AR0424 AR0424F.
     N1AR0425 AR0425F.
     N1AR0426 AR0426F.
     N1AR0427 AR0427F.
     N1AR0428 AR0428F.
     N1AR0429 AR0429F.
     N1AR0430 AR0430F.
     N1AR0431 AR0431F.
     N1AR0432 AR0432F.
     N1AR0433 AR0433F.
     N1AR0434 AR0434F.
     N1AR0435 AR0435F.
     N1AR0436 AR0436F.
     N1AR0437 AR0437F.
     N1AR0438 AR0438F.
     N1AR0439 AR0439F.
     N1AR0440 AR0440F.
     N1AR0441 AR0441F.
     N1AR0442 AR0442F.
     N1AR0443 AR0443F.
     N1AR0444 AR0444F.
     N1AR0445 AR0445F.
     N1AR0446 AR0446F.
     N1AR0447 AR0447F.
     N1AR0448 AR0448F.
     N1AR0449 AR0449F.
     N1AR0450 AR0450F.
     N1AR0451 AR0451F.
     N1AR0452 AR0452F.
     N1AR0453 AR0453F.
     N1AR0454 AR0454F.
     N1AR0455 AR0455F.
     N1AR0456 AR0456F.
     N1AR0457 AR0457F.
     N1AR0458 AR0458F.
     N1AR0459 AR0459F.
     N1AR0460 AR0460F.
     N1AR0461 AR0461F.
     N1AR0462 AR0462F.
     N1AR0463 AR0463F.
     N1AR0464 AR0464F.
     N1AR0465 AR0465F.
     N1AR0466 AR0466F.
     N1AR0467 AR0467F.
     N1AR0468 AR0468F.
     N1AR0469 AR0469F.
     N1AR0470 AR0470F.
     N1AR0471 AR0471F.
     N1AR0472 AR0472F.
     N1AR0473 AR0473F.
     N1AR0474 AR0474F.
     N1AR0475 AR0475F.
     N1AR0476 AR0476F.
     N1AR0477 AR0477F.
     N1AR0478 AR0478F.
     N1AR0484 AR0484F.
     N1AR0485 AR0485F.
     N1AR0486 AR0486F.
     N1AR0487 AR0487F.
     N1AR0488 AR0488F.
     N1AR0489 AR0489F.
     N1AR0490 AR0490F.
     N1AR0491 AR0491F.
     N1AR0492 AR0492F.
     N1AR0493 AR0493F.
     N1AR0494 AR0494F.
     N1AR0495 AR0495F.
     N1AR0496 AR0496F.
     N1AR0497 AR0497F.
     N1AR0498 AR0498F.
     N1AR0499 AR0499F.
     N1AR0500 AR0500F.
     N1AR0501 AR0501F.
     N1AR0502 AR0502F.
     N1AR0503 AR0503F.
     N1AR0504 AR0504F.
     N1AR0506 AR0506F.
     N1AR0507 AR0507F.
     N1AR0508 AR0508F.
     N1AR0509 AR0509F.
     N1AR0510 AR0510F.
     N1AR0511 AR0511F.
     N1AR0512 AR0512F.
     N1AR0513 AR0513F.
     N1AR0514 AR0514F.
     N1AR0515 AR0515F.
     N1AR0516 AR0516F.
     N1AR0517 AR0517F.
     N1AR0518 AR0518F.
     N1AR0519 AR0519F.
     N1AR0520 AR0520F.
     N1AR0521 AR0521F.
     N1AR0522 AR0522F.
     N1AR0523 AR0523F.
     N1AR0524 AR0524F.
     N1AR0525 AR0525F.
     N1AR0526 AR0526F.
     N1AR0527 AR0527F.
     N1AR0528 AR0528F.
     N1AR0529 AR0529F.
     N1AR0530 AR0530F.
     N1AR0531 AR0531F.
     N1AR0532 AR0532F.
     N1AR0533 AR0533F.
     N1AR0534 AR0534F.
     N1AR0535 AR0535F.
     N1AR0536 AR0536F.
     N1AR0537 AR0537F.
     N1AR0538 AR0538F.
     N1AR0539 AR0539F.
     N1AR0540 AR0540F.
     N1AR0541 AR0541F.
     N1AR0542 AR0542F.
     N1AR0543 AR0543F.
     N1AR0544 AR0544F.
     N1AR0545 AR0545F.
     N1AR0546 AR0546F.
     N1AR0547 AR0547F.
     N1AR0549 AR0549F.
     N1AR0550 AR0550F.
     N1AR0551 AR0551F.
     N1AR0552 AR0552F.
     N1AR0553 AR0553F.
     N1AR0554 AR0554F.
     N1AR0555 AR0555F.
     N1AR0556 AR0556F.
     N1AR0557 AR0557F.
     N1AR0558 AR0558F.
     N1AR0559 AR0559F.
     N1AR0560 AR0560F.
     N1AR0561 AR0561F.
     N1AR0562 AR0562F.
     N1AR0563 AR0563F.
     N1AR0564 AR0564F.
     N1AR0565 AR0565F.
     N1AR0566 AR0566F.
     N1AR0567 AR0567F.
     N1AR0568 AR0568F.
     N1AR0569 AR0569F.
     N1AR0570 AR0570F.
     N1AR0571 AR0571F.
     N1AR0572 AR0572F.
     N1AR0573 AR0573F.
     N1AR0574 AR0574F.
     N1AR0575 AR0575F.
     N1AR0576 AR0576F.
     N1AR0577 AR0577F.
     N1AR0578 AR0578F.
     N1AR0579 AR0579F.
     N1AR0580 AR0580F.
     N1AR0581 AR0581F.
     N1AR0582 AR0582F.
     N1AR0583 AR0583F.
     N1AR0585 AR0585F.
     N1AR0586 AR0586F.
     N1AR0587 AR0587F.
     N1AR0588 AR0588F.
     N1AR0589 AR0589F.
     N1AR0590 AR0590F.
     N1AR0591 AR0591F.
     N1AR0592 AR0592F.
     N1AR0593 AR0593F.
     N1AR0594 AR0594F.
     N1AR0595 AR0595F.
     N1AR0596 AR0596F.
     N1AR0597 AR0597F.
     N1AR0598 AR0598F.
     N1AR0599 AR0599F.
     N1AR0600 AR0600F.
     N1AR0601 AR0601F.
     N1AR0602 AR0602F.
     N1AR0603 AR0603F.
     N1AR0604 AR0604F.
     N1AR0605 AR0605F.
     N1AR0606 AR0606F.
     N1AR0607 AR0607F.
     N1AR0608 AR0608F.
     N1AR0609 AR0609F.
     N1AR0610 AR0610F.
     N1AR0611 AR0611F.
     N1AR0612 AR0612F.
     N1AR0613 AR0613F.
     N1AR0614 AR0614F.
     N1AR0615 AR0615F.
     N1AR0616 AR0616F.
     N1AR0617 AR0617F.
     N1AR0618 AR0618F.
     N1AR0619 AR0619F.
     N1AR0620 AR0620F.
     N1AR0621 AR0621F.
     N1AR0622 AR0622F.
     N1AR0623 AR0623F.
     N1AR0624 AR0624F.
     N1AR0625 AR0625F.
     N1AR0626 AR0626F.
     N1AR0627 AR0627F.
     N1AR0628 AR0628F.
     N1AR0629 AR0629F.
     N1AR0630 AR0630F.
     N1AR0631 AR0631F.
     N1AR0632 AR0632F.
     N1AR0633 AR0633F.
     N1AR0634 AR0634F.
     N1AR0635 AR0635F.
     N1AR0636 AR0636F.
     N1AR0637 AR0637F.
     N1AR0638 AR0638F.
     N1AR0639 AR0639F.
     N1AR0640 AR0640F.
     N1AR0641 AR0641F.
     N1AR0642 AR0642F.
     N1AR0643 AR0643F.
     N1AR0644 AR0644F.
     N1AR0645 AR0645F.
     N1AR0646 AR0646F.
     N1AR0647 AR0647F.
     N1AR0648 AR0648F.
     N1AR0649 AR0649F.
     N1AR0650 AR0650F.
     N1AR0651 AR0651F.
     N1AR0652 AR0652F.
     N1AR0653 AR0653F.
     N1AR0654 AR0654F.
     N1AR0656 AR0656F.
     N1AR0657 AR0657F.
     N1AR0658 AR0658F.
     N1AR0659 AR0659F.
     N1AR0660 AR0660F.
     N1AR0661 AR0661F.
     N1AR0662 AR0662F.
     N1AR0664 AR0664F.
     N1AR0665 AR0665F.
     N1AR0666 AR0666F.
     N1AR0667 AR0667F.
     N1AR0668 AR0668F.
     N1AR0669 AR0669F.
     N1AR0670 AR0670F.
     N1AR0671 AR0671F.
     N1AR0672 AR0672F.
     N1AR0673 AR0673F.
     N1AR0674 AR0674F.
     N1AR0675 AR0675F.
     N1AR0676 AR0676F.
     N1AR0677 AR0677F.
     ;

	INPUT
         SEQN 1-5
         N1AR0006 6-9
         N1AR0010 10
         N1AR0011 11
         N1AR0012 12
         N1AR0013 13
         N1AR0014 14
         N1AR0015 15
         N1AR0016 16
         N1AR0017 17-18
         N1AR0019 19
         N1AR0020 20-21
         N1AR0022 22
         N1AR0023 23-24
         N1AR0025 25-26
         N1AR0027 27
         N1AR0028 28
         N1AR0029 29
         N1AR0030 30
         N1AR0031 31
         N1AR0032 32
         N1AR0033 33
         N1AR0034 34-35
         N1AR0036 36
         N1AR0037 37-40
         N1AR0041 41
         N1AR0042 42-45
         N1AR0046 46
         N1AR0047 47-50
         N1AR0051 51
         N1AR0052 52-55
         N1AR0056 56
         N1AR0057 57-60
         N1AR0061 61
         N1AR0062 62-65
         N1AR0066 66
         N1AR0067 67-70
         N1AR0071 71
         N1AR0072 72-75
         N1AR0076 76
         N1AR0077 77-80
         N1AR0081 81
         N1AR0082 82-85
         N1AR0086 86
         N1AR0087 87-90
         N1AR0091 91-94
         N1AR0095 95-99
         N1AR0100 100
         N1AR0101 101-102
         N1AR0103 103
         N1AR0104 104
         N1AR0105 105
         N1AR0106 106-109
         N1AR0110 110-111
         N1AR0112 112-113
         N1AR0114 114
         N1AR0115 115
         N1AR0116 116
         N1AR0117 117
         N1AR0118 118
         N1AR0119 119
         N1AR0120 120-121
         N1AR0122 122
         N1AR0123 123
         N1AR0124 124
         N1AR0125 125
         N1AR0126 126
         N1AR0127 127
         N1AR0128 128
         N1AR0129 129
         N1AR0130 130
         N1AR0131 131
         N1AR0132 132-134
         N1AR0135 135-137
         N1AR0138 138-143
         N1AR0144 144-145
         N1AR0146 146
         N1AR0147 147-149
         N1AR0150 150
         N1AR0151 151
         N1AR0152 152
         N1AR0153 153
         N1AR0154 154
         N1AR0155 155
         N1AR0156 156
         N1AR0157 157
         N1AR0158 158-163
         N1AR0164 164-169
         N1AR0170 170-175
         N1AR0176 176-181
         N1AR0182 182-187
         N1AR0188 188-193
         N1AR0194 194-195
         N1AR0196 196-198
         N1AR0199 199-200
         N1AR0201 201-204
         N1AR0205 205-224
         N1AR0225 225
         N1AR0226 226
         N1AR0227 227
         N1AR0228 228
         N1AR0229 229
         N1AR0230 230
         N1AR0231 231
         N1AR0232 232
         N1AR0233 233
         N1AR0234 234
         N1AR0235 235
         N1AR0236 236
         N1AR0237 237
         N1AR0238 238
         N1AR0239 239
         N1AR0240 240
         N1AR0241 241
         N1AR0242 242
         N1AR0243 243
         N1AR0244 244
         N1AR0245 245
         N1AR0246 246
         N1AR0247 247
         N1AR0248 248
         N1AR0249 249
         N1AR0250 250
         N1AR0251 251
         N1AR0252 252
         N1AR0253 253
         N1AR0254 254
         N1AR0255 255
         N1AR0256 256
         N1AR0257 257
         N1AR0258 258
         N1AR0259 259
         N1AR0260 260-261
         N1AR0262 262
         N1AR0263 263
         N1AR0264 264
         N1AR0265 265
         N1AR0266 266
         N1AR0267 267
         N1AR0268 268
         N1AR0269 269
         N1AR0270 270
         N1AR0271 271
         N1AR0272 272
         N1AR0273 273
         N1AR0274 274
         N1AR0275 275
         N1AR0276 276
         N1AR0277 277
         N1AR0278 278
         N1AR0279 279
         N1AR0280 280
         N1AR0281 281
         N1AR0282 282
         N1AR0283 283
         N1AR0284 284
         N1AR0285 285
         N1AR0286 286
         N1AR0287 287
         N1AR0288 288
         N1AR0289 289-290
         N1AR0291 291
         N1AR0292 292
         N1AR0293 293
         N1AR0294 294
         N1AR0295 295-296
         N1AR0297 297
         N1AR0298 298
         N1AR0299 299
         N1AR0300 300
         N1AR0301 301
         N1AR0302 302
         N1AR0303 303
         N1AR0304 304
         N1AR0305 305
         N1AR0306 306
         N1AR0307 307
         N1AR0308 308
         N1AR0309 309
         N1AR0310 310
         N1AR0311 311
         N1AR0312 312
         N1AR0313 313
         N1AR0314 314
         N1AR0315 315
         N1AR0316 316
         N1AR0317 317
         N1AR0318 318
         N1AR0319 319
         N1AR0320 320
         N1AR0321 321
         N1AR0322 322
         N1AR0323 323
         N1AR0324 324
         N1AR0325 325
         N1AR0326 326
         N1AR0327 327
         N1AR0328 328
         N1AR0329 329
         N1AR0330 330
         N1AR0331 331
         N1AR0332 332
         N1AR0333 333
         N1AR0334 334
         N1AR0335 335
         N1AR0336 336
         N1AR0337 337
         N1AR0338 338
         N1AR0339 339
         N1AR0340 340
         N1AR0341 341
         N1AR0342 342
         N1AR0343 343
         N1AR0344 344
         N1AR0345 345
         N1AR0346 346
         N1AR0347 347
         N1AR0348 348
         N1AR0349 349
         N1AR0350 350
         N1AR0351 351
         N1AR0352 352
         N1AR0353 353
         N1AR0354 354
         N1AR0355 355
         N1AR0356 356
         N1AR0357 357
         N1AR0358 358
         N1AR0359 359
         N1AR0360 360
         N1AR0361 361
         N1AR0362 362
         N1AR0363 363
         N1AR0364 364
         N1AR0365 365
         N1AR0366 366
         N1AR0367 367
         N1AR0368 368
         N1AR0369 369
         N1AR0370 370
         N1AR0371 371
         N1AR0372 372
         N1AR0373 373
         N1AR0374 374
         N1AR0375 375
         N1AR0376 376
         N1AR0377 377
         N1AR0378 378
         N1AR0379 379
         N1AR0380 380
         N1AR0381 381
         N1AR0382 382
         N1AR0383 383
         N1AR0384 384
         N1AR0385 385
         N1AR0386 386
         N1AR0387 387
         N1AR0388 388
         N1AR0389 389
         N1AR0390 390
         N1AR0391 391
         N1AR0392 392
         N1AR0393 393
         N1AR0394 394
         N1AR0395 395
         N1AR0396 396
         N1AR0397 397
         N1AR0398 398
         N1AR0399 399
         N1AR0400 400
         N1AR0401 401
         N1AR0402 402
         N1AR0403 403
         N1AR0404 404
         N1AR0405 405
         N1AR0406 406
         N1AR0407 407
         N1AR0408 408
         N1AR0409 409
         N1AR0410 410
         N1AR0411 411
         N1AR0412 412
         N1AR0413 413
         N1AR0414 414
         N1AR0415 415
         N1AR0416 416
         N1AR0417 417
         N1AR0418 418
         N1AR0419 419
         N1AR0420 420
         N1AR0421 421
         N1AR0422 422
         N1AR0423 423
         N1AR0424 424
         N1AR0425 425
         N1AR0426 426
         N1AR0427 427
         N1AR0428 428
         N1AR0429 429
         N1AR0430 430
         N1AR0431 431
         N1AR0432 432
         N1AR0433 433
         N1AR0434 434
         N1AR0435 435
         N1AR0436 436
         N1AR0437 437
         N1AR0438 438
         N1AR0439 439
         N1AR0440 440
         N1AR0441 441
         N1AR0442 442
         N1AR0443 443
         N1AR0444 444
         N1AR0445 445
         N1AR0446 446
         N1AR0447 447
         N1AR0448 448
         N1AR0449 449
         N1AR0450 450
         N1AR0451 451
         N1AR0452 452
         N1AR0453 453
         N1AR0454 454
         N1AR0455 455
         N1AR0456 456
         N1AR0457 457
         N1AR0458 458
         N1AR0459 459
         N1AR0460 460
         N1AR0461 461
         N1AR0462 462
         N1AR0463 463
         N1AR0464 464
         N1AR0465 465
         N1AR0466 466
         N1AR0467 467
         N1AR0468 468
         N1AR0469 469
         N1AR0470 470
         N1AR0471 471
         N1AR0472 472
         N1AR0473 473
         N1AR0474 474
         N1AR0475 475
         N1AR0476 476
         N1AR0477 477
         N1AR0478 478
         N1AR0479 479
         N1AR0480 480-482
         N1AR0483 483
         N1AR0484 484
         N1AR0485 485
         N1AR0486 486
         N1AR0487 487
         N1AR0488 488
         N1AR0489 489
         N1AR0490 490
         N1AR0491 491
         N1AR0492 492
         N1AR0493 493
         N1AR0494 494
         N1AR0495 495
         N1AR0496 496
         N1AR0497 497
         N1AR0498 498
         N1AR0499 499
         N1AR0500 500
         N1AR0501 501
         N1AR0502 502
         N1AR0503 503
         N1AR0504 504
         N1AR0505 505
         N1AR0506 506
         N1AR0507 507
         N1AR0508 508
         N1AR0509 509
         N1AR0510 510
         N1AR0511 511
         N1AR0512 512
         N1AR0513 513
         N1AR0514 514
         N1AR0515 515
         N1AR0516 516
         N1AR0517 517
         N1AR0518 518
         N1AR0519 519
         N1AR0520 520
         N1AR0521 521
         N1AR0522 522
         N1AR0523 523
         N1AR0524 524
         N1AR0525 525
         N1AR0526 526
         N1AR0527 527
         N1AR0528 528
         N1AR0529 529
         N1AR0530 530
         N1AR0531 531
         N1AR0532 532
         N1AR0533 533
         N1AR0534 534
         N1AR0535 535
         N1AR0536 536
         N1AR0537 537
         N1AR0538 538
         N1AR0539 539
         N1AR0540 540
         N1AR0541 541
         N1AR0542 542
         N1AR0543 543
         N1AR0544 544
         N1AR0545 545
         N1AR0546 546
         N1AR0547 547
         N1AR0548 548
         N1AR0549 549
         N1AR0550 550
         N1AR0551 551
         N1AR0552 552
         N1AR0553 553
         N1AR0554 554
         N1AR0555 555
         N1AR0556 556
         N1AR0557 557
         N1AR0558 558
         N1AR0559 559
         N1AR0560 560
         N1AR0561 561
         N1AR0562 562
         N1AR0563 563
         N1AR0564 564
         N1AR0565 565
         N1AR0566 566
         N1AR0567 567
         N1AR0568 568
         N1AR0569 569
         N1AR0570 570
         N1AR0571 571
         N1AR0572 572
         N1AR0573 573
         N1AR0574 574
         N1AR0575 575
         N1AR0576 576
         N1AR0577 577
         N1AR0578 578
         N1AR0579 579
         N1AR0580 580
         N1AR0581 581
         N1AR0582 582
         N1AR0583 583
         N1AR0584 584
         N1AR0585 585
         N1AR0586 586
         N1AR0587 587
         N1AR0588 588
         N1AR0589 589
         N1AR0590 590
         N1AR0591 591
         N1AR0592 592
         N1AR0593 593
         N1AR0594 594
         N1AR0595 595
         N1AR0596 596
         N1AR0597 597
         N1AR0598 598
         N1AR0599 599
         N1AR0600 600
         N1AR0601 601
         N1AR0602 602
         N1AR0603 603
         N1AR0604 604
         N1AR0605 605
         N1AR0606 606
         N1AR0607 607
         N1AR0608 608
         N1AR0609 609
         N1AR0610 610
         N1AR0611 611
         N1AR0612 612
         N1AR0613 613
         N1AR0614 614
         N1AR0615 615
         N1AR0616 616
         N1AR0617 617
         N1AR0618 618
         N1AR0619 619
         N1AR0620 620
         N1AR0621 621
         N1AR0622 622
         N1AR0623 623
         N1AR0624 624
         N1AR0625 625
         N1AR0626 626
         N1AR0627 627
         N1AR0628 628
         N1AR0629 629
         N1AR0630 630
         N1AR0631 631
         N1AR0632 632
         N1AR0633 633
         N1AR0634 634
         N1AR0635 635
         N1AR0636 636
         N1AR0637 637
         N1AR0638 638
         N1AR0639 639
         N1AR0640 640
         N1AR0641 641
         N1AR0642 642
         N1AR0643 643
         N1AR0644 644
         N1AR0645 645
         N1AR0646 646
         N1AR0647 647
         N1AR0648 648
         N1AR0649 649
         N1AR0650 650
         N1AR0651 651
         N1AR0652 652
         N1AR0653 653
         N1AR0654 654
         N1AR0655 655
         N1AR0656 656
         N1AR0657 657
         N1AR0658 658
         N1AR0659 659
         N1AR0660 660
         N1AR0661 661
         N1AR0662 662
         N1AR0663 663
         N1AR0664 664
         N1AR0665 665
         N1AR0666 666
         N1AR0667 667
         N1AR0668 668
         N1AR0669 669
         N1AR0670 670
         N1AR0671 671
         N1AR0672 672
         N1AR0673 673
         N1AR0674 674
         N1AR0675 675
         N1AR0676 676
         N1AR0677 677
         N1AR0678 678-700
      ;

      LABEL
         SEQN = "SAMPLE SEQUENCE NUMBER"
         N1AR0006 = "CATALOG NUMBER 4271"
         N1AR0010 = "SIZE OF PLACE"
         N1AR0011 = "SMSA-NOT SMSA"
         N1AR0012 = "TYPE OF LIVING QUARTERS"
         N1AR0013 = "LAND USAGE"
         N1AR0014 = "IF RURAL, ASKED HOW MANY ACRES OF LA ..."
         N1AR0015 = "IF 10 ACRES OF MORE, ASKED IF SALE O ..."
         N1AR0016 = "IF 10 ACRES OR LESS, ASKED IF SALE O ..."
         N1AR0017 = "AGE-HEAD OF HOUSEHOLD"
         N1AR0019 = "SEX-HEAD OF HOUSEHOLD"
         N1AR0020 = "HIGHEST GRADE ATTENDED-HEAD OF HOUSEHOLD"
         N1AR0022 = "RACE-HEAD OF HOUSEHOLD"
         N1AR0023 = "TOTAL NUMBER OF PERSONS IN HOUSEHOLD"
         N1AR0025 = "TOTAL SAMPLE PERSONS IN HOUSEHOLD"
         N1AR0027 = "NUMBER OF ROOMS IN HOUSE "
         N1AR0028 = "IS THERE PIPED WATER?"
         N1AR0029 = "IS THERE HOT AND COLD PIPED WATER?"
         N1AR0030 = "IF YES TO PIPED WATER-DOES HOUSE HAV ..."
         N1AR0031 = "DOES HOUSE HAVE A RANGE OR COOK STOVE?"
         N1AR0032 = "DOES HOUSE HAVE A REFRIGERATOR?"
         N1AR0033 = "ARE KITCHEN FACILITIES USED BY ANYON ..."
         N1AR0034 = "TOTAL FAMILY INCOME GROUP"
         N1AR0036 = "WAGES OR SALARIES?"
         N1AR0037 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER ..."
         N1AR0041 = "SOCIAL SECURITY OR  RAILROAD RETIREMENT?"
         N1AR0042 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AR0046 = "WELFARE PAYMENTS OR OTHER PUBLIC ASS ..."
         N1AR0047 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AR0051 = "UNEMPLOYMENT OR WORKMEN'S COMPENSATION?"
         N1AR0052 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AR0056 = "GOVERNMENT EMPLOYEE PENSIONS OR PRIV ..."
         N1AR0057 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AR0061 = "DIVIDENDS, INTEREST OR RENT?"
         N1AR0062 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AR0066 = "NET INCOME FROM  OWN NON-FARM BUSINE ..."
         N1AR0067 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AR0071 = "NET INCOME FROM A FARM?"
         N1AR0072 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AR0076 = "VETERAN'S PAYMENTS"
         N1AR0077 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AR0081 = "ALIMONY, CHILD SUPPORT OR CONTRIBUTI ..."
         N1AR0082 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AR0086 = "ANY OTHER INCOME?"
         N1AR0087 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AR0091 = "TOTAL AMOUNT(TOTAL OF POSITIONS 37-90)"
         N1AR0095 = "FAMILY UNIT CODE"
         N1AR0100 = "RELATIONSHIP TO HEAD OF HOUSEHOLD"
         N1AR0101 = "AGE AT INTERVIEW"
         N1AR0103 = "RACE OF EXAMINED PERSON"
         N1AR0104 = "SEX OF EXAMINED PERSON"
         N1AR0105 = "MARITAL STATUS"
         N1AR0106 = "DATE OF BIRTH (MONTH, YEAR)"
         N1AR0110 = "PLACE OF BIRTH"
         N1AR0112 = "HIGHEST GRADE OF REGULAR SCHOOL EVER ..."
         N1AR0114 = "DID HE FINISH THE GRADE?"
         N1AR0115 = "IS HE ATTENDING SCHOOL NOW?"
         N1AR0116 = "HAS HE EVER ATTENDED A SCHOOL OF ANY ..."
         N1AR0117 = "IF YES, WHAT KIND OF SCHOOL?"
         N1AR0118 = "IS ANY LANGUAGE OTHER THAN ENGLISH F ..."
         N1AR0119 = "IF YES, WHAT LANGUAGE"
         N1AR0120 = "WHAT IS YOUR MAIN ANCESTRY OR NATION ..."
         N1AR0122 = "WHAT WAS HE DOING MOST PAST THREE MO ..."
         N1AR0123 = "IF ' SOMETHING ELSE' FROM ABOVE, WHA ..."
         N1AR0124 = "IF 'KEEPING HOUSE' OR 'SOMETHING ELS ..."
         N1AR0125 = "IF 'WORKING' FROM ABOVE, DID HE WORK ..."
         N1AR0126 = "DID HE WORK AT ANY TIME LAST WEEK OR ..."
         N1AR0127 = "IF 'NO TO ABOVE, EVEN THOUGH HE DID  ..."
         N1AR0128 = "IF 'NO' IN POSITION 126, WAS HE LOOK ..."
         N1AR0129 = "IF YES TO ABOVE-WHICH?"
         N1AR0130 = "CLASS OF WORKER"
         N1AR0131 = "IF SELF-EMPLOYED IN 'OWN' BUSINESS A ..."
         N1AR0132 = "BUSINESS OR INDUSTRY CODE"
         N1AR0135 = "OCCUPATION CODE"
         N1AR0138 = "DATE OF EXAMINATION"
         N1AR0144 = "AGE AT EXAMINATION"
         N1AR0146 = "FARM"
         N1AR0147 = "POVERTY INDEX (X.XX)"
         N1AR0150 = "RELIGION"
         N1AR0151 = "FOOD PROGRAMS APPLICABILITY"
         N1AR0152 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1AR0153 = "ARE YOU BUYING STAMPS NOW?"
         N1AR0154 = "WHAT IS THE MAIN REASON YOU AREN'T P ..."
         N1AR0155 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1AR0156 = "ARE YOU RECEIVING COMMODITY FOODS  N ..."
         N1AR0157 = "WHY AREN'T YOU PARTICIPATING IN THE  ..."
         N1AR0158 = "DETAILED PERSONS-LOCATIONS 1-35"
         N1AR0164 = "BLANK-DATA USER WORK AREA"
         N1AR0170 = "DETAILED PERSONS-LOCATIONS 1-65"
         N1AR0176 = "BLANK-DATA USER WORK AREA"
         N1AR0182 = "DETAILED PERSONS-LOCATIONS 66-100"
         N1AR0188 = "DETAILED PERSONS-LOCATIONS 1-100"
         N1AR0194 = "STRATA"
         N1AR0196 = "PSEUDO PRIMARY SAMPLING UNITS"
         N1AR0199 = "WORK AREA"
         N1AR0201 = "CATALOG NUMBER 4121"
         N1AR0205 = "BLANK-AVAILABLE FOR WORKSPACE"
         N1AR0225 = "PAIN IN BACK OR NECK ON MOST DAYS FO ..."
         N1AR0226 = "HAS PAIN BEEN PRESENT ON ANY ONE OCC ..."
         N1AR0227 = "IS PAIN USUALLY LOCATED IN NECK?"
         N1AR0228 = "IS PAIN USUALLY LOCATED IN UPPER BACK?"
         N1AR0229 = "IS PAIN USUALLY LOCATED IN MID-BACK?"
         N1AR0230 = "IS PAIN USUALLY LOCATED IN LOWER BACK?"
         N1AR0231 = "IS PAIN MOST INTENSE IN NECK?"
         N1AR0232 = "IS PAIN MOST INTENSE IN UPPER BACK?"
         N1AR0233 = "IS PAIN MOST INTENSE IN MID-BACK?"
         N1AR0234 = "IS PAIN MOST INTENSE IN LOWER BACK?"
         N1AR0235 = "PAIN PRESENT WHEN RESTING AT NIGHT?"
         N1AR0236 = "DOES PAIN AWAKEN YOU FROM SLEEP AT N ..."
         N1AR0237 = "HAS PAIN IN BACK EVER SEEMED TO SPREAD?"
         N1AR0238 = "DOES PAIN SPREAD TO THE BACK OF THE  ..."
         N1AR0239 = "DOES PAIN SPREAD TO THE BACK OF THE  ..."
         N1AR0240 = "DOES PAIN SPREAD TO THE BACK OF BOTH ..."
         N1AR0241 = "DOES PAIN SPREAD TO THE TOP OF THE HEAD?"
         N1AR0242 = "DOES PAIN SPREAD TO THE SIDES OF THE ..."
         N1AR0243 = "HAS PAIN IN NECK EVER SEEMED TO SPREAD?"
         N1AR0244 = "DOES PAIN SPREAD TO   THE TOP AND BA ..."
         N1AR0245 = "DOES PAIN SPREAD TO EITHER SHOULDER  ..."
         N1AR0246 = "DOES PAIN SPREAD TO THE ARMS OR HANDS?"
         N1AR0247 = "DOES PAIN SPREAD TO OTHER LOCATIONS?"
         N1AR0248 = "IS BACK OR NECK PAIN MADE WORSE BY C ..."
         N1AR0249 = "IS BACK OR NECK PAIN MADE WORSE WITH ..."
         N1AR0250 = "IS BACK OR NECK PAIN MADE WORSE AFTE ..."
         N1AR0251 = "IS BACK OR NECK PAIN MADE WORSE BY P ..."
         N1AR0252 = "IS BACK OR NECK PAIN MADE WORSE AFTE ..."
         N1AR0253 = "HOW OLD WHEN FIRST EXPERIENCED RECUR ..."
         N1AR0254 = "WHEN WAS LAST TIME YOU HAD THIS PAIN?"
         N1AR0255 = "WHAT IS LONGEST EPISODE OF BACK OR N ..."
         N1AR0256 = "DOES BACK OR NECK PAIN OCCUR MORE FR ..."
         N1AR0257 = "EVER HAD SPRAINED BACK DUE TO SOME T ..."
         N1AR0258 = "EVER HAD A 'WHIPLASH' INJURY OF THE  ..."
         N1AR0259 = "EVER HAD RUPTURED DISC IN EITHER YOU ..."
         N1AR0260 = "AT WHAT AGE?"
         N1AR0262 = "WERE YOU IN TRACTION?"
         N1AR0263 = "WAS SURGERY NECESSARY?"
         N1AR0264 = "EVER STAYED IN HOSPITAL OVERNIGHT FO ..."
         N1AR0265 = "HAD PAIN IN OR AROUND EITHER HIP JOI ..."
         N1AR0266 = "HAS PAIN IN HI AREA BEEN PRESENT ON  ..."
         N1AR0267 = "WHERE DID YOU FIRST NOTICE IT?"
         N1AR0268 = "IN HIP AREA IS PAIN USUALLY MOST INT ..."
         N1AR0269 = "IN HIP AREA IS PAIN USUALLY MOST INT ..."
         N1AR0270 = "IN HIP AREA IS PAIN USUALLY MOST INT ..."
         N1AR0271 = "IN HIP AREA IS PAIN USUALLY INTENSE  ..."
         N1AR0272 = "IN HIP AREA IS PAIN USUALLY INTENSE  ..."
         N1AR0273 = "IN HIP AREA IS PAIN USUALLY INTENSE  ..."
         N1AR0274 = "IN HIP AREA IS PAIN USUALLY MOST INT ..."
         N1AR0275 = "IN HIP AREA IS PAIN USUALLY MOST INT ..."
         N1AR0276 = "IN HIP AREA IS PAIN USUALLY MOST INT ..."
         N1AR0277 = "IN HIP AREA IS PAIN USUALLY MOST INT ..."
         N1AR0278 = "FROM HIP HAS PAIN TENDED TO SPREAD T ..."
         N1AR0279 = "FROM HIP HAS PAIN TENDED TO SPREAD T ..."
         N1AR0280 = "FROM HIP HAS PAIN TENDED TO SPREAD T ..."
         N1AR0281 = "FROM HIP HAS PAIN TENDED TO SPREAD T ..."
         N1AR0282 = "HAD PAIN IN OR AROUND HIP WHEN COUGH ..."
         N1AR0283 = "WHEN HIP PAIN PRESENT DOES IT HURT A ..."
         N1AR0284 = "HOW OLD WHEN FIRST EXPERIENCED RECUR ..."
         N1AR0285 = "LAST TIME YOU HAD PAIN?"
         N1AR0286 = "LONGEST EPISODE OF HIP PAIN YOU HAVE ..."
         N1AR0287 = "EVER HAD A FRACTURED HIP?"
         N1AR0288 = "WHICH HIP WAS BROKEN?"
         N1AR0289 = "HOW OLD WHEN  IT HAPPENED?"
         N1AR0291 = "WAS HIP IN TRACTION?"
         N1AR0292 = "WAS THERE SURGERY"
         N1AR0293 = "EVER HAD A DISLOCATED HIP?"
         N1AR0294 = "WHICH HIP DISLOCATED?"
         N1AR0295 = "HOW OLD WHEN IT HAPPENED?"
         N1AR0297 = "WAS HIP IN TRACTION?"
         N1AR0298 = "WAS THERE SURGERY?"
         N1AR0299 = "HAD PAIN IN OR AROUND KNEE MOST DAYS ..."
         N1AR0300 = "PAIN IN KNEE AREA BEEN PRESENT ON AN ..."
         N1AR0301 = "IN WHICH KNEE DID YOU FIRST HAVE IT?"
         N1AR0302 = "HOW OLD WHEN FIRST EXPERIENCED RECUR ..."
         N1AR0303 = "WHEN KNEE PAIN PRESENT, IS IT MOST I ..."
         N1AR0304 = "WHEN KNEE PAIN PRESENT, IS IT MOST I ..."
         N1AR0305 = "WHEN KNEE PAIN PRESENT, IS IT MOST I ..."
         N1AR0306 = "WHEN KNEE PAIN PRESENT, IS IT MOST I ..."
         N1AR0307 = "WHEN KNEE PAIN PRESENT, IS IT MOST I ..."
         N1AR0308 = "WHEN KNEE PAIN PRESENT, IS IT MOST I ..."
         N1AR0309 = "WHEN KNEE PAIN PRESENT, DOES IT HURT ..."
         N1AR0310 = "WHEN KNEE PAIN PRESENT, IS THERE ALS ..."
         N1AR0311 = "WHEN PAIN PRESENT, EVER HAD 'LOCKING ..."
         N1AR0312 = "EITHER KNEE EVER 'GIVEN WAY' UNDER YOU?"
         N1AR0313 = "WHICH KNEE GAVE WAY?"
         N1AR0314 = "LAST TIME YOU HAD THIS KNEE PAIN?"
         N1AR0315 = "LONGEST EPISODE OF KNEE PAIN YOU HAV ..."
         N1AR0316 = "EVER HAD A FRACTURED KNEE?"
         N1AR0317 = "WHICH KNEE FRACTURED?"
         N1AR0318 = "EVER HAD SEVERE TWISTING OF EITHER K ..."
         N1AR0319 = "WHICH KNEE?"
         N1AR0320 = "EVER HAD ANY OTHER KNEE INJURY?"
         N1AR0321 = "WHICH KNEE?"
         N1AR0322 = "EVER HAD HIP, KNEE OR BACK DISEASE T ..."
         N1AR0323 = "WHICH JOIN?"
         N1AR0324 = "IF HIP, WHICH HIP?"
         N1AR0325 = "IF KNEE, WHICH KNEE?"
         N1AR0326 = "HAD PAIN OR ACHING IN ANY JOINT OTHE ..."
         N1AR0327 = "WERE FINGERS PAINFUL?"
         N1AR0328 = "IF YES, WHICH FINGERS?"
         N1AR0329 = "WAS WRIST PAINFUL?"
         N1AR0330 = "IF YES, WHICH WRIST?"
         N1AR0331 = "WAS ELBOW PAINFUL?"
         N1AR0332 = "IF YES WHICH ELBOW?"
         N1AR0333 = "WAS SHOULDER PAINFUL?"
         N1AR0334 = "IF YES, WHICH SHOULDER?"
         N1AR0335 = "WAS ANKLE PAINFUL?"
         N1AR0336 = "IF YES, WHICH ANKLE?"
         N1AR0337 = "WAS FOOT PAINFUL?"
         N1AR0338 = " IF YES, WHICH FOOT?"
         N1AR0339 = "ANY SWELLING OF JOINTS WITH PAIN PRE ..."
         N1AR0340 = "HAS THIS SWELLING BEEN PRESENT ON AN ..."
         N1AR0341 = "IS SWELLING AND TENDERNESS ON TOUCHI ..."
         N1AR0342 = "IF YES, WHICH FINGERS?"
         N1AR0343 = "IS SWELLING AND TENDERNESS ON TOUCHI ..."
         N1AR0344 = "IF YES, WHICH WRIST?"
         N1AR0345 = "IS SWELLING AND TENDERNESS ON TOUCHI ..."
         N1AR0346 = "IF YES, WHICH ELBOW?"
         N1AR0347 = "IS SWELLING AND TENDERNESS ON TOUCHI ..."
         N1AR0348 = "IF YES, WHICH SHOULDER?"
         N1AR0349 = "IS SWELLING AND TENDERNESS ON TOUCHI ..."
         N1AR0350 = "IF YES, WHICH HIP?"
         N1AR0351 = "IS SWELLING AND TENDERNESS ON TOUCHI ..."
         N1AR0352 = "IF YES, WHICH KNEE?"
         N1AR0353 = "IS SWELLING AND TENDERNESS ON TOUCHI ..."
         N1AR0354 = "IF YES, WHICH ANKLE?"
         N1AR0355 = "IS SWELLING AND TENDERNESS ON TOUCHI ..."
         N1AR0356 = "IF YES, WHICH FOOT?"
         N1AR0357 = "HOW OLD WHEN FIRST EXPERIENCED SWELL ..."
         N1AR0358 = "LAST TIME YOU HAD THIS SWELLING?"
         N1AR0359 = "HAD STIFFNESS IN JOINTS AND MUSCLES  ..."
         N1AR0360 = "HAS STIFFNESS BEEN PRESENT ON ANY ON ..."
         N1AR0361 = "IS MORNING STIFFNESS USUALLY IN FINGERS?"
         N1AR0362 = "IF YES, WHICH FINGERS?"
         N1AR0363 = "IS MORNING STIFFNESS USUALLY IN WRISTS?"
         N1AR0364 = "IF YES, WHICH WRIST?"
         N1AR0365 = "IS MORNING STIFFNESS USUALLY IN ELBOWS?"
         N1AR0366 = "IF YES, WHICH ELBOW?"
         N1AR0367 = "IS MORNING STIFFNESS USUALLY IN SHOU ..."
         N1AR0368 = "IF YES, WHICH SHOULDER?"
         N1AR0369 = "IS MORNING STIFFNESS USUALLY IN HIPS?"
         N1AR0370 = "IF YES, WHICH HIP?"
         N1AR0371 = "IS THIS MORNING STIFFNESS USUALLY IN ..."
         N1AR0372 = "IF YES, WHICH KNEE?"
         N1AR0373 = "IS MORNING STIFFNESS USUALLY IN ANKLES?"
         N1AR0374 = "IF YES, WHICH ANKLE?"
         N1AR0375 = "IS MORNING STIFFNESS USUALLY IN YOUR ..."
         N1AR0376 = "IF YES, WHICH FOOT?"
         N1AR0377 = "IS MORNING STIFFNESS USUALLY IN YOUR ..."
         N1AR0378 = "BLANK-WORKSPACE"
         N1AR0379 = "HOW LONG DOES STIFFNESS LAST?"
         N1AR0380 = "HOW OLD WHEN FIRST EXPERIENCED MORNI ..."
         N1AR0381 = "WHEN WAS LAST TIME YOU HAD THIS STIF ..."
         N1AR0382 = "EVER HAD PAIN, SWELLING OR  STIFFNES ..."
         N1AR0383 = "WAS THIS THE CAUSE OF PAIN, SWELLING ..."
         N1AR0384 = "IS THIS THE CAUSE OF ANY PAIN, SWELL ..."
         N1AR0385 = "HAVE YOU EVER BEEN TREATED BY ANY OF ..."
         N1AR0386 = "INTERNIST"
         N1AR0387 = " RHEUMATOLOGIST?"
         N1AR0388 = "ORTHOPEDIST?"
         N1AR0389 = "CHIROPRACTOR?"
         N1AR0390 = "OSTEOPATH?"
         N1AR0391 = "FOOT DOCTOR?"
         N1AR0392 = "PHYSICAL THERAPIST?"
         N1AR0393 = "OCCUPATIONAL THERAPIST?"
         N1AR0394 = "OTHER?"
         N1AR0395 = "NEVER BEEN TREATED"
         N1AR0396 = "CURRENTLY BEING TREATED BY DOCTOR FO ..."
         N1AR0397 = "WHAT TYPE DOCTOR?"
         N1AR0398 = "DID HE SAY THE PROBLEM WAS ONE OF TH ..."
         N1AR0399 = "DID HE SAY THE PROBLEM WAS ONE OF TH ..."
         N1AR0400 = "DID HE SAY THE PROBLEM WAS ONE OF TH ..."
         N1AR0401 = "DID HE SAY THE PROBLEM WAS ONE OF TH ..."
         N1AR0402 = "DID HE SAY THE PROBLEM WAS ONE OF TH ..."
         N1AR0403 = "DID HE SAY THE PROBLEM WAS SOMETHING ..."
         N1AR0404 = "WHEN WAS THE LAST TIME YOU SAW HIM?"
         N1AR0405 = "WHO ORIGINALLY REFERRED YOU TO THIS  ..."
         N1AR0406 = "WHERE DO YOU USUALLY SEE HIM?"
         N1AR0407 = "HOW LONG WILL IT BE UNTIL YOUR NEXT  ..."
         N1AR0408 = "EVER USED SPLINTS OR CASTS FOR TREAT ..."
         N1AR0409 = "DO SPLINTS OR CASTS DO YOU ANY GOOD?"
         N1AR0410 = "IF YES TO EITHER OF ABOVE, DO YOU US ..."
         N1AR0411 = "EVER USED BRACES FOR TREATMENT OF YO ..."
         N1AR0412 = "DO THEY DO YOU ANY GOOD?"
         N1AR0413 = "IF YES TO EITHER OF ABOVE, DO YOU US ..."
         N1AR0414 = "EVER USED DIATHERMY OR PARAFFIN FOR  ..."
         N1AR0415 = "DO THEY DO YOU ANY GOOD?"
         N1AR0416 = "IF YES TO EITHER OF ABOVE, DO YOU US ..."
         N1AR0417 = "EVER USE HOP PACKS OR HEATING PADS F ..."
         N1AR0418 = "DO THEY DO YOU ANY GOOD?"
         N1AR0419 = "IF YES TO EITHER OF ABOVE, DO YOU US ..."
         N1AR0420 = "EVER USE COLD PACKS OR ICE FOR TREAT ..."
         N1AR0421 = "DO THEY DO ANY GOOD?"
         N1AR0422 = "IF YES TO EITHER OF ABOVE, DO YOU US ..."
         N1AR0423 = "EVER USE REST FOR TREATMENT OF JOIN  ..."
         N1AR0424 = "DOES IT DO ANY GOOD?"
         N1AR0425 = "IF YES TO EITHER OF ABOVE, DO YOU RE ..."
         N1AR0426 = "EVER USED TRACTION FOR TREATMENT OF  ..."
         N1AR0427 = "DOES IT DO ANY GOOD?"
         N1AR0428 = "IF YES TO EITHER OF ABOVE, DO YOU US ..."
         N1AR0429 = "EVER USE EXERCISE OR PHYSICAL THERAP ..."
         N1AR0430 = "DOES IT DO ANY GOOD?"
         N1AR0431 = "IF YES TO EITHER OF ABOVE, DO YOU US ..."
         N1AR0432 = "EVER USE ASPIRIN FOR TREATMENT OF JO ..."
         N1AR0433 = "DOES IT DO ANY GOOD?"
         N1AR0434 = "IF YES TO EITHER OF ABOVE, DO YOU US ..."
         N1AR0435 = "EVER USE A CAN FOR TREATMENT OF JOIN ..."
         N1AR0436 = "DOES IT DO ANY GOOD?"
         N1AR0437 = "IF YES TO EITHER OF ABOVE, DO YOU US ..."
         N1AR0438 = "EVER USE A CRUTCH FOR TREATMENT OF J ..."
         N1AR0439 = "DOES IT DO ANY GOOD?"
         N1AR0440 = "IF YES TO EITHER OF ABOVE, DO YOU US ..."
         N1AR0441 = "EVER USE A STIFF MATTRESS FOR TREATM ..."
         N1AR0442 = "DOES IT DO ANY GOOD?"
         N1AR0443 = "IF YES EITHER OF ABOVE, DO YOU USE I ..."
         N1AR0444 = "EVER USE A BED BOARD FOR TREATMENT O ..."
         N1AR0445 = "DOES IT DO ANY GOOD?"
         N1AR0446 = "IF YES TO EITHER OF ABOVE, DO YOU US ..."
         N1AR0447 = "EVER HAD INJECTIONS INTO ANY JOINTS?"
         N1AR0448 = "DID THEY DO ANY GOOD?"
         N1AR0449 = "EVER TAKEN ANY CORTISONE-LIKE MEDICA ..."
         N1AR0450 = "IF YES, DID IT DO ANY GOOD?"
         N1AR0451 = "EVER TAKEN ANY BUTAZOLINDIN FOR YOUR ..."
         N1AR0452 = "IF YES, DID IT DO ANY GOOD?"
         N1AR0453 = "EVER TAKEN DARVON OR TYLENOL FOR YOU ..."
         N1AR0454 = "IF YES, DID IT DO ANY GOOD?"
         N1AR0455 = "EVER TAKEN INDOCIN FOR YOUR JOINTS?"
         N1AR0456 = "IF YES, DID IT DO ANY GOOD?"
         N1AR0457 = "GO UP AND DOWN STAIRS?"
         N1AR0458 = "GET INTO OR OUT OF A CAR?"
         N1AR0459 = "USE WASHING CAILITIES?"
         N1AR0460 = "DRESS YOURSELF?"
         N1AR0461 = "FEED YOURSELF?"
         N1AR0462 = "GET INTO OR OUT OF BED?"
         N1AR0463 = "AT PRESENT TIME, DOES JOINT CONDITIO ..."
         N1AR0464 = "EVER HAD TO STAY IN BED AT HOME FOR  ..."
         N1AR0465 = "EVER STAYED OVERNIGHT IN HOSPITAL BE ..."
         N1AR0466 = "WITH RESPECT TO YOUR JOINT TROUBLE,  ..."
         N1AR0467 = "JOB STATUS ONE MONTH BEFORE FIRST DE ..."
         N1AR0468 = "AS RESULT OF JOINT CONDITION, HAS TH ..."
         N1AR0469 = "WHAT IS IT NOW?"
         N1AR0470 = "DAYS LOST DURING PAST 12 MONTHS AS R ..."
         N1AR0471 = "QUALITY OF FILM (KNEES)"
         N1AR0472 = "GENERAL ABNORMAL (KNEES)"
         N1AR0473 = "OSTCOARTHROSIS (KNEES)"
         N1AR0474 = "QUALITY OF FILM (PELVIS)"
         N1AR0475 = "SACRO-ILIAC JOINT-GENERAL ABNORMAL"
         N1AR0476 = "SACRO-ILIAC JOINT-OSTEOARTHROSIS"
         N1AR0477 = "HIPS-GENERAL ABNORMAL"
         N1AR0478 = "HIPS-OSTEOARTHROSIS"
         N1AR0479 = "PLUS OR MINUS"
         N1AR0480 = "MEASUREMENT"
         N1AR0483 = "READER NUMBER"
         N1AR0484 = "OSTEOARTHROSIS (OVERALL GRADE)"
         N1AR0485 = "JOINT SPACE NARROWING-RIGHT LATERAL"
         N1AR0486 = "RIGHT MEDIAL"
         N1AR0487 = "LEFT LATERAL"
         N1AR0488 = "OSTEOPHYTOSIS-GRADE BY QUADRANTS RIG ..."
         N1AR0489 = "RIGHT LATERAL FEMURE"
         N1AR0490 = "RIGHT MEDIAL FEMURE"
         N1AR0491 = "LEFT MEDIAL FEMURE"
         N1AR0492 = "LEFT LATERAL FEMURE"
         N1AR0493 = "RIGHT LATERAL TIBIA"
         N1AR0494 = "RIGHT MEDIAL TIBIA"
         N1AR0495 = "LEFT MEDIAL TIBIA"
         N1AR0496 = "LEFT LATERAL TIBIA"
         N1AR0497 = "TIBIA SPINE OSTEOPHYTES"
         N1AR0498 = "BONY SCLEROSIS NEAR JOINT MARGIN"
         N1AR0499 = "CYSTS NEAR JOINTS"
         N1AR0500 = "EROSIONS"
         N1AR0501 = "OSTEOPOROSIS"
         N1AR0502 = "CHONDROCALCINOSIS-RIGHT"
         N1AR0503 = "CHONDROCALCINOSIS"
         N1AR0504 = "LOOSE CALCIFIED BLODIES"
         N1AR0505 = "READER NUMBER"
         N1AR0506 = "OSTEOARTHROSIS (OVERALL GRADE)"
         N1AR0507 = "JOINT SPACE NARROWING RIGHT LATERAL"
         N1AR0508 = "RIGHT MEDIAL"
         N1AR0509 = "LEFT MEDIAL"
         N1AR0510 = "LEFT LATERAL"
         N1AR0511 = "OSTEOPHYTOSIS-GRADE BY QUADRANTS RIG ..."
         N1AR0512 = "RIGHT MEDIAL FEMURE"
         N1AR0513 = "LEFT MEDIAL FEMURE"
         N1AR0514 = "LEFT LATERAL FEMURE"
         N1AR0515 = "RIGHT LATERAL TIBIA"
         N1AR0516 = "RIGHT MEDIAL TIBIA"
         N1AR0517 = "LEFT MEDIAL TIBIA"
         N1AR0518 = "LEFT LATERAL TIBIA"
         N1AR0519 = "TIBIA SPIN OSPEOPHYTES"
         N1AR0520 = "BONY SCLEROSIS NEAR JOINT MARGIN"
         N1AR0521 = "CYSTS NEAR JOINTS"
         N1AR0522 = "EROSIONS"
         N1AR0523 = "OSTEOPOROSIS"
         N1AR0524 = "CHONDROCALCINOSIS-RIGHT"
         N1AR0525 = "CHONDRACALCINOSIS-LEFTR"
         N1AR0526 = "LOOSE CALCIFIED BODIES"
         N1AR0527 = "OSTEOARTHROSIS (OVERALL GRADE)"
         N1AR0528 = "JOINT SPACE NARROWING RIGHT LATERAL"
         N1AR0529 = "RIGHT MEDIAL"
         N1AR0530 = "LEFT MEDIAL"
         N1AR0531 = "LEFT LATERAL"
         N1AR0532 = "OSTESOPHYTOSIS-GRADE BY QUADRANTS RI ..."
         N1AR0533 = "RIGHT MEDIAL FEMURE"
         N1AR0534 = "LEFT MEDIAL FEMURE"
         N1AR0535 = "LEFT LATERAL FEMURE"
         N1AR0536 = "RIGHT LATERAL TIBIA"
         N1AR0537 = "RIGHT MEDIALTIBIA"
         N1AR0538 = "LEFT MEDIAL TIBIA"
         N1AR0539 = "LEFT LATERAL TIBIA"
         N1AR0540 = "TIBIA SPINE OSTEOPHYTES"
         N1AR0541 = "BONY SCLEROSIS NEAR JOINT MARGIN"
         N1AR0542 = "CYSTS NEAR JOINTS"
         N1AR0543 = "EROSIONS"
         N1AR0544 = "OSTEOPOROSIS"
         N1AR0545 = "CHONDROCALCINOSIS-RIGHT"
         N1AR0546 = "CHONDROCALCINOSIS-LEFT"
         N1AR0547 = "READER NUMBER"
         N1AR0548 = "OSTEOARTHOSIS (OVERALL GRADE)-RIGHT HIP"
         N1AR0549 = "OSTEOARTHOSIS (OVERALL GRADE)-LEFT HIP"
         N1AR0550 = "JOINT SPACE NARROWING RIGHT"
         N1AR0551 = "RIGHT"
         N1AR0552 = "RIGHT"
         N1AR0553 = "LEFT"
         N1AR0554 = "LEFT"
         N1AR0555 = "LEFT"
         N1AR0556 = "BONY SCLEROSIS RIGHT"
         N1AR0557 = "RIGHT"
         N1AR0558 = "LEFT"
         N1AR0559 = "LEFT"
         N1AR0560 = "OSTEOPHYTOSIS-RIGHT"
         N1AR0561 = "RIGHT"
         N1AR0562 = "RIGHT"
         N1AR0563 = "RIGHT"
         N1AR0564 = "RIGHT"
         N1AR0565 = "RIGHT"
         N1AR0566 = "RIGHT"
         N1AR0567 = "RIGHT"
         N1AR0568 = "LEFT"
         N1AR0569 = "LEFT"
         N1AR0570 = "LEFT"
         N1AR0571 = "LEFT"
         N1AR0572 = "LEFT"
         N1AR0573 = "LEFT"
         N1AR0574 = "LEFT"
         N1AR0575 = "CYSTS    "
         N1AR0576 = "EROSIONS"
         N1AR0577 = "OSTEOPOROSIS"
         N1AR0578 = "ACETABULAR ABNORMALITIES"
         N1AR0579 = "CHONDROCALCINOSIS-RIGHT"
         N1AR0580 = "CHONDROCALCINOSIS-SYSHYSIS"
         N1AR0581 = "CHONDROCALCINOSIS-LEFT"
         N1AR0582 = "HEAD DEFORMITY-(PRIMARY)"
         N1AR0583 = "HEAD DEFORMITY (SECONDARY)"
         N1AR0584 = "READER NUMBER"
         N1AR0585 = "OSTEOARTHROSIS (OVERALL GRADE)-RIGHT HIP"
         N1AR0586 = "OSTEOARTHROSIS (OVERALL GRADE)-LEFT HIP"
         N1AR0587 = "JOINT SPACE NARROWING RIGHT"
         N1AR0588 = "RIGHT"
         N1AR0589 = "RIGHT"
         N1AR0590 = "LEFT"
         N1AR0591 = "LEFT"
         N1AR0592 = "LEFT"
         N1AR0593 = "BONY SCLEROSIS RIGHT"
         N1AR0594 = "RIGHT"
         N1AR0595 = "LEFT "
         N1AR0596 = "LEFT"
         N1AR0597 = "OSTEOPHYTOSIS RIGHT"
         N1AR0598 = "RIGHT"
         N1AR0599 = "RIGHT"
         N1AR0600 = "RIGHT"
         N1AR0601 = "RIGHT"
         N1AR0602 = "RIGHT"
         N1AR0603 = "RIGHT"
         N1AR0604 = "LEFT"
         N1AR0605 = "LEFT"
         N1AR0606 = "LEFT"
         N1AR0607 = "LEFT"
         N1AR0608 = "LEFT"
         N1AR0609 = "LEFT"
         N1AR0610 = "LEFT"
         N1AR0611 = "CYSTS"
         N1AR0612 = "EROSIONS"
         N1AR0613 = "OSTEOPOROSIS"
         N1AR0614 = "ACETABULAR ABNORMALITIES"
         N1AR0615 = "CHONDROCALCINOSIS-RIGHT"
         N1AR0616 = "CHONDROCALCINOSIS-SYSHYSIS"
         N1AR0617 = "CHONDROCALCINOSIS-LEFT"
         N1AR0618 = "HEAD DEFORMITY (PRIMARY)"
         N1AR0619 = "HEAD DEFORMITY (SECONDARY)"
         N1AR0620 = "OSTEOARTHROSIS (OVERALL GRADE)-RIGHT  "
         N1AR0621 = "OSTEOARTHROSIS (OVERALL GRADE)-LEFT   "
         N1AR0622 = "JOINT SPACE NARROWING RIGHT"
         N1AR0623 = "RIGHT"
         N1AR0624 = "RIGHT"
         N1AR0625 = "LEFT"
         N1AR0626 = "LEFT"
         N1AR0627 = "LEFT"
         N1AR0628 = "BONY SCLEROSIS RIGHT"
         N1AR0629 = "RIGHT"
         N1AR0630 = "LEFT"
         N1AR0631 = "LEFT"
         N1AR0632 = "OSTEOPHYTOSIS RIGHT"
         N1AR0633 = "RIGHT"
         N1AR0634 = "RIGHT"
         N1AR0635 = "RIGHT"
         N1AR0636 = "RIGHT"
         N1AR0637 = "RIGHT"
         N1AR0638 = "RIGHT"
         N1AR0639 = "LEFT"
         N1AR0640 = "LEFT"
         N1AR0641 = "LEFT"
         N1AR0642 = "LEFT"
         N1AR0643 = "LEFT"
         N1AR0644 = "LEFT"
         N1AR0645 = "LEFT"
         N1AR0646 = "CYSTS"
         N1AR0647 = "EROSIONS"
         N1AR0648 = "OSTEOPOROSIS"
         N1AR0649 = "ACETABULAR ABNORMALITIES"
         N1AR0650 = "CHONDROCALCINOSIS-RIGHT"
         N1AR0651 = "CHONDROCALCINOSIS-SYSHYSIS"
         N1AR0652 = "CHONDROCALCINOSIS-LEFT"
         N1AR0653 = "HEAD DEFORMITY (PRIMARY)"
         N1AR0654 = "HEAD DEFORMITY (SECONDARY)"
         N1AR0655 = "READER NUMBER"
         N1AR0656 = "SACROILITIS (OVERALL GRADE)"
         N1AR0657 = "EROSIONS-RIGHT"
         N1AR0658 = "EROSIONS-LEFT"
         N1AR0659 = "SCLEROSIS-RIGHT"
         N1AR0660 = "SCLEROSIS-LEFT"
         N1AR0661 = "ANKYLOSIS-RIGHT"
         N1AR0662 = "ANKYLOSIS-LEFT"
         N1AR0663 = "READER NUMBER"
         N1AR0664 = "SACROILITIS (OVERALL GRADE)"
         N1AR0665 = "EROSIONS-RIGHT"
         N1AR0666 = "EROSIONS-LEFT"
         N1AR0667 = "SCLEROSIS-RIGHT"
         N1AR0668 = "SCLEROSIS-LEFT"
         N1AR0669 = "ANKYLOSIS-RIGHT"
         N1AR0670 = "ANKYLOSIS-LEFT"
         N1AR0671 = "SACROLILITIS (OVERALL GRADE)"
         N1AR0672 = "EROSION-RIGHT"
         N1AR0673 = "EROSIONS-LEFT"
         N1AR0674 = "SCLEROSIS-RIGHT"
         N1AR0675 = "SCLEROSIS-LEFT"
         N1AR0676 = "ANKYLOSIS-RIGHT"
         N1AR0677 = "ANKYLOSIS-LEFT"
         N1AR0678 = "WORK AREA"
      ;
RUN;
