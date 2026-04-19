/*
 *  Survey:           NHANES I
 *  Years:            1971-1975
 *  Questionnaire:    Chest X-Ray, Pulmonary Diffusion, and Tuberculin Test Results
 *  Tape Number:      4251
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

VALUE XR0010F
     1='3,000,000 or more'
     2='1,000,000 to 2,999,999'
     3='250,000 to 999,999'
     4='under 250,000'
     5='Urban place 25,000 or more outside urbanized area'
     6='Urban place 10,000 to 24,999 outside urbanized area'
     7='Urban place 2,500 to 9,999 outside urbanized area'
     8='Rural'
     ;

VALUE XR0011F
     1='In SMSA, in central city'
     2='In SMSA, not in central city'
     3='Not in SMSA'
     ;

VALUE XR0012F
     1='Housing Unit'
     2='Other unit'
     ;

VALUE XR0013F
     1='All other'
     2='Rural  7136'
     ;

VALUE XR0014F
     1='10 or more acres'
     2='Less than 10 acres'
     9='Not applicable'
     ;

VALUE XR0015F
     2='Yes'
     4='No'
     9='Not applicable'
     ;

VALUE XR0016F
     3='Yes'
     5='No'
     9='Not applicable'
     ;

VALUE XR0017F
     00='Blank, but applicable'
     ;

VALUE XR0019F
     1='Male'
     2='Female'
     ;

VALUE XR0020F
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

VALUE XR0022F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE XR0027F
     9='9 or more'
     ;

VALUE XR0028F
     1='Yes'
     2='No'
     ;

VALUE XR0029F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE XR0030F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE XR0031F
     1='Yes'
     2='No'
     ;

VALUE XR0032F
     1='Yes'
     2='No'
     ;

VALUE XR0033F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE XR0034F
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

VALUE XR0036F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE XR0037F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE XR0041F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE XR0042F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE XR0046F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE XR0047F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE XR0051F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE XR0052F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE XR0056F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE XR0057F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE XR0061F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE XR0062F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE XR0066F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE XR0067F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE XR0071F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE XR0072F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE XR0076F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE XR0077F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE XR0081F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE XR0082F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE XR0086F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE XR0087F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE XR0091F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE XR0100F
     1='Head (1 person living along or with non-relatives)'
     2='Head (2 or more related persons in family)'
     3='Wife'
     4='Child'
     5='Other relative'
     ;

VALUE XR0103F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE XR0104F
     1='Male'
     2='Female'
     ;

VALUE XR0105F
     1='Under 17'
     2='Married'
     3='Widowed'
     4='Never Married'
     5='Divorced'
     6='Separated'
     8='Blank, but applicable'
     ;

VALUE XR0110F
     88='Blank, but applicable'
     ;

VALUE XR0112F
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

VALUE XR0114F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE XR0115F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE XR0116F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE XR0117F
     1='Nursery'
     2='Kindergarten'
     3='Other'
     4='Headstart'
     5='Daycare'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE XR0118F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     ;

VALUE XR0119F
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

VALUE XR0120F
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

VALUE XR0122F
     1='Working'
     2='Keeping house'
     3='Something else'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE XR0123F
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

VALUE XR0124F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE XR0125F
     1='Full-time'
     2='Part-time'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE XR0126F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE XR0127F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE XR0128F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE XR0129F
     1='Looking'
     2='Lay-off'
     3='Both'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE XR0130F
     1='Private paid'
     2='Government-Federal'
     3='Government-Other'
     4='Own'
     5='Non-paid'
     6='Never worked'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE XR0131F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE XR0146F
     1='Farm'
     2='Nonfarm'
     ;

VALUE XR0147F
     998='Index computed 998 or greater'
     999='Unknown'
     ;

VALUE XR0150F
     1='Northeast'
     2='Midwest'
     3='South'
     4='West'
     ;

VALUE XR0151F
     1='Not applicable'
     2='No program available'
     3='Food stamps available'
     4='Commodities available'
     8='Blank, but applicable'
     ;

VALUE XR0152F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE XR0153F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE XR0154F
     1='No need'
     2='Not enough money at the time'
     3='No transportation'
     4='Pride'
     5='Other'
     8='Blank, but applicable'
     ;

VALUE XR0155F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE XR0156F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE XR0157F
     1='No need'
     2='No transportation'
     3='Pride'
     4='Other'
     8='Blank, but applicable'
     ;

VALUE XR0205F
     8888='Blank, but applicable'
     ;

VALUE XR0210F
     88888='Blank, but applicable'
     ;

VALUE XR0215F
     8888='Blank, but applicable'
     ;

VALUE XR0219F
     8888='Blank, but applicable'
     ;

VALUE XR0223F
     8888='Blank, but applicable'
     ;

VALUE XR0227F
     888='Blank, but applicable'
     ;

VALUE XR0230F
     888='Blank, but applicable'
     ;

VALUE XR0233F
     88888='Blank, but applicable'
     ;

VALUE XR0238F
     8888='Blank, but applicable'
     ;

VALUE XR0242F
     8888='Blank, but applicable'
     ;

VALUE XR0246F
     8888='Blank, but applicable'
     ;

VALUE XR0250F
     8888='Blank, but applicable'
     ;

VALUE XR0254F
     8888='Blank, but applicable'
     ;

VALUE XR0258F
     1='Findings'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0259F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0260F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0261F
     1='Carinatum'
     2='Excavatum'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0262F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0263F
     1='Right rib cage'
     2='Left rib cage'
     3='Both rib cages'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0264F
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0266F
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0268F
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0270F
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0272F
     1='Healed'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0273F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0274F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0275F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0276F
     888='Blank but applicable'
     999='No findings'
     ;

VALUE XR0279F
     1='Right'
     2='Left'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0280F
     01='Upper Apical'
     02='Upper Posterior'
     03='Upper Anterior'
     04='Middle Superior or Middle lateral'
     05='Middle Inferior or Middle medial'
     06='Lower Superior'
     07='Lower Medial'
     08='Lower Anterior'
     09='Lower Lateral'
     10='Lower Posterior'
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0282F
     1='Right upper lobe'
     2='Right middle lobe'
     3='Right lower lobe'
     4='Left upper lobe'
     5='Left lower lobe'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0283F
     888='Blank, but applicable'
     999='No findings'
     ;

VALUE XR0286F
     1='Right'
     2='Left'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0287F
     01='Upper Apical'
     02='Upper Posterior'
     03='Upper Anterior'
     04='Middle Superior or Middle lateral'
     05='Middle Inferior or Middle edial'
     06='Lower Superior'
     07='Lower Medial'
     08='Lower Anterior'
     09='Lower Lateral'
     10='Lower Posterior'
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0289F
     1='Right upper lobe'
     2='Right middle lobe'
     3='Right lower lobe'
     4='Left upper lobe'
     5='Left lower lobe'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0290F
     1='One'
     2='Two or more'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0291F
     7='Greater than 6'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0292F
     1='Yes'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0293F
     1='Secondary to an infectious disease'
     2='Not secondary to an infectious disease'
     3='Combination of 1 and 2'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0294F
     1='Right'
     2='Left'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0295F
     01='Upper Apical'
     02='Upper Posterior'
     03='Upper Anterior'
     04='Middle Superior or Middle lateral'
     05='Middle Inferior or Middle medial'
     06='Lower Superior'
     07='Lower Medial'
     08='Lower Anterior'
     09='Lower Lateral'
     10='Lower Posterior'
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0297F
     1='Right upper lobe'
     2='Right middle lobe'
     3='Right lower lobe'
     4='Left upper lobe'
     5='Left lower lobe'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0298F
     1='Minimal'
     2='Moderate'
     3='Moderate with cavitation'
     4='Far advanced'
     5='Far advanced with cavitation'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0299F
     1='Minimal'
     2='Moderate and Moderate with cavitation'
     3='Far advanced and far advanced with cavitation'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0300F
     1='Granulomatous'
     2='Other diseases'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0301F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0302F
     1='Congestive heart failure'
     2='Pneumoconiosis'
     3='Sarcoidosis'
     4='Other'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0303F
     2='1/3 to 2/3'
     3='Greater than 2/3'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0304F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0305F
     1='Explicit presumptive diagnosis of emphysema Diaphragm flat on PA and lateral x-rays and presumptive evidence of emphysema'
     2='Explicit presumptive diagnosis of emphysema Diaphragm flat on PA x-ray and presumptive evidence of emphysema'
     3='Explicit presumptive diagnosis of emphysema Diaphragm flat on lateral x-ray and presumptive evidence of emphysema'
     4='Explicit presumptive diagnosis of emphysema Presumptive evidence of emphysema'
     5='Possible diagnosis of emphysema Diaphragm flat on PA and lateral x-rays'
     6='Possible diagnosis of emphysema Diaphragm flat on PA x-ray'
     7='Possible diagnosis of emphysema Diaphragm flat on lateral x-ray'
     8='Blank, but applicable'
     9='Findings'
     ;

VALUE XR0306F
     1='Secondary to generalized  emphysema'
     2='Secondary to post-inflammatory scaring'
     3='Secondary to both 1 and 2'
     4='Independent of both 1 and 2'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0307F
     01='Right hilar'
     02='Left hilar'
     03='Carinal'
     04='Paratracheal'
     05='Other'
     06='Right hilar, left hilar, or Other'
     07='Right hilar, paratracheal or Other'
     08='Carinal and paratracheal'
     09='Right hilar, left hilar,  carinal or paratracheal'
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0309F
     1='Right hilar'
     2='Left hilar'
     3='Carinal'
     4='Paratracheal'
     5='Other'
     6='Right and left hilar'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0310F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0311F
     1='Right'
     2='Left'
     3='Both'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0312F
     1='Fluid'
     2='Tissue'
     3='Both'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0313F
     1='Yes'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0314F
     01='Right proximal'
     02='Right distal'
     03='Right proximal/distal'
     04='Left proximal'
     05='Left distal'
     06='Left proximal/distal'
     07='Both proximal'
     08='Both distal'
     09='Both proximal/distal'
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0316F
     1='Atrium enlarged'
     2='Ventricle enlarged'
     3='Both enlarged'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0317F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0318F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0319F
     1='A lines'
     2='B lines'
     3='A and B lines'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0320F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0321F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0322F
     1='Atrium enlarged'
     2='Ventricle enlarged'
     3='Both enlarged'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0323F
     1='Findings'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0324F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0325F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0326F
     1='Carinatum'
     2='Excavatum'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0327F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0328F
     1='Right rib cage'
     2='Left rib cage'
     3='Both rib cages'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0329F
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0331F
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0333F
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0335F
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0337F
     1='Healed'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0338F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0339F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0340F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0341F
     888='Blank but applicable'
     999='No findings'
     ;

VALUE XR0344F
     1='Right'
     2='Left'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0345F
     01='Upper Apical'
     02='Upper Posterior'
     03='Upper Anterior'
     04='Middle Superior or Middle lateral'
     05='Middle Inferior or Middle medial'
     06='Lower Superior'
     07='Lower Medial'
     08='Lower Anterior'
     09='Lower Lateral'
     10='Lower Posterior'
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0348F
     888='Blank, but applicable'
     999='No findings'
     ;

VALUE XR0351F
     1='Right'
     2='Left'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0352F
     01='Upper Apical'
     02='Upper Posterior'
     03='Upper Anterior'
     04='Middle Superior or Middle lateral'
     05='Middle Inferior or Middle medial'
     06='Lower Superior'
     07='Lower Medial'
     08='Lower Anterior'
     09='Lower Lateral'
     10='Lower Posterior'
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0355F
     1='One'
     2='Two or more'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0356F
     7='Greater than 6'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0357F
     1='Yes'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0358F
     1='Secondary to an infectious  disease'
     2='Not secondary to an infectious disease'
     3='Combination of 1 and 2'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0359F
     1='Right'
     2='Left'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0360F
     01='Upper Apical'
     02='Upper Posterior'
     03='Upper Anterior'
     04='Middle Superior or Middle lateral'
     05='Middle Inferior or Middle medial'
     06='Lower Superior'
     07='Lower Medial'
     08='Lower Anterior'
     09='Lower Lateral'
     10='Lower Posterior'
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0363F
     1='Minimal'
     2='Moderate'
     3='Moderate with cavitation'
     4='Far advanced'
     5='Far advanced with cavitation'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0365F
     1='Granulomatous'
     2='Other diseases'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0366F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0367F
     1='Congestive heart failure'
     2='Pneumoconiosis'
     3='Sarcoidosis'
     4='Other'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0368F
     2='1/3 to 2/3'
     3='Greater than 2/3'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0369F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0370F
     1='Explicit presumptive diagnosis of emphysema Diaphragm flat on PA and  lateral x-rays and presumptive evidence of emphysema'
     2='Explicit presumptive diagnosis of emphysema Diaphragm flat on PA x-ray and presumptive evidence of emphysema'
     3='Explicit presumptive diagnosis of emphysema Diaphragm flat on lateral x-ray and presumptive evidence of emphysema'
     4='Explicit presumptive diagnosis of emphysema Presumptive evidence of emphysema'
     5='Possible diagnosis of emphysema Diaphragm flat on PA and lateral x-rays'
     6='Possible diagnosis of emphysema Diaphragm flat on PA x-ray'
     7='Possible diagnosis of emphysema Diaphragm flat on lateral x-ray'
     8='Blank, but applicable'
     9='Findings'
     ;

VALUE XR0371F
     1='Secondary to generalized  emphysema'
     2='Secondary to post-inflammatory scaring'
     3='Secondary to both 1 and 2'
     4='Independent of both 1 and 2'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0372F
     01='Right hilar'
     02='Left hilar'
     03='Carinal'
     04='Paratracheal'
     05='Other'
     06='Right hilar, left hilar, or Other'
     07='Right hilar, paratracheal or Other'
     08='Carinal and paratracheal'
     09='Right hilar, left hilar, carinal or paratracheal'
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0374F
     1='Right hilar'
     2='Left hilar'
     3='Carinal'
     4='Paratracheal'
     5='Other'
     6='Right and left hilar'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0375F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0376F
     1='Right'
     2='Left'
     3='Both'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0377F
     1='Fluid'
     2='Tissue'
     3='Both'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0378F
     1='Yes'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0379F
     01='Right proximal'
     02='Right distal'
     03='Right proximal/distal'
     04='Left proximal'
     05='Left distal'
     06='Left proximal/distal'
     07='Both proximal'
     08='Both distal'
     09='Both proximal/distal'
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0381F
     1='Atrium enlarged'
     2='Ventricle enlarged'
     3='Both enlarged'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0382F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0383F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0384F
     1='A lines'
     2='B lines'
     3='A and B lines'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0385F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0386F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0387F
     1='Atrium enlarged'
     2='Ventricle enlarged'
     3='Both enlarged'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0388F
     1='Findings'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0389F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0390F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0391F
     1='Carinatum'
     2='Excavatum'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0392F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0393F
     1='Right rib cage'
     2='Left rib cage'
     3='Both rib cages'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0394F
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0396F
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0398F
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0400F
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0402F
     1='Healed'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0403F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0404F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0405F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0406F
     888='Blank but applicable'
     999='No findings'
     ;

VALUE XR0409F
     1='Right'
     2='Left'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0410F
     01='Upper Apical'
     02='Upper Posterior'
     03='Upper Anterior'
     04='Middle Superior or Middle lateral'
     05='Middle Inferior or Middle medial'
     06='Lower Superior'
     07='Lower Medial'
     08='Lower Anterior'
     09='Lower Lateral'
     10='Lower Posterior'
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0412F
     1='Right upper lobe'
     2='Right middle lobe'
     3='Right lower lobe'
     4='Left upper lobe'
     5='Left lower lobe'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0413F
     888='Blank, but applicable'
     999='No findings'
     ;

VALUE XR0416F
     1='Right'
     2='Left'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0417F
     01='Upper Apical'
     02='Upper Posterior'
     03='Upper Anterior'
     04='Middle Superior or Middle lateral'
     05='Middle Inferior or Middle medial'
     06='Lower Superior'
     07='Lower Medial'
     08='Lower Anterior'
     09='Lower Lateral'
     10='Lower Posterior'
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0419F
     1='Right upper lobe'
     2='Right middle lobe'
     3='Right lower lobe'
     4='Left upper lobe'
     5='Left lower lobe'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0420F
     1='One'
     2='Two or more'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0421F
     7='Greater than 6'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0422F
     1='Yes'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0423F
     1='Secondary to an infectious disease'
     2='Not secondary to an infectious  disease'
     3='Combination of 1 and 2'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0424F
     1='Right'
     2='Left'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0425F
     01='Upper Apical'
     02='Upper Posterior'
     03='Upper Anterior'
     04='Middle Superior or Middle lateral'
     05='Middle Inferior or Middle medial'
     06='Lower Superior'
     07='Lower Medial'
     08='Lower Anterior'
     09='Lower Lateral'
     10='Lower Posterior'
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0427F
     1='Right upper lobe'
     2='Right middle lobe'
     3='Right lower lobe'
     4='Left upper lobe'
     5='Left lower lobe'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0428F
     1='Minimal'
     2='Moderate'
     3='Moderate with cavitation'
     4='Far advanced'
     5='Far advanced with cavitation'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0429F
     1='Minimal'
     2='Moderate and Moderate with cavitation'
     3='Far advanced and far advanced  with cavitation'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0430F
     1='Granulomatous'
     2='Other diseases'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0431F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0432F
     1='Congestive heart failure'
     2='Pneumoconiosis'
     3='Sarcoidosis'
     4='Other'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0433F
     2='1/3 to 2/3'
     3='Greater than 2/3'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0434F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0435F
     1='Explicit presumptive diagnosis of emphysema Diaphragm flat on PA and  lateral x-rays and presumptive evidence of emphysema'
     2='Explicit presumptive diagnosis of emphysema Diaphragm flat on PA x-ray and presumptive evidence of emphysema'
     3='Explicit presumptive diagnosis of emphysema Diaphragm flat on lateral x-ray and presumptive evidence of emphysema'
     4='Explicit presumptive diagnosis of emphysema Presumptive evidence of emphysema'
     5='Possible diagnosis of emphysema Diaphragm flat on PA and lateral x-rays'
     6='Possible diagnosis of emphysema Diaphragm flat on PA x-ray'
     7='Possible diagnosis of emphysema Diaphragm flat on lateral  x-ray'
     8='Blank, but applicable'
     9='No Findings'
     ;

VALUE XR0436F
     1='Secondary to generalized emphysema'
     2='Secondary to post-inflammatory scaring'
     3='Secondary to both 1 and 2'
     4='Independent of both 1 and 2'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0437F
     01='Right hilar'
     02='Left hilar'
     03='Carinal'
     04='Paratracheal'
     05='Other'
     06='Right hilar, left hilar, or  Other'
     07='Right hilar, paratracheal or Other'
     08='Carinal and paratracheal'
     09='Right hilar, left hilar, carinal or paratracheal'
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0439F
     1='Right hilar'
     2='Left hilar'
     3='Carinal'
     4='Paratracheal'
     5='Other'
     6='Right and left hilar'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0440F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0441F
     1='Right'
     2='Left'
     3='Both'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0442F
     1='Fluid'
     2='Tissue'
     3='Both'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0443F
     1='Yes'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0444F
     01='Right proximal'
     02='Right distal'
     03='Right proximal/distal'
     04='Left proximal'
     05='Left distal'
     06='Left proximal/distal'
     07='Both proximal'
     08='Both distal'
     09='Both proximal/distal'
     88='Blank, but applicable'
     99='No findings'
     ;

VALUE XR0446F
     1='Atrium enlarged'
     2='Ventricle enlarged'
     3='Both enlarged'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0447F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0448F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0449F
     1='A lines'
     2='B lines'
     3='A and B lines'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0450F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0451F
     1='Present'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0452F
     1='Atrium enlarged'
     2='Ventricle enlarged'
     3='Both enlarged'
     8='Blank, but applicable'
     9='No findings'
     ;

VALUE XR0501F
     000='Unacceptable trials'
     ;

VALUE XR0504F
     000='Unacceptable trials'
     ;

VALUE XR0507F
     000='Unacceptable trials'
     ;

VALUE XR0551F
     1='Volar forearm'
     2='Other'
     8='Blank, but applicable'
     ;

VALUE XR0552F
     88='Blank, but applicable'
     ;

VALUE XR0554F
     88='Blank, but applicable'
     ;

VALUE XR0556F
     1='Home'
     2='Work'
     3='Exam center'
     4='Other'
     8='Blank, but applicable'
     ;

VALUE XR0557F
     8='Blank, but applicable'
     ;

VALUE XR0558F
     1='Nurse'
     2='Health Examination Representative'
     3='Doctor outside of exam center'
     4='Exam center staff doctor'
     5='Examinee'
     6='Public Health Nurse'
     7='Coordinator'
     8='R.N. outside of exam center'
     9='Blank, but applicable'
     ;

VALUE XR0559F
     1='Test read'
     2='Test administered, not read'
     3='Test administered, read negative by examinee'
     8='Blank, but applicable'
     ;

VALUE XR0563F
     1='Both absent'
     2='S absent, B present'
     3='S present, B absent'
     4='S and B present with S induration 05-09 mm and -1   S-B   +1'
     5='S and B present with S induration 05-09 mm and S-B     -1'
     6='S and B present with S induration 05-09 mm and S-B     +1'
     7='S and B present with S induration 10-69 mm'
     8='S and B present with S induration 00-04 mm'
     ;
RUN;


DATA D_4251;
   INFILE 'c:\temp\DU4251.txt' LRECL = 2000 MISSOVER;
      LENGTH
         SEQN 8
         N1XR0006 8
         N1XR0010 4
         N1XR0011 4
         N1XR0012 4
         N1XR0013 4
         N1XR0014 4
         N1XR0015 4
         N1XR0016 4
         N1XR0017 4
         N1XR0019 4
         N1XR0020 4
         N1XR0022 4
         N1XR0023 4
         N1XR0025 4
         N1XR0027 4
         N1XR0028 4
         N1XR0029 4
         N1XR0030 4
         N1XR0031 4
         N1XR0032 4
         N1XR0033 4
         N1XR0034 4
         N1XR0036 4
         N1XR0037 8
         N1XR0041 4
         N1XR0042 8
         N1XR0046 4
         N1XR0047 8
         N1XR0051 4
         N1XR0052 8
         N1XR0056 4
         N1XR0057 8
         N1XR0061 4
         N1XR0062 8
         N1XR0066 4
         N1XR0067 8
         N1XR0071 4
         N1XR0072 8
         N1XR0076 4
         N1XR0077 8
         N1XR0081 4
         N1XR0082 8
         N1XR0086 4
         N1XR0087 8
         N1XR0091 8
         N1XR0095 8
         N1XR0100 4
         N1XR0101 4
         N1XR0103 4
         N1XR0104 4
         N1XR0105 4
         N1XR0106 8
         N1XR0110 4
         N1XR0112 4
         N1XR0114 4
         N1XR0115 4
         N1XR0116 4
         N1XR0117 4
         N1XR0118 4
         N1XR0119 4
         N1XR0120 4
         N1XR0122 4
         N1XR0123 4
         N1XR0124 4
         N1XR0125 4
         N1XR0126 4
         N1XR0127 4
         N1XR0128 4
         N1XR0129 4
         N1XR0130 4
         N1XR0131 4
         N1XR0132 4
         N1XR0135 4
         N1XR0138 8
         N1XR0144 4
         N1XR0146 4
         N1XR0147 4
         N1XR0150 4
         N1XR0151 4
         N1XR0152 4
         N1XR0153 4
         N1XR0154 4
         N1XR0155 4
         N1XR0156 4
         N1XR0157 4
         N1XR0158 8
         N1XR0164 $6
         N1XR0170 8
         N1XR0176 $6
         N1XR0182 8
         N1XR0188 8
         N1XR0194 4
         N1XR0196 4
         N1XR0199 $2
         N1XR0201 8
         N1XR0205 8
         N1XR0210 8
         N1XR0215 8
         N1XR0219 8
         N1XR0223 8
         N1XR0227 4
         N1XR0230 4
         N1XR0233 8
         N1XR0238 8
         N1XR0242 8
         N1XR0246 8
         N1XR0250 8
         N1XR0254 8
         N1XR0258 4
         N1XR0259 4
         N1XR0260 4
         N1XR0261 4
         N1XR0262 4
         N1XR0263 4
         N1XR0264 4
         N1XR0266 4
         N1XR0268 4
         N1XR0270 4
         N1XR0272 4
         N1XR0273 4
         N1XR0274 4
         N1XR0275 4
         N1XR0276 4
         N1XR0279 4
         N1XR0280 4
         N1XR0282 4
         N1XR0283 4
         N1XR0286 4
         N1XR0287 4
         N1XR0289 4
         N1XR0290 4
         N1XR0291 4
         N1XR0292 4
         N1XR0293 4
         N1XR0294 4
         N1XR0295 4
         N1XR0297 4
         N1XR0298 4
         N1XR0299 4
         N1XR0300 4
         N1XR0301 4
         N1XR0302 4
         N1XR0303 4
         N1XR0304 4
         N1XR0305 4
         N1XR0306 4
         N1XR0307 4
         N1XR0309 4
         N1XR0310 4
         N1XR0311 4
         N1XR0312 4
         N1XR0313 4
         N1XR0314 4
         N1XR0316 4
         N1XR0317 4
         N1XR0318 4
         N1XR0319 4
         N1XR0320 4
         N1XR0321 4
         N1XR0322 4
         N1XR0323 4
         N1XR0324 4
         N1XR0325 4
         N1XR0326 4
         N1XR0327 4
         N1XR0328 4
         N1XR0329 4
         N1XR0331 4
         N1XR0333 4
         N1XR0335 4
         N1XR0337 4
         N1XR0338 4
         N1XR0339 4
         N1XR0340 4
         N1XR0341 4
         N1XR0344 4
         N1XR0345 4
         N1XR0347 $1
         N1XR0348 4
         N1XR0351 4
         N1XR0352 4
         N1XR0354 $1
         N1XR0355 4
         N1XR0356 4
         N1XR0357 4
         N1XR0358 4
         N1XR0359 4
         N1XR0360 4
         N1XR0362 $1
         N1XR0363 4
         N1XR0364 $1
         N1XR0365 4
         N1XR0366 4
         N1XR0367 4
         N1XR0368 4
         N1XR0369 4
         N1XR0370 4
         N1XR0371 4
         N1XR0372 4
         N1XR0374 4
         N1XR0375 4
         N1XR0376 4
         N1XR0377 4
         N1XR0378 4
         N1XR0379 4
         N1XR0381 4
         N1XR0382 4
         N1XR0383 4
         N1XR0384 4
         N1XR0385 4
         N1XR0386 4
         N1XR0387 4
         N1XR0388 4
         N1XR0389 4
         N1XR0390 4
         N1XR0391 4
         N1XR0392 4
         N1XR0393 4
         N1XR0394 4
         N1XR0396 4
         N1XR0398 4
         N1XR0400 4
         N1XR0402 4
         N1XR0403 4
         N1XR0404 4
         N1XR0405 4
         N1XR0406 4
         N1XR0409 4
         N1XR0410 4
         N1XR0412 4
         N1XR0413 4
         N1XR0416 4
         N1XR0417 4
         N1XR0419 4
         N1XR0420 4
         N1XR0421 4
         N1XR0422 4
         N1XR0423 4
         N1XR0424 4
         N1XR0425 4
         N1XR0427 4
         N1XR0428 4
         N1XR0429 4
         N1XR0430 4
         N1XR0431 4
         N1XR0432 4
         N1XR0433 4
         N1XR0434 4
         N1XR0435 4
         N1XR0436 4
         N1XR0437 4
         N1XR0439 4
         N1XR0440 4
         N1XR0441 4
         N1XR0442 4
         N1XR0443 4
         N1XR0444 4
         N1XR0446 4
         N1XR0447 4
         N1XR0448 4
         N1XR0449 4
         N1XR0450 4
         N1XR0451 4
         N1XR0452 4
         N1XR0453 $48
         N1XR0501 4
         N1XR0504 4
         N1XR0507 4
         N1XR0510 4
         N1XR0513 $38
         N1XR0551 4
         N1XR0552 4
         N1XR0554 4
         N1XR0556 4
         N1XR0557 4
         N1XR0558 4
         N1XR0559 4
         N1XR0560 4
         N1XR0563 4
      ;



FORMAT
     N1XR0010 XR0010F.
     N1XR0011 XR0011F.
     N1XR0012 XR0012F.
     N1XR0013 XR0013F.
     N1XR0014 XR0014F.
     N1XR0015 XR0015F.
     N1XR0016 XR0016F.
     N1XR0017 XR0017F.
     N1XR0019 XR0019F.
     N1XR0020 XR0020F.
     N1XR0022 XR0022F.
     N1XR0027 XR0027F.
     N1XR0028 XR0028F.
     N1XR0029 XR0029F.
     N1XR0030 XR0030F.
     N1XR0031 XR0031F.
     N1XR0032 XR0032F.
     N1XR0033 XR0033F.
     N1XR0034 XR0034F.
     N1XR0036 XR0036F.
     N1XR0037 XR0037F.
     N1XR0041 XR0041F.
     N1XR0042 XR0042F.
     N1XR0046 XR0046F.
     N1XR0047 XR0047F.
     N1XR0051 XR0051F.
     N1XR0052 XR0052F.
     N1XR0056 XR0056F.
     N1XR0057 XR0057F.
     N1XR0061 XR0061F.
     N1XR0062 XR0062F.
     N1XR0066 XR0066F.
     N1XR0067 XR0067F.
     N1XR0071 XR0071F.
     N1XR0072 XR0072F.
     N1XR0076 XR0076F.
     N1XR0077 XR0077F.
     N1XR0081 XR0081F.
     N1XR0082 XR0082F.
     N1XR0086 XR0086F.
     N1XR0087 XR0087F.
     N1XR0091 XR0091F.
     N1XR0100 XR0100F.
     N1XR0103 XR0103F.
     N1XR0104 XR0104F.
     N1XR0105 XR0105F.
     N1XR0110 XR0110F.
     N1XR0112 XR0112F.
     N1XR0114 XR0114F.
     N1XR0115 XR0115F.
     N1XR0116 XR0116F.
     N1XR0117 XR0117F.
     N1XR0118 XR0118F.
     N1XR0119 XR0119F.
     N1XR0120 XR0120F.
     N1XR0122 XR0122F.
     N1XR0123 XR0123F.
     N1XR0124 XR0124F.
     N1XR0125 XR0125F.
     N1XR0126 XR0126F.
     N1XR0127 XR0127F.
     N1XR0128 XR0128F.
     N1XR0129 XR0129F.
     N1XR0130 XR0130F.
     N1XR0131 XR0131F.
     N1XR0146 XR0146F.
     N1XR0147 XR0147F.
     N1XR0150 XR0150F.
     N1XR0151 XR0151F.
     N1XR0152 XR0152F.
     N1XR0153 XR0153F.
     N1XR0154 XR0154F.
     N1XR0155 XR0155F.
     N1XR0156 XR0156F.
     N1XR0157 XR0157F.
     N1XR0205 XR0205F.
     N1XR0210 XR0210F.
     N1XR0215 XR0215F.
     N1XR0219 XR0219F.
     N1XR0223 XR0223F.
     N1XR0227 XR0227F.
     N1XR0230 XR0230F.
     N1XR0233 XR0233F.
     N1XR0238 XR0238F.
     N1XR0242 XR0242F.
     N1XR0246 XR0246F.
     N1XR0250 XR0250F.
     N1XR0254 XR0254F.
     N1XR0258 XR0258F.
     N1XR0259 XR0259F.
     N1XR0260 XR0260F.
     N1XR0261 XR0261F.
     N1XR0262 XR0262F.
     N1XR0263 XR0263F.
     N1XR0264 XR0264F.
     N1XR0266 XR0266F.
     N1XR0268 XR0268F.
     N1XR0270 XR0270F.
     N1XR0272 XR0272F.
     N1XR0273 XR0273F.
     N1XR0274 XR0274F.
     N1XR0275 XR0275F.
     N1XR0276 XR0276F.
     N1XR0279 XR0279F.
     N1XR0280 XR0280F.
     N1XR0282 XR0282F.
     N1XR0283 XR0283F.
     N1XR0286 XR0286F.
     N1XR0287 XR0287F.
     N1XR0289 XR0289F.
     N1XR0290 XR0290F.
     N1XR0291 XR0291F.
     N1XR0292 XR0292F.
     N1XR0293 XR0293F.
     N1XR0294 XR0294F.
     N1XR0295 XR0295F.
     N1XR0297 XR0297F.
     N1XR0298 XR0298F.
     N1XR0299 XR0299F.
     N1XR0300 XR0300F.
     N1XR0301 XR0301F.
     N1XR0302 XR0302F.
     N1XR0303 XR0303F.
     N1XR0304 XR0304F.
     N1XR0305 XR0305F.
     N1XR0306 XR0306F.
     N1XR0307 XR0307F.
     N1XR0309 XR0309F.
     N1XR0310 XR0310F.
     N1XR0311 XR0311F.
     N1XR0312 XR0312F.
     N1XR0313 XR0313F.
     N1XR0314 XR0314F.
     N1XR0316 XR0316F.
     N1XR0317 XR0317F.
     N1XR0318 XR0318F.
     N1XR0319 XR0319F.
     N1XR0320 XR0320F.
     N1XR0321 XR0321F.
     N1XR0322 XR0322F.
     N1XR0323 XR0323F.
     N1XR0324 XR0324F.
     N1XR0325 XR0325F.
     N1XR0326 XR0326F.
     N1XR0327 XR0327F.
     N1XR0328 XR0328F.
     N1XR0329 XR0329F.
     N1XR0331 XR0331F.
     N1XR0333 XR0333F.
     N1XR0335 XR0335F.
     N1XR0337 XR0337F.
     N1XR0338 XR0338F.
     N1XR0339 XR0339F.
     N1XR0340 XR0340F.
     N1XR0341 XR0341F.
     N1XR0344 XR0344F.
     N1XR0345 XR0345F.
     N1XR0348 XR0348F.
     N1XR0351 XR0351F.
     N1XR0352 XR0352F.
     N1XR0355 XR0355F.
     N1XR0356 XR0356F.
     N1XR0357 XR0357F.
     N1XR0358 XR0358F.
     N1XR0359 XR0359F.
     N1XR0360 XR0360F.
     N1XR0363 XR0363F.
     N1XR0365 XR0365F.
     N1XR0366 XR0366F.
     N1XR0367 XR0367F.
     N1XR0368 XR0368F.
     N1XR0369 XR0369F.
     N1XR0370 XR0370F.
     N1XR0371 XR0371F.
     N1XR0372 XR0372F.
     N1XR0374 XR0374F.
     N1XR0375 XR0375F.
     N1XR0376 XR0376F.
     N1XR0377 XR0377F.
     N1XR0378 XR0378F.
     N1XR0379 XR0379F.
     N1XR0381 XR0381F.
     N1XR0382 XR0382F.
     N1XR0383 XR0383F.
     N1XR0384 XR0384F.
     N1XR0385 XR0385F.
     N1XR0386 XR0386F.
     N1XR0387 XR0387F.
     N1XR0388 XR0388F.
     N1XR0389 XR0389F.
     N1XR0390 XR0390F.
     N1XR0391 XR0391F.
     N1XR0392 XR0392F.
     N1XR0393 XR0393F.
     N1XR0394 XR0394F.
     N1XR0396 XR0396F.
     N1XR0398 XR0398F.
     N1XR0400 XR0400F.
     N1XR0402 XR0402F.
     N1XR0403 XR0403F.
     N1XR0404 XR0404F.
     N1XR0405 XR0405F.
     N1XR0406 XR0406F.
     N1XR0409 XR0409F.
     N1XR0410 XR0410F.
     N1XR0412 XR0412F.
     N1XR0413 XR0413F.
     N1XR0416 XR0416F.
     N1XR0417 XR0417F.
     N1XR0419 XR0419F.
     N1XR0420 XR0420F.
     N1XR0421 XR0421F.
     N1XR0422 XR0422F.
     N1XR0423 XR0423F.
     N1XR0424 XR0424F.
     N1XR0425 XR0425F.
     N1XR0427 XR0427F.
     N1XR0428 XR0428F.
     N1XR0429 XR0429F.
     N1XR0430 XR0430F.
     N1XR0431 XR0431F.
     N1XR0432 XR0432F.
     N1XR0433 XR0433F.
     N1XR0434 XR0434F.
     N1XR0435 XR0435F.
     N1XR0436 XR0436F.
     N1XR0437 XR0437F.
     N1XR0439 XR0439F.
     N1XR0440 XR0440F.
     N1XR0441 XR0441F.
     N1XR0442 XR0442F.
     N1XR0443 XR0443F.
     N1XR0444 XR0444F.
     N1XR0446 XR0446F.
     N1XR0447 XR0447F.
     N1XR0448 XR0448F.
     N1XR0449 XR0449F.
     N1XR0450 XR0450F.
     N1XR0451 XR0451F.
     N1XR0452 XR0452F.
     N1XR0501 XR0501F.
     N1XR0504 XR0504F.
     N1XR0507 XR0507F.
     N1XR0551 XR0551F.
     N1XR0552 XR0552F.
     N1XR0554 XR0554F.
     N1XR0556 XR0556F.
     N1XR0557 XR0557F.
     N1XR0558 XR0558F.
     N1XR0559 XR0559F.
     N1XR0563 XR0563F.
     ;

	INPUT
         SEQN 1-5
         N1XR0006 6-9
         N1XR0010 10
         N1XR0011 11
         N1XR0012 12
         N1XR0013 13
         N1XR0014 14
         N1XR0015 15
         N1XR0016 16
         N1XR0017 17-18
         N1XR0019 19
         N1XR0020 20-21
         N1XR0022 22
         N1XR0023 23-24
         N1XR0025 25-26
         N1XR0027 27
         N1XR0028 28
         N1XR0029 29
         N1XR0030 30
         N1XR0031 31
         N1XR0032 32
         N1XR0033 33
         N1XR0034 34-35
         N1XR0036 36
         N1XR0037 37-40
         N1XR0041 41
         N1XR0042 42-45
         N1XR0046 46
         N1XR0047 47-50
         N1XR0051 51
         N1XR0052 52-55
         N1XR0056 56
         N1XR0057 57-60
         N1XR0061 61
         N1XR0062 62-65
         N1XR0066 66
         N1XR0067 67-70
         N1XR0071 71
         N1XR0072 72-75
         N1XR0076 76
         N1XR0077 77-80
         N1XR0081 81
         N1XR0082 82-85
         N1XR0086 86
         N1XR0087 87-90
         N1XR0091 91-94
         N1XR0095 95-99
         N1XR0100 100
         N1XR0101 101-102
         N1XR0103 103
         N1XR0104 104
         N1XR0105 105
         N1XR0106 106-109
         N1XR0110 110-111
         N1XR0112 112-113
         N1XR0114 114
         N1XR0115 115
         N1XR0116 116
         N1XR0117 117
         N1XR0118 118
         N1XR0119 119
         N1XR0120 120-121
         N1XR0122 122
         N1XR0123 123
         N1XR0124 124
         N1XR0125 125
         N1XR0126 126
         N1XR0127 127
         N1XR0128 128
         N1XR0129 129
         N1XR0130 130
         N1XR0131 131
         N1XR0132 132-134
         N1XR0135 135-137
         N1XR0138 138-143
         N1XR0144 144-145
         N1XR0146 146
         N1XR0147 147-149
         N1XR0150 150
         N1XR0151 151
         N1XR0152 152
         N1XR0153 153
         N1XR0154 154
         N1XR0155 155
         N1XR0156 156
         N1XR0157 157
         N1XR0158 158-163
         N1XR0164 164-169
         N1XR0170 170-175
         N1XR0176 176-181
         N1XR0182 182-187
         N1XR0188 188-193
         N1XR0194 194-195
         N1XR0196 196-198
         N1XR0199 199-200
         N1XR0201 201-204
         N1XR0205 205-209
         N1XR0210 210-214
         N1XR0215 215-218
         N1XR0219 219-222
         N1XR0223 223-226
         N1XR0227 227-229
         N1XR0230 230-232
         N1XR0233 233-237
         N1XR0238 238-241
         N1XR0242 242-245
         N1XR0246 246-249
         N1XR0250 250-253
         N1XR0254 254-257
         N1XR0258 258
         N1XR0259 259
         N1XR0260 260
         N1XR0261 261
         N1XR0262 262
         N1XR0263 263
         N1XR0264 264-265
         N1XR0266 266-267
         N1XR0268 268-269
         N1XR0270 270-271
         N1XR0272 272
         N1XR0273 273
         N1XR0274 274
         N1XR0275 275
         N1XR0276 276-278
         N1XR0279 279
         N1XR0280 280-281
         N1XR0282 282
         N1XR0283 283-285
         N1XR0286 286
         N1XR0287 287-288
         N1XR0289 289
         N1XR0290 290
         N1XR0291 291
         N1XR0292 292
         N1XR0293 293
         N1XR0294 294
         N1XR0295 295-296
         N1XR0297 297
         N1XR0298 298
         N1XR0299 299
         N1XR0300 300
         N1XR0301 301
         N1XR0302 302
         N1XR0303 303
         N1XR0304 304
         N1XR0305 305
         N1XR0306 306
         N1XR0307 307-308
         N1XR0309 309
         N1XR0310 310
         N1XR0311 311
         N1XR0312 312
         N1XR0313 313
         N1XR0314 314-315
         N1XR0316 316
         N1XR0317 317
         N1XR0318 318
         N1XR0319 319
         N1XR0320 320
         N1XR0321 321
         N1XR0322 322
         N1XR0323 323
         N1XR0324 324
         N1XR0325 325
         N1XR0326 326
         N1XR0327 327
         N1XR0328 328
         N1XR0329 329-330
         N1XR0331 331-332
         N1XR0333 333-334
         N1XR0335 335-336
         N1XR0337 337
         N1XR0338 338
         N1XR0339 339
         N1XR0340 340
         N1XR0341 341-343
         N1XR0344 344
         N1XR0345 345-346
         N1XR0347 347
         N1XR0348 348-350
         N1XR0351 351
         N1XR0352 352-353
         N1XR0354 354
         N1XR0355 355
         N1XR0356 356
         N1XR0357 357
         N1XR0358 358
         N1XR0359 359
         N1XR0360 360-361
         N1XR0362 362
         N1XR0363 363
         N1XR0364 364
         N1XR0365 365
         N1XR0366 366
         N1XR0367 367
         N1XR0368 368
         N1XR0369 369
         N1XR0370 370
         N1XR0371 371
         N1XR0372 372-373
         N1XR0374 374
         N1XR0375 375
         N1XR0376 376
         N1XR0377 377
         N1XR0378 378
         N1XR0379 379-380
         N1XR0381 381
         N1XR0382 382
         N1XR0383 383
         N1XR0384 384
         N1XR0385 385
         N1XR0386 386
         N1XR0387 387
         N1XR0388 388
         N1XR0389 389
         N1XR0390 390
         N1XR0391 391
         N1XR0392 392
         N1XR0393 393
         N1XR0394 394-395
         N1XR0396 396-397
         N1XR0398 398-399
         N1XR0400 400-401
         N1XR0402 402
         N1XR0403 403
         N1XR0404 404
         N1XR0405 405
         N1XR0406 406-408
         N1XR0409 409
         N1XR0410 410-411
         N1XR0412 412
         N1XR0413 413-415
         N1XR0416 416
         N1XR0417 417-418
         N1XR0419 419
         N1XR0420 420
         N1XR0421 421
         N1XR0422 422
         N1XR0423 423
         N1XR0424 424
         N1XR0425 425-426
         N1XR0427 427
         N1XR0428 428
         N1XR0429 429
         N1XR0430 430
         N1XR0431 431
         N1XR0432 432
         N1XR0433 433
         N1XR0434 434
         N1XR0435 435
         N1XR0436 436
         N1XR0437 437-438
         N1XR0439 439
         N1XR0440 440
         N1XR0441 441
         N1XR0442 442
         N1XR0443 443
         N1XR0444 444-445
         N1XR0446 446
         N1XR0447 447
         N1XR0448 448
         N1XR0449 449
         N1XR0450 450
         N1XR0451 451
         N1XR0452 452
         N1XR0453 453-500
         N1XR0501 501-503
         N1XR0504 504-506
         N1XR0507 507-509
         N1XR0510 510-512
         N1XR0513 513-550
         N1XR0551 551
         N1XR0552 552-553
         N1XR0554 554-555
         N1XR0556 556
         N1XR0557 557
         N1XR0558 558
         N1XR0559 559
         N1XR0560 560-562
         N1XR0563 563
      ;

      LABEL
         SEQN = "SAMPLE SEQUENCE NUMBER"
         N1XR0006 = "CATALOG NUMBER 4271"
         N1XR0010 = "SIZE OF PLACE"
         N1XR0011 = "SMSA-NOT SMSA"
         N1XR0012 = "TYPE OF LIVING QUARTERS"
         N1XR0013 = "LAND USAGE"
         N1XR0014 = "IF RURAL, ASKED HOW MANY ACRES OF LA ..."
         N1XR0015 = "IF 10 ACRES OF MORE, ASKED IF SALE O ..."
         N1XR0016 = "IF 10 ACRES OR LESS, ASKED IF SALE O ..."
         N1XR0017 = "AGE-HEAD OF HOUSEHOLD"
         N1XR0019 = "SEX-HEAD OF HOUSEHOLD"
         N1XR0020 = "HIGHEST GRADE ATTENDED-HEAD OF HOUSEHOLD"
         N1XR0022 = "RACE-HEAD OF HOUSEHOLD"
         N1XR0023 = "TOTAL NUMBER OF PERSONS IN HOUSEHOLD"
         N1XR0025 = "TOTAL SAMPLE PERSONS IN HOUSEHOLD"
         N1XR0027 = "NUMBER OF ROOMS IN HOUSE "
         N1XR0028 = "IS THERE PIPED WATER?"
         N1XR0029 = "IS THERE HOT AND COLD PIPED WATER?"
         N1XR0030 = "IF YES TO PIPED WATER-DOES HOUSE HAV ..."
         N1XR0031 = "DOES HOUSE HAVE A RANGE OR COOK STOVE?"
         N1XR0032 = "DOES HOUSE HAVE A REFRIGERATOR?"
         N1XR0033 = "ARE KITCHEN FACILITIES USED BY ANYON ..."
         N1XR0034 = "TOTAL FAMILY INCOME GROUP"
         N1XR0036 = "WAGES OR SALARIES?"
         N1XR0037 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER ..."
         N1XR0041 = "SOCIAL SECURITY OR  RAILROAD RETIREMENT?"
         N1XR0042 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1XR0046 = "WELFARE PAYMENTS OR OTHER PUBLIC ASS ..."
         N1XR0047 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1XR0051 = "UNEMPLOYMENT OR WORKMEN'S COMPENSATION?"
         N1XR0052 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1XR0056 = "GOVERNMENT EMPLOYEE PENSIONS OR PRIV ..."
         N1XR0057 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1XR0061 = "DIVIDENDS, INTEREST OR RENT?"
         N1XR0062 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1XR0066 = "NET INCOME FROM  OWN NON-FARM BUSINE ..."
         N1XR0067 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1XR0071 = "NET INCOME FROM A FARM?"
         N1XR0072 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1XR0076 = "VETERAN'S PAYMENTS"
         N1XR0077 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1XR0081 = "ALIMONY, CHILD SUPPORT OR CONTRIBUTI ..."
         N1XR0082 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1XR0086 = "ANY OTHER INCOME?"
         N1XR0087 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1XR0091 = "TOTAL AMOUNT(TOTAL OF POSITIONS 37-90)"
         N1XR0095 = "FAMILY UNIT CODE"
         N1XR0100 = "RELATIONSHIP TO HEAD OF HOUSEHOLD"
         N1XR0101 = "AGE AT INTERVIEW"
         N1XR0103 = "RACE OF EXAMINED PERSON"
         N1XR0104 = "SEX OF EXAMINED PERSON"
         N1XR0105 = "MARITAL STATUS"
         N1XR0106 = "DATE OF BIRTH (MONTH, YEAR)"
         N1XR0110 = "PLACE OF BIRTH"
         N1XR0112 = "HIGHEST GRADE OF REGULAR SCHOOL EVER ..."
         N1XR0114 = "DID HE FINISH THE GRADE?"
         N1XR0115 = "IS HE ATTENDING SCHOOL NOW?"
         N1XR0116 = "HAS HE EVER ATTENDED A SCHOOL OF ANY ..."
         N1XR0117 = "IF YES, WHAT KIND OF SCHOOL?"
         N1XR0118 = "IS ANY LANGUAGE OTHER THAN ENGLISH F ..."
         N1XR0119 = "IF YES, WHAT LANGUAGE"
         N1XR0120 = "WHAT IS YOUR MAIN ANCESTRY OR NATION ..."
         N1XR0122 = "WHAT WAS HE DOING MOST PAST THREE MO ..."
         N1XR0123 = "IF ' SOMETHING ELSE' FROM ABOVE, WHA ..."
         N1XR0124 = "IF 'KEEPING HOUSE' OR 'SOMETHING ELS ..."
         N1XR0125 = "IF 'WORKING' FROM ABOVE, DID HE WORK ..."
         N1XR0126 = "DID HE WORK AT ANY TIME LAST WEEK OR ..."
         N1XR0127 = "IF 'NO TO ABOVE, EVEN THOUGH HE DID  ..."
         N1XR0128 = "IF 'NO' IN POSITION 126, WAS HE LOOK ..."
         N1XR0129 = "IF YES TO ABOVE-WHICH?"
         N1XR0130 = "CLASS OF WORKER"
         N1XR0131 = "IF SELF-EMPLOYED IN 'OWN' BUSINESS A ..."
         N1XR0132 = "BUSINESS OR INDUSTRY CODE"
         N1XR0135 = "OCCUPATION CODE"
         N1XR0138 = "DATE OF EXAMINATION"
         N1XR0144 = "AGE AT EXAMINATION"
         N1XR0146 = "FARM"
         N1XR0147 = "POVERTY INDEX (X.XX)"
         N1XR0150 = "RELIGION"
         N1XR0151 = "FOOD PROGRAMS APPLICABILITY"
         N1XR0152 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1XR0153 = "ARE YOU BUYING STAMPS NOW?"
         N1XR0154 = "WHAT IS THE MAIN REASON YOU AREN'T P ..."
         N1XR0155 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1XR0156 = "ARE YOU RECEIVING COMMODITY FOODS  N ..."
         N1XR0157 = "WHY AREN'T YOU PARTICIPATING IN THE  ..."
         N1XR0158 = "DETAILED PERSONS-LOCATIONS 1-35"
         N1XR0164 = "BLANK-DATA USER WORK AREA"
         N1XR0170 = "DETAILED PERSONS-LOCATIONS 1-65"
         N1XR0176 = "BLANK-DATA USER WORK AREA"
         N1XR0182 = "DETAILED PERSONS-LOCATIONS 66-100"
         N1XR0188 = "DETAILED PERSONS-LOCATIONS 1-100"
         N1XR0194 = "STRATA1"
         N1XR0196 = "PRIMARY SAMPLING UNITS1"
         N1XR0199 = "DATA USER WORK AREA"
         N1XR0201 = "CATALOG NUMBER 4251"
         N1XR0205 = "LEFT LUNG SURFACE AREA (SQ.CM)"
         N1XR0210 = "RIGHT LUNG SURFACE AREA (SQ.CM)"
         N1XR0215 = "THORACIC DIAMETER-PA (CM)"
         N1XR0219 = "THORACIC DIAMETER-LATER 1 (CM)"
         N1XR0223 = "THORACIC DIAMETER-LATERAL 2 (CM)"
         N1XR0227 = "TRACHEAL DIAMETER-T2  (CM)"
         N1XR0230 = "TRACHEAL DIAMETER-T3  (CM)"
         N1XR0233 = "LATERAL AREA (SQ. CM)"
         N1XR0238 = "A1-A2 (CM)"
         N1XR0242 = "B1-B2 (CM)"
         N1XR0246 = "C1-C2 (CM)"
         N1XR0250 = "D1-D2 (CM)"
         N1XR0254 = "E1-E2 (CM)"
         N1XR0258 = "PATHOLOGY FIRST READINGS (STANDS 1-1 ..."
         N1XR0259 = "THORAX-KYPHOSIS"
         N1XR0260 = "SCOLIOSIS"
         N1XR0261 = "PECTUS"
         N1XR0262 = "RIB FACTURES"
         N1XR0263 = "LOCATION"
         N1XR0264 = "MINIMUM RIB NUMBER RIGHT"
         N1XR0266 = "MAXIMUM RIB NUMBER RIGHT"
         N1XR0268 = "MINIMUM RIB NUMBER LEFT"
         N1XR0270 = "MAXIMUM RIB NUMBERLEFT"
         N1XR0272 = "HEALING STATUS"
         N1XR0273 = "NIPPLE SHADOWS"
         N1XR0274 = "NODULES OTHER EXTRAPULMONARY NODULES"
         N1XR0275 = "INTRAPULMONARY NODULES"
         N1XR0276 = "SIZE OF LARGEST (MM)"
         N1XR0279 = "LOCATION OF LARGEST"
         N1XR0280 = "SPECIFIC LOBE"
         N1XR0282 = "RELATIVE LOCATION OF LARGEST"
         N1XR0283 = "SIZE OF SECOND LARGEST (MM)"
         N1XR0286 = "LOCATION OF SECOND "
         N1XR0287 = "SPECIFIC LOBE"
         N1XR0289 = "RELATIVE LOCATION OF SECOND LARGEST"
         N1XR0290 = "NUMBER OF NODULES"
         N1XR0291 = "NUMBER OF SEGMENTS CONTAINING NODULES"
         N1XR0292 = "ARE SEGMENTS CONTAINING NODULES CONT ..."
         N1XR0293 = "ETIOLOGY OF NODULES"
         N1XR0294 = "INFILTRATES LOCALIZED SEGMENTAL INFI ..."
         N1XR0295 = "LOCATION OF INFILTRATES: SPECIFIC LOBE"
         N1XR0297 = "LOCALIZED SEGMENTAL INFILTRATES"
         N1XR0298 = "DIFFUSE NONSEGMENTAL NONHOMOGENEOUS  ..."
         N1XR0299 = "DIFFUSE NONSEGMENTAL NONHOMOGENEOUS  ..."
         N1XR0300 = "UNDERLYING CONDITIONS"
         N1XR0301 = "DIFFUSE HOMOGENEOUS SYMMETRICAL INFI ..."
         N1XR0302 = "PRESUMED ETIOLOGY"
         N1XR0303 = "PROPORTION OR FRACTION OF PA X-RAY W ..."
         N1XR0304 = "OTHER INFILTRATES"
         N1XR0305 = "EMPHYSEMA"
         N1XR0306 = "BLEBS OR BULLAE"
         N1XR0307 = "CALCIFIED NODES"
         N1XR0309 = "ENLARGED NODES"
         N1XR0310 = "PLEURAL DISEASE"
         N1XR0311 = "LOCATION"
         N1XR0312 = "PRESUMED CAUSED OF EFFUSION"
         N1XR0313 = "CARDIOVASCULAR ENLARGEMENT OF VESSEL ..."
         N1XR0314 = "LOCUS OF PULMONARY ARTERY ENLARGEMENT"
         N1XR0316 = "ENLARGEMENT OF RIGHT HEART"
         N1XR0317 = "CEPHALIZATION OF PULMONARY VESSELS"
         N1XR0318 = "INTERSTITIAL FLUID"
         N1XR0319 = "KERLEY LINES"
         N1XR0320 = "ROSETTES"
         N1XR0321 = "ALVEOLAR FLUID"
         N1XR0322 = "ENLARGEMENT OF LEFT HEART"
         N1XR0323 = "CARDIOPULMONARY FINDINGS"
         N1XR0324 = "THORAX-KYPHOSIS"
         N1XR0325 = "SCOLIOSIS"
         N1XR0326 = "PECTUS"
         N1XR0327 = "RIB FACTURES"
         N1XR0328 = "LOCATION"
         N1XR0329 = "MINIMUM RIB NUMBER RIGHT"
         N1XR0331 = "MAXIMUM RIB NUMBER RIGHT"
         N1XR0333 = "MINIMUM RIB NUMBER LEFT"
         N1XR0335 = "MAXIMUM RIB NUMBER LEFT"
         N1XR0337 = "HEALING STATUS"
         N1XR0338 = "NIPPLE SHADOWS"
         N1XR0339 = "NODULES OTHER EXTRAPULMONARY NODULES"
         N1XR0340 = "INTRAPULMONARY NODULES"
         N1XR0341 = "SIZE OF LARGEST (MM)"
         N1XR0344 = "LOCATION OF LARGEST"
         N1XR0345 = "SPECIFIC LOBE"
         N1XR0347 = "BLANK "
         N1XR0348 = "SIZE OF SECOND LARGEST (MM)"
         N1XR0351 = "LOCATION OF SECOND LARGEST"
         N1XR0352 = "SPECIFIC LOBE"
         N1XR0354 = "BLANK"
         N1XR0355 = "NUMBER OF NODULES"
         N1XR0356 = "NUMBER OF SEGMENTS CONTAINING NODULES"
         N1XR0357 = "ARE SEGMENTS CONTAINING NODULES CONT ..."
         N1XR0358 = "ETIOLOGY OF NODULES"
         N1XR0359 = "INFILTRATES LOCALIZED SEGMENTAL INFI ..."
         N1XR0360 = "LOCATION OF INFILTRATES: SPECIFIC LOBE"
         N1XR0362 = "BLANK"
         N1XR0363 = "DIFFUSE NONSEGMENTAL NONHOMOGENEOUS  ..."
         N1XR0364 = "BLANK"
         N1XR0365 = "UNDERLYING CONDITIONS"
         N1XR0366 = "DIFFUSE HOMOGENEOUS SYMMETRICAL INFI ..."
         N1XR0367 = "PRESUMED ETIOLOGY"
         N1XR0368 = "PROPORTION OR FRACTION OF PA X-RAY W ..."
         N1XR0369 = "OTHER INFILTRATES"
         N1XR0370 = "EMPHYSEMA"
         N1XR0371 = "BLEBS OR BULLAE"
         N1XR0372 = "CALCIFIED NODES"
         N1XR0374 = "ENLARGED NODES"
         N1XR0375 = "PLEURAL DISEASE"
         N1XR0376 = "LOCATION"
         N1XR0377 = "PRESUMED CAUSED OF EFFUSION"
         N1XR0378 = "AZYGOS VEIN"
         N1XR0379 = "LOCUS OF PULMONARY ARTERY ENLARGEMENT"
         N1XR0381 = "ENLARGEMENT OF RIGHT HEART"
         N1XR0382 = "CEPHALIZATION OF PULMONARY VESSELS"
         N1XR0383 = "INTERSTITIAL FLUID"
         N1XR0384 = "KERLEY LINES"
         N1XR0385 = "ROSETTES"
         N1XR0386 = "ALVEOLAR FLUID"
         N1XR0387 = "ENLARGEMENT OF LEFT HEART"
         N1XR0388 = "PATHOLOGY FIRST READINGS (STANDS 1-1 ..."
         N1XR0389 = "THORAX-KYPHOSIS"
         N1XR0390 = "SCOLIOSIS"
         N1XR0391 = "PECTUS"
         N1XR0392 = "RIB FACTURES"
         N1XR0393 = "LOCATION"
         N1XR0394 = "MINIMUM RIB NUMBER RIGHT"
         N1XR0396 = "MAXIMUM RIB NUMBER RIGHT"
         N1XR0398 = "MINIMUM RIB NUMBER LEFT"
         N1XR0400 = "MAXIMUM RIB NUMBER LEFT"
         N1XR0402 = "HEALING STATUS"
         N1XR0403 = "NIPPLE SHADOWS"
         N1XR0404 = "NODULES OTHER EXTRAPULMONARY NODULES"
         N1XR0405 = "INTRAPULMONARY NODULES"
         N1XR0406 = "SIZE OF LARGEST (MM)"
         N1XR0409 = "LOCATION OF LARGEST"
         N1XR0410 = "SPECIFIC LOBE"
         N1XR0412 = "RELATIVE LOCATION OF LARGEST"
         N1XR0413 = "SIZE OF SECOND LARGEST (MM)"
         N1XR0416 = "LOCATION OF SECOND LARGEST"
         N1XR0417 = "SPECIFIC LOBE"
         N1XR0419 = "RELATIVE LOCATION OF SECOND LARGEST"
         N1XR0420 = "NUMBER NODULES"
         N1XR0421 = "NUMBER OF SEGMENTS CONTAINING NODULES"
         N1XR0422 = "ARE YOU SEGMENTS CONTAINING NODULES  ..."
         N1XR0423 = "ETIOLOGY OF NODULES"
         N1XR0424 = "INFILTRATES LOCALIZED SEGMENTAL INFI ..."
         N1XR0425 = "LOCATION OF INFILTRATES: SPECIFIC LOBE"
         N1XR0427 = "LOCALIZED SEGMENTAL INFILTRATES"
         N1XR0428 = "DIFFUSE NONSEGMENTAL NONHOMOGENEOUS  ..."
         N1XR0429 = "DIFFUSE NONSEGMENTAL NONHOMOGENEOUS  ..."
         N1XR0430 = "UNDERLYING CONDITIONS"
         N1XR0431 = "DIFFUSE HOMOGENEOUS SYMMETRICAL INFI ..."
         N1XR0432 = "PRESUMED ETIOLOGY"
         N1XR0433 = "PROPORTION OR FRACTION OF PA X-RAY W ..."
         N1XR0434 = "OTHER INFILTRATES"
         N1XR0435 = "EMPHYSEMA"
         N1XR0436 = "BLEBS OR BULLAE"
         N1XR0437 = "CALCIFIED NODES"
         N1XR0439 = "ENLARGED NODES"
         N1XR0440 = "PLEURAL DISEASE"
         N1XR0441 = "LOCATION"
         N1XR0442 = "PRESUMED CAUSED OF EFFUSION"
         N1XR0443 = "CARDIOVASCULAR ENLARGEMENT OF VESSEL ..."
         N1XR0444 = "LOCUS OF PULMONARY ARTERY ENLARGEMENT"
         N1XR0446 = "ENLARGEMENT OF RIGHT HEART"
         N1XR0447 = "CEPHALIZATION OF PULMONARY VESSELS"
         N1XR0448 = "INTERSTITIAL FLUID"
         N1XR0449 = "KERLEY LINES"
         N1XR0450 = "ROSETTES"
         N1XR0451 = "ALVEOLAR FLUID"
         N1XR0452 = "ENLARGEMENT OF LEFT HEART"
         N1XR0453 = "DATA USER WORK AREA"
         N1XR0501 = "DLCO (MLCO/MINUTE)-FIRST TRIAL"
         N1XR0504 = "DLCO (MLCO/MINUTE)-SECOND TRIAL"
         N1XR0507 = "DLCO (MLCO/MINUTE)-THIRD TRIAL"
         N1XR0510 = "SUMMARY DLCO (MLCO/MINUTE)"
         N1XR0513 = "DATA USER WORK AREA"
         N1XR0551 = "SITE INJECTED"
         N1XR0552 = "PPD-S INDURATION (MM) (LEFT ARM)"
         N1XR0554 = "PPD-B INDURATION (MM) (RIGHT ARM"
         N1XR0556 = "WHERE WERE RESULTS READ?"
         N1XR0557 = "DAYS BETWEEN TEST AND READING"
         N1XR0558 = "TYPE OF READER"
         N1XR0559 = "WAS TEST READ?"
         N1XR0560 = "PPD-S AND PPD-B BOTH PRESENT: DIFFER ..."
         N1XR0563 = "INDURATION READING CLASSIFICATION:PP ..."
      ;
RUN;
