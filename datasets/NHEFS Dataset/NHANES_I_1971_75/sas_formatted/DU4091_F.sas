/*
 *  Survey:           NHANES I
 *  Years:            1971-1975
 *  Questionnaire:    Health Care Needs, General Medical History Supplement, and Respiratory and Cardiovascular Supplements
 *  Tape Number:      4091
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

VALUE GM0010F
     1='3,000,000 or more'
     2='1,000,000 to 2,999,999'
     3='250,000 to 999,999'
     4='under 250,000'
     5='Urban place 25,000 or more outside urbanized area'
     6='Urban place 10,000 to 24,999 outside urbanized area'
     7='Urban place 2,500 to 9,999 outside urbanized area'
     8='Rural'
     ;

VALUE GM0011F
     1='In SMSA, in central city'
     2='In SMSA, not in central city'
     3='Not in SMSA'
     ;

VALUE GM0012F
     1='Housing Unit'
     2='Other unit'
     ;

VALUE GM0013F
     1='All other'
     2='Rural  7136'
     ;

VALUE GM0014F
     1='10 or more acres'
     2='Less than 10 acres'
     9='Not applicable'
     ;

VALUE GM0015F
     2='Yes'
     4='No'
     9='Not applicable'
     ;

VALUE GM0016F
     3='Yes'
     5='No'
     9='Not applicable'
     ;

VALUE GM0017F
     00='Blank, but applicable'
     ;

VALUE GM0019F
     1='Male'
     2='Female'
     ;

VALUE GM0020F
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

VALUE GM0022F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE GM0027F
     9='9 or more'
     ;

VALUE GM0028F
     1='Yes'
     2='No'
     ;

VALUE GM0029F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE GM0030F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE GM0031F
     1='Yes'
     2='No'
     ;

VALUE GM0032F
     1='Yes'
     2='No'
     ;

VALUE GM0033F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE GM0034F
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

VALUE GM0036F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE GM0037F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE GM0041F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE GM0042F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE GM0046F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE GM0047F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE GM0051F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE GM0052F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE GM0056F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE GM0057F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE GM0061F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE GM0062F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE GM0066F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE GM0067F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE GM0071F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE GM0072F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE GM0076F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE GM0077F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE GM0081F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE GM0082F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE GM0086F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE GM0087F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE GM0091F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE GM0100F
     1='Head (1 person living along or with non-relatives)'
     2='Head (2 or more related persons in family)'
     3='Wife'
     4='Child'
     5='Other relative'
     ;

VALUE GM0103F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE GM0104F
     1='Male'
     2='Female'
     ;

VALUE GM0105F
     1='Under 17'
     2='Married'
     3='Widowed'
     4='Never Married'
     5='Divorced'
     6='Separated'
     8='Blank, but applicable'
     ;

VALUE GM0112F
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

VALUE GM0114F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE GM0115F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE GM0116F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE GM0117F
     1='Nursery'
     2='Kindergarten'
     3='Other'
     4='Headstart'
     5='Daycare'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE GM0118F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0119F
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

VALUE GM0120F
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

VALUE GM0122F
     1='Working'
     2='Keeping house'
     3='Something else'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE GM0123F
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

VALUE GM0124F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE GM0125F
     1='Full-time'
     2='Part-time'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE GM0126F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE GM0127F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE GM0128F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE GM0129F
     1='Looking'
     2='Lay-off'
     3='Both'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE GM0130F
     1='Private paid'
     2='Government-Federal'
     3='Government-Other'
     4='Own'
     5='Non-paid'
     6='Never worked'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE GM0131F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE GM0146F
     1='Farm'
     2='Nonfarm'
     ;

VALUE GM0147F
     998='Index computed 998 or greater'
     999='Unknown'
     ;

VALUE GM0150F
     1='Northeast'
     2='Midwest'
     3='South'
     4='West'
     ;

VALUE GM0151F
     1='Not applicable'
     2='No program available'
     3='Food stamps available'
     4='Commodities available'
     8='Blank, but applicable'
     ;

VALUE GM0152F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE GM0153F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE GM0154F
     1='No need'
     2='Not enough money at the time'
     3='No transportation'
     4='Pride'
     5='Other'
     8='Blank, but applicable'
     ;

VALUE GM0155F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE GM0156F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE GM0157F
     1='No need'
     2='No transportation'
     3='Pride'
     4='Other'
     8='Blank, but applicable'
     ;

VALUE GM0225F
     1='Never'
     2='Less than 2 weeks ago'
     3='2 weeks through 5 months ago'
     4='6 through 11 months ago'
     5='1 but less than 2 years ago'
     6='2 through 4 years ago'
     7='5 or more years ago'
     8='Blank, but applicable'
     ;

VALUE GM0226F
     1='Never'
     2='Less than 2 weeks ago'
     3='2 weeks through 5 months ago'
     4='6 through 11 months ago'
     5='1 but less than 2 years ago'
     6='2 through 4 years ago'
     7='5 or more years ago'
     8='Blank, but applicable'
     ;

VALUE GM0227F
     1='Never'
     2='Less than 2 weeks ago'
     3='2 weeks through 5 months ago'
     4='6 through 11 months ago'
     5='1 but less than 2 years ago'
     6='2 through 4 years ago'
     7='5 or more years ago'
     8='Blank, but applicable'
     ;

VALUE GM0228F
     1='Never'
     2='Less than 2 weeks ago'
     3='2 weeks through 5 months ago'
     4='6 through 11 months ago'
     5='1 but less than 2 years ago'
     6='2 through 4 years ago'
     7='5 or more years ago'
     8='Blank, but applicable'
     ;

VALUE GM0229F
     1='Never'
     2='Less than 2 weeks ago'
     3='2 weeks through 5 months ago'
     4='6 through 11 months ago'
     5='1 but less than 2 years ago'
     6='2 through 4 years ago'
     7='5 or more years ago'
     8='Blank, but applicable'
     ;

VALUE GM0230F
     1='Never'
     2='Less than 2 weeks ago'
     3='2 weeks through 5 months ago'
     4='6 through 11 months ago'
     5='1 but less than 2 years ago'
     6='2 through 4 years ago'
     7='5 or more years ago'
     8='Blank, but applicable'
     ;

VALUE GM0231F
     1='Never'
     2='Less than 2 weeks ago'
     3='2 weeks through 5 months ago'
     4='6 through 11 months ago'
     5='1 but less than 2 years ago'
     6='2 through 4 years ago'
     7='5 or more years ago'
     8='Blank, but applicable'
     ;

VALUE GM0232F
     1='Never'
     2='Less than 2 weeks ago'
     3='2 weeks through 5 months ago'
     4='6 through 11 months ago'
     5='1 but less than 2 years ago'
     6='2 through 4 years ago'
     7='5 or more years ago'
     8='Blank, but applicable'
     ;

VALUE GM0233F
     0='Entry given no time indicated'
     1='Never'
     2='Less than 2 weeks ago'
     3='2 weeks through 5 months ago'
     4='6 through 11 months ago'
     5='1 but less than 2 years ago'
     6='2 through 4 years ago'
     7='5 or more years ago'
     8='Blank, but applicable'
     ;

VALUE GM0234F
     1='A sickness or illness'
     2='An injury'
     3='A follow-up visit'
     4='A regular checkup'
     5='An injection'
     6='For a prescription'
     7='Some other reason'
     8='Blank, but applicable'
     ;

VALUE GM0235F
     1='Less than one day'
     2='1-6 days'
     3='1 but less than two weeks'
     4='2-3 weeks'
     5='1-2 months'
     6='3 months or more'
     8='Blank, but applicable'
     9='Dont remember'
     ;

VALUE GM0236F
     1='Yes'
     2='No'
     ;

VALUE GM0237F
     1='Less than one day'
     2='1-6 days'
     3='1 but less than two weeks'
     4='2-3 weeks'
     5='1-2 months'
     6='3 months or more'
     8='Blank, but applicable'
     9='Dont remember'
     ;

VALUE GM0238F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont remember'
     ;

VALUE GM0239F
     1='From home'
     2='From work'
     3='From some other place'
     8='Blank, but applicable'
     9='Dont remember'
     ;

VALUE GM0240F
     1='Walked'
     2='Bus'
     3='Own car'
     4='Someone elses car'
     5='Cab'
     6='Ambulance'
     7='Other Means'
     8='Blank, but applicable'
     ;

VALUE GM0241F
     1='Less than 15 minutes'
     2='15-29 minutes'
     3='30-59 minutes'
     4='1 hour or more'
     8='Blank, but applicable'
     9='Dont remember'
     ;

VALUE GM0242F
     888='Blank, but applicable'
     ;

VALUE GM0245F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0246F
     1='Satisfied'
     2='Not completely satisfied'
     3='Dissatisfied'
     4='No opinion'
     8='Blank, but applicable'
     ;

VALUE GM0247F
     1='Yes'
     2='No'
     ;

VALUE GM0248F
     1='Yes'
     2='No'
     ;

VALUE GM0249F
     1='Yes'
     2='No'
     ;

VALUE GM0250F
     1='Yes'
     2='No'
     ;

VALUE GM0251F
     1='Yes'
     2='No'
     ;

VALUE GM0252F
     1='Yes'
     2='No'
     ;

VALUE GM0253F
     1='Yes'
     2='No'
     ;

VALUE GM0254F
     1='Yes'
     2='No'
     ;

VALUE GM0255F
     1='Yes'
     2='No'
     ;

VALUE GM0256F
     0='Doctors cant help me'
     1='Doctors not available'
     2='No other reason'
     3='Personal inconvenience, too long to wait'
     4='Condition not serious, self-treated, waiting to see if go away'
     5='Procrastination, didnt take time, negligent, just didnt go'
     6='Waiting for scheduled exam'
     7='Dissatisfaction with personal doctors'
     8='Difficulty talking or cooperating with doctors'
     9='Other'
     ;

VALUE GM0257F
     1='Never'
     2='Less than 6 months ago'
     3='6-11 months ago'
     4='1 but less than 2 years ago'
     5='2 years ago or more'
     8='Blank, but applicable'
     9='Dont remember'
     ;

VALUE GM0258F
     1='Doctors office'
     2='Hospital clinic'
     3='Another clinic'
     4='Some other place'
     5='Dont remember'
     8='Blank, but applicable'
     ;

VALUE GM0259F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0260F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0261F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0262F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0263F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0264F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0265F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0266F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0267F
     1='Yes'
     2='No'
     8='Not applicable'
     9='Blank, but applicable'
     ;

VALUE GM0268F
     1='Never'
     2='Less than 6 months ago'
     3='6-11 months ago'
     4='1-2 years ago'
     5='3-5 years ago'
     6='6-9 years ago'
     7='10 years ago or more'
     8='Blank, but applicable'
     9='Dont remember'
     ;

VALUE GM0269F
     1='Foreign travel'
     2='During military service'
     3='Participation in community or work-sponsored immunization campaign'
     4='Other'
     8='Blank, but applicable'
     ;

VALUE GM0270F
     1='Yes'
     2='No'
     ;

VALUE GM0271F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE GM0272F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0273F
     1='Talk'
     2='Just treat'
     8='Blank, but applicable'
     ;

VALUE GM0274F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0275F
     1='Yes, often'
     2='Yes, sometimes'
     3='No'
     8='Blank, but applicable'
     ;

VALUE GM0276F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0277F
     1='Never'
     2='Less than 6 months ago'
     3='6 through 11 months ago'
     4='1 but less than 2 years ago'
     5='2 through 4 years ago'
     6='5 or more years ago'
     8='Blank, but applicable'
     ;

VALUE GM0278F
     1='Never'
     2='Less than 6 months ago'
     3='6 through 11 months ago'
     4='1 but less than 2 years ago'
     5='2 through 4 years ago'
     6='5 or more years ago'
     8='Blank, but applicable'
     ;

VALUE GM0279F
     1='Never'
     2='Less than 6 months ago'
     3='6 through 11 months ago'
     4='1 but less than 2 years ago'
     5='2 through 4 years ago'
     6='5 or more years ago'
     8='Blank, but applicable'
     ;

VALUE GM0280F
     1='Never'
     2='Less than 6 months ago'
     3='6 through 11 months ago'
     4='1 but less than 2 years ago'
     5='2 through 4 years ago'
     6='5 or more years ago'
     8='Blank, but applicable'
     ;

VALUE GM0281F
     1='Never'
     2='Less than 6 months ago'
     3='6 through 11 months ago'
     4='1 but less than 2 years ago'
     5='2 through 4 years ago'
     6='5 or more years ago'
     8='Blank, but applicable'
     ;

VALUE GM0282F
     0='Entry given, no time indicated'
     1='Never'
     2='Less than 6 months ago'
     3='6 through 11 months ago'
     4='1 but less than 2 years ago'
     5='2 through 4 years ago'
     6='5 or more years ago'
     8='Blank, but applicable'
     ;

VALUE GM0283F
     0='Other reason and Blank, but  applicable'
     1='Adjustment or repair of dental plate'
     2='To have dental plate made'
     3='Toothache'
     4='Tooth pulled or other surgery'
     5='Trouble with gums'
     6='Regular checkup visit'
     7='For cleaning teeth'
     8='To have teeth filled'
     9='For a prescription'
     ;

VALUE GM0284F
     1='Less than one day'
     2='1-6 days'
     3='1 week but less than 2 weeks'
     4='2-3 weeks'
     5='1-2 months'
     6='3 months or more'
     8='Blank, but applicable'
     9='Dont remember'
     ;

VALUE GM0285F
     1='Yes'
     2='No'
     ;

VALUE GM0286F
     1='Less than one day'
     2='1-6 days'
     3='1 week but less than 2 weeks'
     4='2-3 weeks'
     5='1-2 months'
     6='3 months or more'
     9='Dont remember'
     ;

VALUE GM0287F
     1='Yes'
     2='No'
     9='Dont remember'
     ;

VALUE GM0288F
     1='Walked'
     2='Bus or subway'
     3='Car'
     4='Cab'
     5='Other Means'
     8='Blank, but applicable'
     ;

VALUE GM0289F
     1='Less than 15 minutes'
     2='15-29 minutes'
     3='30-59 minutes'
     4='1 hour or more'
     8='Blank, but applicable'
     9='Dont remember'
     ;

VALUE GM0290F
     888='Blank, but applicable'
     ;

VALUE GM0293F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0294F
     1='Satisfied'
     2='Not completely satisfied'
     3='Dissatisfied'
     4='No opinion'
     8='Blank, but applicable'
     ;

VALUE GM0295F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE GM0296F
     1='Yes'
     2='No'
     ;

VALUE GM0297F
     1='Yes'
     2='No'
     ;

VALUE GM0298F
     1='Yes'
     2='No'
     ;

VALUE GM0299F
     1='Yes'
     2='No'
     ;

VALUE GM0300F
     1='Yes'
     2='No'
     ;

VALUE GM0301F
     1='Yes'
     2='No'
     ;

VALUE GM0302F
     1='Yes'
     2='No'
     ;

VALUE GM0303F
     0='Dentist cant help me'
     1='Dentist not available'
     2='No other reason'
     3='Personal inconvenience, too long to wait'
     4='Condition not serious, self-treatment, tooth stopped hurting, doesnt bother him'
     5='Procrastination, didnt go, dont want to go, didnt take time'
     6='Waiting for scheduled appointment'
     7='Dissatisfaction with personal dentist'
     8='Afraid'
     9='Other'
     ;

VALUE GM0304F
     1='Never'
     2='Less than 1 month ago'
     3='1-5 months ago'
     4='6-11 months ago'
     5='One year ago or more'
     8='Blank, but applicable'
     9='Dont remember'
     ;

VALUE GM0305F
     1='Planned'
     2='Emergency'
     8='Blank, but applicable'
     ;

VALUE GM0306F
     1='Sickness or illness'
     2='Injury'
     3='Surgery'
     4='Child birth'
     5='Checkup'
     6='Other reason'
     8='Blank, but applicable'
     ;

VALUE GM0307F
     1='Less than one day'
     2='1-6 days'
     3='1 but less than 2 weeks'
     4='2-3 weeks'
     5='1-2 months'
     6='3 months or more'
     8='Blank, but applicable'
     9='Dont remember'
     ;

VALUE GM0308F
     1='None'
     2='Less than half'
     3='More than half, but not all'
     4='All'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE GM0309F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0310F
     1='None'
     2='Less than half'
     3='More than half, but not all'
     4='All'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE GM0311F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0312F
     1='Never been to a doctor'
     2='None'
     3='Less than half'
     4='More than half, but not all'
     5='All'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE GM0313F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0314F
     1='Never been to a dentist'
     2='None'
     3='Less than half'
     4='More than half, but not all'
     5='All'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE GM0315F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0316F
     1='No drugs or medicines ever prescribed'
     2='None'
     3='Less than half'
     4='More than half, but not all'
     5='All'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE GM0317F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0318F
     1='Yes'
     2='No'
     ;

VALUE GM0319F
     1='Yes'
     2='No'
     ;

VALUE GM0320F
     1='Yes'
     2='No'
     ;

VALUE GM0321F
     1='Yes'
     2='No'
     ;

VALUE GM0322F
     1='Yes'
     2='No'
     ;

VALUE GM0323F
     1='Yes'
     2='No'
     ;

VALUE GM0324F
     1='Yes'
     2='No'
     ;

VALUE GM0325F
     1='Yes'
     2='No'
     ;

VALUE GM0326F
     1='Less than half'
     2='More than half, but not all'
     3='All'
     9='Dont know'
     ;

VALUE GM0327F
     1='Less than half'
     2='More than half, but not all'
     3='All'
     9='Dont know'
     ;

VALUE GM0328F
     1='Less than half'
     2='More than half, but not all'
     3='All'
     9='Dont know'
     ;

VALUE GM0329F
     1='Less than half'
     2='More than half, but not all'
     3='All'
     9='Dont know'
     ;

VALUE GM0330F
     1='Less than half'
     2='More than half, but not all'
     3='All'
     9='Dont know'
     ;

VALUE GM0331F
     1='Less than half'
     2='More than half, but not all'
     3='All'
     9='Dont know'
     ;

VALUE GM0332F
     1='Less than half'
     2='More than half, but not all'
     3='All'
     9='Dont know'
     ;

VALUE GM0333F
     1='Less than half'
     2='More than half, but not all'
     3='All'
     9='Dont know'
     ;

VALUE GM0340F
     1='Excellent'
     2='Very good'
     3='Good'
     4='Fair'
     5='Poor'
     8='Blank, but applicable'
     ;

VALUE GM0341F
     1='Yes'
     2='No'
     ;

VALUE GM0342F
     1='Yes'
     ;

VALUE GM0343F
     1='Yes'
     ;

VALUE GM0344F
     1='Yes'
     ;

VALUE GM0345F
     1='Yes'
     ;

VALUE GM0346F
     1='Yes'
     ;

VALUE GM0347F
     1='Yes'
     ;

VALUE GM0348F
     1='Yes'
     ;

VALUE GM0349F
     1='Yes'
     ;

VALUE GM0350F
     1='Yes'
     ;

VALUE GM0351F
     1='Yes'
     ;

VALUE GM0352F
     1='Yes'
     ;

VALUE GM0353F
     1='Yes'
     ;

VALUE GM0354F
     1='Yes'
     ;

VALUE GM0355F
     1='Yes'
     ;

VALUE GM0356F
     1='Yes'
     ;

VALUE GM0357F
     1='Yes'
     2='No'
     ;

VALUE GM0358F
     1='Yes'
     2='No'
     ;

VALUE GM0359F
     1='Yes'
     2='No'
     ;

VALUE GM0360F
     1='Yes'
     2='No'
     ;

VALUE GM0361F
     1='Yes'
     2='No'
     ;

VALUE GM0362F
     1='Yes'
     2='No'
     ;

VALUE GM0363F
     1='Yes'
     2='No'
     ;

VALUE GM0364F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0365F
     1='Yes'
     2='No'
     ;

VALUE GM0366F
     88='Blank, but applicable'
     ;

VALUE GM0372F
     00='Less than one week'
     ;

VALUE GM0374F
     00='Less than one week'
     ;

VALUE GM0376F
     00='Less than one week'
     ;

VALUE GM0378F
     1='Yes'
     2='No'
     ;

VALUE GM0379F
     1='Yes'
     2='No'
     ;

VALUE GM0380F
     90='Cigarettes per day'
     98='Cigarettes per day'
     88='Blank, but applicable'
     ;

VALUE GM0382F
     00='Blank, but applicable'
     77='Under one year'
     88='Never smoked cigarettes regularly'
     99='Dont know'
     ;

VALUE GM0384F
     90='Cigarettes per day'
     98='Cigarettes per day'
     87='Blank, but applicable'
     88='Did not smoke'
     99='Dont know'
     ;

VALUE GM0386F
     90='Cigarettes per day'
     98='Cigarettes per day'
     88='Blank, but applicable'
     99='Dont know'
     ;

VALUE GM0388F
     00='Blank, but applicable'
     88='Never smoked regularly'
     99='Dont know'
     ;

VALUE GM0390F
     1='Yes'
     2='No'
     ;

VALUE GM0391F
     1='Yes'
     2='No'
     ;

VALUE GM0392F
     88='3 to 6 per week'
     99='Less than 3 per week'
     ;

VALUE GM0394F
     66='Blank, but applicable'
     77='Under 1 year'
     88='Never smoked cigars regularly'
     99='Dont know'
     ;

VALUE GM0396F
     66='Blank, but applicable'
     77='3 to 6 per week'
     88='Less than 3 per week'
     99='Did not smoke cigars'
     ;

VALUE GM0398F
     1='Yes'
     2='No'
     ;

VALUE GM0399F
     1='Yes'
     2='No'
     ;

VALUE GM0400F
     66='Blank, but applicable'
     77='3 to 6 per week'
     99='Less than 3 per week'
     ;

VALUE GM0402F
     66='Blank, but applicable'
     77='Under 1 year'
     88='Never smoked 3 or more pipefuls regularly'
     99='Dont know'
     ;

VALUE GM0404F
     66='Blank, but applicable'
     77='3 to 6 per week'
     88='Less than 3 per week'
     99='Did not smoke a pipe'
     ;

VALUE GM0406F
     1='Yes'
     2='No'
     ;

VALUE GM0407F
     1='Yes'
     2='No'
     ;

VALUE GM0408F
     1='Yes'
     2='No'
     ;

VALUE GM0409F
     1='Yes'
     2='No'
     ;

VALUE GM0410F
     1='Very important'
     2='Fairly important'
     3='Hardly important'
     9='Dont know'
     ;

VALUE GM0411F
     1='Yes'
     2='No'
     ;

VALUE GM0412F
     1='Private doctors office'
     2='Home'
     3='Doctors clinic'
     4='Group practice'
     5='Hospital outpatient clinic'
     6='Hospital emergency room'
     7='Company or industry clinic'
     8='Other'
     ;

VALUE GM0413F
     88='Blank, but applicable'
     ;

VALUE GM0415F
     77='never'
     ;

VALUE GM0417F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0418F
     1='Yes'
     2='No'
     ;

VALUE GM0419F
     1='Every few days'
     2='Less often'
     8='Blank, but applicable'
     ;

VALUE GM0420F
     1='Quite a bit'
     2='Just a little'
     3='Not at all'
     8='Blank, but applicable'
     ;

VALUE GM0421F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE GM0422F
     1='Once only'
     2='Twice'
     3='Three or more times'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE GM0423F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE GM0424F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE GM0425F
     1='Yes'
     2='No'
     ;

VALUE GM0426F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0427F
     1='0-4 years old'
     2='5-9 years old'
     3='10-19 years old'
     4='20-29 years old'
     5='30-39 years old'
     6='40-49 years old'
     7='50 years old or older'
     8='Blank, but applicable'
     ;

VALUE GM0428F
     1='Gotten worse'
     2='Gotten better'
     3='Stayed about the same'
     8='Blank, but applicable'
     ;

VALUE GM0429F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE GM0430F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE GM0431F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE GM0432F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE GM0433F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE GM0434F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE GM0435F
     1='Good'
     2='A little decreased'
     3='A lot decreased'
     4='Deaf'
     8='Blank, but applicable'
     ;

VALUE GM0436F
     1='Good'
     2='A little decreased'
     3='A lot decreased'
     4='Deaf'
     8='Blank, but applicable'
     ;

VALUE GM0437F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0438F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0439F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0440F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0441F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0442F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0443F
     1='0-9 years old'
     2='10-19 years old'
     3='20-29 years old'
     4='30 years old or older'
     8='Blank, but applicable'
     ;

VALUE GM0444F
     1='Twice a year'
     2='Once a year'
     3='Once every 2 years'
     4='Less often than once every two years'
     8='Blank, but applicable'
     ;

VALUE GM0445F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0446F
     1='Right'
     2='Left'
     3='Both'
     8='Blank, but applicable'
     ;

VALUE GM0447F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0448F
     1='Yes'
     2='No'
     ;

VALUE GM0449F
     1='Helps a lot'
     2='Helps a little'
     3='Helps very little'
     4='Does not help at all'
     ;

VALUE GM0450F
     1='Yes'
     2='No'
     ;

VALUE GM0451F
     1='Yes'
     2='No'
     ;

VALUE GM0452F
     1='Yes'
     2='No'
     ;

VALUE GM0453F
     1='Yes'
     2='No'
     ;

VALUE GM0454F
     1='Yes'
     2='No'
     ;

VALUE GM0455F
     1='Yes'
     2='No'
     ;

VALUE GM0456F
     1='Yes'
     2='No'
     ;

VALUE GM0457F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0458F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0459F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0460F
     1='Yes'
     2='No'
     ;

VALUE GM0461F
     1='Yes'
     2='No'
     ;

VALUE GM0462F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0463F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0464F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0465F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0466F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0467F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0468F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0469F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0470F
     1='One time'
     2='Two times'
     3='More than two times'
     8='Blank, but applicable'
     ;

VALUE GM0471F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0472F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0473F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0474F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0475F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0476F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0477F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0478F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0479F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0480F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0481F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0482F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0483F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0484F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0485F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0486F
     1='Yes'
     2='No'
     ;

VALUE GM0487F
     1='Yes'
     2='No'
     ;

VALUE GM0488F
     1='Less than one year ago'
     2='1-4 years ago'
     3='5 or more years ago'
     8='Blank, but applicable'
     ;

VALUE GM0489F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0490F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0491F
     1='Yes'
     2='No'
     ;

VALUE GM0492F
     1='A doctor'
     2='A nurse'
     3='Other'
     8='Blank, but applicable'
     ;

VALUE GM0493F
     1='Overactive (hyperactive)'
     2='Underactive (hypoactive)'
     3='Neither'
     9='Dont know'
     ;

VALUE GM0494F
     1='Less than one year ago'
     2='1-4 years ago'
     3='5-9 years ago'
     4='10 or more years ago'
     8='Blank, but applicable'
     ;

VALUE GM0495F
     1='Yes'
     2='No'
     ;

VALUE GM0496F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0497F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0498F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0499F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0500F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0501F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0502F
     1='Less than 1 month ago'
     2='1-3 months ago'
     3='4-6 months ago'
     4='7-11 months ago'
     5='1 or more years ago'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE GM0503F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0504F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0505F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0506F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0507F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0508F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0509F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0510F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0511F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0512F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0513F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0514F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0515F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0516F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0517F
     1='Yes'
     2='No'
     ;

VALUE GM0518F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0519F
     1='Less than one year'
     2='1-4 years'
     3='5-9 years'
     4='10-19 years'
     5='20 or more years'
     8='Blank, but applicable'
     ;

VALUE GM0520F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0521F
     1='Less than 1 year'
     2='1-4 years'
     3='5-9 years'
     4='10-19 years'
     5='20 or more years'
     8='Blank, but applicable'
     ;

VALUE GM0522F
     1='Yes'
     2='No'
     ;

VALUE GM0523F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0524F
     1='Less than one year ago'
     2='1-4 years ago'
     3='5-9 years ago'
     4='10-19 years'
     5='20 or more years'
     8='Blank, but applicable'
     ;

VALUE GM0525F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0526F
     1='Less than 1 year'
     2='1-4 years'
     3='5-9 years'
     4='10-19 years'
     5='20 or more years'
     8='Blank, but applicable'
     ;

VALUE GM0527F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0528F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0529F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0530F
     1='No'
     2='Yes, one'
     3='Yes, both'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE GM0531F
     1='Excellent'
     2='Good'
     3='Fair'
     4='Poor'
     8='Blank, but applicable'
     ;

VALUE GM0532F
     1='Excellent'
     2='Good'
     3='Fair'
     4='Poor'
     8='Blank, but applicable'
     ;

VALUE GM0533F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE GM0534F
     8='Blank, but applicable'
     ;

VALUE GM0535F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE GM0536F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0537F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE GM0538F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE GM0539F
     1='Some'
     2='All'
     8='Blank, but applicable'
     ;

VALUE GM0540F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0541F
     1='Less than one year ago'
     2='1-2 years ago'
     3='3-4 years ago'
     4='5 or more years ago'
     8='Blank, but applicable'
     ;

VALUE GM0542F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0543F
     88='Blank, but applicable'
     ;

VALUE GM0545F
     77='Never'
     ;

VALUE GM0547F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0548F
     1='Yes'
     2='No'
     ;

VALUE GM0549F
     1='Yes'
     2='No'
     ;

VALUE GM0554F
     00='None'
     ;

VALUE GM0556F
     1='Yes'
     2='No'
     ;

VALUE GM0557F
     1='More'
     2='Less'
     3='Same'
     ;

VALUE GM0558F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0559F
     1='Yes'
     2='No'
     ;

VALUE GM0560F
     1='Yes'
     2='No'
     3='No longer has high blood pressure'
     ;

VALUE GM0561F
     1='More than once a day'
     2='Once a day'
     3='Less than once a day'
     ;

VALUE GM0562F
     1='All the time'
     2='Often'
     3='Once in a while'
     4='Never'
     5='Other'
     ;

VALUE GM0563F
     00='None'
     ;

VALUE GM0565F
     1='All the time'
     2='Often'
     3='Once in a while'
     4='Never'
     5='Other'
     8='Blank, but applicable'
     ;

VALUE GM0566F
     1='Great deal'
     2='Some'
     3='Very little'
     4='Other'
     8='Blank, but applicable'
     ;

VALUE GM0567F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE GM0568F
     1='Cured'
     2='Under control'
     8='Blank, but applicable'
     ;

VALUE GM0569F
     1='Yes'
     2='No'
     ;

VALUE GM0570F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0571F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0572F
     1='Nurse'
     2='Other'
     8='Blank, but applicable'
     ;

VALUE GM0573F
     88='Blank, but applicable'
     ;

VALUE GM0575F
     77='Never'
     88='Blank, but applicable'
     ;

VALUE GM0577F
     1='High'
     2='Low'
     3='Normal'
     4='Not told'
     5='Other'
     8='Blank, but applicable'
     ;

VALUE GM0578F
     99='Or greater'
     88='Blank, but applicable'
     ;

VALUE GM0580F
     00='Less than 1 year'
     77='Never'
     88='Blank, but applicable'
     ;

VALUE GM0582F
     00='Less than 1 year'
     77='Never'
     88='Blank, but applicable'
     ;

VALUE GM0584F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0585F
     1='Yes'
     2='No'
     ;

VALUE GM0586F
     1='Yes'
     2='No'
     ;

VALUE GM0587F
     1='Yes'
     2='No'
     ;

VALUE GM0588F
     1='Yes'
     2='No'
     ;

VALUE GM0589F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0590F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0591F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0592F
     1='All the time'
     2='Most of the time'
     3='Some of the time'
     4='Hardly ever'
     5='Never'
     8='Blank, but applicable'
     ;

VALUE GM0593F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0594F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0595F
     1='A lot of trouble'
     2='A little trouble'
     3='No trouble'
     8='Blank, but applicable'
     ;

VALUE GM0596F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0597F
     1='A lot of trouble'
     2='A little trouble'
     3='No trouble'
     8='Blank, but applicable'
     ;

VALUE GM0598F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0599F
     1='A lot of trouble'
     2='A little trouble'
     3='No trouble'
     8='Blank, but applicable'
     ;

VALUE GM0600F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0605F
     9='Dont know'
     ;

VALUE GM0606F
     1='Less than 3 months'
     2='3 months or more'
     8='Blank, but applicable'
     ;

VALUE GM0607F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0608F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0609F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0610F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0611F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0612F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0613F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0614F
     1='Yes'
     2='No'
     ;

VALUE GM0615F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0616F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0617F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0618F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0619F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0620F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0621F
     1='Yes'
     2='No'
     ;

VALUE GM0622F
     1='Yes'
     2='No'
     ;

VALUE GM0625F
     1='Yes'
     2='No'
     ;

VALUE GM0626F
     1='Less than 1 year'
     2='1-3 years'
     3='4-9 years'
     4='10 years or more'
     8='Blank, but applicable'
     ;

VALUE GM0627F
     1='Yes'
     2='No'
     ;

VALUE GM0628F
     1='Yes'
     2='No'
     ;

VALUE GM0629F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0630F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0631F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0632F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0633F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0634F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0635F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0636F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0637F
     1='Winter'
     2='Summer'
     3='No difference'
     8='Blank, but applicable'
     ;

VALUE GM0638F
     1='Yes'
     2='No'
     ;

VALUE GM0639F
     1='Less than 1 year'
     2='1-3 years'
     3='4-9 years'
     4='10 years or more'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE GM0640F
     1='Yes'
     2='No'
     ;

VALUE GM0641F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0642F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0643F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0644F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0645F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0646F
     1='Winter'
     2='Summer'
     3='No difference'
     8='Blank, but applicable'
     ;

VALUE GM0647F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0648F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0649F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0650F
     1='Yes'
     2='No'
     ;

VALUE GM0651F
     1='Less than 1 year'
     2='1-3 years'
     3='4-9 years'
     4='10 years or more'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE GM0652F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0653F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0654F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0655F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0656F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0657F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0658F
     1='Winter'
     2='Summer'
     3='No difference'
     8='Blank, but applicable'
     ;

VALUE GM0659F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0660F
     1='Yes'
     2='No'
     ;

VALUE GM0661F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0662F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0663F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0664F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0665F
     1='Less than 1 year'
     2='1-3 years'
     3='4-9 years'
     4='10 years or more'
     9='Dont know'
     ;

VALUE GM0666F
     1='Yes'
     2='No'
     ;

VALUE GM0667F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0668F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0669F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0670F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0671F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0672F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0673F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0674F
     1='Yes'
     2='No'
     ;

VALUE GM0675F
     1='Less than 1 year'
     2='1-3 years'
     3='4-9 years'
     4='10 years or more'
     8='Blank, but applicable'
     ;

VALUE GM0676F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0677F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0678F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0679F
     1='Winter'
     2='Summer'
     3='No difference'
     8='Blank, but applicable'
     ;

VALUE GM0680F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0681F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0682F
     1='Not at all'
     2='A small amount'
     3='A great deal'
     8='Blank, but applicable'
     ;

VALUE GM0683F
     1='Yes'
     2='No'
     ;

VALUE GM0684F
     1='Yes'
     2='No'
     ;

VALUE GM0685F
     1='Yes'
     2='No'
     ;

VALUE GM0686F
     1='Yes'
     2='No'
     ;

VALUE GM0687F
     1='Yes'
     2='No'
     ;

VALUE GM0688F
     1='Yes'
     2='No'
     ;

VALUE GM0689F
     1='Yes'
     2='No'
     ;

VALUE GM0690F
     1='Yes'
     2='No'
     ;

VALUE GM0691F
     9='Dont know'
     ;

VALUE GM0692F
     1='Less than 1 year'
     2='1-3 years'
     3='4-9 years'
     4='10 years or more'
     8='Blank, but applicable'
     ;

VALUE GM0693F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0694F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0695F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0696F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0697F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0698F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0699F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0700F
     1='Yes'
     2='No'
     ;

VALUE GM0701F
     1='Yes'
     2='No'
     ;

VALUE GM0702F
     1='Yes'
     2='No'
     ;

VALUE GM0703F
     1='Yes'
     2='No'
     ;

VALUE GM0704F
     1='Yes'
     2='No'
     ;

VALUE GM0705F
     1='Yes'
     2='No'
     ;

VALUE GM0706F
     1='Yes'
     2='No'
     ;

VALUE GM0707F
     1='Yes'
     2='No'
     ;

VALUE GM0708F
     1='Yes'
     2='No'
     ;

VALUE GM0709F
     9='Dont know'
     ;

VALUE GM0710F
     1='Less than 1 year'
     2='1-3 years'
     3='4-9 years'
     4='10 years or more'
     8='Blank, but applicable'
     ;

VALUE GM0711F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0712F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0713F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0714F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0715F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0716F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0717F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0718F
     1='Yes'
     2='No'
     ;

VALUE GM0719F
     1='Yes'
     2='No'
     ;

VALUE GM0720F
     1='Yes'
     2='No'
     ;

VALUE GM0721F
     1='Yes'
     2='No'
     ;

VALUE GM0722F
     9='Dont know'
     ;

VALUE GM0723F
     1='Once every year'
     2='Once every two years'
     3='Once every 3-5 years'
     4='Less often than once every 5 years'
     8='Blank, but applicable'
     ;

VALUE GM0724F
     1='Less than 1 year ago'
     2='1-3 years ago'
     3='4-9 years ago'
     4='6-9 years ago'
     5='10 years ago or more'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE GM0725F
     1='Yes'
     2='No'
     ;

VALUE GM0726F
     1='General Practitioner'
     2='Internist'
     3='Osteopath'
     4='Surgeon'
     5='Lung specialist'
     6='Allergist'
     7='Other'
     8='Blank, but applicable'
     ;

VALUE GM0727F
     1='No one'
     2='Hes the regular doctor'
     3='Another physician'
     4='Health nurse'
     5='Clinic'
     6='Family'
     7='Other'
     8='Blank, but applicable'
     ;

VALUE GM0728F
     1='1-6 days'
     2='1-7 weeks'
     3='2-6 months'
     4='7-11 months'
     5='One year or more'
     9='Dont know'
     ;

VALUE GM0729F
     1='Yes'
     8='Blank, but applicable'
     ;

VALUE GM0730F
     1='Yes'
     8='Blank, but applicable'
     ;

VALUE GM0731F
     1='Yes'
     8='Blank, but applicable'
     ;

VALUE GM0732F
     1='Yes'
     8='Blank, but applicable'
     ;

VALUE GM0733F
     1='Yes'
     8='Blank, but applicable'
     ;

VALUE GM0734F
     1='Yes'
     8='Blank, but applicable'
     ;

VALUE GM0735F
     1='Yes'
     8='Blank, but applicable'
     ;

VALUE GM0736F
     1='Yes'
     8='Blank, but applicable'
     ;

VALUE GM0737F
     1='Yes'
     8='Blank, but applicable'
     ;

VALUE GM0738F
     1='Yes'
     8='Blank, but applicable'
     ;

VALUE GM0739F
     8888='Blank, but applicable'
     ;

VALUE GM0743F
     1='At every visit'
     2='At every other visit'
     3='Less often than every other visit'
     8='Blank, but applicable'
     ;

VALUE GM0744F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0745F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0746F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0747F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0748F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0749F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0750F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0751F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0752F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0753F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0754F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0755F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0756F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0757F
     1='Less than 1 month ago'
     2='1-3 months ago'
     3='4-6 months ago'
     4='7-11 months ago'
     5='1 year ago or more'
     9='Dont know'
     ;

VALUE GM0758F
     1='At his office'
     2='At a clinic'
     3='At home'
     4='Other'
     8='Blank, but applicable'
     ;

VALUE GM0759F
     1='Less than 1 month'
     2='1-3 months'
     3='4-6 months'
     4='7-11 months'
     5='1 year or more'
     9='Dont know'
     ;

VALUE GM0760F
     1='Gotten worse'
     2='Gotten better'
     3='Stayed about the same'
     8='Blank, but applicable'
     ;

VALUE GM0761F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0762F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0763F
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

VALUE GM0764F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0765F
     1='Retired because of disability'
     2='Unemployed'
     3='Working only part-time'
     4='Changed to easier job'
     5='Housewife with partial duties'
     6='Housewife with no duties'
     7='Other'
     8='Blank, but applicable'
     ;

VALUE GM0766F
     1='None'
     2='1-4 days'
     3='5-9 days'
     4='10-14 days'
     5='15-19 days'
     6='20-29 days'
     7='30 days or more'
     8='Blank, but applicable'
     ;

VALUE GM0825F
     1='Yes'
     2='No'
     ;

VALUE GM0826F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0827F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0828F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0829F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0830F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0831F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0832F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0833F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0834F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0835F
     1='10-19 years old'
     2='20-29 years old'
     3='30-39 years old'
     4='40-49 years old'
     5='50-59 years old'
     6='60 years old or older'
     8='Blank, but applicable'
     ;

VALUE GM0836F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0837F
     1='Yes'
     2='No'
     ;

VALUE GM0838F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0839F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0840F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0841F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0842F
     1='Relieved'
     2='Not relieved'
     ;

VALUE GM0843F
     1='Less than 10 minutes'
     2='10 minutes or more'
     8='Blank, but applicable'
     ;

VALUE GM0844F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0845F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0846F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0847F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0848F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0849F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0850F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0851F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0852F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0853F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0854F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0855F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0856F
     1='Yes'
     2='No'
     ;

VALUE GM0857F
     1='One'
     2='2-3'
     3='4 or more'
     8='Blank, but applicable'
     ;

VALUE GM0858F
     88='Blank, but applicable'
     ;

VALUE GM0860F
     88='Blank, but applicable'
     ;

VALUE GM0862F
     1='30-59 minutes'
     2='1-2 hours'
     3='3-5 hours'
     4='6-11 hours'
     5='12-23 hours'
     6='24-47 hours'
     7='2 days or more'
     8='Blank, but applicable'
     ;

VALUE GM0863F
     1='Yes'
     2='No'
     ;

VALUE GM0864F
     1='Yes'
     ;

VALUE GM0865F
     1='Yes'
     ;

VALUE GM0866F
     1='Yes'
     ;

VALUE GM0867F
     1='Yes'
     ;

VALUE GM0868F
     1='Yes'
     ;

VALUE GM0869F
     1='Yes'
     ;

VALUE GM0870F
     1='Yes'
     ;

VALUE GM0871F
     1='Yes'
     ;

VALUE GM0872F
     1='Yes'
     2='No'
     ;

VALUE GM0873F
     1='Yes'
     2='No'
     ;

VALUE GM0874F
     1='Lower part (calf)'
     2='Upper part (thigh)'
     3='Both upper and lower parts'
     8='Blank, but applicable'
     ;

VALUE GM0875F
     1='Yes'
     2='No'
     ;

VALUE GM0876F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0877F
     1='Yes'
     2='No'
     ;

VALUE GM0878F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0879F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0880F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0881F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0882F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0883F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0884F
     1='Relieved'
     2='Not relieved'
     8='Blank, but applicable'
     ;

VALUE GM0885F
     1='Less than 10 minutes'
     2='10 minutes or more'
     8='Blank, but applicable'
     ;

VALUE GM0886F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0887F
     1='Yes'
     2='No'
     ;

VALUE GM0888F
     1='General Practitioner'
     2='Osteopath'
     3='Heart specialist'
     4='Other specialist'
     5='Other'
     9='Dont know'
     ;

VALUE GM0889F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0890F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0891F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0892F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0893F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0894F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0895F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0896F
     1='Less than 1 day'
     2='1-2 days'
     3='3-6 days'
     4='1-3 weeks'
     5='1-5 months'
     6='6-11 months'
     7='1 year or more'
     9='Dont remember'
     ;

VALUE GM0897F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0898F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0899F
     1='1-2 days'
     2='3-6 days'
     3='1-3 weeks'
     4='1-5 months'
     5='6-11 months'
     6='1 year or more'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE GM0900F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0901F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0902F
     1='1-2 days'
     2='3-6 days'
     3='1-3 weeks'
     4='1-5 months'
     5='6-11 months'
     6='1 year or more'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE GM0903F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0904F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0905F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0906F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0907F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0908F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0909F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0910F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0911F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0912F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0913F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0914F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0915F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0916F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0917F
     1='Less than 1 month ago'
     2='1-3 months ago'
     3='4-6 months ago'
     4='7-11 months ago'
     5='1 year ago or more'
     8='Blank, but applicable'
     9='Dont remember'
     ;

VALUE GM0918F
     1='At his office'
     2='At a clinic'
     3='At home'
     4='Other'
     8='Blank, but applicable'
     ;

VALUE GM0919F
     1='Less than 1 month'
     2='1-3 months'
     3='4-6 months'
     4='7-11 months'
     5='1 year or more'
     8='Blank, but applicable'
     9='Dont know'
     ;

VALUE GM0920F
     1='No, not at all'
     2='Yes, partly'
     3='Yes, quite a bit'
     8='Blank, but applicable'
     ;

VALUE GM0921F
     1='Gotten worse'
     2='Gotten better'
     3='Stayed about the same'
     8='Blank, but applicable'
     ;

VALUE GM0922F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0923F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0924F
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

VALUE GM0925F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE GM0926F
     1='Retired because of disability'
     2='Unemployed'
     3='Working only part-time'
     4='Changed to easier job'
     5='Housewife with partial duties'
     6='Housewife with no duties'
     7='Other'
     8='Blank, but applicable'
     ;

VALUE GM0927F
     1='None'
     2='1-4 days'
     3='5-9 days'
     4='10-14 days'
     5='15-19 days'
     6='20-29 days'
     7='30 days or more'
     8='Blank, but applicable'
     ;
RUN;

DATA D_4091;
   INFILE 'c:\temp\DU4091.txt' LRECL = 2000 MISSOVER;
      LENGTH
         SEQN 8
         N1GM0006 8
         N1GM0010 4
         N1GM0011 4
         N1GM0012 4
         N1GM0013 4
         N1GM0014 4
         N1GM0015 4
         N1GM0016 4
         N1GM0017 4
         N1GM0019 4
         N1GM0020 4
         N1GM0022 4
         N1GM0023 4
         N1GM0025 4
         N1GM0027 4
         N1GM0028 4
         N1GM0029 4
         N1GM0030 4
         N1GM0031 4
         N1GM0032 4
         N1GM0033 4
         N1GM0034 4
         N1GM0036 4
         N1GM0037 8
         N1GM0041 4
         N1GM0042 8
         N1GM0046 4
         N1GM0047 8
         N1GM0051 4
         N1GM0052 8
         N1GM0056 4
         N1GM0057 8
         N1GM0061 4
         N1GM0062 8
         N1GM0066 4
         N1GM0067 8
         N1GM0071 4
         N1GM0072 8
         N1GM0076 4
         N1GM0077 8
         N1GM0081 4
         N1GM0082 8
         N1GM0086 4
         N1GM0087 8
         N1GM0091 8
         N1GM0095 8
         N1GM0100 4
         N1GM0101 4
         N1GM0103 4
         N1GM0104 4
         N1GM0105 4
         N1GM0106 8
         N1GM0110 4
         N1GM0112 4
         N1GM0114 4
         N1GM0115 4
         N1GM0116 4
         N1GM0117 4
         N1GM0118 4
         N1GM0119 4
         N1GM0120 4
         N1GM0122 4
         N1GM0123 4
         N1GM0124 4
         N1GM0125 4
         N1GM0126 4
         N1GM0127 4
         N1GM0128 4
         N1GM0129 4
         N1GM0130 4
         N1GM0131 4
         N1GM0132 4
         N1GM0135 4
         N1GM0138 8
         N1GM0144 4
         N1GM0146 4
         N1GM0147 4
         N1GM0150 4
         N1GM0151 4
         N1GM0152 4
         N1GM0153 4
         N1GM0154 4
         N1GM0155 4
         N1GM0156 4
         N1GM0157 4
         N1GM0158 8
         N1GM0164 $6
         N1GM0170 8
         N1GM0176 $6
         N1GM0182 8
         N1GM0188 8
         N1GM0194 4
         N1GM0196 4
         N1GM0199 4
         N1GM0201 8
         N1GM0205 $20
         N1GM0225 4
         N1GM0226 4
         N1GM0227 4
         N1GM0228 4
         N1GM0229 4
         N1GM0230 4
         N1GM0231 4
         N1GM0232 4
         N1GM0233 4
         N1GM0234 4
         N1GM0235 4
         N1GM0236 4
         N1GM0237 4
         N1GM0238 4
         N1GM0239 4
         N1GM0240 4
         N1GM0241 4
         N1GM0242 4
         N1GM0245 4
         N1GM0246 4
         N1GM0247 4
         N1GM0248 4
         N1GM0249 4
         N1GM0250 4
         N1GM0251 4
         N1GM0252 4
         N1GM0253 4
         N1GM0254 4
         N1GM0255 4
         N1GM0256 4
         N1GM0257 4
         N1GM0258 4
         N1GM0259 4
         N1GM0260 4
         N1GM0261 4
         N1GM0262 4
         N1GM0263 4
         N1GM0264 4
         N1GM0265 4
         N1GM0266 4
         N1GM0267 4
         N1GM0268 4
         N1GM0269 4
         N1GM0270 4
         N1GM0271 4
         N1GM0272 4
         N1GM0273 4
         N1GM0274 4
         N1GM0275 4
         N1GM0276 4
         N1GM0277 4
         N1GM0278 4
         N1GM0279 4
         N1GM0280 4
         N1GM0281 4
         N1GM0282 4
         N1GM0283 4
         N1GM0284 4
         N1GM0285 4
         N1GM0286 4
         N1GM0287 4
         N1GM0288 4
         N1GM0289 4
         N1GM0290 4
         N1GM0293 4
         N1GM0294 4
         N1GM0295 4
         N1GM0296 4
         N1GM0297 4
         N1GM0298 4
         N1GM0299 4
         N1GM0300 4
         N1GM0301 4
         N1GM0302 4
         N1GM0303 $1
         N1GM0304 4
         N1GM0305 4
         N1GM0306 4
         N1GM0307 4
         N1GM0308 4
         N1GM0309 4
         N1GM0310 4
         N1GM0311 4
         N1GM0312 4
         N1GM0313 4
         N1GM0314 4
         N1GM0315 4
         N1GM0316 4
         N1GM0317 4
         N1GM0318 4
         N1GM0319 4
         N1GM0320 4
         N1GM0321 4
         N1GM0322 4
         N1GM0323 4
         N1GM0324 4
         N1GM0325 4
         N1GM0326 4
         N1GM0327 4
         N1GM0328 4
         N1GM0329 4
         N1GM0330 4
         N1GM0331 4
         N1GM0332 4
         N1GM0333 4
         N1GM0334 8
         N1GM0340 4
         N1GM0341 4
         N1GM0342 4
         N1GM0343 4
         N1GM0344 4
         N1GM0345 4
         N1GM0346 4
         N1GM0347 4
         N1GM0348 4
         N1GM0349 4
         N1GM0350 4
         N1GM0351 4
         N1GM0352 4
         N1GM0353 4
         N1GM0354 4
         N1GM0355 4
         N1GM0356 4
         N1GM0357 4
         N1GM0358 4
         N1GM0359 4
         N1GM0360 4
         N1GM0361 4
         N1GM0362 4
         N1GM0363 4
         N1GM0364 4
         N1GM0365 4
         N1GM0366 4
         N1GM0368 4
         N1GM0370 4
         N1GM0372 4
         N1GM0374 4
         N1GM0376 4
         N1GM0378 4
         N1GM0379 4
         N1GM0380 4
         N1GM0382 4
         N1GM0384 4
         N1GM0386 4
         N1GM0388 4
         N1GM0390 4
         N1GM0391 4
         N1GM0392 4
         N1GM0394 4
         N1GM0396 4
         N1GM0398 4
         N1GM0399 4
         N1GM0400 4
         N1GM0402 4
         N1GM0404 4
         N1GM0406 4
         N1GM0407 4
         N1GM0408 4
         N1GM0409 4
         N1GM0410 4
         N1GM0411 4
         N1GM0412 4
         N1GM0413 4
         N1GM0415 $2
         N1GM0417 4
         N1GM0418 4
         N1GM0419 4
         N1GM0420 4
         N1GM0421 4
         N1GM0422 4
         N1GM0423 4
         N1GM0424 4
         N1GM0425 4
         N1GM0426 4
         N1GM0427 4
         N1GM0428 4
         N1GM0429 4
         N1GM0430 4
         N1GM0431 4
         N1GM0432 4
         N1GM0433 4
         N1GM0434 4
         N1GM0435 4
         N1GM0436 4
         N1GM0437 4
         N1GM0438 4
         N1GM0439 4
         N1GM0440 4
         N1GM0441 4
         N1GM0442 4
         N1GM0443 4
         N1GM0444 4
         N1GM0445 4
         N1GM0446 4
         N1GM0447 4
         N1GM0448 4
         N1GM0449 4
         N1GM0450 4
         N1GM0451 4
         N1GM0452 4
         N1GM0453 4
         N1GM0454 4
         N1GM0455 4
         N1GM0456 4
         N1GM0457 4
         N1GM0458 4
         N1GM0459 4
         N1GM0460 4
         N1GM0461 4
         N1GM0462 4
         N1GM0463 4
         N1GM0464 4
         N1GM0465 4
         N1GM0466 4
         N1GM0467 4
         N1GM0468 4
         N1GM0469 4
         N1GM0470 4
         N1GM0471 4
         N1GM0472 4
         N1GM0473 4
         N1GM0474 4
         N1GM0475 4
         N1GM0476 4
         N1GM0477 4
         N1GM0478 4
         N1GM0479 4
         N1GM0480 4
         N1GM0481 4
         N1GM0482 4
         N1GM0483 4
         N1GM0484 4
         N1GM0485 4
         N1GM0486 4
         N1GM0487 4
         N1GM0488 4
         N1GM0489 4
         N1GM0490 4
         N1GM0491 4
         N1GM0492 4
         N1GM0493 4
         N1GM0494 4
         N1GM0495 4
         N1GM0496 4
         N1GM0497 4
         N1GM0498 4
         N1GM0499 4
         N1GM0500 4
         N1GM0501 4
         N1GM0502 4
         N1GM0503 4
         N1GM0504 4
         N1GM0505 4
         N1GM0506 4
         N1GM0507 4
         N1GM0508 4
         N1GM0509 4
         N1GM0510 4
         N1GM0511 4
         N1GM0512 4
         N1GM0513 4
         N1GM0514 4
         N1GM0515 4
         N1GM0516 4
         N1GM0517 4
         N1GM0518 4
         N1GM0519 4
         N1GM0520 4
         N1GM0521 4
         N1GM0522 4
         N1GM0523 4
         N1GM0524 4
         N1GM0525 4
         N1GM0526 4
         N1GM0527 4
         N1GM0528 4
         N1GM0529 4
         N1GM0530 4
         N1GM0531 4
         N1GM0532 4
         N1GM0533 4
         N1GM0534 4
         N1GM0535 4
         N1GM0536 4
         N1GM0537 4
         N1GM0538 4
         N1GM0539 4
         N1GM0540 4
         N1GM0541 4
         N1GM0542 4
         N1GM0543 4
         N1GM0545 $2
         N1GM0547 4
         N1GM0548 4
         N1GM0549 4
         N1GM0550 4
         N1GM0552 $2
         N1GM0554 4
         N1GM0556 4
         N1GM0557 4
         N1GM0558 4
         N1GM0559 4
         N1GM0560 4
         N1GM0561 4
         N1GM0562 4
         N1GM0563 4
         N1GM0565 4
         N1GM0566 4
         N1GM0567 4
         N1GM0568 4
         N1GM0569 4
         N1GM0570 4
         N1GM0571 4
         N1GM0572 4
         N1GM0573 4
         N1GM0575 $2
         N1GM0577 4
         N1GM0578 4
         N1GM0580 4
         N1GM0582 4
         N1GM0584 4
         N1GM0585 4
         N1GM0586 4
         N1GM0587 4
         N1GM0588 4
         N1GM0589 4
         N1GM0590 4
         N1GM0591 4
         N1GM0592 4
         N1GM0593 4
         N1GM0594 4
         N1GM0595 4
         N1GM0596 4
         N1GM0597 4
         N1GM0598 4
         N1GM0599 4
         N1GM0600 4
         N1GM0601 4
         N1GM0603 $2
         N1GM0605 $1
         N1GM0606 4
         N1GM0607 4
         N1GM0608 4
         N1GM0609 4
         N1GM0610 4
         N1GM0611 4
         N1GM0612 4
         N1GM0613 4
         N1GM0614 4
         N1GM0615 4
         N1GM0616 4
         N1GM0617 4
         N1GM0618 4
         N1GM0619 4
         N1GM0620 4
         N1GM0621 4
         N1GM0622 4
         N1GM0623 4
         N1GM0625 4
         N1GM0626 4
         N1GM0627 4
         N1GM0628 4
         N1GM0629 4
         N1GM0630 4
         N1GM0631 4
         N1GM0632 4
         N1GM0633 4
         N1GM0634 4
         N1GM0635 4
         N1GM0636 4
         N1GM0637 4
         N1GM0638 4
         N1GM0639 4
         N1GM0640 4
         N1GM0641 4
         N1GM0642 4
         N1GM0643 4
         N1GM0644 4
         N1GM0645 4
         N1GM0646 4
         N1GM0647 4
         N1GM0648 4
         N1GM0649 4
         N1GM0650 4
         N1GM0651 4
         N1GM0652 4
         N1GM0653 4
         N1GM0654 4
         N1GM0655 4
         N1GM0656 4
         N1GM0657 4
         N1GM0658 4
         N1GM0659 4
         N1GM0660 4
         N1GM0661 4
         N1GM0662 4
         N1GM0663 4
         N1GM0664 4
         N1GM0665 4
         N1GM0666 4
         N1GM0667 4
         N1GM0668 4
         N1GM0669 4
         N1GM0670 4
         N1GM0671 4
         N1GM0672 4
         N1GM0673 4
         N1GM0674 4
         N1GM0675 4
         N1GM0676 4
         N1GM0677 4
         N1GM0678 4
         N1GM0679 4
         N1GM0680 4
         N1GM0681 4
         N1GM0682 4
         N1GM0683 4
         N1GM0684 4
         N1GM0685 4
         N1GM0686 4
         N1GM0687 4
         N1GM0688 4
         N1GM0689 4
         N1GM0690 4
         N1GM0691 4
         N1GM0692 4
         N1GM0693 4
         N1GM0694 4
         N1GM0695 4
         N1GM0696 4
         N1GM0697 4
         N1GM0698 4
         N1GM0699 4
         N1GM0700 4
         N1GM0701 4
         N1GM0702 4
         N1GM0703 4
         N1GM0704 4
         N1GM0705 4
         N1GM0706 4
         N1GM0707 4
         N1GM0708 4
         N1GM0709 4
         N1GM0710 4
         N1GM0711 4
         N1GM0712 4
         N1GM0713 4
         N1GM0714 4
         N1GM0715 4
         N1GM0716 4
         N1GM0717 4
         N1GM0718 4
         N1GM0719 4
         N1GM0720 4
         N1GM0721 4
         N1GM0722 4
         N1GM0723 4
         N1GM0724 4
         N1GM0725 4
         N1GM0726 4
         N1GM0727 4
         N1GM0728 4
         N1GM0729 4
         N1GM0730 4
         N1GM0731 4
         N1GM0732 4
         N1GM0733 4
         N1GM0734 4
         N1GM0735 4
         N1GM0736 4
         N1GM0737 4
         N1GM0738 4
         N1GM0739 8
         N1GM0743 4
         N1GM0744 4
         N1GM0745 4
         N1GM0746 4
         N1GM0747 4
         N1GM0748 4
         N1GM0749 4
         N1GM0750 4
         N1GM0751 4
         N1GM0752 4
         N1GM0753 4
         N1GM0754 4
         N1GM0755 4
         N1GM0756 4
         N1GM0757 4
         N1GM0758 4
         N1GM0759 4
         N1GM0760 4
         N1GM0761 4
         N1GM0762 4
         N1GM0763 4
         N1GM0764 4
         N1GM0765 4
         N1GM0766 4
         N1GM0767 $58
         N1GM0825 4
         N1GM0826 4
         N1GM0827 4
         N1GM0828 4
         N1GM0829 4
         N1GM0830 4
         N1GM0831 4
         N1GM0832 4
         N1GM0833 4
         N1GM0834 4
         N1GM0835 4
         N1GM0836 4
         N1GM0837 4
         N1GM0838 4
         N1GM0839 4
         N1GM0840 4
         N1GM0841 4
         N1GM0842 4
         N1GM0843 4
         N1GM0844 4
         N1GM0845 4
         N1GM0846 4
         N1GM0847 4
         N1GM0848 4
         N1GM0849 4
         N1GM0850 4
         N1GM0851 4
         N1GM0852 4
         N1GM0853 4
         N1GM0854 4
         N1GM0855 4
         N1GM0856 4
         N1GM0857 4
         N1GM0858 4
         N1GM0860 4
         N1GM0862 4
         N1GM0863 4
         N1GM0864 4
         N1GM0865 4
         N1GM0866 4
         N1GM0867 4
         N1GM0868 4
         N1GM0869 4
         N1GM0870 4
         N1GM0871 4
         N1GM0872 4
         N1GM0873 4
         N1GM0874 4
         N1GM0875 4
         N1GM0876 4
         N1GM0877 4
         N1GM0878 4
         N1GM0879 4
         N1GM0880 4
         N1GM0881 4
         N1GM0882 4
         N1GM0883 4
         N1GM0884 4
         N1GM0885 4
         N1GM0886 4
         N1GM0887 4
         N1GM0888 4
         N1GM0889 4
         N1GM0890 4
         N1GM0891 4
         N1GM0892 4
         N1GM0893 4
         N1GM0894 4
         N1GM0895 4
         N1GM0896 4
         N1GM0897 4
         N1GM0898 4
         N1GM0899 4
         N1GM0900 4
         N1GM0901 4
         N1GM0902 4
         N1GM0903 4
         N1GM0904 4
         N1GM0905 4
         N1GM0906 4
         N1GM0907 4
         N1GM0908 4
         N1GM0909 4
         N1GM0910 4
         N1GM0911 4
         N1GM0912 4
         N1GM0913 4
         N1GM0914 4
         N1GM0915 4
         N1GM0916 4
         N1GM0917 4
         N1GM0918 4
         N1GM0919 4
         N1GM0920 4
         N1GM0921 4
         N1GM0922 4
         N1GM0923 4
         N1GM0924 4
         N1GM0925 4
         N1GM0926 4
         N1GM0927 4
         N1GM0928 $23
      ;




FORMAT
     N1GM0010 GM0010F.
     N1GM0011 GM0011F.
     N1GM0012 GM0012F.
     N1GM0013 GM0013F.
     N1GM0014 GM0014F.
     N1GM0015 GM0015F.
     N1GM0016 GM0016F.
     N1GM0017 GM0017F.
     N1GM0019 GM0019F.
     N1GM0020 GM0020F.
     N1GM0022 GM0022F.
     N1GM0027 GM0027F.
     N1GM0028 GM0028F.
     N1GM0029 GM0029F.
     N1GM0030 GM0030F.
     N1GM0031 GM0031F.
     N1GM0032 GM0032F.
     N1GM0033 GM0033F.
     N1GM0034 GM0034F.
     N1GM0036 GM0036F.
     N1GM0037 GM0037F.
     N1GM0041 GM0041F.
     N1GM0042 GM0042F.
     N1GM0046 GM0046F.
     N1GM0047 GM0047F.
     N1GM0051 GM0051F.
     N1GM0052 GM0052F.
     N1GM0056 GM0056F.
     N1GM0057 GM0057F.
     N1GM0061 GM0061F.
     N1GM0062 GM0062F.
     N1GM0066 GM0066F.
     N1GM0067 GM0067F.
     N1GM0071 GM0071F.
     N1GM0072 GM0072F.
     N1GM0076 GM0076F.
     N1GM0077 GM0077F.
     N1GM0081 GM0081F.
     N1GM0082 GM0082F.
     N1GM0086 GM0086F.
     N1GM0087 GM0087F.
     N1GM0091 GM0091F.
     N1GM0100 GM0100F.
     N1GM0103 GM0103F.
     N1GM0104 GM0104F.
     N1GM0105 GM0105F.
     N1GM0112 GM0112F.
     N1GM0114 GM0114F.
     N1GM0115 GM0115F.
     N1GM0116 GM0116F.
     N1GM0117 GM0117F.
     N1GM0118 GM0118F.
     N1GM0119 GM0119F.
     N1GM0120 GM0120F.
     N1GM0122 GM0122F.
     N1GM0123 GM0123F.
     N1GM0124 GM0124F.
     N1GM0125 GM0125F.
     N1GM0126 GM0126F.
     N1GM0127 GM0127F.
     N1GM0128 GM0128F.
     N1GM0129 GM0129F.
     N1GM0130 GM0130F.
     N1GM0131 GM0131F.
     N1GM0146 GM0146F.
     N1GM0147 GM0147F.
     N1GM0150 GM0150F.
     N1GM0151 GM0151F.
     N1GM0152 GM0152F.
     N1GM0153 GM0153F.
     N1GM0154 GM0154F.
     N1GM0155 GM0155F.
     N1GM0156 GM0156F.
     N1GM0157 GM0157F.
     N1GM0225 GM0225F.
     N1GM0226 GM0226F.
     N1GM0227 GM0227F.
     N1GM0228 GM0228F.
     N1GM0229 GM0229F.
     N1GM0230 GM0230F.
     N1GM0231 GM0231F.
     N1GM0232 GM0232F.
     N1GM0233 GM0233F.
     N1GM0234 GM0234F.
     N1GM0235 GM0235F.
     N1GM0236 GM0236F.
     N1GM0237 GM0237F.
     N1GM0238 GM0238F.
     N1GM0239 GM0239F.
     N1GM0240 GM0240F.
     N1GM0241 GM0241F.
     N1GM0242 GM0242F.
     N1GM0245 GM0245F.
     N1GM0246 GM0246F.
     N1GM0247 GM0247F.
     N1GM0248 GM0248F.
     N1GM0249 GM0249F.
     N1GM0250 GM0250F.
     N1GM0251 GM0251F.
     N1GM0252 GM0252F.
     N1GM0253 GM0253F.
     N1GM0254 GM0254F.
     N1GM0255 GM0255F.
     N1GM0256 GM0256F.
     N1GM0257 GM0257F.
     N1GM0258 GM0258F.
     N1GM0259 GM0259F.
     N1GM0260 GM0260F.
     N1GM0261 GM0261F.
     N1GM0262 GM0262F.
     N1GM0263 GM0263F.
     N1GM0264 GM0264F.
     N1GM0265 GM0265F.
     N1GM0266 GM0266F.
     N1GM0267 GM0267F.
     N1GM0268 GM0268F.
     N1GM0269 GM0269F.
     N1GM0270 GM0270F.
     N1GM0271 GM0271F.
     N1GM0272 GM0272F.
     N1GM0273 GM0273F.
     N1GM0274 GM0274F.
     N1GM0275 GM0275F.
     N1GM0276 GM0276F.
     N1GM0277 GM0277F.
     N1GM0278 GM0278F.
     N1GM0279 GM0279F.
     N1GM0280 GM0280F.
     N1GM0281 GM0281F.
     N1GM0282 GM0282F.
     N1GM0283 GM0283F.
     N1GM0284 GM0284F.
     N1GM0285 GM0285F.
     N1GM0286 GM0286F.
     N1GM0287 GM0287F.
     N1GM0288 GM0288F.
     N1GM0289 GM0289F.
     N1GM0290 GM0290F.
     N1GM0293 GM0293F.
     N1GM0294 GM0294F.
     N1GM0295 GM0295F.
     N1GM0296 GM0296F.
     N1GM0297 GM0297F.
     N1GM0298 GM0298F.
     N1GM0299 GM0299F.
     N1GM0300 GM0300F.
     N1GM0301 GM0301F.
     N1GM0302 GM0302F.
     N1GM0304 GM0304F.
     N1GM0305 GM0305F.
     N1GM0306 GM0306F.
     N1GM0307 GM0307F.
     N1GM0308 GM0308F.
     N1GM0309 GM0309F.
     N1GM0310 GM0310F.
     N1GM0311 GM0311F.
     N1GM0312 GM0312F.
     N1GM0313 GM0313F.
     N1GM0314 GM0314F.
     N1GM0315 GM0315F.
     N1GM0316 GM0316F.
     N1GM0317 GM0317F.
     N1GM0318 GM0318F.
     N1GM0319 GM0319F.
     N1GM0320 GM0320F.
     N1GM0321 GM0321F.
     N1GM0322 GM0322F.
     N1GM0323 GM0323F.
     N1GM0324 GM0324F.
     N1GM0325 GM0325F.
     N1GM0326 GM0326F.
     N1GM0327 GM0327F.
     N1GM0328 GM0328F.
     N1GM0329 GM0329F.
     N1GM0330 GM0330F.
     N1GM0331 GM0331F.
     N1GM0332 GM0332F.
     N1GM0333 GM0333F.
     N1GM0340 GM0340F.
     N1GM0341 GM0341F.
     N1GM0342 GM0342F.
     N1GM0343 GM0343F.
     N1GM0344 GM0344F.
     N1GM0345 GM0345F.
     N1GM0346 GM0346F.
     N1GM0347 GM0347F.
     N1GM0348 GM0348F.
     N1GM0349 GM0349F.
     N1GM0350 GM0350F.
     N1GM0351 GM0351F.
     N1GM0352 GM0352F.
     N1GM0353 GM0353F.
     N1GM0354 GM0354F.
     N1GM0355 GM0355F.
     N1GM0356 GM0356F.
     N1GM0357 GM0357F.
     N1GM0358 GM0358F.
     N1GM0359 GM0359F.
     N1GM0360 GM0360F.
     N1GM0361 GM0361F.
     N1GM0362 GM0362F.
     N1GM0363 GM0363F.
     N1GM0364 GM0364F.
     N1GM0365 GM0365F.
     N1GM0366 GM0366F.
     N1GM0372 GM0372F.
     N1GM0374 GM0374F.
     N1GM0376 GM0376F.
     N1GM0378 GM0378F.
     N1GM0379 GM0379F.
     N1GM0380 GM0380F.
     N1GM0382 GM0382F.
     N1GM0384 GM0384F.
     N1GM0386 GM0386F.
     N1GM0388 GM0388F.
     N1GM0390 GM0390F.
     N1GM0391 GM0391F.
     N1GM0392 GM0392F.
     N1GM0394 GM0394F.
     N1GM0396 GM0396F.
     N1GM0398 GM0398F.
     N1GM0399 GM0399F.
     N1GM0400 GM0400F.
     N1GM0402 GM0402F.
     N1GM0404 GM0404F.
     N1GM0406 GM0406F.
     N1GM0407 GM0407F.
     N1GM0408 GM0408F.
     N1GM0409 GM0409F.
     N1GM0410 GM0410F.
     N1GM0411 GM0411F.
     N1GM0412 GM0412F.
     N1GM0413 GM0413F.
     N1GM0417 GM0417F.
     N1GM0418 GM0418F.
     N1GM0419 GM0419F.
     N1GM0420 GM0420F.
     N1GM0421 GM0421F.
     N1GM0422 GM0422F.
     N1GM0423 GM0423F.
     N1GM0424 GM0424F.
     N1GM0425 GM0425F.
     N1GM0426 GM0426F.
     N1GM0427 GM0427F.
     N1GM0428 GM0428F.
     N1GM0429 GM0429F.
     N1GM0430 GM0430F.
     N1GM0431 GM0431F.
     N1GM0432 GM0432F.
     N1GM0433 GM0433F.
     N1GM0434 GM0434F.
     N1GM0435 GM0435F.
     N1GM0436 GM0436F.
     N1GM0437 GM0437F.
     N1GM0438 GM0438F.
     N1GM0439 GM0439F.
     N1GM0440 GM0440F.
     N1GM0441 GM0441F.
     N1GM0442 GM0442F.
     N1GM0443 GM0443F.
     N1GM0444 GM0444F.
     N1GM0445 GM0445F.
     N1GM0446 GM0446F.
     N1GM0447 GM0447F.
     N1GM0448 GM0448F.
     N1GM0449 GM0449F.
     N1GM0450 GM0450F.
     N1GM0451 GM0451F.
     N1GM0452 GM0452F.
     N1GM0453 GM0453F.
     N1GM0454 GM0454F.
     N1GM0455 GM0455F.
     N1GM0456 GM0456F.
     N1GM0457 GM0457F.
     N1GM0458 GM0458F.
     N1GM0459 GM0459F.
     N1GM0460 GM0460F.
     N1GM0461 GM0461F.
     N1GM0462 GM0462F.
     N1GM0463 GM0463F.
     N1GM0464 GM0464F.
     N1GM0465 GM0465F.
     N1GM0466 GM0466F.
     N1GM0467 GM0467F.
     N1GM0468 GM0468F.
     N1GM0469 GM0469F.
     N1GM0470 GM0470F.
     N1GM0471 GM0471F.
     N1GM0472 GM0472F.
     N1GM0473 GM0473F.
     N1GM0474 GM0474F.
     N1GM0475 GM0475F.
     N1GM0476 GM0476F.
     N1GM0477 GM0477F.
     N1GM0478 GM0478F.
     N1GM0479 GM0479F.
     N1GM0480 GM0480F.
     N1GM0481 GM0481F.
     N1GM0482 GM0482F.
     N1GM0483 GM0483F.
     N1GM0484 GM0484F.
     N1GM0485 GM0485F.
     N1GM0486 GM0486F.
     N1GM0487 GM0487F.
     N1GM0488 GM0488F.
     N1GM0489 GM0489F.
     N1GM0490 GM0490F.
     N1GM0491 GM0491F.
     N1GM0492 GM0492F.
     N1GM0493 GM0493F.
     N1GM0494 GM0494F.
     N1GM0495 GM0495F.
     N1GM0496 GM0496F.
     N1GM0497 GM0497F.
     N1GM0498 GM0498F.
     N1GM0499 GM0499F.
     N1GM0500 GM0500F.
     N1GM0501 GM0501F.
     N1GM0502 GM0502F.
     N1GM0503 GM0503F.
     N1GM0504 GM0504F.
     N1GM0505 GM0505F.
     N1GM0506 GM0506F.
     N1GM0507 GM0507F.
     N1GM0508 GM0508F.
     N1GM0509 GM0509F.
     N1GM0510 GM0510F.
     N1GM0511 GM0511F.
     N1GM0512 GM0512F.
     N1GM0513 GM0513F.
     N1GM0514 GM0514F.
     N1GM0515 GM0515F.
     N1GM0516 GM0516F.
     N1GM0517 GM0517F.
     N1GM0518 GM0518F.
     N1GM0519 GM0519F.
     N1GM0520 GM0520F.
     N1GM0521 GM0521F.
     N1GM0522 GM0522F.
     N1GM0523 GM0523F.
     N1GM0524 GM0524F.
     N1GM0525 GM0525F.
     N1GM0526 GM0526F.
     N1GM0527 GM0527F.
     N1GM0528 GM0528F.
     N1GM0529 GM0529F.
     N1GM0530 GM0530F.
     N1GM0531 GM0531F.
     N1GM0532 GM0532F.
     N1GM0533 GM0533F.
     N1GM0534 GM0534F.
     N1GM0535 GM0535F.
     N1GM0536 GM0536F.
     N1GM0537 GM0537F.
     N1GM0538 GM0538F.
     N1GM0539 GM0539F.
     N1GM0540 GM0540F.
     N1GM0541 GM0541F.
     N1GM0542 GM0542F.
     N1GM0543 GM0543F.
     N1GM0547 GM0547F.
     N1GM0548 GM0548F.
     N1GM0549 GM0549F.
     N1GM0554 GM0554F.
     N1GM0556 GM0556F.
     N1GM0557 GM0557F.
     N1GM0558 GM0558F.
     N1GM0559 GM0559F.
     N1GM0560 GM0560F.
     N1GM0561 GM0561F.
     N1GM0562 GM0562F.
     N1GM0563 GM0563F.
     N1GM0565 GM0565F.
     N1GM0566 GM0566F.
     N1GM0567 GM0567F.
     N1GM0568 GM0568F.
     N1GM0569 GM0569F.
     N1GM0570 GM0570F.
     N1GM0571 GM0571F.
     N1GM0572 GM0572F.
     N1GM0573 GM0573F.
     N1GM0577 GM0577F.
     N1GM0578 GM0578F.
     N1GM0580 GM0580F.
     N1GM0582 GM0582F.
     N1GM0584 GM0584F.
     N1GM0585 GM0585F.
     N1GM0586 GM0586F.
     N1GM0587 GM0587F.
     N1GM0588 GM0588F.
     N1GM0589 GM0589F.
     N1GM0590 GM0590F.
     N1GM0591 GM0591F.
     N1GM0592 GM0592F.
     N1GM0593 GM0593F.
     N1GM0594 GM0594F.
     N1GM0595 GM0595F.
     N1GM0596 GM0596F.
     N1GM0597 GM0597F.
     N1GM0598 GM0598F.
     N1GM0599 GM0599F.
     N1GM0600 GM0600F.
     N1GM0606 GM0606F.
     N1GM0607 GM0607F.
     N1GM0608 GM0608F.
     N1GM0609 GM0609F.
     N1GM0610 GM0610F.
     N1GM0611 GM0611F.
     N1GM0612 GM0612F.
     N1GM0613 GM0613F.
     N1GM0614 GM0614F.
     N1GM0615 GM0615F.
     N1GM0616 GM0616F.
     N1GM0617 GM0617F.
     N1GM0618 GM0618F.
     N1GM0619 GM0619F.
     N1GM0620 GM0620F.
     N1GM0621 GM0621F.
     N1GM0622 GM0622F.
     N1GM0625 GM0625F.
     N1GM0626 GM0626F.
     N1GM0627 GM0627F.
     N1GM0628 GM0628F.
     N1GM0629 GM0629F.
     N1GM0630 GM0630F.
     N1GM0631 GM0631F.
     N1GM0632 GM0632F.
     N1GM0633 GM0633F.
     N1GM0634 GM0634F.
     N1GM0635 GM0635F.
     N1GM0636 GM0636F.
     N1GM0637 GM0637F.
     N1GM0638 GM0638F.
     N1GM0639 GM0639F.
     N1GM0640 GM0640F.
     N1GM0641 GM0641F.
     N1GM0642 GM0642F.
     N1GM0643 GM0643F.
     N1GM0644 GM0644F.
     N1GM0645 GM0645F.
     N1GM0646 GM0646F.
     N1GM0647 GM0647F.
     N1GM0648 GM0648F.
     N1GM0649 GM0649F.
     N1GM0650 GM0650F.
     N1GM0651 GM0651F.
     N1GM0652 GM0652F.
     N1GM0653 GM0653F.
     N1GM0654 GM0654F.
     N1GM0655 GM0655F.
     N1GM0656 GM0656F.
     N1GM0657 GM0657F.
     N1GM0658 GM0658F.
     N1GM0659 GM0659F.
     N1GM0660 GM0660F.
     N1GM0661 GM0661F.
     N1GM0662 GM0662F.
     N1GM0663 GM0663F.
     N1GM0664 GM0664F.
     N1GM0665 GM0665F.
     N1GM0666 GM0666F.
     N1GM0667 GM0667F.
     N1GM0668 GM0668F.
     N1GM0669 GM0669F.
     N1GM0670 GM0670F.
     N1GM0671 GM0671F.
     N1GM0672 GM0672F.
     N1GM0673 GM0673F.
     N1GM0674 GM0674F.
     N1GM0675 GM0675F.
     N1GM0676 GM0676F.
     N1GM0677 GM0677F.
     N1GM0678 GM0678F.
     N1GM0679 GM0679F.
     N1GM0680 GM0680F.
     N1GM0681 GM0681F.
     N1GM0682 GM0682F.
     N1GM0683 GM0683F.
     N1GM0684 GM0684F.
     N1GM0685 GM0685F.
     N1GM0686 GM0686F.
     N1GM0687 GM0687F.
     N1GM0688 GM0688F.
     N1GM0689 GM0689F.
     N1GM0690 GM0690F.
     N1GM0691 GM0691F.
     N1GM0692 GM0692F.
     N1GM0693 GM0693F.
     N1GM0694 GM0694F.
     N1GM0695 GM0695F.
     N1GM0696 GM0696F.
     N1GM0697 GM0697F.
     N1GM0698 GM0698F.
     N1GM0699 GM0699F.
     N1GM0700 GM0700F.
     N1GM0701 GM0701F.
     N1GM0702 GM0702F.
     N1GM0703 GM0703F.
     N1GM0704 GM0704F.
     N1GM0705 GM0705F.
     N1GM0706 GM0706F.
     N1GM0707 GM0707F.
     N1GM0708 GM0708F.
     N1GM0709 GM0709F.
     N1GM0710 GM0710F.
     N1GM0711 GM0711F.
     N1GM0712 GM0712F.
     N1GM0713 GM0713F.
     N1GM0714 GM0714F.
     N1GM0715 GM0715F.
     N1GM0716 GM0716F.
     N1GM0717 GM0717F.
     N1GM0718 GM0718F.
     N1GM0719 GM0719F.
     N1GM0720 GM0720F.
     N1GM0721 GM0721F.
     N1GM0722 GM0722F.
     N1GM0723 GM0723F.
     N1GM0724 GM0724F.
     N1GM0725 GM0725F.
     N1GM0726 GM0726F.
     N1GM0727 GM0727F.
     N1GM0728 GM0728F.
     N1GM0729 GM0729F.
     N1GM0730 GM0730F.
     N1GM0731 GM0731F.
     N1GM0732 GM0732F.
     N1GM0733 GM0733F.
     N1GM0734 GM0734F.
     N1GM0735 GM0735F.
     N1GM0736 GM0736F.
     N1GM0737 GM0737F.
     N1GM0738 GM0738F.
     N1GM0739 GM0739F.
     N1GM0743 GM0743F.
     N1GM0744 GM0744F.
     N1GM0745 GM0745F.
     N1GM0746 GM0746F.
     N1GM0747 GM0747F.
     N1GM0748 GM0748F.
     N1GM0749 GM0749F.
     N1GM0750 GM0750F.
     N1GM0751 GM0751F.
     N1GM0752 GM0752F.
     N1GM0753 GM0753F.
     N1GM0754 GM0754F.
     N1GM0755 GM0755F.
     N1GM0756 GM0756F.
     N1GM0757 GM0757F.
     N1GM0758 GM0758F.
     N1GM0759 GM0759F.
     N1GM0760 GM0760F.
     N1GM0761 GM0761F.
     N1GM0762 GM0762F.
     N1GM0763 GM0763F.
     N1GM0764 GM0764F.
     N1GM0765 GM0765F.
     N1GM0766 GM0766F.
     N1GM0825 GM0825F.
     N1GM0826 GM0826F.
     N1GM0827 GM0827F.
     N1GM0828 GM0828F.
     N1GM0829 GM0829F.
     N1GM0830 GM0830F.
     N1GM0831 GM0831F.
     N1GM0832 GM0832F.
     N1GM0833 GM0833F.
     N1GM0834 GM0834F.
     N1GM0835 GM0835F.
     N1GM0836 GM0836F.
     N1GM0837 GM0837F.
     N1GM0838 GM0838F.
     N1GM0839 GM0839F.
     N1GM0840 GM0840F.
     N1GM0841 GM0841F.
     N1GM0842 GM0842F.
     N1GM0843 GM0843F.
     N1GM0844 GM0844F.
     N1GM0845 GM0845F.
     N1GM0846 GM0846F.
     N1GM0847 GM0847F.
     N1GM0848 GM0848F.
     N1GM0849 GM0849F.
     N1GM0850 GM0850F.
     N1GM0851 GM0851F.
     N1GM0852 GM0852F.
     N1GM0853 GM0853F.
     N1GM0854 GM0854F.
     N1GM0855 GM0855F.
     N1GM0856 GM0856F.
     N1GM0857 GM0857F.
     N1GM0858 GM0858F.
     N1GM0860 GM0860F.
     N1GM0862 GM0862F.
     N1GM0863 GM0863F.
     N1GM0864 GM0864F.
     N1GM0865 GM0865F.
     N1GM0866 GM0866F.
     N1GM0867 GM0867F.
     N1GM0868 GM0868F.
     N1GM0869 GM0869F.
     N1GM0870 GM0870F.
     N1GM0871 GM0871F.
     N1GM0872 GM0872F.
     N1GM0873 GM0873F.
     N1GM0874 GM0874F.
     N1GM0875 GM0875F.
     N1GM0876 GM0876F.
     N1GM0877 GM0877F.
     N1GM0878 GM0878F.
     N1GM0879 GM0879F.
     N1GM0880 GM0880F.
     N1GM0881 GM0881F.
     N1GM0882 GM0882F.
     N1GM0883 GM0883F.
     N1GM0884 GM0884F.
     N1GM0885 GM0885F.
     N1GM0886 GM0886F.
     N1GM0887 GM0887F.
     N1GM0888 GM0888F.
     N1GM0889 GM0889F.
     N1GM0890 GM0890F.
     N1GM0891 GM0891F.
     N1GM0892 GM0892F.
     N1GM0893 GM0893F.
     N1GM0894 GM0894F.
     N1GM0895 GM0895F.
     N1GM0896 GM0896F.
     N1GM0897 GM0897F.
     N1GM0898 GM0898F.
     N1GM0899 GM0899F.
     N1GM0900 GM0900F.
     N1GM0901 GM0901F.
     N1GM0902 GM0902F.
     N1GM0903 GM0903F.
     N1GM0904 GM0904F.
     N1GM0905 GM0905F.
     N1GM0906 GM0906F.
     N1GM0907 GM0907F.
     N1GM0908 GM0908F.
     N1GM0909 GM0909F.
     N1GM0910 GM0910F.
     N1GM0911 GM0911F.
     N1GM0912 GM0912F.
     N1GM0913 GM0913F.
     N1GM0914 GM0914F.
     N1GM0915 GM0915F.
     N1GM0916 GM0916F.
     N1GM0917 GM0917F.
     N1GM0918 GM0918F.
     N1GM0919 GM0919F.
     N1GM0920 GM0920F.
     N1GM0921 GM0921F.
     N1GM0922 GM0922F.
     N1GM0923 GM0923F.
     N1GM0924 GM0924F.
     N1GM0925 GM0925F.
     N1GM0926 GM0926F.
     N1GM0927 GM0927F.
     ;

	INPUT
         SEQN 1-5
         N1GM0006 6-9
         N1GM0010 10
         N1GM0011 11
         N1GM0012 12
         N1GM0013 13
         N1GM0014 14
         N1GM0015 15
         N1GM0016 16
         N1GM0017 17-18
         N1GM0019 19
         N1GM0020 20-21
         N1GM0022 22
         N1GM0023 23-24
         N1GM0025 25-26
         N1GM0027 27
         N1GM0028 28
         N1GM0029 29
         N1GM0030 30
         N1GM0031 31
         N1GM0032 32
         N1GM0033 33
         N1GM0034 34-35
         N1GM0036 36
         N1GM0037 37-40
         N1GM0041 41
         N1GM0042 42-45
         N1GM0046 46
         N1GM0047 47-50
         N1GM0051 51
         N1GM0052 52-55
         N1GM0056 56
         N1GM0057 57-60
         N1GM0061 61
         N1GM0062 62-65
         N1GM0066 66
         N1GM0067 67-70
         N1GM0071 71
         N1GM0072 72-75
         N1GM0076 76
         N1GM0077 77-80
         N1GM0081 81
         N1GM0082 82-85
         N1GM0086 86
         N1GM0087 87-90
         N1GM0091 91-94
         N1GM0095 95-99
         N1GM0100 100
         N1GM0101 101-102
         N1GM0103 103
         N1GM0104 104
         N1GM0105 105
         N1GM0106 106-109
         N1GM0110 110-111
         N1GM0112 112-113
         N1GM0114 114
         N1GM0115 115
         N1GM0116 116
         N1GM0117 117
         N1GM0118 118
         N1GM0119 119
         N1GM0120 120-121
         N1GM0122 122
         N1GM0123 123
         N1GM0124 124
         N1GM0125 125
         N1GM0126 126
         N1GM0127 127
         N1GM0128 128
         N1GM0129 129
         N1GM0130 130
         N1GM0131 131
         N1GM0132 132-134
         N1GM0135 135-137
         N1GM0138 138-143
         N1GM0144 144-145
         N1GM0146 146
         N1GM0147 147-149
         N1GM0150 150
         N1GM0151 151
         N1GM0152 152
         N1GM0153 153
         N1GM0154 154
         N1GM0155 155
         N1GM0156 156
         N1GM0157 157
         N1GM0158 158-163
         N1GM0164 164-169
         N1GM0170 170-175
         N1GM0176 176-181
         N1GM0182 182-187
         N1GM0188 188-193
         N1GM0194 194-195
         N1GM0196 196-198
         N1GM0199 199-200
         N1GM0201 201-204
         N1GM0205 205-224
         N1GM0225 225
         N1GM0226 226
         N1GM0227 227
         N1GM0228 228
         N1GM0229 229
         N1GM0230 230
         N1GM0231 231
         N1GM0232 232
         N1GM0233 233
         N1GM0234 234
         N1GM0235 235
         N1GM0236 236
         N1GM0237 237
         N1GM0238 238
         N1GM0239 239
         N1GM0240 240
         N1GM0241 241
         N1GM0242 242-244
         N1GM0245 245
         N1GM0246 246
         N1GM0247 247
         N1GM0248 248
         N1GM0249 249
         N1GM0250 250
         N1GM0251 251
         N1GM0252 252
         N1GM0253 253
         N1GM0254 254
         N1GM0255 255
         N1GM0256 256
         N1GM0257 257
         N1GM0258 258
         N1GM0259 259
         N1GM0260 260
         N1GM0261 261
         N1GM0262 262
         N1GM0263 263
         N1GM0264 264
         N1GM0265 265
         N1GM0266 266
         N1GM0267 267
         N1GM0268 268
         N1GM0269 269
         N1GM0270 270
         N1GM0271 271
         N1GM0272 272
         N1GM0273 273
         N1GM0274 274
         N1GM0275 275
         N1GM0276 276
         N1GM0277 277
         N1GM0278 278
         N1GM0279 279
         N1GM0280 280
         N1GM0281 281
         N1GM0282 282
         N1GM0283 283
         N1GM0284 284
         N1GM0285 285
         N1GM0286 286
         N1GM0287 287
         N1GM0288 288
         N1GM0289 289
         N1GM0290 290-292
         N1GM0293 293
         N1GM0294 294
         N1GM0295 295
         N1GM0296 296
         N1GM0297 297
         N1GM0298 298
         N1GM0299 299
         N1GM0300 300
         N1GM0301 301
         N1GM0302 302
         N1GM0303 303
         N1GM0304 304
         N1GM0305 305
         N1GM0306 306
         N1GM0307 307
         N1GM0308 308
         N1GM0309 309
         N1GM0310 310
         N1GM0311 311
         N1GM0312 312
         N1GM0313 313
         N1GM0314 314
         N1GM0315 315
         N1GM0316 316
         N1GM0317 317
         N1GM0318 318
         N1GM0319 319
         N1GM0320 320
         N1GM0321 321
         N1GM0322 322
         N1GM0323 323
         N1GM0324 324
         N1GM0325 325
         N1GM0326 326
         N1GM0327 327
         N1GM0328 328
         N1GM0329 329
         N1GM0330 330
         N1GM0331 331
         N1GM0332 332
         N1GM0333 333
         N1GM0334 334-339
         N1GM0340 340
         N1GM0341 341
         N1GM0342 342
         N1GM0343 343
         N1GM0344 344
         N1GM0345 345
         N1GM0346 346
         N1GM0347 347
         N1GM0348 348
         N1GM0349 349
         N1GM0350 350
         N1GM0351 351
         N1GM0352 352
         N1GM0353 353
         N1GM0354 354
         N1GM0355 355
         N1GM0356 356
         N1GM0357 357
         N1GM0358 358
         N1GM0359 359
         N1GM0360 360
         N1GM0361 361
         N1GM0362 362
         N1GM0363 363
         N1GM0364 364
         N1GM0365 365
         N1GM0366 366-367
         N1GM0368 368-369
         N1GM0370 370-371
         N1GM0372 372-373
         N1GM0374 374-375
         N1GM0376 376-377
         N1GM0378 378
         N1GM0379 379
         N1GM0380 380-381
         N1GM0382 382-383
         N1GM0384 384-385
         N1GM0386 386-387
         N1GM0388 388-389
         N1GM0390 390
         N1GM0391 391
         N1GM0392 392-393
         N1GM0394 394-395
         N1GM0396 396-397
         N1GM0398 398
         N1GM0399 399
         N1GM0400 400-401
         N1GM0402 402-403
         N1GM0404 404-405
         N1GM0406 406
         N1GM0407 407
         N1GM0408 408
         N1GM0409 409
         N1GM0410 410
         N1GM0411 411
         N1GM0412 412
         N1GM0413 413-414
         N1GM0415 415-416
         N1GM0417 417
         N1GM0418 418
         N1GM0419 419
         N1GM0420 420
         N1GM0421 421
         N1GM0422 422
         N1GM0423 423
         N1GM0424 424
         N1GM0425 425
         N1GM0426 426
         N1GM0427 427
         N1GM0428 428
         N1GM0429 429
         N1GM0430 430
         N1GM0431 431
         N1GM0432 432
         N1GM0433 433
         N1GM0434 434
         N1GM0435 435
         N1GM0436 436
         N1GM0437 437
         N1GM0438 438
         N1GM0439 439
         N1GM0440 440
         N1GM0441 441
         N1GM0442 442
         N1GM0443 443
         N1GM0444 444
         N1GM0445 445
         N1GM0446 446
         N1GM0447 447
         N1GM0448 448
         N1GM0449 449
         N1GM0450 450
         N1GM0451 451
         N1GM0452 452
         N1GM0453 453
         N1GM0454 454
         N1GM0455 455
         N1GM0456 456
         N1GM0457 457
         N1GM0458 458
         N1GM0459 459
         N1GM0460 460
         N1GM0461 461
         N1GM0462 462
         N1GM0463 463
         N1GM0464 464
         N1GM0465 465
         N1GM0466 466
         N1GM0467 467
         N1GM0468 468
         N1GM0469 469
         N1GM0470 470
         N1GM0471 471
         N1GM0472 472
         N1GM0473 473
         N1GM0474 474
         N1GM0475 475
         N1GM0476 476
         N1GM0477 477
         N1GM0478 478
         N1GM0479 479
         N1GM0480 480
         N1GM0481 481
         N1GM0482 482
         N1GM0483 483
         N1GM0484 484
         N1GM0485 485
         N1GM0486 486
         N1GM0487 487
         N1GM0488 488
         N1GM0489 489
         N1GM0490 490
         N1GM0491 491
         N1GM0492 492
         N1GM0493 493
         N1GM0494 494
         N1GM0495 495
         N1GM0496 496
         N1GM0497 497
         N1GM0498 498
         N1GM0499 499
         N1GM0500 500
         N1GM0501 501
         N1GM0502 502
         N1GM0503 503
         N1GM0504 504
         N1GM0505 505
         N1GM0506 506
         N1GM0507 507
         N1GM0508 508
         N1GM0509 509
         N1GM0510 510
         N1GM0511 511
         N1GM0512 512
         N1GM0513 513
         N1GM0514 514
         N1GM0515 515
         N1GM0516 516
         N1GM0517 517
         N1GM0518 518
         N1GM0519 519
         N1GM0520 520
         N1GM0521 521
         N1GM0522 522
         N1GM0523 523
         N1GM0524 524
         N1GM0525 525
         N1GM0526 526
         N1GM0527 527
         N1GM0528 528
         N1GM0529 529
         N1GM0530 530
         N1GM0531 531
         N1GM0532 532
         N1GM0533 533
         N1GM0534 534
         N1GM0535 535
         N1GM0536 536
         N1GM0537 537
         N1GM0538 538
         N1GM0539 539
         N1GM0540 540
         N1GM0541 541
         N1GM0542 542
         N1GM0543 543-544
         N1GM0545 545-546
         N1GM0547 547
         N1GM0548 548
         N1GM0549 549
         N1GM0550 550-551
         N1GM0552 552-553
         N1GM0554 554-555
         N1GM0556 556
         N1GM0557 557
         N1GM0558 558
         N1GM0559 559
         N1GM0560 560
         N1GM0561 561
         N1GM0562 562
         N1GM0563 563-564
         N1GM0565 565
         N1GM0566 566
         N1GM0567 567
         N1GM0568 568
         N1GM0569 569
         N1GM0570 570
         N1GM0571 571
         N1GM0572 572
         N1GM0573 573-574
         N1GM0575 575-576
         N1GM0577 577
         N1GM0578 578-579
         N1GM0580 580-581
         N1GM0582 582-583
         N1GM0584 584
         N1GM0585 585
         N1GM0586 586
         N1GM0587 587
         N1GM0588 588
         N1GM0589 589
         N1GM0590 590
         N1GM0591 591
         N1GM0592 592
         N1GM0593 593
         N1GM0594 594
         N1GM0595 595
         N1GM0596 596
         N1GM0597 597
         N1GM0598 598
         N1GM0599 599
         N1GM0600 600
         N1GM0601 601-602
         N1GM0603 603-604
         N1GM0605 605
         N1GM0606 606
         N1GM0607 607
         N1GM0608 608
         N1GM0609 609
         N1GM0610 610
         N1GM0611 611
         N1GM0612 612
         N1GM0613 613
         N1GM0614 614
         N1GM0615 615
         N1GM0616 616
         N1GM0617 617
         N1GM0618 618
         N1GM0619 619
         N1GM0620 620
         N1GM0621 621
         N1GM0622 622
         N1GM0623 623-624
         N1GM0625 625
         N1GM0626 626
         N1GM0627 627
         N1GM0628 628
         N1GM0629 629
         N1GM0630 630
         N1GM0631 631
         N1GM0632 632
         N1GM0633 633
         N1GM0634 634
         N1GM0635 635
         N1GM0636 636
         N1GM0637 637
         N1GM0638 638
         N1GM0639 639
         N1GM0640 640
         N1GM0641 641
         N1GM0642 642
         N1GM0643 643
         N1GM0644 644
         N1GM0645 645
         N1GM0646 646
         N1GM0647 647
         N1GM0648 648
         N1GM0649 649
         N1GM0650 650
         N1GM0651 651
         N1GM0652 652
         N1GM0653 653
         N1GM0654 654
         N1GM0655 655
         N1GM0656 656
         N1GM0657 657
         N1GM0658 658
         N1GM0659 659
         N1GM0660 660
         N1GM0661 661
         N1GM0662 662
         N1GM0663 663
         N1GM0664 664
         N1GM0665 665
         N1GM0666 666
         N1GM0667 667
         N1GM0668 668
         N1GM0669 669
         N1GM0670 670
         N1GM0671 671
         N1GM0672 672
         N1GM0673 673
         N1GM0674 674
         N1GM0675 675
         N1GM0676 676
         N1GM0677 677
         N1GM0678 678
         N1GM0679 679
         N1GM0680 680
         N1GM0681 681
         N1GM0682 682
         N1GM0683 683
         N1GM0684 684
         N1GM0685 685
         N1GM0686 686
         N1GM0687 687
         N1GM0688 688
         N1GM0689 689
         N1GM0690 690
         N1GM0691 691
         N1GM0692 692
         N1GM0693 693
         N1GM0694 694
         N1GM0695 695
         N1GM0696 696
         N1GM0697 697
         N1GM0698 698
         N1GM0699 699
         N1GM0700 700
         N1GM0701 701
         N1GM0702 702
         N1GM0703 703
         N1GM0704 704
         N1GM0705 705
         N1GM0706 706
         N1GM0707 707
         N1GM0708 708
         N1GM0709 709
         N1GM0710 710
         N1GM0711 711
         N1GM0712 712
         N1GM0713 713
         N1GM0714 714
         N1GM0715 715
         N1GM0716 716
         N1GM0717 717
         N1GM0718 718
         N1GM0719 719
         N1GM0720 720
         N1GM0721 721
         N1GM0722 722
         N1GM0723 723
         N1GM0724 724
         N1GM0725 725
         N1GM0726 726
         N1GM0727 727
         N1GM0728 728
         N1GM0729 729
         N1GM0730 730
         N1GM0731 731
         N1GM0732 732
         N1GM0733 733
         N1GM0734 734
         N1GM0735 735
         N1GM0736 736
         N1GM0737 737
         N1GM0738 738
         N1GM0739 739-742
         N1GM0743 743
         N1GM0744 744
         N1GM0745 745
         N1GM0746 746
         N1GM0747 747
         N1GM0748 748
         N1GM0749 749
         N1GM0750 750
         N1GM0751 751
         N1GM0752 752
         N1GM0753 753
         N1GM0754 754
         N1GM0755 755
         N1GM0756 756
         N1GM0757 757
         N1GM0758 758
         N1GM0759 759
         N1GM0760 760
         N1GM0761 761
         N1GM0762 762
         N1GM0763 763
         N1GM0764 764
         N1GM0765 765
         N1GM0766 766
         N1GM0767 767-824
         N1GM0825 825
         N1GM0826 826
         N1GM0827 827
         N1GM0828 828
         N1GM0829 829
         N1GM0830 830
         N1GM0831 831
         N1GM0832 832
         N1GM0833 833
         N1GM0834 834
         N1GM0835 835
         N1GM0836 836
         N1GM0837 837
         N1GM0838 838
         N1GM0839 839
         N1GM0840 840
         N1GM0841 841
         N1GM0842 842
         N1GM0843 843
         N1GM0844 844
         N1GM0845 845
         N1GM0846 846
         N1GM0847 847
         N1GM0848 848
         N1GM0849 849
         N1GM0850 850
         N1GM0851 851
         N1GM0852 852
         N1GM0853 853
         N1GM0854 854
         N1GM0855 855
         N1GM0856 856
         N1GM0857 857
         N1GM0858 858-859
         N1GM0860 860-861
         N1GM0862 862
         N1GM0863 863
         N1GM0864 864
         N1GM0865 865
         N1GM0866 866
         N1GM0867 867
         N1GM0868 868
         N1GM0869 869
         N1GM0870 870
         N1GM0871 871
         N1GM0872 872
         N1GM0873 873
         N1GM0874 874
         N1GM0875 875
         N1GM0876 876
         N1GM0877 877
         N1GM0878 878
         N1GM0879 879
         N1GM0880 880
         N1GM0881 881
         N1GM0882 882
         N1GM0883 883
         N1GM0884 884
         N1GM0885 885
         N1GM0886 886
         N1GM0887 887
         N1GM0888 888
         N1GM0889 889
         N1GM0890 890
         N1GM0891 891
         N1GM0892 892
         N1GM0893 893
         N1GM0894 894
         N1GM0895 895
         N1GM0896 896
         N1GM0897 897
         N1GM0898 898
         N1GM0899 899
         N1GM0900 900
         N1GM0901 901
         N1GM0902 902
         N1GM0903 903
         N1GM0904 904
         N1GM0905 905
         N1GM0906 906
         N1GM0907 907
         N1GM0908 908
         N1GM0909 909
         N1GM0910 910
         N1GM0911 911
         N1GM0912 912
         N1GM0913 913
         N1GM0914 914
         N1GM0915 915
         N1GM0916 916
         N1GM0917 917
         N1GM0918 918
         N1GM0919 919
         N1GM0920 920
         N1GM0921 921
         N1GM0922 922
         N1GM0923 923
         N1GM0924 924
         N1GM0925 925
         N1GM0926 926
         N1GM0927 927
         N1GM0928 928-950
      ;

      LABEL
         SEQN = "SAMPLE SEQUENCE NUMBER"
         N1GM0006 = "CATALOG NUMBER 4271"
         N1GM0010 = "SIZE OF PLACE"
         N1GM0011 = "SMSA-NOT SMSA"
         N1GM0012 = "TYPE OF LIVING QUARTERS"
         N1GM0013 = "LAND USAGE"
         N1GM0014 = "IF RURAL, ASKED HOW MANY ACRES OF LA ..."
         N1GM0015 = "IF 10 ACRES OR MORE, ASKED IF SALE O ..."
         N1GM0016 = "IF 10 ACRES OR LESS, ASKED IF SALE O ..."
         N1GM0017 = "AGE-HEAD OF HOUSEHOLD"
         N1GM0019 = "SEX-HEAD OF HOUSEHOLD"
         N1GM0020 = "HIGHEST GRADE ATTENDED-HEAD HOUSEHOLD"
         N1GM0022 = "RACE-HEAD OF HOUSEHOLD"
         N1GM0023 = "TOTAL NUMBER OF PERSONS HOUSEHOLD"
         N1GM0025 = "TOTAL SAMPLE OF PERSONS IN HOUSEHOLD"
         N1GM0027 = "NUMBER OF ROOMS IN HOUSE"
         N1GM0028 = "IS THERE PIPED WATER?"
         N1GM0029 = "IS THERE HOT AND COLD PIED WATER?"
         N1GM0030 = "DOES HOUSE HAVE A SINK WITH PIPED WATER?"
         N1GM0031 = "DOES HOUSE HAVE A RANG OR COOK STOVE?"
         N1GM0032 = "DOES HOUSE HAVE A REFRIGERATOR?"
         N1GM0033 = "ARE KITCHEN FACILITIES USED BY ANYON ..."
         N1GM0034 = "TOTAL FAMILY INCOME GROUP"
         N1GM0036 = "WAGES OR SALARIES?"
         N1GM0037 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER ..."
         N1GM0041 = "SOCIAL SECURITY OR RAILROAD RETIREMENT?"
         N1GM0042 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1GM0046 = "WELFARE PAYMENT OR OTHER PUBLIC ASSI ..."
         N1GM0047 = "IF YES  TO ABOVE, HOW MUCH ALTOGETHER?"
         N1GM0051 = "UNEMPLOYMENT OR WORKMEN'S COMPENSATION?"
         N1GM0052 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1GM0056 = "GOVERNMENT EMPLOYEE PENSIONS OR PRIV ..."
         N1GM0057 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1GM0061 = "DIVIDENDS, INTEREST OR RENT?"
         N1GM0062 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1GM0066 = "NET INCOME FROM OWN NON-FARM BUSINES ..."
         N1GM0067 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1GM0071 = "INCOME ON A FARM?"
         N1GM0072 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1GM0076 = "VETERAN'S PAYMENTS"
         N1GM0077 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1GM0081 = "ALIMONY, CHILD SUPPORT OR CONTRIBUTI ..."
         N1GM0082 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1GM0086 = "ANY OTHER INCOME?"
         N1GM0087 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1GM0091 = "TOTAL AMOUNT (TOTAL OF POSITIONS 37-90)"
         N1GM0095 = "FAMILY UNIT CODE"
         N1GM0100 = "RELATIONSHIP TO HEAD OF HOUSEHOLD"
         N1GM0101 = "AGE AT INTERVIEW"
         N1GM0103 = "RACE OF EXAMINED PERSON"
         N1GM0104 = "SEX OF EXAMINED PERSON"
         N1GM0105 = "MARTIAL STATUS"
         N1GM0106 = "DATE OF BIRTH (MONTH,YEAR)"
         N1GM0110 = "PLACE OF BIRTH"
         N1GM0112 = "HIGHEST GRADE OF REGULAR SCHOOL EVER ..."
         N1GM0114 = "DID HE FINISH THE GRADE?"
         N1GM0115 = "IS HE ATTENDING SCHOOL NOW?"
         N1GM0116 = "HAS HE EVER ATTENDED A SCHOOL OF ANY ..."
         N1GM0117 = "IF YES, WHAT KIND OF SCHOOL?"
         N1GM0118 = "IS ANY LANGUAGE OTHER THAN ENGLISH F ..."
         N1GM0119 = "IF YES, WHAT LANGUAGE?"
         N1GM0120 = "WHAT IS YOUR MAIN ANCESTRY OR NATION ..."
         N1GM0122 = "WHAT WAS HE DOING MOST OF PAST THREE ..."
         N1GM0123 = "IF 'SOMETHING ELSE' FROM ABOVE, WHAT ..."
         N1GM0124 = "IF 'KEEPING HOUSE' OR SOMETHING ELSE ..."
         N1GM0125 = "IF 'WORKING' FROM ABOVE, DID HE WORK ..."
         N1GM0126 = "DID HE WORK AT ANYTIME LAST WEEK OR  ..."
         N1GM0127 = "IF 'NO' TO ABOVE, EVEN THOUGH HE DID ..."
         N1GM0128 = "IF 'NO' IN POSITION 126, WAS HE LOOK ..."
         N1GM0129 = "IF YES TO ABOVE-WHICH?"
         N1GM0130 = "CLASS OF WORKER"
         N1GM0131 = "IF SELF-EMPLOYED IN 'OWN' BUSINESS A ..."
         N1GM0132 = "BUSINESS OR INDUSTRY CODE"
         N1GM0135 = "OCCUPATION CODE"
         N1GM0138 = "DATE OF EXAMINATION"
         N1GM0144 = "AGE AT EXAMINATION"
         N1GM0146 = "FARM"
         N1GM0147 = "POVERTY INDEX (X.XX)"
         N1GM0150 = "REGION"
         N1GM0151 = "FOOD PROGRAMS APPLICABILITY"
         N1GM0152 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1GM0153 = "ARE YOU BUYING STAMPS NOW?"
         N1GM0154 = "WHAT IS THE MAIN REASON YOU AREN'T P ..."
         N1GM0155 = "ARE YOU CERTIFIED TO  PARTICIPATE IN ..."
         N1GM0156 = "ARE YOU RECEIVING COMMODITY FOODS NO ..."
         N1GM0157 = "WHY AREN'T YOU PARTICIPATING  IN THE ..."
         N1GM0158 = "DETAILED PERSONS-LOCATIONS 1-35"
         N1GM0164 = "BLANK-DATA USER WORK AREA"
         N1GM0170 = "DETAILED PERSONS-LOCATIONS 1-65"
         N1GM0176 = "BLANK-DATA USER WORK AREA"
         N1GM0182 = "DETAILED PERSONS-LOCATIONS 66-100"
         N1GM0188 = "DETAILED PERSONS-LOCATIONS 1-100"
         N1GM0194 = "STRATA 1"
         N1GM0196 = "PRIMARY SAMPLING UNITS"
         N1GM0199 = "WORK AREA"
         N1GM0201 = "CATALOG NUMBER 4091"
         N1GM0205 = "WORK AREA"
         N1GM0225 = "AT A PRIVATE DOCTOR'S OFFICE?"
         N1GM0226 = "AT A HOSPITAL OUT-PATIENT CLINIC?"
         N1GM0227 = "AT A CITY CLINIC?"
         N1GM0228 = "AT A CLINIC AT WORK?"
         N1GM0229 = "AT ANOTHER TYPE CLINIC?"
         N1GM0230 = "AT A HOSPITAL EMERGENCY ROOM?"
         N1GM0231 = "AT HOME?"
         N1GM0232 = "OVER THE TELEPHONE?"
         N1GM0233 = "IN ANOTHER WAY?"
         N1GM0234 = "WHAT WAS THE MAIN REASON FOR YOUR LA ..."
         N1GM0235 = "FOR THIS LAST VISIT, HOW LONG WAS IT ..."
         N1GM0236 = "DID YOU HAVE A APPOINTMENT TO SEE HIM?"
         N1GM0237 = "HOW LONG WAS IT FROM THE TIME YOU MA ..."
         N1GM0238 = "WAS THIS LONGER THAN WOULD HAVE LIKED?"
         N1GM0239 = "FROM WHAT PLACE DID YOU LEAVE TO GO  ..."
         N1GM0240 = "HOW DID YOU GET FROM THERE TO THE DO ..."
         N1GM0241 = "HOW LONG DID IT TAKE TO GET THERE?"
         N1GM0242 = "AT THIS LAST VISIT, ABOUT HOW MANY M ..."
         N1GM0245 = "DO YOU THINK THIS WAIT WAS TOO LONG?"
         N1GM0246 = "HOW WELL SATISFIED WERE YOU WITH THI ..."
         N1GM0247 = "DURING THE PAST 12 MONTHS HAVE YOU H ..."
         N1GM0248 = "LACK OF CONFIDENCE IN AVAILABLE DOCTORS?"
         N1GM0249 = "DON'T HAVE TIME?"
         N1GM0250 = "WOULD COST TOO MUCH?"
         N1GM0251 = "COULDN'T GET AN APPOINTMENT?"
         N1GM0252 = "WOULD HAVE TO TRAVEL TOO FAR?"
         N1GM0253 = "DIDN'T HAVE A WAY TO GET THERE?"
         N1GM0254 = "WAS AFRAID OF FINDING OUT WHAT WAS W ..."
         N1GM0255 = "DIDNT HAVE ANYONE TO CARE FOR CHILDR ..."
         N1GM0256 = "OTHER"
         N1GM0257 = "WHEN YOU LAST HAVE A GENERAL CHECKUP ..."
         N1GM0258 = "WHERE DID YOU GET THIS GENERAL EXAMI ..."
         N1GM0259 = "A CARDIOGRAM?"
         N1GM0260 = "A BLOOD PRESSURE CHECK?"
         N1GM0261 = "A CHEST X-RAY?"
         N1GM0262 = "BLOOD TESTS?"
         N1GM0263 = "A URINALYSIS?"
         N1GM0264 = "VISION TESTS?"
         N1GM0265 = "HEARING TESTS?"
         N1GM0266 = "A RECTAL EXAMINATION?"
         N1GM0267 = "AN INTERNAL EXAMINATION? (FEMALES ONLY)"
         N1GM0268 = "WHEN WAS THE TIME YOU RECEIVED ANY S ..."
         N1GM0269 = "WHY DID YOU GET THIS SHOT?"
         N1GM0270 = "IS THEIR A PARTICULAR DOCTOR YOU SEE ..."
         N1GM0271 = "IF YOU COULDN'T SEE THIS DOCTOR IS T ..."
         N1GM0272 = "EXCEPT IN AN EMERGENCY, DO YOU NEED  ..."
         N1GM0273 = "WHEN YOU GO TO A DOCTOR, DO YOU LIKE ..."
         N1GM0274 = "DO THE DOCTORS YOU USUALLY SEE TALK  ..."
         N1GM0275 = "DO YOU TRY OUT HOME REMEDIES OR ANY  ..."
         N1GM0276 = "DO YOU HAVE A DENTIST YOU USUALLY GO TO?"
         N1GM0277 = "AT A DENTIST'S OFFICE?"
         N1GM0278 = "AT A HOSPITAL DENTAL CLINIC?"
         N1GM0279 = "AT A HOSPITAL EMERGENCY CLINIC?"
         N1GM0280 = "AT ANOTHER CLINIC?"
         N1GM0281 = "OVER THE TELEPHONE?"
         N1GM0282 = "IN OTHER WAY?"
         N1GM0283 = "WHAT WAS THE MAIN REASON FOR YOUR LA ..."
         N1GM0284 = "FOR THIS LAST VISIT, HOW LONG WAS IT ..."
         N1GM0285 = "AT THE TIME OF LAST VISIT OR TALK WI ..."
         N1GM0286 = "HOW LONG WAS IT FROM THE TIME YOU MA ..."
         N1GM0287 = "WAS THIS WAIT LONGER THAN YOU WOULD  ..."
         N1GM0288 = "HOW DID YOU GET THE DENTIST'S OFFICE?"
         N1GM0289 = "HOW LONG DID IT TAKE TO GET THERE?"
         N1GM0290 = "AT THIS LAST VISIT, ABOUT HOW MANY M ..."
         N1GM0293 = "DO YOU THINK THIS WAIT WAS TOO LONG?"
         N1GM0294 = "HOW WELL SATISFIED WERE YOU WITH THI ..."
         N1GM0295 = "DOES YOUR DENTIST OR DENTAL CLINIC C ..."
         N1GM0296 = "DURING THE PAST 12 MONTHS HAVE YOU H ..."
         N1GM0297 = "DIDN'T HAVE TIME "
         N1GM0298 = "WOULD COST TOO MUCH?"
         N1GM0299 = "COULDN'T GET AN APPOINTMENT?"
         N1GM0300 = "WOULD HAVE TO TRAVEL TOO FAR?"
         N1GM0301 = "DIDN'T HAVE A WAY TO GET THERE?"
         N1GM0302 = "DIDN'T HAVE ANYONE TO CARE FOR CHILD ..."
         N1GM0303 = "SOME OTHER REASON"
         N1GM0304 = "WHEN WAS THE LAST TIME YOU STAYED IN ..."
         N1GM0305 = "WAS THIS STAY IN THE HOSPITAL ON ACC ..."
         N1GM0306 = "WHAT WAS THE MAIN REASON YOU WENT IN ..."
         N1GM0307 = "HOW LONG WAS IT FROM THE TIME IT WAS ..."
         N1GM0308 = "WHAT PART OF THE DOCTOR'S BILL DID Y ..."
         N1GM0309 = "DID YOU GET ANY OF THIS MONEY BACK F ..."
         N1GM0310 = "WHAT PART OF THE DOCTOR'S BILL DID Y ..."
         N1GM0311 = "DID YOU GET ANY OF THIS MONEY BACK F ..."
         N1GM0312 = "WHEN YOU SEE A DOCTOR AT HIS OFFICE  ..."
         N1GM0313 = "DID YOU GET ANY OF THIS MONEY BACK F ..."
         N1GM0314 = "WHEN EVER YOU SEE A DENTIST AT EITHE ..."
         N1GM0315 = "DO YOU GET ANY OF THIS MONEY BACK FR ..."
         N1GM0316 = "WHAT PART OF THE COST OF DRUGS AND M ..."
         N1GM0317 = "DO YOU GET ANY OF THIS MONEY BACK FR ..."
         N1GM0318 = "MEDICARE (FOR ELDERLY)?"
         N1GM0319 = "PRIVATE MEDICAL INSURANCE?"
         N1GM0320 = "INSURANCE THROUGH YOU PLACE OF WORK?"
         N1GM0321 = "MEDICAID (FOR ALL AGES)?"
         N1GM0322 = "RETIRED MILITARY PRIVILEGES?"
         N1GM0323 = "VETERAN'S MEDICAL CARE?"
         N1GM0324 = "SOME OTHER GOVERNMENT ASSISTANCE PRO ..."
         N1GM0325 = "SOME OTHER WAY?"
         N1GM0326 = "MEDICARE (FOR ELDERLY)?"
         N1GM0327 = "PRIVATE MEDICAL INSURANCE?"
         N1GM0328 = "INSURANCE THROUGH YOU PLACE OF WORK?"
         N1GM0329 = "MEDICAID (FOR ALL AGES)"
         N1GM0330 = "RETIRED MILITARY PRIVILEGES?"
         N1GM0331 = "VETERAN'S MEDICAL CARE?"
         N1GM0332 = "SOME OTHER GOVERNMENT ASSISTANCE PRO ..."
         N1GM0333 = "SOME OTHER WAY?"
         N1GM0334 = "WORK AREA"
         N1GM0340 = "WOULD YOU SAY YOUR HEALTH IN GENERAL ..."
         N1GM0341 = "DO YOU HAVE ANY HEALTH PROBLEMS NOW  ..."
         N1GM0342 = "WHAT ARE THE PROBLEMS? TROUBLE WITH  ..."
         N1GM0343 = "TROUBLE WITH EYES--SEEING, OTHER"
         N1GM0344 = "NEURALGIA, TREMORS, LACK OF COORDINATION"
         N1GM0345 = "HEADACHES"
         N1GM0346 = "NERVOUSNESS, TENSION, NOT SLEEPING WELL"
         N1GM0347 = "SKIN CONDITION"
         N1GM0348 = "HAY FEVER, ALLERGY (NOT LIMITED TO S ..."
         N1GM0349 = "POSSIBLE GOITER OR THYROID CONDITION"
         N1GM0350 = "POSSIBLE DIABETES"
         N1GM0351 = "TROUBLE WITH JOINTS, PAIN, ACHING, S ..."
         N1GM0352 = "POSSIBLE HEART OR CIRCULATORY TROUBL ..."
         N1GM0353 = "COUGH, COLD SINUSITIS, UPPER REPARAT ..."
         N1GM0354 = "GASTROINTESTINAL TROUBLES, STOMACH T ..."
         N1GM0355 = "KIDNEY OR BLADDER TROUBLE, PAIN WHEN ..."
         N1GM0356 = "OTHER"
         N1GM0357 = "HAVE YOU HAD COLD, FLU OR 'THE VIRUS ..."
         N1GM0358 = "DO YOU STILL HAVE IT?"
         N1GM0359 = "IN THE PAST 5 YEARS, HAVE YOU HAD AN ..."
         N1GM0360 = "WHICH BONE? HIP"
         N1GM0361 = "WRIST"
         N1GM0362 = "SPINE"
         N1GM0363 = "OTHER"
         N1GM0364 = "IN THE PAST 5 YEARS, HAVE YOU HAD A  ..."
         N1GM0365 = "IN THE PAST YEAR HAVE YOU STAYED IN  ..."
         N1GM0366 = "FOR WHAT CONDITION? FIRST CONDITION"
         N1GM0368 = "SECOND CONDITION"
         N1GM0370 = "THIRD CONDITION"
         N1GM0372 = "FIRST CONDITION"
         N1GM0374 = "SECOND CONDITION"
         N1GM0376 = "THIRD CONDITION"
         N1GM0378 = "HAVE YOU SMOKED AT LEAST 100 CIGARET ..."
         N1GM0379 = "DO YOU SMOKE CIGARETTES NOW?"
         N1GM0380 = "ON THE AVERAGE, ABOUT HOW MANY A DAY ..."
         N1GM0382 = "HOW LONG HAS IT BEEN SINCE YOU SMOKE ..."
         N1GM0384 = "ON THE AVERAGE, ABOUT HOW MANY CIGAR ..."
         N1GM0386 = "DURING THE PERIOD WHEN YOU WERE SMOK ..."
         N1GM0388 = "ABOUT HOW OLD WERE YOU WHEN YOU FIRS ..."
         N1GM0390 = "HAVE YOU SMOKED AT LEAST 50 CIGARS D ..."
         N1GM0391 = "DO YOU SMOKE CIGARS NOW?"
         N1GM0392 = "BOUT HOW MANY CIGARS A DAY DO YOU SMOKE?"
         N1GM0394 = "ABOUT HOW LONG HAS IT BEEN SINCE YOU ..."
         N1GM0396 = "TWELVE MONTHS AGO, ABOUT HOW MANY CI ..."
         N1GM0398 = "HAVE YOU SMOKED AT LEAST 3 PACKAGES  ..."
         N1GM0399 = "DO YOU SMOKE PIPE NOW?"
         N1GM0400 = "ABOUT HOW MANY PIPEFULS OF TOBACCO A ..."
         N1GM0402 = "ABOUT HOW LONG HAS IT BEEN SINCE YOU ..."
         N1GM0404 = "TWELVE MONTHS AGO, ABOUT HOW MANY PI ..."
         N1GM0406 = "DO YOU PRESENTLY USE ANY OTHER FORM  ..."
         N1GM0407 = "SNUFF"
         N1GM0408 = "CHEWING TOBACCO"
         N1GM0409 = "OTHER"
         N1GM0410 = "HOW IMPORTANT DO YOU THINK IT IS FOR ..."
         N1GM0411 = "IS THERE ONE PARTICULAR DOCTOR OR PL ..."
         N1GM0412 = "WHERE DO YOU GO FOR THIS CARE OR ADVICE?"
         N1GM0413 = "HOW LONG HAS IT BEEN SINCE YOU LAST  ..."
         N1GM0415 = "BLANK "
         N1GM0417 = "DO YOU GET A CHECKUP FROM A DOCTOR A ..."
         N1GM0418 = "AT ANY TIME OVER THE PAST FEW YEARS, ..."
         N1GM0419 = "HOW OFTEN"
         N1GM0420 = "WHEN IT DOES OCCUR HOW MUCH DOES IT  ..."
         N1GM0421 = "HAVE YOU EVER HAD RUNNING EAR OR ANY ..."
         N1GM0422 = "HOW OFTEN HAVE YOU HAD THIS?"
         N1GM0423 = "DID YOU VISIT A DOCTOR BECAUSE OF TH ..."
         N1GM0424 = "DID A DOCTOR GIVE YOU ANYTHING FOR T ..."
         N1GM0425 = "HAVE YOU EVER HAD DEAFNESS OR TROUBL ..."
         N1GM0426 = "DID YOU EVER SEE A DOCTOR ABOUT IT?"
         N1GM0427 = "HOW OLD WERE YOU WHEN YOU FIRST BEGA ..."
         N1GM0428 = "SINCE THIS TROUBLE BEGAN HAS IT"
         N1GM0429 = "EAR INFECTION?"
         N1GM0430 = "BORN WITH  IT?"
         N1GM0431 = "LOUD NOISE?"
         N1GM0432 = "EAR SURGERY?"
         N1GM0433 = "EAR INJURY?"
         N1GM0434 = "OTHER "
         N1GM0435 = "HOW WOULD YOU RATE YOUR HEARING IN Y ..."
         N1GM0436 = "HOW WOULD YOU RATE YOUR HEARING IN Y ..."
         N1GM0437 = "HAVE YOU EVER ATTENDED A  SCHOOL OR  ..."
         N1GM0438 = "HAVE YOU EVER HAD ANY TRAINING IN LI ..."
         N1GM0439 = "HAVE YOU EVER HAD ANY TRAINING IN SP ..."
         N1GM0440 = "HAVE YOU EVER HAD ANY TRAINING IN HO ..."
         N1GM0441 = "HAVE YOU EVER HAD AN OPERATION ON YO ..."
         N1GM0442 = "HAVE YOU EVER HAD YOUR HEARING TESTED?"
         N1GM0443 = "HOW OLD WERE YOU WHEN YOUR HEARING W ..."
         N1GM0444 = "HOW OFTEN DO YOU HAVE YOU HEARING TE ..."
         N1GM0445 = "HAVE YOU EVER USED A HEARING AID?"
         N1GM0446 = "WHICH EAR?"
         N1GM0447 = "WITH A HEARING AID, IS YOUR HEARING  ..."
         N1GM0448 = "DO YOU USE A HEARING AID NOW?"
         N1GM0449 = "HOW WELL SATISFIED ARE YOU WITH YOUR ..."
         N1GM0450 = "HEAR AND UNDERSTAND WHAT A PERSON SA ..."
         N1GM0451 = "HEAR AND UNDERSTAND WHAT A PERSON SA ..."
         N1GM0452 = "HEAR AND UNDERSTAND WHAT A PERSON SA ..."
         N1GM0453 = "HEAR AND UNDERSTAND A PERSON IF THAT ..."
         N1GM0454 = "TELL THE SOUND OF SPEECH FROM OTHER  ..."
         N1GM0455 = "TELL ONE KIND OF NOISE FROM ANOTHER?"
         N1GM0456 = "HEAR LOUD NOISES?"
         N1GM0457 = "PAIN OR ACHING IN ANY OF JOINTS ON M ..."
         N1GM0458 = "PAIN IN OR AROUND EITHER HIP JOINT O ..."
         N1GM0459 = "PAIN IN OR AROUND EITHER HIP JOINT O ..."
         N1GM0460 = "PAIN IN OR AROUND EITHER HIP JOINT I ..."
         N1GM0461 = "PAIN IN OR AROUND THE KNEE INCLUDING ..."
         N1GM0462 = "SWELLING OF A JOINT WITH PAIN PRESEN ..."
         N1GM0463 = "STIFFNESS IN THE JOINTS AND MUSCLES  ..."
         N1GM0464 = "TROUBLE WITH RECURRING PERSISTENT CO ..."
         N1GM0465 = "A COUGH FIRST THING IN THE MORNING I ..."
         N1GM0466 = "A COUGH FIRST THING IN THE MORNING I ..."
         N1GM0467 = "ANY PHLEGM FROM YOUR CHEST FIRST THI ..."
         N1GM0468 = "ANY PHLEGM FROM YOUR CHEST THE FIRST ..."
         N1GM0469 = "DURING THE PAST THREE YEARS HAVE YOU ..."
         N1GM0470 = "IF YES TO ABOVE, HOW MANY TIMES?"
         N1GM0471 = "TROUBLE WITH SHORTNESS OF BREATH WHE ..."
         N1GM0472 = "WHEEZY OR WHISTLING SOUNDS IN YOUR C ..."
         N1GM0473 = "TROUBLE WITH ANY PAIN OR DISCOMFORT  ..."
         N1GM0474 = "TROUBLE WITH ANY PRESSURE OR HEAVY S ..."
         N1GM0475 = "SEVERE PAIN ACROSS THE FRONT OF YOUR ..."
         N1GM0476 = "PAINS IN EITHER LEG WHEN WALKING?"
         N1GM0477 = "HEART FAILURE OR 'WEAK HEART' OF ANY ..."
         N1GM0478 = "INFECTIONS OF THE KIDNEYS OR BLADDER?"
         N1GM0479 = "BLOOD IN YOURS URINE?"
         N1GM0480 = "PAIN OR BURNING SENSATION WHEN PASSI ..."
         N1GM0481 = "LOSS OF VISION OR BLINDNESS LASTING  ..."
         N1GM0482 = "DIFFICULTY IN SPEAKING OR VERY SLURR ..."
         N1GM0483 = "PROLONGED WEAKNESS OR PARALYSIS OF O ..."
         N1GM0484 = "LOSS OF SENSATION OR NUMBNESS OR TIN ..."
         N1GM0485 = "A SEVERE HEAD INJURY LEADING TO UNCO ..."
         N1GM0486 = "DO YOU HAVE ANY REASON TO THINK TO Y ..."
         N1GM0487 = "DID A DOCTOR TELL YOU THAT YOU HAD IT?"
         N1GM0488 = "HOW LONG AGO DID YOU START HAVING IT?"
         N1GM0489 = "DO YOU TAKE INSULIN?"
         N1GM0490 = "DO YOU TAKE ANY MEDICINE BY MOUTH FO ..."
         N1GM0491 = "HAVE YOU EVER HAD A GOITER OR ANY OT ..."
         N1GM0492 = "WHO TOLD YOU THAT YOU HAD GOITER OR  ..."
         N1GM0493 = "IS OR WAS YOUR THYROID"
         N1GM0494 = "HOW LONG AGO DID YOU FIRST HAVE THIS ..."
         N1GM0495 = "HAVE YOU BEEN TREATED BY A DOCTOR FO ..."
         N1GM0496 = "MEDICINES"
         N1GM0497 = "SURGERY"
         N1GM0498 = "RADIATION"
         N1GM0499 = "OTHER"
         N1GM0500 = "ARE YOU CURRENTLY BEING TREATED FOR  ..."
         N1GM0501 = "ARE YOU CURRENTLY TAKING ANY PILLS O ..."
         N1GM0502 = "WHEN WAS THE LAST TIME YOU SAW A DOC ..."
         N1GM0503 = "ACNE OR PIMPLES"
         N1GM0504 = "PSORIASIS"
         N1GM0505 = "MOLES OR BIRTHMARKS"
         N1GM0506 = "UNUSUAL LOSS OF HAIR"
         N1GM0507 = "ECZEMA"
         N1GM0508 = "WARTS"
         N1GM0509 = "HIVES"
         N1GM0510 = "ACNE OR PIMPLES"
         N1GM0511 = "PSORIASIS"
         N1GM0512 = "MOLES OR BIRTHMARKS"
         N1GM0513 = "UNUSUAL LOSS OF HAIR"
         N1GM0514 = "ECZEMA"
         N1GM0515 = "WARTS"
         N1GM0516 = "HIVES"
         N1GM0517 = "HAVE YOU LOST ALL YOUR TEETH  FROM Y ..."
         N1GM0518 = "DO YOU HAVE A PLATE FOR YOUR UPPER JAW?"
         N1GM0519 = "HOW LONG HAVE YOU HAD YOUR PLATE?"
         N1GM0520 = "HAVE YOU EVER HAD A DENTAL PLATE FOR ..."
         N1GM0521 = "HOW LONG HAS IT BEEN SINCE YOU HAD A ..."
         N1GM0522 = "HAVE YOU LOST ALL YOUR TEETH  FROM Y ..."
         N1GM0523 = "DO YOU HAVE A PLATE FOR YOUR LOWER JAW?"
         N1GM0524 = "HOW LONG HAVE YOU HAD YOU PLATE?"
         N1GM0525 = "HAVE YOU EVER HAD A DENTAL PLATE FOR ..."
         N1GM0526 = "HOW LONG HAD IT BEEN SINCE YOU HAD T ..."
         N1GM0527 = "DO YOU USUALLY WEAR YOUR PLATE(S) WH ..."
         N1GM0528 = "DO YOU USUALLY WEAR YOUR PLATE(S) WH ..."
         N1GM0529 = "DO YOU USUALLY USE DENTURE POWDER OR ..."
         N1GM0530 = "DO YOU THINK YOU NEED A NEW PLATE OR ..."
         N1GM0531 = "HOW WOULD YOU DESCRIBE THE CONDITION ..."
         N1GM0532 = "HOW WOULD YOU DESCRIBE THE CONDITION ..."
         N1GM0533 = "DO YOU THINK THAT YOUR TEETH NEED CL ..."
         N1GM0534 = "HOW MANY TIMES A DAY DO YOU USUALLY  ..."
         N1GM0535 = "DO YOU THINK THAT YOU OUGHT TO GO TO ..."
         N1GM0536 = "DO YOU NOW HAVE AN APPOINTMENT TO SE ..."
         N1GM0537 = "DO YOU THINK YOU HAVE ANY TEETH THAT ..."
         N1GM0538 = "DO YOU THINK YOU HAVE ANY TEETH THAT ..."
         N1GM0539 = "HOW MANY NEED TO BE PULLED?"
         N1GM0540 = "HAVE YOU EVER HAD YOUR TEETH CLEANED ..."
         N1GM0541 = "WHEN WAS THE LAST TIME THEY WERE CLE ..."
         N1GM0542 = "DO YOU HAVE A DENTIST YOU USUALLY GO TO?"
         N1GM0543 = "HOW LONG HAS IT BEEN SINCE YOU LAST  ..."
         N1GM0545 = "BLANK"
         N1GM0547 = "DO YOU GO TO A DENTIST AS OFTEN AS O ..."
         N1GM0548 = "HAVE YOU EVER BEEN TOLD BY A DOCTOR  ..."
         N1GM0549 = "HAVE YOU EVER BEEN TOLD BY A DOCTOR  ..."
         N1GM0550 = "ABOUT HOW LONG AGO WERE YOU FIRST TO ..."
         N1GM0552 = "BLANK"
         N1GM0554 = "DURING THE PAST 12 MONTHS ABOUT HOW  ..."
         N1GM0556 = "HAS A DOCTOR EVER ADVISED YOU TO LOS ..."
         N1GM0557 = "DO YOU NOW USE MORE SALT, LESS SALT  ..."
         N1GM0558 = "WERE YOU EVER ADVISED BY A DOCTOR, N ..."
         N1GM0559 = "HAS A DOCTOR EVER PRESCRIBED MEDICIN ..."
         N1GM0560 = "ARE YOU TAKING MEDICINE PRESCRIBED B ..."
         N1GM0561 = "HOW OFTEN ARE YOU SUPPOSED TO TAKE T ..."
         N1GM0562 = "HOW OFTEN DO YOU TAKE YOU MEDICINE W ..."
         N1GM0563 = "ABOUT HOW MANY DAYS DURING THE PAST  ..."
         N1GM0565 = "HOW OFTEN DOES YOUR HIGH BLOOD PRESS ..."
         N1GM0566 = "WHEN IT DOES BOTHER YOU, ARE YOU BOT ..."
         N1GM0567 = "DO YOU STILL HAVE HIGH BLOOD PRESSUR ..."
         N1GM0568 = "IS THIS CONDITION COMPLETELY"
         N1GM0569 = "CAN YOU TELL WHEN YOU BLOOD PRESSURE ..."
         N1GM0570 = "HAS YOUR DOCTOR EVER TALKED TO YOU A ..."
         N1GM0571 = "HAS A NURSE OR OTHER MEDICAL PERSON  ..."
         N1GM0572 = "WHAT TYPE OF MEDICAL PERSON WAS THIS?"
         N1GM0573 = "ABOUT HOW LONG HAS IT BEEN SINCE YOU ..."
         N1GM0575 = "BLANK"
         N1GM0577 = "WERE YOU TOLD THAT YOUR READING WAS?"
         N1GM0578 = "DURING THE PAST 12 MONTHS ABOUT HOW  ..."
         N1GM0580 = "ABOUT HOW LONG HAS IT BEEN SINCE YOU ..."
         N1GM0582 = "ABOUT HOW LONG HAS IT BEEN SINCE YOU ..."
         N1GM0584 = "ARE YOU BLIND IN ONE OR BOTH EYES?"
         N1GM0585 = "DO YOU HAVE ANY OF THE FOLLOWING CON ..."
         N1GM0586 = "GLAUCOMA"
         N1GM0587 = "DETACHED RETINA"
         N1GM0588 = "OTHER CONDITION OF RETINA"
         N1GM0589 = "DO YOU HAVE ANY OTHER TROUBLE SEEING ..."
         N1GM0590 = "DO YOU WEAR EYEGLASSES?"
         N1GM0591 = "DO YOU WEAR CONTACT LENSES?"
         N1GM0592 = "HOW OFTEN DO YOU USE YOUR GLASSES/CO ..."
         N1GM0593 = "DO YOU USE YOUR EYEGLASSES/CONTACT L ..."
         N1GM0594 = "DO YOU USE YOUR EYEGLASSES/CONTACT L ..."
         N1GM0595 = "HOW MUCH TROUBLE DO YOU HAVE SEEING  ..."
         N1GM0596 = "ARE YOU BLIND IN THE LEFT EYE?"
         N1GM0597 = "HOW MUCH TROUBLE DO YOU HAVE SEEING  ..."
         N1GM0598 = "ARE YOU BLIND IN THE RIGHT EYE?"
         N1GM0599 = "IN TERMS OF TOTAL VISION, HOW MUCH T ..."
         N1GM0600 = "ARE YOU BLIND?"
         N1GM0601 = "ABOUT HOW LONG HAVE YOU HAD TROUBLE  ..."
         N1GM0603 = "BLANK"
         N1GM0605 = "BLANK"
         N1GM0606 = "HAS IT BEEN"
         N1GM0607 = "WHEN WEARING EYE GLASSES/CONTACT LEN ..."
         N1GM0608 = "WHEN WEARING EYE GLASSES/CONTACT LEN ..."
         N1GM0609 = "WHEN WEARING EYE GLASSES/CONTACT LEN ..."
         N1GM0610 = "WHEN WEARING EYE GLASSES/CONTACT LEN ..."
         N1GM0611 = "DO YOU HAVE ANY PROBLEMS SEEING DIST ..."
         N1GM0612 = "DO YOU READ NEWSPAPERS, MAGAZINES OR ..."
         N1GM0613 = "WHEN WEARING EYEGLASSES/CONTACT LENS ..."
         N1GM0614 = "IS IT BECAUSE YOU HAVE TROUBLE SEEING?"
         N1GM0615 = "WHEN WEARING EYEGLASSES/CONTACT LENS ..."
         N1GM0616 = "WHEN WEARING EYEGLASSES/CONTACT LENS ..."
         N1GM0617 = "IN ORDER TO READ/RECOGNIZE ORDINARY  ..."
         N1GM0618 = "CAN YOU SEE WELL ENOUGH TO READ OR R ..."
         N1GM0619 = "DO YOU HAVE ANY PROBLEMS SEEING ORDI ..."
         N1GM0620 = "WHEN YOU ARE WEARING EYEGLASSES/CONT ..."
         N1GM0621 = "IF YOU ARE IN A ROOM, CAN YOU SEE WE ..."
         N1GM0622 = "CAN YOU SEE WELL ENOUGH TO TELL WHER ..."
         N1GM0623 = "WORK AREA"
         N1GM0625 = "WAS YOUR PROBLEM THAT OF PERSISTENT  ..."
         N1GM0626 = "HOW LONG HAVE YOU HAD THIS CONDITION?"
         N1GM0627 = "HAVE YOU BEEN BOTHERED BY THIS WITHI ..."
         N1GM0628 = "WHEN HAVE THIS TROUBLE DO YOU ALSO H ..."
         N1GM0629 = "WHERE? UPPER BACK"
         N1GM0630 = "LOWER BACK"
         N1GM0631 = "UPPER CHEST?"
         N1GM0632 = "ALONG THE RIB EDGE?"
         N1GM0633 = "ON THE SIDES?"
         N1GM0634 = "DO YOU BRING UP PHLEGM WITH THE COUGH?"
         N1GM0635 = "DO YOU COUGH PERSISTENTLY LIKE THIS  ..."
         N1GM0636 = "DO ANY MEDICINES YOU TAKE HELP RELIE ..."
         N1GM0637 = "WHAT TIME OF YEAR DO THESE COUGHING  ..."
         N1GM0638 = "HAVE YOU HAD TROUBLE WITH COUGHING S ..."
         N1GM0639 = "HOW LONG HAVE YOU HAD THIS PARTICULA ..."
         N1GM0640 = "DO YOU HAVE CHEST PAINS WHEN YOU HAV ..."
         N1GM0641 = "WHERE? UPPER BACK"
         N1GM0642 = "LOWER BACK"
         N1GM0643 = "UPPER CHEST?"
         N1GM0644 = "ALONG THE RIB EDGE?"
         N1GM0645 = "ON THE SIDES?"
         N1GM0646 = "WHAT TIME OF YEAR ARE THESE MORNING  ..."
         N1GM0647 = "DO YOU HAVE A MORNING COUGH LIKE THI ..."
         N1GM0648 = "DO YOU USUALLY HAVE A PERSISTENT COU ..."
         N1GM0649 = "DO YOU USUALLY HAVE A PERSISTENT COU ..."
         N1GM0650 = "DO YOU USUALLY BRING UP ANY PHLEGM F ..."
         N1GM0651 = "HOW LONG HAVE YOU HAD THIS CONDITION?"
         N1GM0652 = "WHAT COLOR IS THE PHLEGM? GREEN"
         N1GM0653 = "YELLOW"
         N1GM0654 = "CLEAR"
         N1GM0655 = "BLOOD STREAKED"
         N1GM0656 = "DO YOU ALSO BRING UP ANY PHLEGM FROM ..."
         N1GM0657 = "DO YOU ALSO BRING UP ANY PHLEGM FROM ..."
         N1GM0658 = "WHAT TIME OF YEAR DO YOU SEEM TO BRI ..."
         N1GM0659 = "IF YOU BROUGHT UP PHLEGM, DO YOU BRI ..."
         N1GM0660 = "HAVE YOU HAD SHORTNESS OF BREATH EIT ..."
         N1GM0661 = "HAVE YOU DAD THIS PROBLEM MOST DAYS  ..."
         N1GM0662 = "DO YOU GET SHORT OF BREATH WHEN WALK ..."
         N1GM0663 = "DO YOU HAVE TO STOP FOR BREATH WHEN  ..."
         N1GM0664 = "DO YOU HAVE TO STOP FOR BREATH AFTER ..."
         N1GM0665 = "HOW LONG AGO DID YOU FIRST HAVE THIS ..."
         N1GM0666 = "HAVE YOU GOTTEN CHEST PAINS ALONG WI ..."
         N1GM0667 = "WHERE WERE CHEST PAINS? UPPER CHEST"
         N1GM0668 = "UPPER CHEST?"
         N1GM0669 = "LOWER BACK"
         N1GM0670 = "ALONG THE RIB EDGE?"
         N1GM0671 = "ON THE SIDES?"
         N1GM0672 = "DO YOU DEVELOP WHEEZING AS WELL AS S ..."
         N1GM0673 = "HAVE YOU EVER FELT LIKE YOU WERE GOI ..."
         N1GM0674 = "HAS CHEST EVER SOUNDED WHEEZY OR WHI ..."
         N1GM0675 = "HOW LONG HAVE YOU HAD THIS CONDITION?"
         N1GM0676 = "DO YOU GET THIS WHEEZING OR WHISTLIN ..."
         N1GM0677 = "DO YOU GET THIS OCCASIONALLY APART F ..."
         N1GM0678 = "DOES THIS USUALLY OCCUR DAILY?"
         N1GM0679 = "WHAT TIME OR YEAR DOES IT SEEM WORST?"
         N1GM0680 = "IS THIS WHEEZINESS PRESENT ON MOST D ..."
         N1GM0681 = "DO YOU TAKE ANY MEDICINE BY MOUTH FO ..."
         N1GM0682 = "DO THEY HELP RELIEVE THE WHEEZING?"
         N1GM0683 = "HAVE YOU HAD OR DO YOU NOW HAVE ASTHMA?"
         N1GM0684 = "WHAT IS IT RELATED TO OR DUE TO? DUST"
         N1GM0685 = "FOODS"
         N1GM0686 = "ANIMAL CONTACTS"
         N1GM0687 = "DRUGS"
         N1GM0688 = "POLLENS"
         N1GM0689 = "MOLDS"
         N1GM0690 = "OTHER"
         N1GM0691 = "DON'T KNOW"
         N1GM0692 = "HOW LONG HAVE YOU HAD THIS CONDITION?"
         N1GM0693 = "SINCE YOU WERE A CHILD?"
         N1GM0694 = "DO YOU HAVE ASTHMA SYMPTOMS ON MOST  ..."
         N1GM0695 = "WHAT TIME OF YEAR IS IT WORST? SPRING"
         N1GM0696 = "SUMMER"
         N1GM0697 = "FALL"
         N1GM0698 = "WINTER"
         N1GM0699 = "DO YOU TAKE ANY MEDICINES FOR IT?"
         N1GM0700 = "HAVE YOU HAD OR DO YOU NOW HAVE HAY  ..."
         N1GM0701 = "WHAT IS IT RELATED TO OR DUE TO? DUST"
         N1GM0702 = "FOODS"
         N1GM0703 = "ANIMAL CONTACTS"
         N1GM0704 = "DRUGS"
         N1GM0705 = "POLLENS"
         N1GM0706 = "MOLDS"
         N1GM0707 = "AIR CONDITIONERS"
         N1GM0708 = "OTHER"
         N1GM0709 = "DON'T KNOW"
         N1GM0710 = "HOW LONG HAVE HAD THIS CONDITION?"
         N1GM0711 = "SINCE YOU WERE A CHILD?"
         N1GM0712 = "DO YOU HAVE HAY FEVER SYMPTOMS ON MO ..."
         N1GM0713 = "WHAT TIME OF YEAR IS IT WORST? SPRING"
         N1GM0714 = "SUMMER"
         N1GM0715 = "FALL"
         N1GM0716 = "WINTER"
         N1GM0717 = "DO YOU TAKE ANY MEDICINE FOR IT?"
         N1GM0718 = "HAVE YOU EVER BEEN TESTED FOR TB?"
         N1GM0719 = "HAVE YOU EVER BEEN TESTED? A SKIN TEST"
         N1GM0720 = "CHEST X-RAY"
         N1GM0721 = "SPUTUM EXAMINATION"
         N1GM0722 = "DON'T KNOW"
         N1GM0723 = "HOW OFTEN ARE YOU TESTED?"
         N1GM0724 = "HOW LONG AGO WERE YOU LAST TESTED?"
         N1GM0725 = "HAVE YOU SEEN A DOCTOR OR ANYONE ELS ..."
         N1GM0726 = "WHAT TYPE OF DOCTOR IS HE?"
         N1GM0727 = "WHO INITIALLY REFERRED YOU TO THIS D ..."
         N1GM0728 = "HOW LONG AFTER YOU FIRST DEVELOPED T ..."
         N1GM0729 = "WHAT DID HE SAY THE CONDITION OR CON ..."
         N1GM0730 = "ACUTE BRONCHITIS"
         N1GM0731 = "INFLUENZA"
         N1GM0732 = "PNEUMONIA"
         N1GM0733 = "CHRONIC BRONCHITIS (NON-ALLERGIC)"
         N1GM0734 = "EMPHYSEMA"
         N1GM0735 = "ASTHMA"
         N1GM0736 = "HYPERTROPHY OF TONSILS AND ADENOIDS  ..."
         N1GM0737 = "CHRONIC PHARYNGITIS/NASOHARYNGITIS/L ..."
         N1GM0738 = "HAY FEVER (WITHOUT ASTHMA)"
         N1GM0739 = "OTHER DISEASES OF THE UPPER RESPIRAT ..."
         N1GM0743 = "WHEN YOU SEE THE DOCTOR ABOUT YOUR C ..."
         N1GM0744 = "DOES HE PRESCRIBE THE MEDICINE FOR T ..."
         N1GM0745 = "HOW IS THE MED+A558ICINE TAKEN? SWAL ..."
         N1GM0746 = "BREATHED"
         N1GM0747 = "INJECTED"
         N1GM0748 = "OTHER"
         N1GM0749 = "HAS HE TOLD YOU TO DO ANY OF THESE O ..."
         N1GM0750 = "USE BREATHING MACHINE"
         N1GM0751 = "STOP SMOKING"
         N1GM0752 = "DECREASE SMOKING"
         N1GM0753 = "REGULAR CHECKUP"
         N1GM0754 = "LOTS OF REST"
         N1GM0755 = "DECREASE ACTIVITY"
         N1GM0756 = "OTHER"
         N1GM0757 = "WHEN WAS THE LAST TIME YOU SAW HIM?"
         N1GM0758 = "WHERE DO YOU USUALLY SEE HIM?"
         N1GM0759 = "HOW LONG WILL IT BE UNTIL YOUR NEXT  ..."
         N1GM0760 = "WITHIN THE PAST 12 MONTHS, HAS YOUR  ..."
         N1GM0761 = "HAVE YOU EVER BEEN DISABLED BECAUSE  ..."
         N1GM0762 = "HAVE YOU EVER STAYED OVERNIGHT IN A  ..."
         N1GM0763 = "WHAT WAS YOUR JOB STATUS ONE MONTH B ..."
         N1GM0764 = "AS A RESULT OF YOUR CHEST OR LUNG CO ..."
         N1GM0765 = "WHAT IS IT NOW?"
         N1GM0766 = "HOW MANY WORK DAYS WOULD YOU ESTIMAT ..."
         N1GM0767 = "DATA USER WORK AREA"
         N1GM0825 = "WAS THE PROBLEM THAT OF CHEST PAINS, ..."
         N1GM0826 = "HEAVINESS"
         N1GM0827 = "BURNING SENSATION"
         N1GM0828 = "TIGHTNESS"
         N1GM0829 = "STABBING PAIN"
         N1GM0830 = "PRESSURE"
         N1GM0831 = "SHARP PAIN"
         N1GM0832 = "SHOOTING PAINS"
         N1GM0833 = "HAVE YOU HAD IT MORE THAN THREE TIMES?"
         N1GM0834 = "HAVE YOU BEEN BOTHERED BY THIS WITHI ..."
         N1GM0835 = "HOW OLD WERE YOU WHEN YOU FIRST HAD IT?"
         N1GM0836 = "DO YOU GET IT IF YOU WALK AT AN ORDI ..."
         N1GM0837 = "DO YOU GET IT IF WALK UP HILL OR HURRY?"
         N1GM0838 = "WHAT DO YOU DO IF YOU GET IT WHILE W ..."
         N1GM0839 = "SLOW DOWN"
         N1GM0840 = "CONTINUE AT SAME PACE"
         N1GM0841 = "TAKE MEDICINE"
         N1GM0842 = "IF YOU DO STOP OR SLOW DOWN, IS IT R ..."
         N1GM0843 = "HOW SOON"
         N1GM0844 = "WHEN YOU GET PAIN OR DISCOMFORT, WHE ..."
         N1GM0845 = "LOWER MIDDLE CHEST"
         N1GM0846 = "LEFT SIDE OF CHEST"
         N1GM0847 = "LEFT ARM"
         N1GM0848 = "RIGHT SIDE OF CHEST"
         N1GM0849 = "OTHER"
         N1GM0850 = "DO ANY OF THESE THINGS TEND TO BRING ..."
         N1GM0851 = "STOOPING OVER"
         N1GM0852 = "EATING HEAVY MEAL"
         N1GM0853 = "COUGHING SPELLS"
         N1GM0854 = "COLD WIND"
         N1GM0855 = "EXERTION"
         N1GM0856 = "HAVE YOU EVER HAD SEVERE PAIN ACROSS ..."
         N1GM0857 = "HOW MANY OF THESE ATTACKS HAVE YOU HAD?"
         N1GM0858 = "WHAT WAS THE DATE OF YOUR LAST ATTAC ..."
         N1GM0860 = "YEAR"
         N1GM0862 = "WHAT WAS THE DURATION OF THE PAIN DU ..."
         N1GM0863 = "DID YOU SEE A DOCTOR ABOUT THIS LAST ..."
         N1GM0864 = "WHAT DID HE SAY WAS? RHEUMATIC FEVER"
         N1GM0865 = "CHRONIC RHEUMATIC HEART DISEASE"
         N1GM0866 = "HYPERTENSION"
         N1GM0867 = "ISCHEMIC HEART DISEASE"
         N1GM0868 = "OTHER FORMS OF HEART DISEASE"
         N1GM0869 = "CEREBROVASCULAR DISEASE"
         N1GM0870 = "ARTERIOSCLEROSIS"
         N1GM0871 = "OTHER DISEASES OF THE CIRCULATING SYSTEM"
         N1GM0872 = "DO YOU GET PAIN OR DISCOMFORT IN EIT ..."
         N1GM0873 = "DO YOU ALSO GET THIS PAIN IN YOUR LE ..."
         N1GM0874 = "IN WHAT PARTS OF YOUR LEG DO YOU FEE ..."
         N1GM0875 = "DO YOU GET THE PAIN IN YOUR LEGS WHI ..."
         N1GM0876 = "DO  YOU GET IT WHEN YOU WALK UP A HI ..."
         N1GM0877 = "DO  YOU GET IT WHEN YOU WALK AT AN O ..."
         N1GM0878 = "DOES THE PAIN IN YOUR LEGS COME ON A ..."
         N1GM0879 = "DOES THE PAIN DISAPPEAR WHILE YOU AR ..."
         N1GM0880 = "WHAT DO YOU DO WHEN YOU GET IT WHILE ..."
         N1GM0881 = "SLOW DOWN"
         N1GM0882 = "CONTINUE AT SAME PACE"
         N1GM0883 = "TAKE MEDICINE"
         N1GM0884 = "IF YOU DO STOP,  IS IT RELIVED OR NOT?"
         N1GM0885 = "HOW SOON AFTER STOPPING?"
         N1GM0886 = "IS THE PAIN MORE LIKELY TO OCCUR WHE ..."
         N1GM0887 = "HAVE YOU SEEN A DOCTOR ABOUT CHEST P ..."
         N1GM0888 = "WHAT TYPE OF DOCTOR IS HE?"
         N1GM0889 = "WHO INITIALLY REFERRED YOU TO THIS D ..."
         N1GM0890 = "HE'S THE REGULAR DOCTOR"
         N1GM0891 = "ANOTHER DOCTOR"
         N1GM0892 = "FAMILY"
         N1GM0893 = "CLINIC"
         N1GM0894 = "HEALTH NURSE"
         N1GM0895 = "OTHER"
         N1GM0896 = "HOW LONG AFTER THIS TROUBLE FIRST ST ..."
         N1GM0897 = "DID YOU HAVE A CARDIOGRAM AT THE FIR ..."
         N1GM0898 = "DID YOU HAVE ONE AT A LATER VISIT?"
         N1GM0899 = "HOW LONG WAS T FROM THE TIME OF THE  ..."
         N1GM0900 = "DID YOU HAVE A CHEST X-RAY AT THE FI ..."
         N1GM0901 = "DID YOU HAVE ONE AT A LATER VISIT?"
         N1GM0902 = "HOW LONG WAS IT FROM THE TIME OF FIR ..."
         N1GM0903 = "HAVE YOU HAD OTHER TESTS FOR THIS CO ..."
         N1GM0904 = "DID THE DOCTOR PRESCRIBE MEDICINES T ..."
         N1GM0905 = "HOW DO YOU TAKE THE MEDICINE? SWALLOWED"
         N1GM0906 = "UNDER THE TONGUE"
         N1GM0907 = "INJECTED"
         N1GM0908 = "OTHER"
         N1GM0909 = "HAS HE TOLD YOU TO DO ANY OF THESE O ..."
         N1GM0910 = "HAVE REGULAR CARDIOGRAMS"
         N1GM0911 = "DECREASE ACTIVITY"
         N1GM0912 = "INCREASE ACTIVITY"
         N1GM0913 = "REST"
         N1GM0914 = "DO EXERCISES"
         N1GM0915 = "STOP SMOKING"
         N1GM0916 = "OTHER "
         N1GM0917 = "WHEN WAS THE LAST TIME YOU SAW HIM?"
         N1GM0918 = "WHERE DO YOU USUALLY SEE HIM?"
         N1GM0919 = "HOW LONG WILL IT BE UNTIL YOUR NEXT  ..."
         N1GM0920 = "WOULD YOU SAY THAT TREATMENTS YOU HA ..."
         N1GM0921 = "WITHIN THE PAST 12 MONTHS, HAS YOUR  ..."
         N1GM0922 = "HAVE YOU EVER BEEN DISABLED BECAUSE  ..."
         N1GM0923 = "HAVE YOU EVER STAYED OVERNIGHT IN A  ..."
         N1GM0924 = "WHAT WAS YOUR JOB STATUS ONE MONTH B ..."
         N1GM0925 = "AS A RESULT OF YOUR CONDITION, HAS T ..."
         N1GM0926 = "WHAT IS IT NOW?"
         N1GM0927 = "HOW MANY WORK DAYS WOULD YOU ESTIMAT ..."
         N1GM0928 = "WORK AREA"
      ;
RUN;
