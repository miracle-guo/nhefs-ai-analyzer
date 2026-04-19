/*
 *  Survey:           NHANES I
 *  Years:            1971-1975
 *  Questionnaire:    Medical History, 12 - 74 years
 *  Tape Number:      4081
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

VALUE AH0010F
     1='3,000,000 or more'
     2='1,000,000 to 2,999,999'
     3='250,000 to 999,999'
     4='under 250,000'
     5='Urban place 25,000 or more outside urbanized area'
     6='Urban place 10,000 to 24,999 outside urbanized area'
     7='Urban place 2,500 to 9,999 outside urbanized area'
     8='Rural'
     ;

VALUE AH0011F
     1='In SMSA, in central city'
     2='In SMSA, not in central city'
     3='Not in SMSA'
     ;

VALUE AH0012F
     1='Housing Unit'
     2='Other unit'
     ;

VALUE AH0013F
     1='All other'
     2='Rural  7136'
     ;

VALUE AH0014F
     1='10 or more acres'
     2='Less than 10 acres'
     9='Not applicable'
     ;

VALUE AH0015F
     2='Yes'
     4='No'
     9='Not applicable'
     ;

VALUE AH0016F
     3='Yes'
     5='No'
     9='Not applicable'
     ;

VALUE AH0017F
     00='Blank, but applicable'
     ;

VALUE AH0019F
     1='AHle'
     2='FeAHle'
     ;

VALUE AH0020F
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

VALUE AH0022F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE AH0027F
     9='9 or more'
     ;

VALUE AH0028F
     1='Yes'
     2='No'
     ;

VALUE AH0029F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE AH0030F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE AH0031F
     1='Yes'
     2='No'
     ;

VALUE AH0032F
     1='Yes'
     2='No'
     ;

VALUE AH0033F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE AH0034F
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

VALUE AH0036F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AH0037F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AH0041F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AH0042F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AH0046F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AH0047F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AH0051F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AH0052F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AH0056F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AH0057F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AH0061F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AH0062F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AH0066F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AH0067F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AH0071F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AH0072F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AH0076F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AH0077F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AH0081F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AH0082F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AH0086F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AH0087F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AH0091F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AH0100F
     1='Head (1 person living along or with non-relatives)'
     2='Head (2 or more related persons in family)'
     3='Wife'
     4='Child'
     5='Other relative'
     ;

VALUE AH0103F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE AH0104F
     1='Male'
     2='Female'
     ;

VALUE AH0105F
     1='Under 17'
     2='Married'
     3='Widowed'
     4='Never Married'
     5='Divorced'
     6='Separated'
     8='Blank, but applicable'
     ;

VALUE AH0110F
     88='Blank, but applicable'
     ;

VALUE AH0112F
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

VALUE AH0114F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AH0115F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AH0116F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AH0117F
     1='Nursery'
     2='Kindergarten'
     3='Other'
     4='Headstart'
     5='Daycare'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AH0118F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0119F
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

VALUE AH0120F
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

VALUE AH0122F
     1='Working'
     2='Keeping house'
     3='Something else'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AH0123F
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

VALUE AH0124F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AH0125F
     1='Full-time'
     2='Part-time'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AH0126F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AH0127F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AH0128F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AH0129F
     1='Looking'
     2='Lay-off'
     3='Both'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AH0130F
     1='Private paid'
     2='Government-Federal'
     3='Government-Other'
     4='Own'
     5='Non-paid'
     6='Never worked'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AH0131F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AH0146F
     1='Farm'
     2='Nonfarm'
     ;

VALUE AH0147F
     998='Index computed 998 or greater'
     999='Unknown'
     ;

VALUE AH0150F
     1='Northeast'
     2='Midwest'
     3='South'
     4='West'
     ;

VALUE AH0151F
     1='Not applicable'
     2='No program available'
     3='Food stamps available'
     4='Commodities available'
     8='Blank, but applicable'
     ;

VALUE AH0152F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE AH0153F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE AH0154F
     1='No need'
     2='Not enough money at the time'
     3='No transportation'
     4='Pride'
     5='Other'
     8='Blank, but applicable'
     ;

VALUE AH0155F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE AH0156F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE AH0157F
     1='No need'
     2='No transportation'
     3='Pride'
     4='Other'
     8='Blank, but applicable'
     ;

VALUE AH0228F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0229F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0230F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0231F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0232F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0233F
     1='Yes'
     2='No'
     ;

VALUE AH0234F
     1='Yes'
     2='No'
     ;

VALUE AH0235F
     1='Yes'
     2='No'
     ;

VALUE AH0236F
     1='Yes                                   .'
     2='No'
     ;

VALUE AH0237F
     1='Yes'
     2='No'
     ;

VALUE AH0238F
     1='Yes'
     2='No'
     ;

VALUE AH0239F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0240F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0241F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0242F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0243F
     1='Yes'
     2='No'
     ;

VALUE AH0244F
     1='Yes'
     2='No'
     ;

VALUE AH0245F
     1='Yes'
     2='No'
     ;

VALUE AH0246F
     1='Yes'
     2='No'
     ;

VALUE AH0247F
     1='Yes'
     2='No'
     ;

VALUE AH0248F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AH0249F
     1='Yes-Constipated'
     2='Yes-Diarrhea'
     3='No'
     4='Yes-Constipated and diarrhea'
     8='Blank, but applicable'
     ;

VALUE AH0250F
     1='Once a week or less often'
     2='2-3 times a week'
     3='4-6 times a week'
     4='Once a day'
     5='2-3 times a day'
     6='4 or more times a day'
     8='Blank, but applicable'
     ;

VALUE AH0251F
     1='Yes'
     2='No'
     ;

VALUE AH0252F
     1='Yes'
     2='No'
     ;

VALUE AH0253F
     1='Yes'
     2='No'
     ;

VALUE AH0254F
     1='Yes'
     2='No'
     ;

VALUE AH0255F
     1='Yes'
     2='No'
     ;

VALUE AH0256F
     1='Yes'
     2='No'
     ;

VALUE AH0257F
     1='Yes'
     2='No'
     ;

VALUE AH0258F
     1='Yes'
     2='No'
     ;

VALUE AH0259F
     1='Yes'
     2='No'
     ;

VALUE AH0260F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0261F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0262F
     1='Yes'
     2='No'
     ;

VALUE AH0263F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0264F
     88='Blank, but applicable'
     ;

VALUE AH0266F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0269F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0270F
     88='Blank, but applicable'
     ;

VALUE AH0272F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0273F
     88='Blank, but applicable'
     ;

VALUE AH0275F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0278F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0281F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0282F
     88='Blank, but applicable'
     ;

VALUE AH0284F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0287F
     2='Never had condition'
     ;

VALUE AH0288F
     88='Blank, but applicable'
     ;

VALUE AH0290F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0291F
     88='Blank, but applicable'
     ;

VALUE AH0293F
     2='Never had condition'
     ;

VALUE AH0296F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0297F
     88='Blank, but applicable'
     ;

VALUE AH0299F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0300F
     88='Blank, but applicable'
     ;

VALUE AH0302F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0303F
     88='Blank, but applicable'
     ;

VALUE AH0305F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0306F
     88='Blank, but applicable'
     ;

VALUE AH0308F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0311F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0312F
     88='Blank, but applicable'
     ;

VALUE AH0314F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it  is present now'
     ;

VALUE AH0315F
     88='Blank, but applicable'
     ;

VALUE AH0317F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it'
     ;

VALUE AH0318F
     88='Blank, but applicable'
     ;

VALUE AH0320F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0321F
     88='Blank, but applicable'
     ;

VALUE AH0323F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0324F
     88='Blank, but applicable'
     ;

VALUE AH0326F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0327F
     88='Blank, but applicable'
     ;

VALUE AH0329F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0330F
     88='Blank, but applicable'
     ;

VALUE AH0332F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0333F
     88='Blank, but applicable'
     ;

VALUE AH0335F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0336F
     88='Blank, but applicable'
     ;

VALUE AH0338F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0341F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0342F
     88='Blank, but applicable'
     ;

VALUE AH0344F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0345F
     88='Blank, but applicable'
     ;

VALUE AH0347F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0348F
     88='Blank, but applicable'
     ;

VALUE AH0350F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0351F
     88='Blank, but applicable'
     ;

VALUE AH0353F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0354F
     88='Blank, but applicable'
     ;

VALUE AH0356F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it  is present now'
     ;

VALUE AH0357F
     88='Blank, but applicable'
     ;

VALUE AH0359F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0360F
     88='Blank, but applicable'
     ;

VALUE AH0362F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0363F
     88='Blank, but applicable'
     ;

VALUE AH0365F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0366F
     88='Blank, but applicable'
     ;

VALUE AH0368F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0369F
     88='Blank, but applicable'
     ;

VALUE AH0371F
     1='Condition still present'
     2='Never had condition'
     3='Had condition, not present now'
     9='Had condition, do not know if it is present now'
     ;

VALUE AH0372F
     88='Blank, but applicable'
     ;

VALUE AH0374F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE AH0375F
     00='Less than 1 year'
     88='Blank, but applicable'
     99='Dont remember'
     ;

VALUE AH0377F
     1='Yes'
     2='No'
     ;

VALUE AH0378F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE AH0379F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE AH0380F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE AH0381F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE AH0382F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE AH0383F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE AH0384F
     1='Yes'
     2='No'
     ;

VALUE AH0385F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0386F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0387F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0388F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0389F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0390F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0391F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0392F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0393F
     1='Yes'
     2='No'
     ;

VALUE AH0394F
     1='Yes'
     2='No'
     ;

VALUE AH0395F
     1='Yes, glasses'
     2='Yes, contact lenses'
     3='Yes, contacts and glasses'
     4='No'
     ;

VALUE AH0396F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0397F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0398F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0399F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0400F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0401F
     1='Yes, with glasses'
     2='Yes, with contacts'
     3='Yes, with both'
     4='No'
     8='Blank, but applicable'
     ;

VALUE AH0402F
     1='0-4 years old'
     2='5-9 years old'
     3='10-19 years old'
     4='20-29 years old'
     5='30-39 years old'
     6='40-49 years old'
     7='50 years old or older'
     8='Blank, but applicable'
     ;

VALUE AH0403F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0404F
     1='Yes'
     2='No'
     ;

VALUE AH0405F
     1='Everyday'
     2='Just about everyday'
     3='About 2 or 3 times a week'
     4='About 1-4 times a month'
     5='More than 3 but less than 12 times a year'
     6='No more than 2 or 3 times a year'
     8='Blank, but applicable'
     ;

VALUE AH0406F
     1='Beer'
     2='Wine'
     3='Liquor'
     8='Blank, but applicable'
     ;

VALUE AH0407F
     88='Blank, but applicable'
     ;

VALUE AH0409F
     1='Yes'
     2='No'
     ;

VALUE AH0410F
     1='Yes'
     2='No'
     ;

VALUE AH0411F
     1='Yes'
     2='No'
     ;

VALUE AH0412F
     1='Yes'
     2='No'
     ;

VALUE AH0413F
     1='Regularly'
     2='Occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE AH0414F
     1='Regularly'
     2='Occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE AH0415F
     1='Regularly'
     2='Occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE AH0416F
     1='Regularly'
     2='Occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE AH0417F
     1='Regularly'
     2='Occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE AH0418F
     1='Regularly'
     2='Occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE AH0419F
     1='Regularly'
     2='Occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE AH0420F
     1='Regularly'
     2='Occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE AH0421F
     1='Regularly'
     2='Occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE AH0422F
     1='Regularly'
     2='Occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE AH0423F
     1='Regularly'
     2='Occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE AH0424F
     1='Regularly'
     2='Occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE AH0425F
     1='Regularly'
     2='Occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE AH0426F
     1='Regularly'
     2='Occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE AH0427F
     1='Regularly'
     2='Occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE AH0428F
     1='Regularly'
     2='Occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE AH0429F
     1='Yes'
     2='No'
     ;

VALUE AH0430F
     1='Yes'
     2='No'
     ;

VALUE AH0431F
     1='Yes'
     2='No'
     ;

VALUE AH0432F
     1='Yes'
     2='No'
     ;

VALUE AH0433F
     1='Yes'
     2='No'
     ;

VALUE AH0434F
     1='Yes'
     2='No'
     ;

VALUE AH0435F
     1='Yes'
     2='No'
     ;

VALUE AH0436F
     1='Yes'
     2='No'
     ;

VALUE AH0437F
     1='Yes'
     2='No'
     ;

VALUE AH0438F
     1='Yes'
     2='No'
     ;

VALUE AH0439F
     1='Yes'
     2='No'
     ;

VALUE AH0440F
     1='Yes'
     2='No'
     ;

VALUE AH0441F
     1='Yes'
     2='No'
     ;

VALUE AH0442F
     1='Yes'
     2='No'
     ;

VALUE AH0443F
     1='Yes'
     2='No'
     ;

VALUE AH0444F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0445F
     1='Very active'
     2='Moderately active'
     3='Quite inactive'
     8='Blank, but applicable'
     ;

VALUE AH0446F
     1='Much exercise'
     2='Moderate exercise'
     3='Little or no exercise'
     8='Blank, but applicable'
     ;

VALUE AH0447F
     1='Iodized'
     2='Not iodized'
     3='No box'
     8='Blank, but applicable'
     ;

VALUE AH0448F
     888='Blank, but applicable'
     ;

VALUE AH0451F
     88='Blank, but applicable'
     ;

VALUE AH0453F
     888='Blank, but applicable'
     ;

VALUE AH0456F
     88='Blank, but applicable'
     ;

VALUE AH0458F
     02='Havent started yet'
     88='Blank, but applicable'
     ;

VALUE AH0460F
     1='Yes'
     2='No'
     ;

VALUE AH0461F
     88='Blank, but applicable'
     ;

VALUE AH0463F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0464F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0465F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0466F
     88='Blank, but applicable'
     ;

VALUE AH0468F
     00='- None'
     88='Blank, but applicable'
     ;

VALUE AH0470F
     00='- None'
     88='Blank, but applicable'
     ;

VALUE AH0472F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE AH0475F
     1='Yes'
     2='No'
     ;

VALUE AH0476F
     1='10-12 months ago'
     2='7-9 months ago'
     3='4-6 months ago'
     4='0-3 months ago'
     8='Blank, but applicable'
     ;

VALUE AH0477F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE AH0478F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE AH0480F
     88='Blank, but applicable'
     99='Greater than $1.00'
     ;

VALUE AH0482F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE MA0484F
     1='Yes'
     2='No'
     9='Dont know'
     ;
RUN;


DATA D_4081;
   INFILE 'c:\temp\DU4081.txt' LRECL = 2000 MISSOVER;
      LENGTH
         SEQN 8
         N1AH0006 8
         N1AH0010 4
         N1AH0011 4
         N1AH0012 4
         N1AH0013 4
         N1AH0014 4
         N1AH0015 4
         N1AH0016 4
         N1AH0017 4
         N1AH0019 4
         N1AH0020 4
         N1AH0022 4
         N1AH0023 4
         N1AH0025 4
         N1AH0027 4
         N1AH0028 4
         N1AH0029 4
         N1AH0030 4
         N1AH0031 4
         N1AH0032 4
         N1AH0033 4
         N1AH0034 4
         N1AH0036 4
         N1AH0037 8
         N1AH0041 4
         N1AH0042 8
         N1AH0046 4
         N1AH0047 8
         N1AH0051 4
         N1AH0052 8
         N1AH0056 4
         N1AH0057 8
         N1AH0061 4
         N1AH0062 8
         N1AH0066 4
         N1AH0067 8
         N1AH0071 4
         N1AH0072 8
         N1AH0076 4
         N1AH0077 8
         N1AH0081 4
         N1AH0082 8
         N1AH0086 4
         N1AH0087 8
         N1AH0091 8
         N1AH0095 8
         N1AH0100 4
         N1AH0101 4
         N1AH0103 4
         N1AH0104 4
         N1AH0105 4
         N1AH0106 8
         N1AH0110 4
         N1AH0112 4
         N1AH0114 4
         N1AH0115 4
         N1AH0116 4
         N1AH0117 4
         N1AH0118 4
         N1AH0119 4
         N1AH0120 4
         N1AH0122 4
         N1AH0123 4
         N1AH0124 4
         N1AH0125 4
         N1AH0126 4
         N1AH0127 4
         N1AH0128 4
         N1AH0129 4
         N1AH0130 4
         N1AH0131 4
         N1AH0132 4
         N1AH0135 4
         N1AH0138 8
         N1AH0144 4
         N1AH0146 4
         N1AH0147 4
         N1AH0150 4
         N1AH0151 4
         N1AH0152 4
         N1AH0153 4
         N1AH0154 4
         N1AH0155 4
         N1AH0156 4
         N1AH0157 4
         N1AH0158 8
         N1AH0164 8
         N1AH0170 8
         N1AH0176 8
         N1AH0182 8
         N1AH0188 8
         N1AH0194 4
         N1AH0196 4
         N1AH0199 $2
         N1AH0201 8
         N1AH0205 $23
         N1AH0228 4
         N1AH0229 4
         N1AH0230 4
         N1AH0231 4
         N1AH0232 4
         N1AH0233 4
         N1AH0234 4
         N1AH0235 4
         N1AH0236 4
         N1AH0237 4
         N1AH0238 4
         N1AH0239 4
         N1AH0240 4
         N1AH0241 4
         N1AH0242 4
         N1AH0243 4
         N1AH0244 4
         N1AH0245 4
         N1AH0246 4
         N1AH0247 4
         N1AH0248 4
         N1AH0249 4
         N1AH0250 4
         N1AH0251 4
         N1AH0252 4
         N1AH0253 4
         N1AH0254 4
         N1AH0255 4
         N1AH0256 4
         N1AH0257 4
         N1AH0258 4
         N1AH0259 4
         N1AH0260 4
         N1AH0261 4
         N1AH0262 4
         N1AH0263 4
         N1AH0264 4
         N1AH0266 4
         N1AH0267 4
         N1AH0269 4
         N1AH0270 4
         N1AH0272 4
         N1AH0273 4
         N1AH0275 4
         N1AH0276 4
         N1AH0278 4
         N1AH0279 4
         N1AH0281 4
         N1AH0282 4
         N1AH0284 4
         N1AH0285 4
         N1AH0287 4
         N1AH0288 4
         N1AH0290 4
         N1AH0291 4
         N1AH0293 4
         N1AH0294 4
         N1AH0296 4
         N1AH0297 4
         N1AH0299 4
         N1AH0300 4
         N1AH0302 4
         N1AH0303 4
         N1AH0305 4
         N1AH0306 4
         N1AH0308 4
         N1AH0309 4
         N1AH0311 4
         N1AH0312 4
         N1AH0314 4
         N1AH0315 4
         N1AH0317 4
         N1AH0318 4
         N1AH0320 4
         N1AH0321 4
         N1AH0323 4
         N1AH0324 4
         N1AH0326 4
         N1AH0327 4
         N1AH0329 4
         N1AH0330 4
         N1AH0332 4
         N1AH0333 4
         N1AH0335 4
         N1AH0336 4
         N1AH0338 4
         N1AH0339 4
         N1AH0341 4
         N1AH0342 4
 		 N1AH0344 4
         N1AH0345 4
         N1AH0347 4
         N1AH0348 4
         N1AH0350 4
         N1AH0351 4
         N1AH0353 4
         N1AH0354 4
         N1AH0356 4
         N1AH0357 4
         N1AH0359 4
         N1AH0360 4
         N1AH0362 4
         N1AH0363 4
         N1AH0365 4
         N1AH0366 4
         N1AH0368 4
         N1AH0369 4
         N1AH0371 4
         N1AH0372 4
         N1AH0374 4
         N1AH0375 4
         N1AH0377 4
         N1AH0378 4
         N1AH0379 4
         N1AH0380 4
         N1AH0381 4
         N1AH0382 4
         N1AH0383 4
         N1AH0384 4
         N1AH0385 4
         N1AH0386 4
         N1AH0387 4
         N1AH0388 4
         N1AH0389 4
         N1AH0390 4
         N1AH0391 4
         N1AH0392 4
         N1AH0393 4
         N1AH0394 4
         N1AH0395 4
         N1AH0396 4
         N1AH0397 4
         N1AH0398 4
         N1AH0399 4
         N1AH0400 4
         N1AH0401 4
         N1AH0402 4
         N1AH0403 4
         N1AH0404 4
         N1AH0405 4
         N1AH0406 4
         N1AH0407 4
         N1AH0409 4
         N1AH0410 4
         N1AH0411 4
         N1AH0412 4
         N1AH0413 4
         N1AH0414 4
         N1AH0415 4
         N1AH0416 4
         N1AH0417 4
         N1AH0418 4
         N1AH0419 4
         N1AH0420 4
         N1AH0421 4
         N1AH0422 4
         N1AH0423 4
         N1AH0424 4
         N1AH0425 4
         N1AH0426 4
         N1AH0427 4
         N1AH0428 4
         N1AH0429 4
         N1AH0430 4
         N1AH0431 4
         N1AH0432 4
         N1AH0433 4
         N1AH0434 4
         N1AH0435 4
         N1AH0436 4
         N1AH0437 4
         N1AH0438 4
         N1AH0439 4
         N1AH0440 4
         N1AH0441 4
         N1AH0442 4
         N1AH0443 4
         N1AH0444 4
         N1AH0445 4
         N1AH0446 4
         N1AH0447 4
         N1AH0448 4
         N1AH0451 4
         N1AH0453 4
         N1AH0456 4
         N1AH0458 4
         N1AH0460 4
         N1AH0461 4
         N1AH0463 4
         N1AH0464 4
         N1AH0465 4
         N1AH0466 4
         N1AH0468 4
         N1AH0470 4
         N1AH0472 4
         N1AH0473 4
         N1AH0475 4
         N1AH0476 4
         N1AH0477 4
         N1AH0478 4
         N1AH0479 4
         N1AH0480 4
         N1AH0482 4
         N1AH0483 4
         N1AH0484 4
         N1AH0485 4
         N1AH0486 4
         N1AH0488 $13
      ;



FORMAT
     N1AH0010 AH0010F.
     N1AH0011 AH0011F.
     N1AH0012 AH0012F.
     N1AH0013 AH0013F.
     N1AH0014 AH0014F.
     N1AH0015 AH0015F.
     N1AH0016 AH0016F.
     N1AH0017 AH0017F.
     N1AH0019 AH0019F.
     N1AH0020 AH0020F.
     N1AH0022 AH0022F.
     N1AH0027 AH0027F.
     N1AH0028 AH0028F.
     N1AH0029 AH0029F.
     N1AH0030 AH0030F.
     N1AH0031 AH0031F.
     N1AH0032 AH0032F.
     N1AH0033 AH0033F.
     N1AH0034 AH0034F.
     N1AH0036 AH0036F.
     N1AH0037 AH0037F.
     N1AH0041 AH0041F.
     N1AH0042 AH0042F.
     N1AH0046 AH0046F.
     N1AH0047 AH0047F.
     N1AH0051 AH0051F.
     N1AH0052 AH0052F.
     N1AH0056 AH0056F.
     N1AH0057 AH0057F.
     N1AH0061 AH0061F.
     N1AH0062 AH0062F.
     N1AH0066 AH0066F.
     N1AH0067 AH0067F.
     N1AH0071 AH0071F.
     N1AH0072 AH0072F.
     N1AH0076 AH0076F.
     N1AH0077 AH0077F.
     N1AH0081 AH0081F.
     N1AH0082 AH0082F.
     N1AH0086 AH0086F.
     N1AH0087 AH0087F.
     N1AH0091 AH0091F.
     N1AH0100 AH0100F.
     N1AH0103 AH0103F.
     N1AH0104 AH0104F.
     N1AH0105 AH0105F.
     N1AH0110 AH0110F.
     N1AH0112 AH0112F.
     N1AH0114 AH0114F.
     N1AH0115 AH0115F.
     N1AH0116 AH0116F.
     N1AH0117 AH0117F.
     N1AH0118 AH0118F.
     N1AH0119 AH0119F.
     N1AH0120 AH0120F.
     N1AH0122 AH0122F.
     N1AH0123 AH0123F.
     N1AH0124 AH0124F.
     N1AH0125 AH0125F.
     N1AH0126 AH0126F.
     N1AH0127 AH0127F.
     N1AH0128 AH0128F.
     N1AH0129 AH0129F.
     N1AH0130 AH0130F.
     N1AH0131 AH0131F.
     N1AH0146 AH0146F.
     N1AH0147 AH0147F.
     N1AH0150 AH0150F.
     N1AH0151 AH0151F.
     N1AH0152 AH0152F.
     N1AH0153 AH0153F.
     N1AH0154 AH0154F.
     N1AH0155 AH0155F.
     N1AH0156 AH0156F.
     N1AH0157 AH0157F.
     N1AH0228 AH0228F.
     N1AH0229 AH0229F.
     N1AH0230 AH0230F.
     N1AH0231 AH0231F.
     N1AH0232 AH0232F.
     N1AH0233 AH0233F.
     N1AH0234 AH0234F.
     N1AH0235 AH0235F.
     N1AH0236 AH0236F.
     N1AH0237 AH0237F.
     N1AH0238 AH0238F.
     N1AH0239 AH0239F.
     N1AH0240 AH0240F.
     N1AH0241 AH0241F.
     N1AH0242 AH0242F.
     N1AH0243 AH0243F.
     N1AH0244 AH0244F.
     N1AH0245 AH0245F.
     N1AH0246 AH0246F.
     N1AH0247 AH0247F.
     N1AH0248 AH0248F.
     N1AH0249 AH0249F.
     N1AH0250 AH0250F.
     N1AH0251 AH0251F.
     N1AH0252 AH0252F.
     N1AH0253 AH0253F.
     N1AH0254 AH0254F.
     N1AH0255 AH0255F.
     N1AH0256 AH0256F.
     N1AH0257 AH0257F.
     N1AH0258 AH0258F.
     N1AH0259 AH0259F.
     N1AH0260 AH0260F.
     N1AH0261 AH0261F.
     N1AH0262 AH0262F.
     N1AH0263 AH0263F.
     N1AH0264 AH0264F.
     N1AH0266 AH0266F.
     N1AH0269 AH0269F.
     N1AH0270 AH0270F.
     N1AH0272 AH0272F.
     N1AH0273 AH0273F.
     N1AH0275 AH0275F.
     N1AH0278 AH0278F.
     N1AH0281 AH0281F.
     N1AH0282 AH0282F.
     N1AH0284 AH0284F.
     N1AH0287 AH0287F.
     N1AH0288 AH0288F.
     N1AH0290 AH0290F.
     N1AH0291 AH0291F.
     N1AH0293 AH0293F.
     N1AH0296 AH0296F.
     N1AH0297 AH0297F.
     N1AH0299 AH0299F.
     N1AH0300 AH0300F.
     N1AH0302 AH0302F.
     N1AH0303 AH0303F.
     N1AH0305 AH0305F.
     N1AH0306 AH0306F.
     N1AH0308 AH0308F.
     N1AH0311 AH0311F.
     N1AH0312 AH0312F.
     N1AH0314 AH0314F.
     N1AH0315 AH0315F.
     N1AH0317 AH0317F.
     N1AH0318 AH0318F.
     N1AH0320 AH0320F.
     N1AH0321 AH0321F.
     N1AH0323 AH0323F.
     N1AH0324 AH0324F.
     N1AH0326 AH0326F.
     N1AH0327 AH0327F.
     N1AH0329 AH0329F.
     N1AH0330 AH0330F.
     N1AH0332 AH0332F.
     N1AH0333 AH0333F.
     N1AH0335 AH0335F.
     N1AH0336 AH0336F.
     N1AH0338 AH0338F.
     N1AH0341 AH0341F.
     N1AH0342 AH0342F.
     N1AH0344 AH0344F.
     N1AH0345 AH0345F.
     N1AH0347 AH0347F.
     N1AH0348 AH0348F.
     N1AH0350 AH0350F.
     N1AH0351 AH0351F.
     N1AH0353 AH0353F.
     N1AH0354 AH0354F.
     N1AH0356 AH0356F.
     N1AH0357 AH0357F.
     N1AH0359 AH0359F.
     N1AH0360 AH0360F.
     N1AH0362 AH0362F.
     N1AH0363 AH0363F.
     N1AH0365 AH0365F.
     N1AH0366 AH0366F.
     N1AH0368 AH0368F.
     N1AH0369 AH0369F.
     N1AH0371 AH0371F.
     N1AH0372 AH0372F.
     N1AH0374 AH0374F.
     N1AH0375 AH0375F.
     N1AH0377 AH0377F.
     N1AH0378 AH0378F.
     N1AH0379 AH0379F.
     N1AH0380 AH0380F.
     N1AH0381 AH0381F.
     N1AH0382 AH0382F.
     N1AH0383 AH0383F.
     N1AH0384 AH0384F.
     N1AH0385 AH0385F.
     N1AH0386 AH0386F.
     N1AH0387 AH0387F.
     N1AH0388 AH0388F.
     N1AH0389 AH0389F.
     N1AH0390 AH0390F.
     N1AH0391 AH0391F.
     N1AH0392 AH0392F.
     N1AH0393 AH0393F.
     N1AH0394 AH0394F.
     N1AH0395 AH0395F.
     N1AH0396 AH0396F.
     N1AH0397 AH0397F.
     N1AH0398 AH0398F.
     N1AH0399 AH0399F.
     N1AH0400 AH0400F.
     N1AH0401 AH0401F.
     N1AH0402 AH0402F.
     N1AH0403 AH0403F.
     N1AH0404 AH0404F.
     N1AH0405 AH0405F.
     N1AH0406 AH0406F.
     N1AH0407 AH0407F.
     N1AH0409 AH0409F.
     N1AH0410 AH0410F.
     N1AH0411 AH0411F.
     N1AH0412 AH0412F.
     N1AH0413 AH0413F.
     N1AH0414 AH0414F.
     N1AH0415 AH0415F.
     N1AH0416 AH0416F.
     N1AH0417 AH0417F.
     N1AH0418 AH0418F.
     N1AH0419 AH0419F.
     N1AH0420 AH0420F.
     N1AH0421 AH0421F.
     N1AH0422 AH0422F.
     N1AH0423 AH0423F.
     N1AH0424 AH0424F.
     N1AH0425 AH0425F.
     N1AH0426 AH0426F.
     N1AH0427 AH0427F.
     N1AH0428 AH0428F.
     N1AH0429 AH0429F.
     N1AH0430 AH0430F.
     N1AH0431 AH0431F.
     N1AH0432 AH0432F.
     N1AH0433 AH0433F.
     N1AH0434 AH0434F.
     N1AH0435 AH0435F.
     N1AH0436 AH0436F.
     N1AH0437 AH0437F.
     N1AH0438 AH0438F.
     N1AH0439 AH0439F.
     N1AH0440 AH0440F.
     N1AH0441 AH0441F.
     N1AH0442 AH0442F.
     N1AH0443 AH0443F.
     N1AH0444 AH0444F.
     N1AH0445 AH0445F.
     N1AH0446 AH0446F.
     N1AH0447 AH0447F.
     N1AH0448 AH0448F.
     N1AH0451 AH0451F.
     N1AH0453 AH0453F.
     N1AH0456 AH0456F.
     N1AH0458 AH0458F.
     N1AH0460 AH0460F.
     N1AH0461 AH0461F.
     N1AH0463 AH0463F.
     N1AH0464 AH0464F.
     N1AH0465 AH0465F.
     N1AH0466 AH0466F.
     N1AH0468 AH0468F.
     N1AH0470 AH0470F.
     N1AH0472 AH0472F.
     N1AH0475 AH0475F.
     N1AH0476 AH0476F.
     N1AH0477 AH0477F.
     N1AH0478 AH0478F.
     N1AH0480 AH0480F.
     N1AH0482 AH0482F.
     N1AH0484 AH0484F.
     ;

	INPUT
         SEQN 1-5
         N1AH0006 6-9
         N1AH0010 10
         N1AH0011 11
         N1AH0012 12
         N1AH0013 13
         N1AH0014 14
         N1AH0015 15
         N1AH0016 16
         N1AH0017 17-18
         N1AH0019 19
         N1AH0020 20-21
         N1AH0022 22
         N1AH0023 23-24
         N1AH0025 25-26
         N1AH0027 27
         N1AH0028 28
         N1AH0029 29
         N1AH0030 30
         N1AH0031 31
         N1AH0032 32
         N1AH0033 33
         N1AH0034 34-35
         N1AH0036 36
         N1AH0037 37-40
         N1AH0041 41
         N1AH0042 42-45
         N1AH0046 46
         N1AH0047 47-50
         N1AH0051 51
         N1AH0052 52-55
         N1AH0056 56
         N1AH0057 57-60
         N1AH0061 61
         N1AH0062 62-65
         N1AH0066 66
         N1AH0067 67-70
         N1AH0071 71
         N1AH0072 72-75
         N1AH0076 76
         N1AH0077 77-80
         N1AH0081 81
         N1AH0082 82-85
         N1AH0086 86
         N1AH0087 87-90
         N1AH0091 91-94
         N1AH0095 95-99
         N1AH0100 100
         N1AH0101 101-102
         N1AH0103 103
         N1AH0104 104
         N1AH0105 105
         N1AH0106 106-109
         N1AH0110 110-111
         N1AH0112 112-113
         N1AH0114 114
         N1AH0115 115
         N1AH0116 116
         N1AH0117 117
         N1AH0118 118
         N1AH0119 119
         N1AH0120 120-121
         N1AH0122 122
         N1AH0123 123
         N1AH0124 124
         N1AH0125 125
         N1AH0126 126
         N1AH0127 127
         N1AH0128 128
         N1AH0129 129
         N1AH0130 130
         N1AH0131 131
         N1AH0132 132-134
         N1AH0135 135-137
         N1AH0138 138-143
         N1AH0144 144-145
         N1AH0146 146
         N1AH0147 147-149
         N1AH0150 150
         N1AH0151 151
         N1AH0152 152
         N1AH0153 153
         N1AH0154 154
         N1AH0155 155
         N1AH0156 156
         N1AH0157 157
         N1AH0158 158-163
         N1AH0164 164-169
         N1AH0170 170-175
         N1AH0176 176-181
         N1AH0182 182-187
         N1AH0188 188-193
         N1AH0194 194-195
         N1AH0196 196-198
         N1AH0199 199-200
         N1AH0201 201-204
         N1AH0205 205-227
         N1AH0228 228
         N1AH0229 229
         N1AH0230 230
         N1AH0231 231
         N1AH0232 232
         N1AH0233 233
         N1AH0234 234
         N1AH0235 235
         N1AH0236 236
         N1AH0237 237
         N1AH0238 238
         N1AH0239 239
         N1AH0240 240
         N1AH0241 241
         N1AH0242 242
         N1AH0243 243
         N1AH0244 244
         N1AH0245 245
         N1AH0246 246
         N1AH0247 247
         N1AH0248 248
         N1AH0249 249
         N1AH0250 250
         N1AH0251 251
         N1AH0252 252
         N1AH0253 253
         N1AH0254 254
         N1AH0255 255
         N1AH0256 256
         N1AH0257 257
         N1AH0258 258
         N1AH0259 259
         N1AH0260 260
         N1AH0261 261
         N1AH0262 262
         N1AH0263 263
         N1AH0264 264-265
         N1AH0266 266
         N1AH0267 267-268
         N1AH0269 269
         N1AH0270 270-271
         N1AH0272 272
         N1AH0273 273-274
         N1AH0275 275
         N1AH0276 276-277
         N1AH0278 278
         N1AH0279 279-280
         N1AH0281 281
         N1AH0282 282-283
         N1AH0284 284
         N1AH0285 285-286
         N1AH0287 287
         N1AH0288 288-289
         N1AH0290 290
         N1AH0291 291-292
         N1AH0293 293
         N1AH0294 294-295
         N1AH0296 296
         N1AH0297 297-298
         N1AH0299 299
         N1AH0300 300-301
         N1AH0302 302
         N1AH0303 303-304
         N1AH0305 305
         N1AH0306 306-307
         N1AH0308 308
         N1AH0309 309-310
         N1AH0311 311
         N1AH0312 312-313
         N1AH0314 314
         N1AH0315 315-316
         N1AH0317 317
         N1AH0318 318-319
         N1AH0320 320
         N1AH0321 321-322
         N1AH0323 323
         N1AH0324 324-325
         N1AH0326 326
         N1AH0327 327-328
         N1AH0329 329
         N1AH0330 330-331
         N1AH0332 332
         N1AH0333 333-334
         N1AH0335 335
         N1AH0336 336-337
         N1AH0338 338
         N1AH0339 339-340
         N1AH0341 341
         N1AH0342 342-343
		 N1AH0344 344
         N1AH0345 345-346
         N1AH0347 347
         N1AH0348 348-349
         N1AH0350 350
         N1AH0351 351-352
         N1AH0353 353
         N1AH0354 354-355
         N1AH0356 356
         N1AH0357 357-358
         N1AH0359 359
         N1AH0360 360-361
         N1AH0362 362
         N1AH0363 363-364
         N1AH0365 365
         N1AH0366 366-367
         N1AH0368 368
         N1AH0369 369-370
         N1AH0371 371
         N1AH0372 372-373
         N1AH0374 374
         N1AH0375 375-376
         N1AH0377 377
         N1AH0378 378
         N1AH0379 379
         N1AH0380 380
         N1AH0381 381
         N1AH0382 382
         N1AH0383 383
         N1AH0384 384
         N1AH0385 385
         N1AH0386 386
         N1AH0387 387
         N1AH0388 388
         N1AH0389 389
         N1AH0390 390
         N1AH0391 391
         N1AH0392 392
         N1AH0393 393
         N1AH0394 394
         N1AH0395 395
         N1AH0396 396
         N1AH0397 397
         N1AH0398 398
         N1AH0399 399
         N1AH0400 400
         N1AH0401 401
         N1AH0402 402
         N1AH0403 403
         N1AH0404 404
         N1AH0405 405
         N1AH0406 406
         N1AH0407 407-408
         N1AH0409 409
         N1AH0410 410
         N1AH0411 411
         N1AH0412 412
         N1AH0413 413
         N1AH0414 414
         N1AH0415 415
         N1AH0416 416
         N1AH0417 417
         N1AH0418 418
         N1AH0419 419
         N1AH0420 420
         N1AH0421 421
         N1AH0422 422
         N1AH0423 423
         N1AH0424 424
         N1AH0425 425
         N1AH0426 426
         N1AH0427 427
         N1AH0428 428
         N1AH0429 429
         N1AH0430 430
         N1AH0431 431
         N1AH0432 432
         N1AH0433 433
         N1AH0434 434
         N1AH0435 435
         N1AH0436 436
         N1AH0437 437
         N1AH0438 438
         N1AH0439 439
         N1AH0440 440
         N1AH0441 441
         N1AH0442 442
         N1AH0443 443
         N1AH0444 444
         N1AH0445 445
         N1AH0446 446
         N1AH0447 447
         N1AH0448 448-450
         N1AH0451 451-452
         N1AH0453 453-455
         N1AH0456 456-457
         N1AH0458 458-459
         N1AH0460 460
         N1AH0461 461-462
         N1AH0463 463
         N1AH0464 464
         N1AH0465 465
         N1AH0466 466-467
         N1AH0468 468-469
         N1AH0470 470-471
         N1AH0472 472
         N1AH0473 473-474
         N1AH0475 475
         N1AH0476 476
         N1AH0477 477
         N1AH0478 478
         N1AH0479 479
         N1AH0480 480-481
         N1AH0482 482
         N1AH0483 483
         N1AH0484 484
         N1AH0485 485
         N1AH0486 486-487
         N1AH0488 488-500
      ;

      LABEL
         SEQN = "SAMPLE SEQUENCE NUMBER"
         N1AH0006 = "CATALOG NUMBER 4271"
         N1AH0010 = "SIZE OF PLACE"
         N1AH0011 = "SMSA-NOT SMSA"
         N1AH0012 = "TYPE OF LIVING QUARTERS"
         N1AH0013 = "LAND USAGE"
         N1AH0014 = "IF RURAL, ASKED HOW MANY ACRES OF LA ..."
         N1AH0015 = "IF RURAL, ASKED HOW MANY ACRES OF LA ..."
         N1AH0016 = "IF 10 ACRES OR LESS, ASKED IF SALE O ..."
         N1AH0017 = "AGE-HEAD OF HOUSEHOLD"
         N1AH0019 = "SEX-HEAD OF HOUSEHOLD"
         N1AH0020 = "HIGHEST GRADE ATTENDED-HEAD OF HOUSEHOLD"
         N1AH0022 = "RACE-HEAD OF HOUSEHOLD"
         N1AH0023 = "TOTAL NUMBER OF PERSONS IN HOUSEHOLD"
         N1AH0025 = "TOTAL SAMPLE PERSONS IN HOUSEHOLD"
         N1AH0027 = "NUMBER OF ROOMS IN HOUSE"
         N1AH0028 = "IS THERE PIPED WATER?"
         N1AH0029 = "IS THERE HOT AND COLD PIPED WATER?"
         N1AH0030 = "DOES HOUSE HAVE A SINK WITH PIPED WATER?"
         N1AH0031 = "DOES HOUSE HAVE A RANGE OR COOK STOVE?"
         N1AH0032 = "DOES HOUSE HAVE REFRIGERATOR?"
         N1AH0033 = "ARE KITCHEN FACILITIES USED BY ANYON ..."
         N1AH0034 = "TOTAL FAMILY INCOME GROUP"
         N1AH0036 = "WAGES OR SALARIES?"
         N1AH0037 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER ..."
         N1AH0041 = "SOCIAL SECURITY OR RAILROAD RETIREMENT?"
         N1AH0042 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AH0046 = "WELFARE PAYMENTS OR OTHER PUBLIC ASS ..."
         N1AH0047 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AH0051 = "UNEMPLOYMENT OR WORKMEN'S COMPENSATION?"
         N1AH0052 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AH0056 = "GOVERNMENT EMPLOYEE PENSIONS OR PRIV ..."
         N1AH0057 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AH0061 = "DIVIDENDS, INTEREST OR RENT?"
         N1AH0062 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AH0066 = "NET INCOME FROM OWN NON-FARM BUSINES ..."
         N1AH0067 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AH0071 = "NET INCOME FROM A FARM?"
         N1AH0072 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AH0076 = "VETERAN'S PAYMENTS"
         N1AH0077 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AH0081 = "ALIMONY, CHILD SUPPORT OR CONTRIBUTI ..."
         N1AH0082 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AH0086 = "ANY OTHER INCOME?"
         N1AH0087 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AH0091 = "TOTAL AMOUNT (TOTAL OF POSITIONS 37-90)"
         N1AH0095 = "FAMILY UNIT CODE"
         N1AH0100 = "RELATIONSHIP TO HEAD OF HOUSEHOLD"
         N1AH0101 = "AGE AT INTERVIEW"
         N1AH0103 = "RACE OF EXAMINED PERSON"
         N1AH0104 = "SEX OF EXAMINED PERSON"
         N1AH0105 = "MARITAL STATUS"
         N1AH0106 = "DATE OF BIRTH (MONTH, YEAR)"
         N1AH0110 = "PLACE OF BIRTH"
         N1AH0112 = "HIGHEST GRADE OF REGULAR SCHOOL EVER ..."
         N1AH0114 = "DID HE FINISH THE GRADE?"
         N1AH0115 = "IS HE ATTENDING SCHOOL NOW?"
         N1AH0116 = "HAS HE EVER ATTENDED A SCHOOL OF ANY ..."
         N1AH0117 = "IF YES, WHAT KIND OF SCHOOL?"
         N1AH0118 = "IS ANY LANGUAGE OTHER THAN ENGLISH F ..."
         N1AH0119 = "IF YES, WHAT LANGUAGE?"
         N1AH0120 = "WHAT IS YOUR MAIN ANCESTRY OR NATION ..."
         N1AH0122 = "WHAT WAS HE DOING MOST OF PAST THREE ..."
         N1AH0123 = "IF 'SOMETHING ELSE' FROM ABOVE, WHAT ..."
         N1AH0124 = "IF 'KEEPING HOUSE' OR 'SOMETHING ELS ..."
         N1AH0125 = "I 'WORKING' FROM ABOVE, DID HE WORK  ..."
         N1AH0126 = "DID HE WORK AT ANY TIME LAST WEEK OR ..."
         N1AH0127 = "IF 'NO' TO ABOVE, EVEN THOUGH HE DID ..."
         N1AH0128 = "IF 'NO' IN POSITION 126, WAS HE LOOK ..."
         N1AH0129 = "IF YES TO ABOVE-WHICH?"
         N1AH0130 = "CLASS OF WORKER"
         N1AH0131 = "IF SELF-EMPLOYED IN 'OWN' BUSINESS A ..."
         N1AH0132 = "BUSINESS OR INDUSTRY CODE"
         N1AH0135 = "OCCUPATION CODE"
         N1AH0138 = "DATE OF EXAMINATION "
         N1AH0144 = "AGE AT EXAMINATION"
         N1AH0146 = "FARM"
         N1AH0147 = "POVERTY INDEX (X.XX)"
         N1AH0150 = "REGION"
         N1AH0151 = "FOOD PROGRAMS APPLICABILITY"
         N1AH0152 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1AH0153 = "ARE YOU BUYING STAMPS NOW?"
         N1AH0154 = "WHAT IS THE MAIN REASON YOU AREN'T P ..."
         N1AH0155 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1AH0156 = "ARE YOU RECEIVING COMMODITY FOODS NO ..."
         N1AH0157 = "WHY AREN'T YOU PARTICIPATING IN THE  ..."
         N1AH0158 = "DETAILED PERSONS-LOCATIONS 1-35"
         N1AH0164 = "ALL SAMPLE PERSONS-LOCATIONS 1-35"
         N1AH0170 = "DETAILED PERSONS-LOCATIONS 1-65"
         N1AH0176 = "ALL SAMPLE PERSONS-LOCATIONS 1-65"
         N1AH0182 = "DETAILED PERSONS-LOCATIONS 66-100"
         N1AH0188 = "DETAILED PERSONS-LOCATIONS 1-100"
         N1AH0194 = "STRATA 1/"
         N1AH0196 = "PRIMARY SAMPLING UNITS 1/"
         N1AH0199 = "DATA USER WORK AREA"
         N1AH0201 = "CATALOG NUMBER 4081"
         N1AH0205 = "WORK AREA"
         N1AH0228 = "DO YOU HAVE AN ILLNESS OR CONDITION  ..."
         N1AH0229 = "DO YOU HAVE AN ILLNESS WHICH HAS REC ..."
         N1AH0230 = "DO YOU HAVE TROUBLE CHEWING STEAKS,  ..."
         N1AH0231 = "DO YOU HAVE TROUBLE BITING APPLES OR ..."
         N1AH0232 = "DO YOU HAVE TROUBLE BITING OR CHEWIN ..."
         N1AH0233 = "ARE THERE ANY FOODS YOU AVOID EATING ..."
         N1AH0234 = "WHAT ARE THEY? MILK"
         N1AH0235 = "FATS"
         N1AH0236 = "GREENS"
         N1AH0237 = "SEAFOOD"
         N1AH0238 = "OTHER"
         N1AH0239 = "DO YOU HAVE EPISODES OF PAIN OR DISC ..."
         N1AH0240 = "DO YOU HAVE DIFFICULTY SWALLOWING AT ..."
         N1AH0241 = "DO YOU HAVE EPISODES OF VOMITING OF  ..."
         N1AH0242 = "HAVE YOU EVER HAD YELLOW JAUNDICE?"
         N1AH0243 = "DID A DOCTOR EVER TELL YOU THAT YOU  ..."
         N1AH0244 = "WHICH? PROTEIN"
         N1AH0245 = "ALBUMIN"
         N1AH0246 = "BLOOD"
         N1AH0247 = "SUGAR"
         N1AH0248 = "DURING THE PAST 6 MONTHS HAVE YOU HA ..."
         N1AH0249 = "DO YOU HAVE TROUBLE WITH YOUR BOWELS?"
         N1AH0250 = "HOW OFTEN DO YOU USUALLY HAVE A BOWE ..."
         N1AH0251 = "HAVE YOUR MOVEMENTS EVER BEEN WHITE, ..."
         N1AH0252 = "WHICH? WHITE"
         N1AH0253 = "GRAY"
         N1AH0254 = "DARK BLACK"
         N1AH0255 = "STREAKED WITH BLOOD"
         N1AH0256 = "HAVE YOU EVER HAD AN ABDOMINAL OPERA ..."
         N1AH0257 = "WAS IT FOR? ULCERS"
         N1AH0258 = "GALLSTONES"
         N1AH0259 = "HIATUS HERNIA OF THE DIAPHRAGM"
         N1AH0260 = "TUMOR OF STOMACH, BOWEL OR COLON"
         N1AH0261 = "TUMOR OR CYST OF THE WOMB OR OVARIES"
         N1AH0262 = "OTHER"
         N1AH0263 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0264 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0266 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0267 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0269 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0270 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0272 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0273 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0275 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0276 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0278 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0279 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0281 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0282 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0284 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0285 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0287 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0288 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0290 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0291 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0293 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0294 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0296 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0297 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0299 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0300 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0302 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0303 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0305 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0306 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0308 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0309 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0311 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0312 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0314 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0315 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0317 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0318 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0320 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0321 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0323 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0324 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0326 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0327 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0329 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0330 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0332 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0333 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0335 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0336 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0338 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0339 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0341 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0342 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
		 N1AH0344 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0345 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0347 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0348 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0350 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0351 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0353 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0354 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0356 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0357 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0359 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0360 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0362 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0363 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0365 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0366 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0368 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0369 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0371 = "HAS A DOCTOR EVER TOLD YOU THAT YOU  ..."
         N1AH0372 = "HOW MANY YEARS AGO DID YOU FIRST HAV ..."
         N1AH0374 = "HAVE YOU EVER HAD ANEMIA?"
         N1AH0375 = "HOW LONG AGO?"
         N1AH0377 = "DID A DOCTOR TELL YOU THAT YOU HAD A ..."
         N1AH0378 = "WHAT CAUSED IT? POOR DIET"
         N1AH0379 = "CHILDBIRTH"
         N1AH0380 = "ACCIDENTAL LOSS OF BLOOD"
         N1AH0381 = "ILLNESS"
         N1AH0382 = "SURGERY"
         N1AH0383 = "OTHER"
         N1AH0384 = "WERE YOU TREATED FOR THIS CONDITION  ..."
         N1AH0385 = "WAS TREATED, A BETTER DIET"
         N1AH0386 = "IRON PILLS "
         N1AH0387 = "IRON SHOTS"
         N1AH0388 = "VITAMIN PILLS"
         N1AH0389 = "VITAMIN SHOTS"
         N1AH0390 = "TRANSFUSIONS "
         N1AH0391 = "OTHER"
         N1AH0392 = "ARE YOU STILL BEING TREATED FOR IT?"
         N1AH0393 = "HAVE YOU EVER HAD TROUBLE SEEING?"
         N1AH0394 = "DID YOU SEE A DOCTOR ABOUT IT?"
         N1AH0395 = "HAVE YOU EVER WORN GLASSES OR CONTACTS?"
         N1AH0396 = "DO YOU STILL WEAR THEM?"
         N1AH0397 = "WHEN DO (DID) YOU WEAR THEM? ALL THE ..."
         N1AH0398 = "FOR READING OR CLOSE WORK?"
         N1AH0399 = "FOR DISTANCE VISION?"
         N1AH0400 = "AT OTHER TIMES?"
         N1AH0401 = "DO (DID) YOU HAVE TROUBLE WITH VISIO ..."
         N1AH0402 = "HOW OLD WERE YOU WHEN YOU FIRST WORE ..."
         N1AH0403 = "HAVE YOU EVER HAD TO MISS WORK OR SC ..."
         N1AH0404 = "DURING THE PAST YEAR HAVE YOU HAD AT ..."
         N1AH0405 = "HOW OFTEN DO YOU DRINK?"
         N1AH0406 = "WHICH DO YOU MOST FREQUENTLY DRINK?"
         N1AH0407 = "WHEN YOU DRINK, HOW MUCH DO YOU USUA ..."
         N1AH0409 = "DO YOU EAT DIRT OR CLAY, STARCH OR A ..."
         N1AH0410 = "WHICH DO YOU EAT? DIRT OR CLAY"
         N1AH0411 = "STARCH"
         N1AH0412 = "OTHER"
         N1AH0413 = "DURING THE PAST SIX MONTHS HAVE YOU  ..."
         N1AH0414 = "HEADACHE"
         N1AH0415 = "OTHER PAINS"
         N1AH0416 = "UPSET STOMACH OR INDIGESTION"
         N1AH0417 = "WEAK HEART"
         N1AH0418 = "ALLERGIES"
         N1AH0419 = "NERVES"
         N1AH0420 = "THYROID TROUBLE"
         N1AH0421 = "LACK OF PEP"
         N1AH0422 = "CONVULSIONS"
         N1AH0423 = "HIGH BLOOD PRESSURE"
         N1AH0424 = "BOWEL TROUBLE"
         N1AH0425 = "SKIN CONDITIONS"
         N1AH0426 = "WATER LOSS (FLUID PILLS)"
         N1AH0427 = "WEIGHT LOSS"
         N1AH0428 = "INFECTION"
         N1AH0429 = "ARE YOU ON A SPECIAL DIET"
         N1AH0430 = "WHAT IS THE DIET FOR? TO LOSE WEIGHT"
         N1AH0431 = "DIABETES"
         N1AH0432 = "KIDNEY FAILURE"
         N1AH0433 = "ULCERS"
         N1AH0434 = "ALLERGIES"
         N1AH0435 = "HEART TROUBLE OR HIGH BLOOD PRESSURE"
         N1AH0436 = "PREGNANCY"
         N1AH0437 = "OTHER REASON"
         N1AH0438 = "WHAT KIND OF DIET IS IT? LOW FAT"
         N1AH0439 = "LOW PROTEIN"
         N1AH0440 = "LOW SALT"
         N1AH0441 = "LOW CARBOHYDRATE"
         N1AH0442 = "LOW CALORIE"
         N1AH0443 = "OTHER"
         N1AH0444 = "WAS THIS DIET ORDERED BY A DOCTOR?"
         N1AH0445 = "IN YOU USUAL DAY, ASIDE FROM RECREAT ..."
         N1AH0446 = "DO YOU GET MUCH EXERCISE IN THINGS Y ..."
         N1AH0447 = "MAY I SEE YOUR BOX OF TABLE SALT?"
         N1AH0448 = "WHAT IS MOST YOU HAVE EVER WEIGHED?"
         N1AH0451 = "HOW OLD WERE YOU THEN?"
         N1AH0453 = "WHAT  IS LEAST YOU HAVE WEIGHED SINC ..."
         N1AH0456 = "HOW OLD WERE YOU THEN?"
         N1AH0458 = "HOW OLD WHEN YOUR PERIODS OR MENSTRU ..."
         N1AH0460 = "HAVE THEY ENTIRELY STOPPED?"
         N1AH0461 = "AT WHAT AGE?"
         N1AH0463 = "HAVE YOU TAKEN BIRTH CONTROL PILLS D ..."
         N1AH0464 = "ARE YOU TAKING THEM NOW?"
         N1AH0465 = "ARE YOU OR HAVE YOU EVER BEEN PREGNANT?"
         N1AH0466 = "WHAT IS THE TOTAL NUMBER OF PREGNANC ..."
         N1AH0468 = "WHAT IS THE TOTAL NUMBER OF MISCARRI ..."
         N1AH0470 = "TOTAL NUMBER OF LIVE BIRTHS YOU HAVE ..."
         N1AH0472 = "ARE YOU PREGNANT NOW?"
         N1AH0473 = "WHICH MONTH OF PREGNANCY ARE YOU IN?"
         N1AH0475 = "HAVE YOU HAD A PREGNANCY THAT ENDED  ..."
         N1AH0476 = "HOW MANY MONTHS AGO DID THAT PREGNAN ..."
         N1AH0477 = "ARE YOU BREST FEEDING?"
         N1AH0478 = "IS THERE A SCHOOL LUNCH PROGRAM AT T ..."
         N1AH0479 = "HOW MANY TIMES A WEEK DOES HE USUALL ..."
         N1AH0480 = "HOW MUCH DOES HE PAY FOR HIS LUNCH P ..."
         N1AH0482 = "IS THERE A SPECIAL MILK PROGRAM AT T ..."
         N1AH0483 = "HOW MANY TIMES A WEEK DOES HE USUALL ..."
         N1AH0484 = "IS THERE A SCHOOL BREAKFAST PROGRAM  ..."
         N1AH0485 = "HOW MANY TIMES A WEEK DOES HE USUALL ..."
         N1AH0486 = "HOW MUCH DOES HE PAY FOR HIS BREAKFA ..."
         N1AH0488 = "DATA USER WORK AREA"
      ;
RUN;
