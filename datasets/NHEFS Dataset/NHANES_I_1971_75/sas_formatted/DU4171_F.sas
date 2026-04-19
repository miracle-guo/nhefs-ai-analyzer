/*
 *  Survey:           NHANES I
 *  Years:            1971-1975
 *  Questionnaire:    General Well-Being and the CES-D Depression Scale
 *  Tape Number:      4171
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

VALUE MH0010F
     1='3,000,000 or more'
     2='1,000,000 to 2,999,999'
     3='250,000 to 999,999'
     4='under 250,000'
     5='Urban place 25,000 or more outside urbanized area'
     6='Urban place 10,000 to 24,999 outside urbanized area'
     7='Urban place 2,500 to 9,999 outside urbanized area'
     8='Rural'
     ;

VALUE MH0011F
     1='In SMSA, in central city'
     2='In SMSA, not in central city'
     3='Not in SMSA'
     ;

VALUE MH0012F
     1='Housing Unit'
     2='Other unit'
     ;

VALUE MH0013F
     1='All other'
     2='Rural  7136'
     ;

VALUE MH0014F
     1='10 or more acres'
     2='Less than 10 acres'
     9='Not applicable'
     ;

VALUE MH0015F
     2='Yes'
     4='No'
     9='Not applicable'
     ;

VALUE MH0016F
     3='Yes'
     5='No'
     9='Not applicable'
     ;

VALUE MH0017F
     00='Blank, but applicable'
     ;

VALUE MH0019F
     1='Male'
     2='Female'
     ;

VALUE MH0020F
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

VALUE MH0022F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE MH0027F
     9='9 or more'
     ;

VALUE MH0028F
     1='Yes'
     2='No'
     ;

VALUE MH0029F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE MH0030F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE MH0031F
     1='Yes'
     2='No'
     ;

VALUE MH0032F
     1='Yes'
     2='No'
     ;

VALUE MH0033F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE MH0034F
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

VALUE MH0036F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE MH0037F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE MH0041F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE MH0042F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE MH0046F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE MH0047F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE MH0051F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE MH0052F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE MH0056F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE MH0057F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE MH0061F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE MH0062F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE MH0066F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE MH0067F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE MH0071F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE MH0072F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE MH0076F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE MH0077F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE MH0081F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE MH0082F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE MH0086F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE MH0087F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE MH0091F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE MH0100F
     1='Head (1 person living along or with non-relatives)'
     2='Head (2 or more related persons in family)'
     3='Wife'
     4='Child'
     5='Other relative'
     ;

VALUE MH0103F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE MH0104F
     1='Male'
     2='Female'
     ;

VALUE MH0105F
     1='Under 17'
     2='Married'
     3='Widowed'
     4='Never Married'
     5='Divorced'
     6='Separated'
     8='Blank, but applicable'
     ;

VALUE MH0110F
     88='Blank, but applicable'
     ;

VALUE MH0112F
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

VALUE MH0114F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE MH0115F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE MH0116F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE MH0117F
     1='Nursery'
     2='Kindergarten'
     3='Other'
     4='Headstart'
     5='Daycare'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE MH0118F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE MH0119F
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

VALUE MH0120F
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

VALUE MH0122F
     1='Working'
     2='Keeping house'
     3='Something else'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE MH0123F
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

VALUE MH0124F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE MH0125F
     1='Full-time'
     2='Part-time'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE MH0126F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE MH0127F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE MH0128F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE MH0129F
     1='Looking'
     2='Lay-off'
     3='Both'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE MH0130F
     1='Private paid'
     2='Government-Federal'
     3='Government-Other'
     4='Own'
     5='Non-paid'
     6='Never worked'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE MH0131F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE MH0146F
     1='Farm'
     2='Nonfarm'
     ;

VALUE MH0147F
     998='Index computed 998  or greater'
     999='Unknown'
     ;

VALUE MH0150F
     1='Northeast'
     2='Midwest'
     3='South'
     4='West'
     ;

VALUE MH0151F
     1='Not applicable'
     2='No program available'
     3='Food stamps available'
     4='Commodities available'
     8='Blank, but applicable'
     ;

VALUE MH0152F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE MH0153F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE MH0154F
     1='No need'
     2='Not enough money at the time'
     3='No transportation'
     4='Pride'
     5='Other'
     8='Blank, but applicable'
     ;

VALUE MH0155F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE MH0156F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE MH0157F
     1='No need'
     2='No transportation'
     3='Pride'
     4='Other'
     8='Blank, but applicable'
     ;

VALUE MH0209F
     0='All of the time'
     1='Most of the time'
     2='A good bit of the time'
     3='Some of the time'
     4='A little of the time'
     5='None of the time'
     ;

VALUE MH0210F
     00='Very concerned'
     10='Not concerned at all'
     ;

VALUE MH0212F
     0='All of the time'
     1='Most of the time'
     2='A good bit of the time'
     3='Some of the time'
     4='A little of the time'
     5='None of the time'
     ;

VALUE MH0213F
     0='None of the time'
     1='Rarely'
     2='Less than half of the time'
     3='Fairly often'
     4='Most every day'
     5='Every day'
     ;

VALUE MH0214F
     00='No energy at all, listless'
     10='Very energetic, dynamic'
     ;

VALUE MH0216F
     0='Very dissatisfied'
     1='Somewhat dissatisfied'
     2='Satisfied, pleased'
     3='Fairly happy'
     4='Very happy'
     5='Extremely happy - could not have been more satisfied or pleased'
     ;

VALUE MH0217F
     0='None of the time'
     1='A little of the time'
     2='Some of the time'
     3='A good bit of the time'
     4='Most of the time'
     5='All of the time'
     ;

VALUE MH0218F
     0='All of the time'
     1='Most of the time'
     2='A good bit of the time'
     3='Some of the time'
     4='A little of the time'
     5='None of the time'
     ;

VALUE MH0219F
     0='In very low spirits'
     1='In low spirits mostly'
     2='I have been up and down in spirits a lot'
     3='In good spirits mostly'
     4='In very good spirits'
     5='In excellent spirits'
     ;

VALUE MH0220F
     0='Extremely so -- to the point that I have just about given up'
     1='Very much so'
     2='Quite a bit'
     3='Some -- enough to bother me'
     4='A little bit'
     5='Not at all'
     ;

VALUE MH0221F
     00='Very depressed'
     10='Very cheerful'
     ;

VALUE MH0223F
     0='Extremely so -- to the point of being sick or almost sick'
     1='Very much so'
     2='Quite a bit'
     3='Some -- enough to bother me'
     4='A little bit'
     5='Not at all'
     ;

VALUE MH0224F
     0='Yes -- almost more than I could bear or stand'
     1='Yes -- quite a bit of pressure'
     2='Yes -- some-more than usual'
     3='Yes -- some-but about usual'
     4='Yes -- a little'
     5='Not at all'
     ;

VALUE MH0225F
     0='Extremely so -- to the point where I could not work or take care of  things'
     1='Very much so'
     2='Quite a bit'
     3='Some -- enough to bother me'
     4='A little'
     5='Not at all'
     ;

VALUE MH0226F
     00='Very tense'
     10='Very relaxed'
     ;

VALUE MH0228F
     0='No, and I am very disturbed'
     1='No, and I am somewhat disturbed'
     2='Not too well'
     3='Generally so'
     4='Yes, for the most part'
     5='Yes, definitely so'
     ;

VALUE MH0229F
     0='None of the time'
     1='A little of the time'
     2='Some of the time'
     3='A good bit of the time'
     4='Most of the time'
     5='All of the time'
     ;

VALUE MH0230F
     0='Yes, very much so and I am very concerned'
     1='Some and I am quite concerned'
     2='Some and I have been a little concerned'
     3='Some -- but not enough to be concerned or worried about'
     4='Only a little'
     5='Not at all'
     ;

VALUE MH0246F
     1='Yes, but I did not seek professional help'
     2='Yes, and I did seek professional help'
     3='I have had (or have now) severe personal problems, but I have not felt I needed professional help'
     4='I have had very few personal problems of any serious concern'
     5='I have not been bothered at all by personal problems during the past year'
     ;

VALUE MH0247F
     1='Yes -- during the past year'
     2='Yes -- more than a year ago'
     3='No'
     ;

VALUE MH0248F
     1='Yes -- during the past year'
     2='Yes -- more than a year ago'
     3='No'
     ;

VALUE MH0249F
     1='Yes -- during the past year'
     2='Yes -- more than a year ago'
     3='No'
     ;

VALUE MH0250F
     1='Yes -- during the past year'
     2='Yes -- more than a year ago'
     3='No'
     ;

VALUE MH0251F
     1='Yes'
     2='No'
     ;

VALUE MH0252F
     1='Yes'
     2='No'
     ;

VALUE MH0253F
     1='Yes'
     2='No'
     ;

VALUE MH0254F
     1='Yes'
     2='No'
     ;

VALUE MH0255F
     1='Yes'
     2='No'
     ;

VALUE MH0256F
     1='Yes'
     2='No'
     ;

VALUE MH0257F
     1='Yes'
     2='No'
     ;

VALUE MH0258F
     1='Yes'
     2='No'
     ;

VALUE MH0259F
     1='Yes'
     2='No'
     ;

VALUE MH0260F
     0='None'
     1='One'
     2='Two'
     3='Three'
     4='Four'
     5='Five'
     6='Six'
     7='Seven'
     8='Eight'
     9='Nine'
     ;

VALUE MH0261F
     1='Yes -- but it does not help at all'
     2='No -- no one cares to hear about my problems'
     3='No -- I do not have anyone I can talk with about my problems'
     4='Yes -- and it helps some'
     5='No -- I do not care to talk about my problems with anyone'
     6='Yes -- and it helps a lot'
     7='No -- I do not have any problems'
     ;

VALUE MH0262F
     0='Unknown'
     1='Examinee (mostly or completely)'
     2='Interviewer (mostly or completely)'
     3='Mixed (some help given)'
     ;

VALUE MH0263F
     1='No imputation'
     2='Imputed by replacement with responses from an alternate GWB record'
     ;

VALUE MH0279F
     0='Rarely or none of the time (less  than 1 day)'
     1='Some or a little of the time (1-2 days)'
     2='Occasionally or a moderate amount of the time (3-4 days)'
     3='Most or all of the time (5-7 days)'
     8='Blank, but applicable'
     ;

VALUE MH0280F
     0='Rarely or none of the time (less than 1 day)'
     1='Some or a little of the time (1-2 days)'
     2='Occasionally or a moderate amount  of the time (3-4 days)'
     3='Most or all of the time (5-7 days)'
     8='Blank, but applicable'
     ;

VALUE MH0281F
     0='Rarely or none of the time (less than 1 day)'
     1='Some or a little of the time (1-2 days)'
     2='Occasionally or a moderate amount of the time (3-4 days)'
     3='Most or all of the time (5-7 days)'
     8='Blank, but applicable'
     ;

VALUE MH0282F
     0='Most or all of the time (5-7 days)'
     1='Occasionally or a moderate amount of the time (3-4 days)'
     2='Some or a little of the time (1-2 days)'
     3='Rarely or none of the time (less  than 1 day)'
     8='Blank, but applicable'
     ;

VALUE MH0283F
     0='Rarely or none of the time (less than 1 day)'
     1='Some or a little of the time (1-2 days)'
     2='Occasionally or a moderate amount  of the time (3-4 days)'
     3='Most or all of the time (5-7 days)'
     8='Blank, but applicable'
     ;

VALUE MH0284F
     0='Rarely or none of the time (less  than 1 day)'
     1='Some or a little of the time (1-2 days)'
     2='Occasionally or a moderate amount of the time (3-4 days)'
     3='Most or all of the time (5-7 days)'
     8='Blank, but applicable'
     ;

VALUE MH0285F
     0='Rarely or none of the time (less than 1 day)'
     1='Some or a little of the time (1-2  days)'
     2='Occasionally or a moderate amount  of the time (3-4 days)'
     3='Most or all of the time (5-7 days)'
     8='Blank, but applicable'
     ;

VALUE MH0286F
     0='Most or all of the time (5-7 days)'
     1='Occasionally or a moderate amount of the time (3-4 days)'
     2='Some or a little of the time (1-2 days)'
     3='Rarely or none of the time (less than 1 day)'
     8='Blank, but applicable'
     ;

VALUE MH0287F
     0='Rarely or none of the time (less than 1 day)'
     1='Some or a little of the time (1-2 days)'
     2='Occasionally or a moderate amount of the time (3-4 days)'
     3='Most or all of the time (5-7 days)'
     8='Blank, but applicable'
     ;

VALUE MH0288F
     0='Rarely or none of the time (less than 1 day)'
     1='Some or a little of the time (1-2 days)'
     2='Occasionally or a moderate amount of the time (3-4 days)'
     3='Most or all of the time (5-7 days)'
     8='Blank, but applicable'
     ;

VALUE MH0289F
     0='Rarely or none of the time (less  than 1 day)'
     1='Some or a little of the time (1-2 days)'
     2='Occasionally or a moderate amount of the time (3-4 days)'
     3='Most or all of the time (5-7 days)'
     8='Blank, but applicable'
     ;

VALUE MH0290F
     0='Most or all of the time (5-7 days)'
     1='Occasionally or a moderate amount of the time (3-4 days)'
     2='Some or a little of the time  (1-2 days)'
     3='Rarely or none of the time (less  than 1 day)'
     8='Blank, but applicable'
     ;

VALUE MH0291F
     0='Rarely or none of the time (less than 1 day)'
     1='Some or a little of the time (1-2 days)'
     2='Occasionally or a moderate amount  of the time (3-4 days)'
     3='Most or all of the time (5-7 days)'
     8='Blank, but applicable'
     ;

VALUE MH0292F
     0='Rarely or none of the time (less  than 1 day)'
     1='Some or a little of the time (1-2  days)'
     2='Occasionally or a moderate amount of the time (3-4 days)'
     3='Most or all of the time (5-7 days)'
     8='Blank, but applicable'
     ;

VALUE MH0293F
     0='Rarely or none of the time (less  than 1 day)'
     1='Some or a little of the time (1-2  days)'
     2='Occasionally or a moderate amount of the time (3-4 days)'
     3='Most or all of the time (5-7 days)'
     8='Blank, but applicable'
     ;

VALUE MH0294F
     0='Most or all of the time (5-7 days)'
     1='Occasionally or a moderate amount of the time (3-4 days)'
     2='Some or a little of the time  (1-2 days)'
     3='Rarely or none of the time (less than 1 day)'
     8='Blank, but applicable'
     ;

VALUE MH0295F
     0='Rarely or none of the time (less  than 1 day)'
     1='Some or a little of the time (1-2 days)'
     2='Occasionally or a moderate amount of the time (3-4 days)'
     3='Most or all of the time (5-7 days)'
     8='Blank, but applicable'
     ;

VALUE MH0296F
     0='Rarely or none of the time (less than 1 day)'
     1='Some or a little of the time (1-2  days)'
     2='Occasionally or a moderate amount of the time (3-4 days)'
     3='Most or all of the time (5-7 days)'
     8='Blank, but applicable'
     ;

VALUE MH0297F
     0='Rarely or none of the time (less than 1 day)'
     1='Some or a little of the time (1-2 days)'
     2='Occasionally or a moderate amount  of the time (3-4 days)'
     3='Most or all of the time'
     8='Blank, but applicable'
     ;

VALUE MH0298F
     0='Rarely or none of the time (less than 1 day)'
     1='Some or a little of the time (1-2  days)'
     2='Occasionally or a moderate amount  of the time (3-4 days)'
     3='Most or all of the time'
     8='Blank, but applicable'
     ;

VALUE MH0299F
     99='Blank, but applicable'
     ;
RUN;


DATA D_4171;
   INFILE 'c:\temp\DU4171.txt' LRECL = 2000 MISSOVER;
      LENGTH
         SEQN 8
         N1MH0006 8
         N1MH0010 4
         N1MH0011 4
         N1MH0012 4
         N1MH0013 4
         N1MH0014 4
         N1MH0015 4
         N1MH0016 4
         N1MH0017 4
         N1MH0019 4
         N1MH0020 4
         N1MH0022 4
         N1MH0023 4
         N1MH0025 4
         N1MH0027 4
         N1MH0028 4
         N1MH0029 4
         N1MH0030 4
         N1MH0031 4
         N1MH0032 4
         N1MH0033 4
         N1MH0034 4
         N1MH0036 4
         N1MH0037 8
         N1MH0041 4
         N1MH0042 8
         N1MH0046 4
         N1MH0047 8
         N1MH0051 4
         N1MH0052 8
         N1MH0056 4
         N1MH0057 8
         N1MH0061 4
         N1MH0062 8
         N1MH0066 4
         N1MH0067 8
         N1MH0071 4
         N1MH0072 8
         N1MH0076 4
         N1MH0077 8
         N1MH0081 4
         N1MH0082 8
         N1MH0086 4
         N1MH0087 8
         N1MH0091 8
         N1MH0095 8
         N1MH0100 4
         N1MH0101 4
         N1MH0103 4
         N1MH0104 4
         N1MH0105 4
         N1MH0106 8
         N1MH0110 4
         N1MH0112 4
         N1MH0114 4
         N1MH0115 4
         N1MH0116 4
         N1MH0117 4
         N1MH0118 4
         N1MH0119 4
         N1MH0120 4
         N1MH0122 4
         N1MH0123 4
         N1MH0124 4
         N1MH0125 4
         N1MH0126 4
         N1MH0127 4
         N1MH0128 4
         N1MH0129 4
         N1MH0130 4
         N1MH0131 4
         N1MH0132 4
         N1MH0135 4
         N1MH0138 8
         N1MH0144 4
         N1MH0146 4
         N1MH0147 4
         N1MH0150 4
         N1MH0151 4
         N1MH0152 4
         N1MH0153 4
         N1MH0154 4
         N1MH0155 4
         N1MH0156 4
         N1MH0157 4
         N1MH0158 8
         N1MH0164 $6
         N1MH0170 8
         N1MH0176 $6
         N1MH0182 8
         N1MH0188 8
         N1MH0194 4
         N1MH0196 4
         N1MH0199 4
         N1MH0201 8
         N1MH0205 $4
         N1MH0209 4
         N1MH0210 4
         N1MH0212 4
         N1MH0213 4
         N1MH0214 4
         N1MH0216 4
         N1MH0217 4
         N1MH0218 4
         N1MH0219 4
         N1MH0220 4
         N1MH0221 4
         N1MH0223 4
         N1MH0224 4
         N1MH0225 4
         N1MH0226 4
         N1MH0228 4
         N1MH0229 4
         N1MH0230 4
         N1MH0231 4
         N1MH0233 4
         N1MH0235 4
         N1MH0237 4
         N1MH0239 4
         N1MH0241 4
         N1MH0243 4
         N1MH0246 4
         N1MH0247 4
         N1MH0248 4
         N1MH0249 4
         N1MH0250 4
         N1MH0251 4
         N1MH0252 4
         N1MH0253 4
         N1MH0254 4
         N1MH0255 4
         N1MH0256 4
         N1MH0257 4
         N1MH0258 4
         N1MH0259 4
         N1MH0260 4
         N1MH0261 4
         N1MH0262 4
         N1MH0263 4
         N1MH0264 $15
         N1MH0279 4
         N1MH0280 4
         N1MH0281 4
         N1MH0282 4
         N1MH0283 4
         N1MH0284 4
         N1MH0285 4
         N1MH0286 4
         N1MH0287 4
         N1MH0288 4
         N1MH0289 4
         N1MH0290 4
         N1MH0291 4
         N1MH0292 4
         N1MH0293 4
         N1MH0294 4
         N1MH0295 4
         N1MH0296 4
         N1MH0297 4
         N1MH0298 4
         N1MH0299 4
         N1MH0301 $50
      ;



FORMAT
     N1MH0010 MH0010F.
     N1MH0011 MH0011F.
     N1MH0012 MH0012F.
     N1MH0013 MH0013F.
     N1MH0014 MH0014F.
     N1MH0015 MH0015F.
     N1MH0016 MH0016F.
     N1MH0017 MH0017F.
     N1MH0019 MH0019F.
     N1MH0020 MH0020F.
     N1MH0022 MH0022F.
     N1MH0027 MH0027F.
     N1MH0028 MH0028F.
     N1MH0029 MH0029F.
     N1MH0030 MH0030F.
     N1MH0031 MH0031F.
     N1MH0032 MH0032F.
     N1MH0033 MH0033F.
     N1MH0034 MH0034F.
     N1MH0036 MH0036F.
     N1MH0037 MH0037F.
     N1MH0041 MH0041F.
     N1MH0042 MH0042F.
     N1MH0046 MH0046F.
     N1MH0047 MH0047F.
     N1MH0051 MH0051F.
     N1MH0052 MH0052F.
     N1MH0056 MH0056F.
     N1MH0057 MH0057F.
     N1MH0061 MH0061F.
     N1MH0062 MH0062F.
     N1MH0066 MH0066F.
     N1MH0067 MH0067F.
     N1MH0071 MH0071F.
     N1MH0072 MH0072F.
     N1MH0076 MH0076F.
     N1MH0077 MH0077F.
     N1MH0081 MH0081F.
     N1MH0082 MH0082F.
     N1MH0086 MH0086F.
     N1MH0087 MH0087F.
     N1MH0091 MH0091F.
     N1MH0100 MH0100F.
     N1MH0103 MH0103F.
     N1MH0104 MH0104F.
     N1MH0105 MH0105F.
     N1MH0110 MH0110F.
     N1MH0112 MH0112F.
     N1MH0114 MH0114F.
     N1MH0115 MH0115F.
     N1MH0116 MH0116F.
     N1MH0117 MH0117F.
     N1MH0118 MH0118F.
     N1MH0119 MH0119F.
     N1MH0120 MH0120F.
     N1MH0122 MH0122F.
     N1MH0123 MH0123F.
     N1MH0124 MH0124F.
     N1MH0125 MH0125F.
     N1MH0126 MH0126F.
     N1MH0127 MH0127F.
     N1MH0128 MH0128F.
     N1MH0129 MH0129F.
     N1MH0130 MH0130F.
     N1MH0131 MH0131F.
     N1MH0146 MH0146F.
     N1MH0147 MH0147F.
     N1MH0150 MH0150F.
     N1MH0151 MH0151F.
     N1MH0152 MH0152F.
     N1MH0153 MH0153F.
     N1MH0154 MH0154F.
     N1MH0155 MH0155F.
     N1MH0156 MH0156F.
     N1MH0157 MH0157F.
     N1MH0209 MH0209F.
     N1MH0210 MH0210F.
     N1MH0212 MH0212F.
     N1MH0213 MH0213F.
     N1MH0214 MH0214F.
     N1MH0216 MH0216F.
     N1MH0217 MH0217F.
     N1MH0218 MH0218F.
     N1MH0219 MH0219F.
     N1MH0220 MH0220F.
     N1MH0221 MH0221F.
     N1MH0223 MH0223F.
     N1MH0224 MH0224F.
     N1MH0225 MH0225F.
     N1MH0226 MH0226F.
     N1MH0228 MH0228F.
     N1MH0229 MH0229F.
     N1MH0230 MH0230F.
     N1MH0246 MH0246F.
     N1MH0247 MH0247F.
     N1MH0248 MH0248F.
     N1MH0249 MH0249F.
     N1MH0250 MH0250F.
     N1MH0251 MH0251F.
     N1MH0252 MH0252F.
     N1MH0253 MH0253F.
     N1MH0254 MH0254F.
     N1MH0255 MH0255F.
     N1MH0256 MH0256F.
     N1MH0257 MH0257F.
     N1MH0258 MH0258F.
     N1MH0259 MH0259F.
     N1MH0260 MH0260F.
     N1MH0261 MH0261F.
     N1MH0262 MH0262F.
     N1MH0263 MH0263F.
     N1MH0279 MH0279F.
     N1MH0280 MH0280F.
     N1MH0281 MH0281F.
     N1MH0282 MH0282F.
     N1MH0283 MH0283F.
     N1MH0284 MH0284F.
     N1MH0285 MH0285F.
     N1MH0286 MH0286F.
     N1MH0287 MH0287F.
     N1MH0288 MH0288F.
     N1MH0289 MH0289F.
     N1MH0290 MH0290F.
     N1MH0291 MH0291F.
     N1MH0292 MH0292F.
     N1MH0293 MH0293F.
     N1MH0294 MH0294F.
     N1MH0295 MH0295F.
     N1MH0296 MH0296F.
     N1MH0297 MH0297F.
     N1MH0298 MH0298F.
     N1MH0299 MH0299F.
     ;

	INPUT
         SEQN 1-5
         N1MH0006 6-9
         N1MH0010 10
         N1MH0011 11
         N1MH0012 12
         N1MH0013 13
         N1MH0014 14
         N1MH0015 15
         N1MH0016 16
         N1MH0017 17-18
         N1MH0019 19
         N1MH0020 20-21
         N1MH0022 22
         N1MH0023 23-24
         N1MH0025 25-26
         N1MH0027 27
         N1MH0028 28
         N1MH0029 29
         N1MH0030 30
         N1MH0031 31
         N1MH0032 32
         N1MH0033 33
         N1MH0034 34-35
         N1MH0036 36
         N1MH0037 37-40
         N1MH0041 41
         N1MH0042 42-45
         N1MH0046 46
         N1MH0047 47-50
         N1MH0051 51
         N1MH0052 52-55
         N1MH0056 56
         N1MH0057 57-60
         N1MH0061 61
         N1MH0062 62-65
         N1MH0066 66
         N1MH0067 67-70
         N1MH0071 71
         N1MH0072 72-75
         N1MH0076 76
         N1MH0077 77-80
         N1MH0081 81
         N1MH0082 82-85
         N1MH0086 86
         N1MH0087 87-90
         N1MH0091 91-94
         N1MH0095 95-99
         N1MH0100 100
         N1MH0101 101-102
         N1MH0103 103
         N1MH0104 104
         N1MH0105 105
         N1MH0106 106-109
         N1MH0110 110-111
         N1MH0112 112-113
         N1MH0114 114
         N1MH0115 115
         N1MH0116 116
         N1MH0117 117
         N1MH0118 118
         N1MH0119 119
         N1MH0120 120-121
         N1MH0122 122
         N1MH0123 123
         N1MH0124 124
         N1MH0125 125
         N1MH0126 126
         N1MH0127 127
         N1MH0128 128
         N1MH0129 129
         N1MH0130 130
         N1MH0131 131
         N1MH0132 132-134
         N1MH0135 135-137
         N1MH0138 138-143
         N1MH0144 144-145
         N1MH0146 146
         N1MH0147 147-149
         N1MH0150 150
         N1MH0151 151
         N1MH0152 152
         N1MH0153 153
         N1MH0154 154
         N1MH0155 155
         N1MH0156 156
         N1MH0157 157
         N1MH0158 158-163
         N1MH0164 164-169
         N1MH0170 170-175
         N1MH0176 176-181
         N1MH0182 182-187
         N1MH0188 188-193
         N1MH0194 194-195
         N1MH0196 196-198
         N1MH0199 199-200
         N1MH0201 201-204
         N1MH0205 205-208
         N1MH0209 209
         N1MH0210 210-211
         N1MH0212 212
         N1MH0213 213
         N1MH0214 214-215
         N1MH0216 216
         N1MH0217 217
         N1MH0218 218
         N1MH0219 219
         N1MH0220 220
         N1MH0221 221-222
         N1MH0223 223
         N1MH0224 224
         N1MH0225 225
         N1MH0226 226-227
         N1MH0228 228
         N1MH0229 229
         N1MH0230 230
         N1MH0231 231-232
         N1MH0233 233-234
         N1MH0235 235-236
         N1MH0237 237-238
         N1MH0239 239-240
         N1MH0241 241-242
         N1MH0243 243-245
         N1MH0246 246
         N1MH0247 247
         N1MH0248 248
         N1MH0249 249
         N1MH0250 250
         N1MH0251 251
         N1MH0252 252
         N1MH0253 253
         N1MH0254 254
         N1MH0255 255
         N1MH0256 256
         N1MH0257 257
         N1MH0258 258
         N1MH0259 259
         N1MH0260 260
         N1MH0261 261
         N1MH0262 262
         N1MH0263 263
         N1MH0264 264-278
         N1MH0279 279
         N1MH0280 280
         N1MH0281 281
         N1MH0282 282
         N1MH0283 283
         N1MH0284 284
         N1MH0285 285
         N1MH0286 286
         N1MH0287 287
         N1MH0288 288
         N1MH0289 289
         N1MH0290 290
         N1MH0291 291
         N1MH0292 292
         N1MH0293 293
         N1MH0294 294
         N1MH0295 295
         N1MH0296 296
         N1MH0297 297
         N1MH0298 298
         N1MH0299 299-300
         N1MH0301 301-350
      ;

      LABEL
         SEQN = "SAMPLE SEQUENCE NUMBER"
         N1MH0006 = "CATALOG NUMBER"
         N1MH0010 = "SIZE OF PLACE"
         N1MH0011 = "SMSA-NOT SMSA"
         N1MH0012 = "TYPE OF LIVING QUARTERS"
         N1MH0013 = "LAND USAGE"
         N1MH0014 = "IF RURAL, ASKED HOW MANY ACRES OF LA ..."
         N1MH0015 = "IF 10 ACRES OR MORE, ASKED IF SALE O ..."
         N1MH0016 = "IF 10 ACRES OR LESS, ASKED IF SALE O ..."
         N1MH0017 = "AGE-HEAD OF HOUSEHOLD"
         N1MH0019 = "SEX-HEAD OF HOUSEHOLD"
         N1MH0020 = "HIGHEST GRADE ATTENDED-HEAD OF HOUSEHOLD"
         N1MH0022 = "RACE-HEAD OF HOUSEHOLD"
         N1MH0023 = "TOTAL NUMBER OF PERSON IN HOUSEHOLD"
         N1MH0025 = "TOTAL SAMPLE PERSONS IN HOUSEHOLD"
         N1MH0027 = "NUMBER OF ROOMS IN HOUSE"
         N1MH0028 = "IS THERE PIPED WATER?"
         N1MH0029 = "IS THERE HOT AND COLD PIPED WATER?"
         N1MH0030 = "DOES HOUSE HAVE A SINK WITH PIPED WATER?"
         N1MH0031 = "DOES HOUSE HAVE A RANGE OR COOK STOVE?"
         N1MH0032 = "DOES HOUSE HAVE A REFRIGERATOR?"
         N1MH0033 = "ARE KITCHEN  FACILITIES USED BY ANYO ..."
         N1MH0034 = "TOTAL FAMILY INCOME GROUP"
         N1MH0036 = "WAGES OR SALARIES?"
         N1MH0037 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER ..."
         N1MH0041 = "SOCIAL SECURITY OR RAILROAD RETIREMENTS?"
         N1MH0042 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1MH0046 = "WELFARE PAYMENTS OR OTHER PUBLIC ASS ..."
         N1MH0047 = "IF YES ABOVE, HOW MUCH ALTOGETHER?"
         N1MH0051 = "UNEMPLOYMENT OR WORKMEN'S COMPENSATION?"
         N1MH0052 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1MH0056 = "GOVERNMENT EMPLOYEE PENSIONS OR PRIV ..."
         N1MH0057 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1MH0061 = "DIVIDENDS, INTEREST OR RENT?"
         N1MH0062 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1MH0066 = "NET INCOME FROM OWN NON-FARM OWN NON ..."
         N1MH0067 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1MH0071 = "NET INCOME FROM A FARM?"
         N1MH0072 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1MH0076 = "VETERAN'S PAYMENTS"
         N1MH0077 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1MH0081 = "ALIMONY, CHILD SUPPORT OR CONTRIBUTI ..."
         N1MH0082 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1MH0086 = "ANY OTHER INCOME?"
         N1MH0087 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1MH0091 = "TOTAL AMOUNT (TOTAL OF POSITIONS 37-90)"
         N1MH0095 = "FAMILY UNIT CODE"
         N1MH0100 = "RELATIONSHIP TO HEAD OF HOUSEHOLD"
         N1MH0101 = "AGE AT INTERVIEW"
         N1MH0103 = "RACE OF EXAMINED PERSON"
         N1MH0104 = "SEX OF EXAMINED PERSON"
         N1MH0105 = "MARITAL STATUS"
         N1MH0106 = "DATE OF BIRTH (MONTH, YEAR)"
         N1MH0110 = "PLACE OF BIRTH"
         N1MH0112 = "HIGHEST GRADE OF REGULAR SCHOOL EVER ..."
         N1MH0114 = "DID HE FINISH THE GRADE?"
         N1MH0115 = "IS HE ATTENDING SCHOOL NOW?"
         N1MH0116 = "HAS HE EVER ATTENDED A SCHOOL OF ANY ..."
         N1MH0117 = "IF YES, WHAT KIND OF SCHOOL?"
         N1MH0118 = "IS ANY LANGUAGE OTHER THAN ENGLISH F ..."
         N1MH0119 = "IF YES, WHAT LANGUAGE?"
         N1MH0120 = "WHAT IS YOUR MAIN ANCESTRY OR NATION ..."
         N1MH0122 = "WHAT WAS HE DOING MOST OF PAST THREE ..."
         N1MH0123 = "IF 'SOMETHING ELSE' FROM ABOVE, WHAT ..."
         N1MH0124 = "IF 'KEEPING HOUSE' OR 'SOMETHING ELS ..."
         N1MH0125 = "IF 'WORKING' FROM ABOVE, DID HE WORK ..."
         N1MH0126 = "DID HE WORK AT ANY TIME LAST WEEK OR ..."
         N1MH0127 = "IF 'NO'TO ABOVE, EVEN THOUGH HE DID  ..."
         N1MH0128 = "IF 'NO' IN POSITION 126, WAS HE LOOK ..."
         N1MH0129 = "IF YES TO ABOVE-WHICH?"
         N1MH0130 = "CLASS OF WORKER"
         N1MH0131 = "IF SELF-EMPLOYED IN 'OWN' BUSINESS A ..."
         N1MH0132 = "BUSINESS OR INDUSTRY CODE"
         N1MH0135 = "OCCUPATION CODE"
         N1MH0138 = "DATE OF EXAMINATION"
         N1MH0144 = "AGE OF EXAMINATION"
         N1MH0146 = "FARM"
         N1MH0147 = "POVERTY INDEX (X.XX)"
         N1MH0150 = "REGION"
         N1MH0151 = "FOOD PROGRAMS APPLICABILITY"
         N1MH0152 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1MH0153 = "ARE YOU BUYING STAMPS NOW?"
         N1MH0154 = "WHAT IS THE MAIN REASON YOU AREN'T P ..."
         N1MH0155 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1MH0156 = "ARE YOU RECEIVING COMMODITY FOODS NO ..."
         N1MH0157 = "WHY AREN'T YOU PARTICIPATING IN THE  ..."
         N1MH0158 = "DETAILED PERSONS- LOCATIONS 1-35"
         N1MH0164 = "BLANK-DATA USER WORK AREA"
         N1MH0170 = "DETAILED PERSONS- LOCATIONS 1-65"
         N1MH0176 = "BLANK-DATA USER WORK AREA"
         N1MH0182 = "DETAILED PERSONS-LOCATIONS 66-100"
         N1MH0188 = "DETAILED PERSONS-LOCATIONS 1-100"
         N1MH0194 = "STRATA1/"
         N1MH0196 = "PRIMARY SAMPLING UNITS 1/"
         N1MH0199 = "WORK AREA"
         N1MH0201 = "CATALOG NUMBER 4171"
         N1MH0205 = "BLANK-DATA USER WORK AREA"
         N1MH0209 = "HAVE YOU BEEN BOTHERED BY ANY ILLNES ..."
         N1MH0210 = "HOW CONCERNED OR WORRIED ABOUT YOUR  ..."
         N1MH0212 = "HAVE YOU FELT TIRED, WORN OUT, USED- ..."
         N1MH0213 = "HAVE YOU WAKING UP FREAK AND RESTED?"
         N1MH0214 = "HOW MUCH ENERGY, PEP, VITALITY HAVE  ..."
         N1MH0216 = "HOW HAPPY, SATISFIED, OR PLEASED HAV ..."
         N1MH0217 = "HAS YOUR DAILY LIFE BEEN FULL OF THI ..."
         N1MH0218 = "HAVE YOU FELT  DON-HEARTED AND BLUE? ..."
         N1MH0219 = "HOW HAVE YOU BEEN FEELING IN GENERAL ..."
         N1MH0220 = "HAVE YOU FELT SO SAD, DISCOURAGED, H ..."
         N1MH0221 = "HOW DEPRESSED OR CHEERFUL HAVE YOU B ..."
         N1MH0223 = "HAVE YOU BEEN ANXIOUS, WORRIED, OR U ..."
         N1MH0224 = "HAVE YOU BEEN UNDER OR FELT YOU WERE ..."
         N1MH0225 = "HAVE YOU BEEN BOTHERED BY NERVOUSNES ..."
         N1MH0226 = "HOW RELAXED OR TENSE HAVE BEEN? (DUR ..."
         N1MH0228 = "HAVE YOU BEEN IN FIRM CONTROL OF YOU ..."
         N1MH0229 = "HAVE YOU BEEN IN FEELING EMOTIONALLY ..."
         N1MH0230 = "HAVE YOU HAD ANY REASON TO WONDER IF ..."
         N1MH0231 = "FREEDOM FROM HEALTH WORRY, CONCERN ( ..."
         N1MH0233 = "ENERGY LEVEL (POSITIONS 209, 210-211)"
         N1MH0235 = "SATISFYING, INTERESTING LEVEL (POSIT ..."
         N1MH0237 = "CHEERFUL VS. DEPRESSED MOOD (POSITIO ..."
         N1MH0239 = "RELAXED VS. TENSE, ANXIOUS ( POSITIO ..."
         N1MH0241 = "EMOTIONAL-BEHAVIORAL CONTROL (POSITI ..."
         N1MH0243 = "TOTAL GENERAL WELL-BEING SCALE SCORE ..."
         N1MH0246 = "HAVE YOU HAD ENOUGH PERSONAL, EMOTIO ..."
         N1MH0247 = "H AVE YOU EVER FELT THAT YOU WERE GO ..."
         N1MH0248 = "HAVE YOU EVE HAD A NERVOUS BREAKDOWN?"
         N1MH0249 = "HAVE YOU EVER BEEN A PATIENT (OR OUT ..."
         N1MH0250 = "HAVE YOU EVER SEEN A PSYCHIATRIST, P ..."
         N1MH0251 = "REGULAR MEDICAL DOCTOR (EXCEPT FOR D ..."
         N1MH0252 = "BRAIN OR NERVE SPECIALIST"
         N1MH0253 = "NURSE (EXCEPT FOR ROUTINE MEDICAL CO ..."
         N1MH0254 = "LAWYER (EXCEPT FO R ROUTINE LEGAL SE ..."
         N1MH0255 = "POLICE (EXCEPT FOR SIMPLE TRAFFIC VI ..."
         N1MH0256 = "CLERGYMAN, MINISTER, PRIEST, RABBI, ETC."
         N1MH0257 = "MARRIAGE COUNSELOR"
         N1MH0258 = "SOCIAL WORKER"
         N1MH0259 = "OTHER FORMAN ASSISTANCE (IF YES WHAT ..."
         N1MH0260 = "NUMBER OF 'YES' OPTIONS CHECKED FOR  ..."
         N1MH0261 = "DO YOU DISCUSS YOUR PROBLEMS WITH AN ..."
         N1MH0262 = "GWB FILLED OUT BY:"
         N1MH0263 = "IMPUTATIONS FOR GWB (POSITIONS 209-2 ..."
         N1MH0264 = "BLANK-DATA USER WORK AREA"
         N1MH0279 = "I WAS BOTHERED BY THINGS THAT USUALL ..."
         N1MH0280 = "I DID NOT FEEL LIKE EATING: MY APPET ..."
         N1MH0281 = "I FELT THAT I COULD NOT SHAKE OFF TH ..."
         N1MH0282 = "IF FELT THAT I WAS JUST AS GOOD AS O ..."
         N1MH0283 = "I HAD TROUBLE KEEPING MY MIND ON WHA ..."
         N1MH0284 = "I FELT DEPRESSED"
         N1MH0285 = "I FELT THAT EVERYTHING IS DID WAS AN ..."
         N1MH0286 = "I FELT HOPEFUL ABOUT THE FUTURE"
         N1MH0287 = "I THOUGHT MY LIFE HAD BEEN A FAILURE"
         N1MH0288 = "I FELT FEARFUL"
         N1MH0289 = "MY SLEEP WAS RESTLESS"
         N1MH0290 = "I WAS HAPPY"
         N1MH0291 = "I TALKED LESS THAN USUAL"
         N1MH0292 = "I FELT LONELY"
         N1MH0293 = "PEOPLE WERE UNFRIENDLY"
         N1MH0294 = "I ENJOYED LIFE"
         N1MH0295 = "I HAD CRYING SPELLS"
         N1MH0296 = "I FELT AND"
         N1MH0297 = "I FELT THAT PEOPLE DISLIKED ME"
         N1MH0298 = "I COULD NOT 'GOING'"
         N1MH0299 = "TOTAL CES-D SCORE"
         N1MH0301 = "BLANK-DATA USER WORK AREA"
      ;
RUN;
