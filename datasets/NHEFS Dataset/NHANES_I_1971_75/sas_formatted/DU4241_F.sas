/*
 *  Survey:           NHANES I
 *  Years:            1971-1975
 *  Questionnaire:    Audiometric
 *  Tape Number:      4241
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

VALUE AU0010F
     1='3,000,000 or more'
     2='1,000,000 to 2,999,999'
     3='250,000 to 999,999'
     4='under 250,000'
     5='Urban place 25,000 or more outside urbanized area'
     6='Urban place 10,000 to 24,999 outside urbanized area'
     7='Urban place 2,500 to 9,999 outside urbanized area'
     8='Rural'
     ;

VALUE AU0011F
     1='In SMSA, in central city'
     2='In SMSA, not in central city'
     3='Not in SMSA'
     ;

VALUE AU0012F
     1='Housing Unit'
     ;

VALUE AU0013F
     1='All other'
     2='Rural  7136'
     ;

VALUE AU0014F
     1='10 or more acres'
     2='Less than 10 acres'
     9='Not applicable'
     ;

VALUE AU0015F
     2='Yes'
     4='No'
     9='Not applicable'
     ;

VALUE AU0016F
     3='Yes'
     5='No'
     9='Not applicable'
     ;

VALUE AU0017F
     00='- Blank, but applicable'
     ;

VALUE AU0019F
     1='Male'
     2='Female'
     ;

VALUE AU0020F
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

VALUE AU0022F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE AU0027F
     9='9 or more'
     ;

VALUE AU0028F
     1='Yes'
     2='No'
     ;

VALUE AU0029F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE AU0030F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE AU0031F
     1='Yes'
     2='No'
     ;

VALUE AU0032F
     1='Yes'
     2='No'
     ;

VALUE AU0033F
     1='Yes'
     2='No'
     9='Not applicable'
     ;

VALUE AU0034F
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

VALUE AU0036F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AU0037F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AU0041F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AU0042F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AU0046F
     1='Yes'
     2='No'
     3='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AU0047F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AU0051F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AU0052F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AU0056F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AU0057F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AU0061F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AU0062F
     9999='Not applicable'
     ;

VALUE AU0066F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AU0067F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AU0071F
     1='Yes'
     2='No'
     3='Loss'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AU0072F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AU0076F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AU0077F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AU0081F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AU0082F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AU0086F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AU0087F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AU0091F
     8888='Blank, but applicable'
     9999='Not applicable'
     ;

VALUE AU0100F
     1='Head (1 person living along or with non-relatives)'
     2='Head (2 or more related persons in family)'
     3='Wife'
     4='Child'
     5='Other relative'
     ;

VALUE AU0103F
     1='White'
     2='Negro'
     3='Other'
     ;

VALUE AU0104F
     1='Male'
     2='Female'
     ;

VALUE AU0105F
     1='Under 17'
     2='Married'
     3='Widowed'
     4='Never Married'
     5='Divorced'
     6='Separated'
     8='Blank, but applicable'
     ;

VALUE AU0110F
     88='Blank, but applicable'
     ;

VALUE AU0112F
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

VALUE AU0114F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AU0115F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AU0116F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AU0117F
     1='Nursery'
     2='Kindergarten'
     3='Other'
     4='Headstart'
     5='Daycare'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AU0118F
     1='Yes'
     8='Blank, but applicable'
     ;

VALUE AU0119F
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

VALUE AU0120F
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

VALUE AU0122F
     1='Working'
     2='Keeping house'
     3='Something else'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AU0123F
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

VALUE AU0124F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AU0125F
     1='Full-time'
     2='Part-time'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AU0126F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AU0127F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AU0128F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AU0129F
     1='Looking'
     2='Lay-off'
     3='Both'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AU0130F
     1='Private paid'
     2='Government-Federal'
     3='Government-Other'
     4='Own'
     5='Non-paid'
     6='Never worked'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AU0131F
     1='Yes'
     2='No'
     8='Blank, but applicable'
     9='Not applicable'
     ;

VALUE AU0146F
     1='Farm'
     2='Nonfarm'
     ;

VALUE AU0147F
     998='Index computed 998 or greater'
     999='Unknown'
     ;

VALUE AU0150F
     1='Northeast'
     2='Midwest'
     3='South'
     4='West'
     ;

VALUE AU0151F
     1='Not applicable'
     2='No program available'
     3='Food stamps available'
     4='Commodities available'
     8='Blank, but applicable'
     ;

VALUE AU0152F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE AU0153F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE AU0154F
     1='No need'
     2='Not enough money at the time'
     3='No transportation'
     4='Pride'
     5='Other'
     8='Blank, but applicable'
     ;

VALUE AU0155F
     1='Yes'
     2='No'
     9='Dont know'
     ;

VALUE AU0156F
     1='Yes, regularly'
     2='Yes, occasionally'
     3='No'
     8='Blank, but applicable'
     ;

VALUE AU0157F
     1='No need'
     2='No transportation'
     3='Pride'
     4='Other'
     8='Blank, but applicable'
     ;

VALUE AU0225F
     88888='Blank, but applicable'
     ;

VALUE AU0230F
     88='Blank, but applicable'
     ;

VALUE AU0234F
     99='100 or greater'
     888='Blank, but applicable'
     ;

VALUE AU0237F
     99='Blank, but applicable'
     ;

VALUE AU0239F
     888='Blank, but applicable'
     ;

VALUE AU0242F
     888='Blank, but applicable'
     ;

VALUE AU0245F
     888='Blank, but applicable'
     ;

VALUE AU0250F
     99='100 or greater'
     888='Blank, but'
     ;

VALUE AU0253F
     99='Blank, but applicable'
     ;

VALUE AU0255F
     888='Blank, but applicable'
     ;

VALUE AU0258F
     888='Blank, but applicable'
     ;

VALUE AU0261F
     888='Blank, but applicable'
     ;

VALUE AU0266F
     99='100 or greater'
     888='Blank, but applicable'
     ;

VALUE AU0269F
     99='Blank, but applicable'
     ;

VALUE AU0271F
     888='Blank, but applicable'
     ;

VALUE AU0274F
     888='Blank, but applicable'
     ;

VALUE AU0277F
     888='Blank, but applicable'
     ;

VALUE AU0282F
     99='100 or greater'
     ;

VALUE AU0285F
     99='Blank, but applicable'
     ;

VALUE AU0287F
     888='Blank, but applicable'
     ;

VALUE AU0290F
     888='Blank, but applicable'
     ;

VALUE AU0293F
     888='Blank, but applicable'
     ;

VALUE AU0298F
     99='100 or greater'
     888='Blank, but applicable'
     ;

VALUE AU0301F
     99='Blank, but applicable'
     ;

VALUE AU0303F
     888='Blank, but applicable'
     ;

VALUE AU0308F
     99='100 or greater'
     888='Blank, but applicable'
     ;

VALUE AU0311F
     99='Blank, but applicable'
     ;

VALUE AU0313F
     888='Blank, but applicable'
     ;

VALUE AU0316F
     888='Blank, but applicable'
     ;

VALUE AU0319F
     888='Blank, but applicable'
     ;

VALUE AU0324F
     98='100 or greater'
     888='Blank, but applicable'
     ;

VALUE AU0327F
     99='Blank, but applicable'
     ;

VALUE AU0329F
     888='Blank, but applicable'
     ;

VALUE AU0332F
     888='Blank, but applicable'
     ;

VALUE AU0335F
     888='Blank, but applicable'
     ;

VALUE AU0340F
     98='100 or greater'
     888='Blank, but applicable'
     ;

VALUE AU0343F
     99='Blank, but applicable'
     ;

VALUE AU0345F
     888='Blank, but applicable'
     ;

VALUE AU0348F
     888='Blank, but applicable'
     ;

VALUE AU0351F
     888='Blank, but applicable'
     ;

VALUE AU0356F
     98='100 or greater'
     888='Blank, but applicable'
     ;

VALUE AU0359F
     99='Blank, but applicable'
     ;

VALUE AU0361F
     888='Blank, but applicable'
     ;

VALUE AU0364F
     888='Blank, but applicable'
     ;

VALUE AU0367F
     888='Blank, but applicable'
     ;

VALUE AU0372F
     98='100 or greater'
     888='Blank, but applicable'
     ;

VALUE AU0375F
     99='Blank, but applicable'
     ;

VALUE AU0377F
     888='Blank, but applicable'
     ;

VALUE AU0380F
     1='None'
     2='Cold or sinusitis now'
     3='Ear discharge'
     4='Ringing or other noises in ears'
     5='Equipment defect'
     6='Cold or sinusitis within one week'
     7='Earache within week'
     8='Other'
     9='More than one condition checked'
     0='Blank, but applicable'
     ;

VALUE AU0427F
     1='20'
     2='30'
     3='40'
     4='50'
     5='60'
     ;

VALUE AU0428F
     1='Right'
     2='Left'
     ;

VALUE AU0429F
     1='Walkings'
     2='My'
     3='Favorite'
     4='Exercise'
     ;

VALUE AU0433F
     1='Heres'
     2='Nice'
     3='Quiet'
     4='Place'
     5='Rest'
     ;

VALUE AU0438F
     1='Our'
     2='Janitor'
     3='Sweeps'
     4='Floors'
     5='Every'
     6='Night'
     ;

VALUE AU0444F
     1='Would'
     2='Much'
     3='Easier'
     4='If'
     5='Everyone'
     6='Help'
     ;

VALUE AU0450F
     1='We'
     2='Good'
     3='Morning'
     4='Begin'
     5='Work'
     ;

VALUE AU0455F
     1='Open'
     2='Window'
     3='Before'
     4='Go'
     5='Bed'
     ;

VALUE AU0460F
     1='Do'
     2='Think'
     3='She'
     4='Should'
     5='Stay'
     6='Here'
     ;

VALUE AU0466F
     1='How'
     2='Do'
     3='Feel'
     4='Changing'
     ;

VALUE AU0470F
     1='When'
     2='Time'
     3='We'
     4='Go'
     ;

VALUE AU0474F
     1='Its'
     2='Late'
     3='Move'
     4='Out'
     5='Way'
     ;

VALUE AU0479F
     1='Final level given'
     ;

VALUE AU0482F
     1='20'
     2='30'
     3='40'
     4='50'
     5='60'
     ;

VALUE AU0483F
     1='Right'
     2='Left'
     ;

VALUE AU0484F
     1='Waters'
     2='Too'
     3='Cold'
     4='Swimming'
     ;

VALUE AU0488F
     1='Why'
     2='Should'
     3='I'
     4='Get'
     5='So'
     6='Early'
     ;

VALUE AU0494F
     1='Shine'
     2='Your'
     3='Shoes'
     4='This'
     5='Time'
     ;

VALUE AU0499F
     1='Its'
     2='Raining'
     3='Here'
     4='Room'
     ;

VALUE AU0503F
     1='Where'
     2='Are'
     3='Going'
     4='Morning'
     ;

VALUE AU0507F
     1='You'
     2='Should'
     3='Come'
     4='Here'
     5='When'
     6='Call'
     ;

VALUE AU0513F
     1='Dont'
     2='Try'
     3='Get'
     4='Out'
     5='Of'
     6='It'
     ;

VALUE AU0519F
     1='We'
     2='Let'
     3='Little'
     4='Children'
     5='Go'
     6='Movies'
     ;

VALUE AU0525F
     1='There'
     2='Isnt'
     3='Enough'
     4='Paint'
     5='Finish'
     ;

VALUE AU0530F
     1='Do'
     2='Want'
     3='Eggs'
     4='Breakfast'
     ;

VALUE AU0534F
     1='Final level given'
     ;

VALUE AU0537F
     1='20'
     2='30'
     3='40'
     4='50'
     5='60'
     ;

VALUE AU0538F
     1='Right'
     2='Left'
     ;

VALUE AU0539F
     1='Everybody'
     2='Brush'
     3='Teeth'
     4='Before'
     5='Meals'
     ;

VALUE AU0544F
     1='Once'
     2='Year'
     3='Everythings'
     4='Right'
     ;

VALUE AU0548F
     1='Dont'
     2='Use'
     3='Up'
     4='All'
     5='Letter'
     6='Paper'
     ;

VALUE AU0554F
     1='Anything'
     2='Thats'
     3='Right'
     ;

VALUE AU0557F
     1='Those'
     2='People'
     3='Outside'
     4='Ought'
     5='See'
     6='Doctor'
     ;

VALUE AU0563F
     1='Windows'
     2='So'
     3='Dirty'
     4='Month'
     5='I'
     6='Cant'
     ;

VALUE AU0569F
     1='Please'
     2='Pass'
     3='Bread'
     4='Butter'
     5='First'
     ;

VALUE AU0574F
     1='Dont'
     2='Forget'
     3='Write'
     4='Pay'
     5='Your'
     6='Bill'
     ;

VALUE AU0580F
     1='Dont'
     2='Let'
     3='Dog'
     4='Out'
     5='House'
     ;

VALUE AU0585F
     1='Theres'
     2='Good'
     3='Ballgame'
     4='Afternoon'
     ;

VALUE AU0589F
     1='Final level given'
     ;

VALUE AU0592F
     1='20'
     2='30'
     3='40'
     4='50'
     5='60'
     ;

VALUE AU0593F
     1='Right'
     2='Left'
     ;

VALUE AU0594F
     1='If'
     2='Want'
     3='Go'
     4='Its'
     ;

VALUE AU0598F
     1='Throw'
     2='These'
     3='Old'
     4='Time'
     5='Magazines'
     6='Out'
     ;

VALUE AU0604F
     1='Do'
     2='Want'
     3='Wash'
     4='Up'
     5='Stream'
     ;

VALUE AU0609F
     1='Real'
     2='Dark'
     3='Night'
     4='So'
     5='Watch'
     6='Driving'
     ;

VALUE AU0615F
     1='Ill'
     2='Carry'
     3='Your'
     4='Package'
     5='You'
     ;

VALUE AU0620F
     1='Dont'
     2='You'
     3='Forget'
     4='Shut'
     5='Off'
     6='Water'
     ;

VALUE AU0626F
     1='Mountain'
     2='Fishing'
     3='Idea'
     4='Good'
     5='Time'
     ;

VALUE AU0631F
     1='Fathers'
     2='Used'
     3='Spend'
     4='Time'
     5='Children'
     ;

VALUE AU0636F
     1='Be'
     2='Careful'
     3='Not'
     4='Break'
     5='Glass'
     ;

VALUE AU0641F
     1='Im'
     2='Sorrier'
     3='Than'
     ;

VALUE AU0644F
     1='Final level given'
     ;

VALUE AU0647F
     1='20'
     2='30'
     3='40'
     4='50'
     5='60'
     ;

VALUE AU0648F
     1='Right'
     2='Left'
     ;

VALUE AU0649F
     1='You'
     2='Can'
     3='Catch'
     4='Bus'
     5='Across'
     6='Street'
     ;

VALUE AU0655F
     1='Tell'
     2='Her'
     3='News'
     4='Phone'
     ;

VALUE AU0659F
     1='Ill'
     2='Catch'
     3='Up'
     4='You'
     5='Later'
     ;

VALUE AU0664F
     1='Ill'
     2='Think'
     3='Over'
     4='And'
     5='Call'
     6='Her'
     ;

VALUE AU0670F
     1='I'
     2='Dont'
     3='Want'
     4='Go'
     5='Movies'
     ;

VALUE AU0675F
     1='See'
     2='Dentist'
     3='If'
     4='Your'
     5='Tooth'
     6='Hurts'
     ;

VALUE AU0681F
     1='Put'
     2='That'
     3='Cookie'
     4='Back'
     5='Box'
     ;

VALUE AU0686F
     1='Ought'
     2='Stop'
     3='Fooling'
     4='Around'
     5='Much'
     ;

VALUE AU0691F
     1='Tonight'
     2='That'
     3='Times'
     4='Up'
     ;

VALUE AU0695F
     1='How'
     2='Spell'
     3='Your'
     4='Name'
     ;

VALUE AU0699F
     1='Final level given'
     ;

VALUE AU0702F
     1='20'
     2='30'
     3='40'
     4='50'
     5='60'
     ;

VALUE AU0703F
     1='Right'
     2='Left'
     ;

VALUE AU0704F
     1='Music'
     2='Always'
     3='Makes'
     4='Cheer'
     5='Up'
     ;

VALUE AU0709F
     1='Brothers'
     2='Town'
     3='Short'
     4='While'
     ;

VALUE AU0713F
     1='We'
     2='Live'
     3='Few'
     4='Miles'
     5='Main'
     6='Road'
     ;

VALUE AU0719F
     1='This'
     2='Suit'
     3='Needs'
     4='Go'
     5='Cleaners'
     ;

VALUE AU0724F
     1='They'
     2='Ate'
     3='Enough'
     4='Green'
     5='Apples'
     ;

VALUE AU0729F
     1='You'
     2='Been'
     3='Sick'
     4='All'
     5='This'
     6='Week'
     ;

VALUE AU0735F
     1='Where'
     2='Have'
     3='You'
     4='Working'
     5='Lately'
     ;

VALUE AU0740F
     1='Not'
     2='Enough'
     3='Table'
     4='Room'
     5='Kitchen'
     ;

VALUE AU0745F
     1='Hard'
     2='Where'
     3='He'
     4='Is'
     ;

VALUE AU0749F
     1='Look'
     2='Out'
     3='For'
     4='New'
     5='Business'
     ;

VALUE AU0754F
     1='Final level given'
     ;

VALUE AU0757F
     1='20'
     2='30'
     3='40'
     4='50'
     5='60'
     ;

VALUE AU0758F
     1='Right'
     2='Left'
     ;

VALUE AU0759F
     1='See'
     2='You'
     3='Right'
     4='After'
     5='Lunch'
     ;

VALUE AU0764F
     1='See'
     2='You'
     3='Later'
     4='Afternoon'
     ;

VALUE AU0768F
     1='White'
     2='Shoes'
     3='Awful'
     4='Keep'
     5='Clean'
     ;

VALUE AU0773F
     1='You'
     2='Stand'
     3='Over'
     4='There'
     5='Until'
     6='Move'
     ;

VALUE AU0779F
     1='Theres'
     2='Piece'
     3='Cake'
     4='Left'
     5='Dinner'
     6='Tonight'
     ;

VALUE AU0785F
     1='Dont'
     2='Wait'
     3='Me'
     4='At'
     5='Front'
     6='Corner'
     ;

VALUE AU0791F
     1='Its'
     2='No'
     3='Trouble'
     4='All'
     5='Tell'
     ;

VALUE AU0796F
     1='Hurry'
     2='Up'
     3='Morning'
     4='Paper'
     ;

VALUE AU0800F
     1='Didnt'
     2='Say'
     3='Anything'
     4='Big'
     5='Rain'
     ;

VALUE AU0805F
     1='Drugstore'
     2='Phone'
     3='Calls'
     4='You'
     ;

VALUE AU0809F
     1='Final level given'
     ;

VALUE AU0812F
     1='20'
     2='30'
     3='40'
     4='50'
     5='60'
     ;

VALUE AU0813F
     1='Right'
     2='Left'
     ;

VALUE AU0814F
     1='Believe'
     2='Me'
     3='Too'
     4='Late'
     ;

VALUE AU0818F
     1='Lets'
     2='Get'
     3='That'
     4='Cup'
     5='Coffee'
     ;

VALUE AU0823F
     1='Lets'
     2='Out'
     3='Here'
     4='Before'
     ;

VALUE AU0827F
     1='Hate'
     2='Driving'
     3='If'
     4='Its'
     5='Night'
     ;

VALUE AU0832F
     1='There'
     2='Was'
     3='Water'
     4='Cellar'
     5='Yesterday'
     ;

VALUE AU0837F
     1='Shell'
     2='Only'
     3='Gone'
     4='Few'
     5='Minutes'
     ;

VALUE AU0842F
     1='How'
     2='You'
     3='Know'
     4='Well'
     5='Have'
     6='Soon'
     ;

VALUE AU0848F
     1='Children'
     2='Like'
     3='Candy'
     4='After'
     5='Heavy'
     ;

VALUE AU0853F
     1='No'
     2='Grass'
     3='Dont'
     4='Get'
     5='Rain'
     ;

VALUE AU0858F
     1='Theyre'
     2='Not'
     3='Listed'
     4='New'
     5='Phone'
     6='Book'
     ;

VALUE AU0864F
     1='Final level given'
     ;

VALUE AU0867F
     1='20'
     2='30'
     3='40'
     4='50'
     5='60'
     ;

VALUE AU0868F
     1='Right'
     2='Left'
     ;

VALUE AU0869F
     1='Where'
     2='Can'
     3='I'
     4='Find'
     5='Place'
     6='Park'
     ;

VALUE AU0875F
     1='I'
     2='Like'
     3='Those'
     4='Big'
     5='Red'
     6='Apples'
     ;

VALUE AU0881F
     1='Youll'
     2='Fat'
     3='Eating'
     4='Candy'
     ;

VALUE AU0885F
     1='Color'
     2='Shows'
     3='Over'
     4='Fall'
     ;

VALUE AU0889F
     1='Why'
     2='Dont'
     3='Paint'
     4='Their'
     5='Other'
     6='Walls'
     ;

VALUE AU0895F
     1='How'
     2='Come'
     3='Always'
     4='Get'
     5='Go'
     6='First'
     ;

VALUE AU0901F
     1='What'
     2='Are'
     3='Hiding'
     4='Under'
     5='Coat'
     ;

VALUE AU0906F
     1='I'
     2='Should'
     3='Always'
     4='New'
     ;

VALUE AU0910F
     1='Whats'
     2='Sugar'
     3='Cream'
     4='Coffee'
     ;

VALUE AU0914F
     1='Ill'
     2='Wait'
     3='Just'
     4='One'
     5='Minute'
     ;

VALUE AU0919F
     1='Final level given'
     ;

VALUE AU0922F
     1='20'
     2='30'
     3='40'
     4='50'
     5='60'
     ;

VALUE AU0923F
     1='Right'
     2='Left'
     ;

VALUE AU0924F
     1='But'
     2='Want'
     3='Ready'
     4='Start'
     ;

VALUE AU0928F
     1='Dont'
     2='Know'
     3='Wrong'
     4='With'
     5='Car'
     ;

VALUE AU0933F
     1='Sure'
     2='Takes'
     3='Sharp'
     4='Knife'
     5='Cut'
     6='Meat'
     ;

VALUE AU0939F
     1='Havent'
     2='Read'
     3='Newspaper'
     4='Since'
     5='Television'
     ;

VALUE AU0944F
     1='Weeds'
     2='Are'
     3='Spoiling'
     4='This'
     5='Yard'
     ;

VALUE AU0949F
     1='Call'
     2='Me'
     3='Little'
     4='Later'
     5='Breakfast'
     ;

VALUE AU0954F
     1='Do'
     2='Have'
     3='Change'
     4='Five-dollar'
     5='Bill'
     ;

VALUE AU0959F
     1='How'
     2='Are'
     3='We'
     4='Bought'
     ;

VALUE AU0963F
     1='Like'
     2='Some'
     3='Ice'
     4='With'
     5='My'
     6='Pie'
     ;

VALUE AU0969F
     1='Dont'
     2='Think'
     3='Ill'
     4='Have'
     5='Dessert'
     ;

VALUE AU0974F
     1='Final level given'
     ;

VALUE AU1027F
     1='70'
     2='80'
     ;

VALUE AU1028F
     1='Right'
     2='Left'
     ;

VALUE AU1029F
     1='Walkings'
     2='My'
     3='Favorite'
     4='Exercise'
     ;

VALUE AU1033F
     1='Heres'
     2='Nice'
     3='Quiet'
     4='Place'
     5='Rest'
     ;

VALUE AU1038F
     1='Our'
     2='Janitor'
     3='Sweeps'
     4='Floors'
     5='Every'
     6='Night'
     ;

VALUE AU1044F
     1='Would'
     2='Much'
     3='Easier'
     4='If'
     5='Everyone'
     6='Help'
     ;

VALUE AU1050F
     1='We'
     2='Good'
     3='Morning'
     4='Begin'
     5='Work'
     ;

VALUE AU1055F
     1='Open'
     2='Window'
     3='Before'
     4='Go'
     5='Bed'
     ;

VALUE AU1060F
     1='Do'
     2='Think'
     3='She'
     4='Should'
     5='Stay'
     6='Here'
     ;

VALUE AU1066F
     1='How'
     2='Do'
     3='Feel'
     4='Changing'
     ;

VALUE AU1070F
     1='When'
     2='Time'
     3='We'
     4='Go'
     ;

VALUE AU1074F
     1='Its'
     2='Late'
     3='Move'
     4='Out'
     5='Way'
     ;

VALUE AU1079F
     1='Final level given'
     ;

VALUE AU1082F
     1='70'
     2='80'
     ;

VALUE AU1083F
     1='Right'
     2='Left'
     ;

VALUE AU1084F
     1='Waters'
     2='Too'
     3='Cold'
     4='Swimming'
     ;

VALUE AU1088F
     1='Why'
     2='Should'
     3='I'
     4='Get'
     5='So'
     6='Early'
     ;

VALUE AU1094F
     1='Shine'
     2='Your'
     3='Shoes'
     4='This'
     5='Time'
     ;

VALUE AU1099F
     1='Its'
     2='Raining'
     3='Here'
     4='Room'
     ;

VALUE AU1103F
     1='Where'
     2='Are'
     3='Going'
     4='Morning'
     ;

VALUE AU1107F
     1='You'
     2='Should'
     3='Come'
     4='Here'
     5='When'
     6='Call'
     ;

VALUE AU1113F
     1='Dont'
     2='Try'
     3='Get'
     4='Out'
     5='Of'
     6='It'
     ;

VALUE AU1119F
     1='We'
     2='Let'
     3='Little'
     4='Children'
     5='Go'
     6='Movies'
     ;

VALUE AU1125F
     1='There'
     2='Isnt'
     3='Enough'
     4='Paint'
     5='Finish'
     ;

VALUE AU1130F
     1='Do'
     2='Want'
     3='Eggs'
     4='Breakfast'
     ;

VALUE AU1134F
     1='Final level given'
     ;

VALUE AU1137F
     1='70'
     2='80'
     ;

VALUE AU1138F
     1='Right'
     2='Left'
     ;

VALUE AU1139F
     1='Everybody'
     2='Brush'
     3='Teeth'
     4='Before'
     5='Meals'
     ;

VALUE AU1144F
     1='Once'
     2='Year'
     3='Everythings'
     4='Right'
     ;

VALUE AU1148F
     1='Dont'
     2='Use'
     3='Up'
     4='All'
     5='Letter'
     6='Paper'
     ;

VALUE AU1154F
     1='Anything'
     2='Thats'
     3='Right'
     ;

VALUE AU1157F
     1='Those'
     2='People'
     3='Outside'
     4='Ought'
     5='See'
     6='Doctor'
     ;

VALUE AU1163F
     1='Windows'
     2='So'
     3='Dirty'
     4='Month'
     5='I'
     6='Cant'
     ;

VALUE AU1169F
     1='Please'
     2='Pass'
     3='Bread'
     4='Butter'
     5='First'
     ;

VALUE AU1174F
     1='Dont'
     2='Forget'
     3='Write'
     4='Pay'
     5='Your'
     6='Bill'
     ;

VALUE AU1180F
     1='Dont'
     2='Let'
     3='Dog'
     4='Out'
     5='House'
     ;

VALUE AU1185F
     1='Theres'
     2='Good'
     3='Ballgame'
     4='Afternoon'
     ;

VALUE AU1189F
     1='Final level given'
     ;

VALUE AU1192F
     1='70'
     2='80'
     ;

VALUE AU1193F
     1='Right'
     2='Left'
     ;

VALUE AU1194F
     1='If'
     2='Want'
     3='Go'
     4='Its'
     ;

VALUE AU1198F
     1='Throw'
     2='These'
     3='Old'
     4='Time'
     5='Magazines'
     6='Out'
     ;

VALUE AU1204F
     1='Do'
     2='Want'
     3='Wash'
     4='Up'
     5='Stream'
     ;

VALUE AU1209F
     1='Real'
     2='Dark'
     3='Night'
     4='So'
     5='Watch'
     6='Driving'
     ;

VALUE AU1215F
     1='Ill'
     2='Carry'
     3='Your'
     4='Package'
     5='You'
     ;

VALUE AU1220F
     1='Dont'
     2='You'
     3='Forget'
     4='Shut'
     5='Off'
     6='Water'
     ;

VALUE AU1226F
     1='Mountain'
     2='Fishing'
     3='Idea'
     4='Good'
     5='Time'
     ;

VALUE AU1231F
     1='Fathers'
     2='Used'
     3='Spend'
     4='- Time'
     5='Children'
     ;

VALUE AU1236F
     1='Be'
     2='Careful'
     3='Not'
     4='Break'
     5='Glasses'
     ;

VALUE AU1241F
     1='Im'
     2='Sorrier'
     3='Than'
     ;

VALUE AU1244F
     1='Final level given'
     ;

VALUE AU1247F
     1='70'
     2='80'
     ;

VALUE AU1248F
     1='Right'
     2='Left'
     ;

VALUE AU1249F
     1='You'
     2='Can'
     3='Catch'
     4='Bus'
     5='Across'
     6='Street'
     ;

VALUE AU1255F
     1='Tell'
     2='Her'
     3='News'
     4='Phone'
     ;

VALUE AU1259F
     1='Ill'
     2='Catch'
     3='Up'
     4='You'
     5='Later'
     ;

VALUE AU1264F
     1='Ill'
     2='Think'
     3='Over'
     4='And'
     5='Call'
     6='Her'
     ;

VALUE AU1270F
     1='I'
     2='Dont'
     3='Want'
     4='Go'
     5='Movies'
     ;

VALUE AU1275F
     1='See'
     2='Dentist'
     3='If'
     4='Your'
     5='Tooth'
     6='Hurts'
     ;

VALUE AU1281F
     1='Put'
     2='That'
     3='Cookie'
     4='Back'
     5='Box'
     ;

VALUE AU1286F
     1='Ought'
     2='Sto'
     3='Fooling'
     4='Around'
     5='Much'
     ;

VALUE AU1291F
     1='Tonight'
     2='That'
     3='Times'
     4='Up'
     ;

VALUE AU1295F
     1='How'
     2='Spell'
     3='Your'
     4='Name'
     ;

VALUE AU1299F
     1='Final level given'
     ;

VALUE AU1302F
     1='70'
     2='80'
     ;

VALUE AU1303F
     1='Right'
     2='Left'
     ;

VALUE AU1304F
     1='Music'
     2='Always'
     3='Makes'
     4='Cheer'
     5='Up'
     ;

VALUE AU1309F
     1='Brothers'
     2='Town'
     3='Short'
     4='While'
     ;

VALUE AU1313F
     1='We'
     2='Live'
     3='Few'
     4='Miles'
     5='Main'
     6='Road'
     ;

VALUE AU1319F
     1='This'
     2='Suit'
     3='Needs'
     4='Go'
     5='Cleaners'
     ;

VALUE AU1324F
     1='They'
     2='Ate'
     3='Enough'
     4='Green'
     5='Apples'
     ;

VALUE AU1329F
     1='You'
     2='Been'
     3='Sick'
     4='All'
     5='This'
     6='Week'
     ;

VALUE AU1335F
     1='Where'
     2='Have'
     3='You'
     4='Working'
     5='Lately'
     ;

VALUE AU1340F
     1='Not'
     2='Enough'
     3='Table'
     4='Room'
     5='Kitchen'
     ;

VALUE AU1345F
     1='Hard'
     2='Where'
     3='He'
     4='Is'
     ;

VALUE AU1349F
     1='Look'
     2='Out'
     3='For'
     4='New'
     5='Business'
     ;

VALUE AU1354F
     1='Final level given'
     ;

VALUE AU1357F
     1='70'
     2='80'
     ;

VALUE AU1358F
     1='Right'
     2='Left'
     ;

VALUE AU1359F
     1='See'
     2='You'
     3='Right'
     4='After'
     5='Lunch'
     ;

VALUE AU1364F
     1='See'
     2='You'
     3='Later'
     4='Afternoon'
     ;

VALUE AU1368F
     1='White'
     2='Shoes'
     3='Awful'
     4='Keep'
     5='Clean'
     ;

VALUE AU1373F
     1='You'
     2='Stand'
     3='Over'
     4='there'
     5='Until'
     6='Move'
     ;

VALUE AU1379F
     1='Theres'
     2='Piece'
     3='Cake'
     4='Left'
     5='Dinner'
     6='Tonight'
     ;

VALUE AU1385F
     1='Dont'
     2='Wait'
     3='Me'
     4='At'
     5='Front'
     6='Corner'
     ;

VALUE AU1391F
     1='Its'
     2='No'
     3='Trouble'
     4='All'
     5='Tell'
     ;

VALUE AU1396F
     1='Hurry'
     2='Up'
     3='Morning'
     4='Paper'
     ;

VALUE AU1400F
     1='Didnt'
     2='Say'
     3='Anything'
     4='Big'
     5='Rain'
     ;

VALUE AU1405F
     1='Drugstore'
     2='Phone'
     3='Calls'
     4='You'
     ;

VALUE AU1409F
     1='Final level given'
     ;

VALUE AU1412F
     1='70'
     2='80'
     ;

VALUE AU1413F
     1='Right'
     2='Left'
     ;

VALUE AU1414F
     1='Believe'
     2='Me'
     3='Too'
     4='Late'
     ;

VALUE AU1418F
     1='Lets'
     2='Get'
     3='That'
     4='Cup'
     5='Coffee'
     ;

VALUE AU1423F
     1='Lets'
     2='Out'
     3='Here'
     4='Before'
     ;

VALUE AU1427F
     1='Hate'
     2='Driving'
     3='If'
     4='Its'
     5='Night'
     ;

VALUE AU1432F
     1='There'
     2='Was'
     3='Water'
     4='Cellar'
     5='Yesterday'
     ;

VALUE AU1437F
     1='Shell'
     2='Only'
     3='Gone'
     4='Few'
     5='Minutes'
     ;

VALUE AU1442F
     1='How'
     2='You'
     3='Know'
     4='Well'
     5='Have'
     6='Soon'
     ;

VALUE AU1448F
     1='Children'
     2='Like'
     3='Candy'
     4='After'
     5='Heavy'
     ;

VALUE AU1453F
     1='No'
     2='Grass'
     3='Dont'
     4='Rain'
     ;

VALUE AU1458F
     1='Theyre'
     2='Not'
     3='Listed'
     4='New'
     5='Phone'
     6='Book'
     ;

VALUE AU1464F
     1='Final level given'
     ;

VALUE AU1467F
     1='70'
     2='80'
     ;

VALUE AU1468F
     1='Right'
     2='Left'
     ;

VALUE AU1469F
     1='Where'
     2='Can'
     3='I'
     4='Find'
     5='Place'
     6='Park'
     ;

VALUE AU1475F
     1='I'
     2='Like'
     3='Those'
     4='Big'
     5='Red'
     6='Apples'
     ;

VALUE AU1481F
     1='Youll'
     2='Fat'
     3='Eating'
     4='Candy'
     ;

VALUE AU1485F
     1='Color'
     2='Shows'
     3='Over'
     4='Fall'
     ;

VALUE AU1489F
     1='Why'
     2='Dont'
     3='Paint'
     4='Their'
     5='Other'
     6='Walls'
     ;

VALUE AU1495F
     1='How'
     2='Come'
     3='Always'
     4='Get'
     5='Go'
     6='First'
     ;

VALUE AU1501F
     1='What'
     2='Are'
     3='Hiding'
     4='Under'
     5='Coat'
     ;

VALUE AU1506F
     1='I'
     2='Should'
     3='Always'
     4='New'
     ;

VALUE AU1510F
     1='Whats'
     2='Sugar'
     3='Cream'
     4='Coffee'
     ;

VALUE AU1514F
     1='Ill'
     2='Wait'
     3='Just'
     4='One'
     5='Minute'
     ;

VALUE AU1519F
     1='Final level given'
     ;

VALUE AU1522F
     1='70'
     2='80'
     ;

VALUE AU1523F
     1='Right'
     2='Left'
     ;

VALUE AU1524F
     1='But'
     2='Want'
     3='Ready'
     4='Start'
     ;

VALUE AU1528F
     1='Dont'
     2='Know'
     3='Wrong'
     4='With'
     5='Car'
     ;

VALUE AU1533F
     1='Sure'
     2='Takes'
     3='Sharp'
     4='Knife'
     5='Cut'
     6='Meat'
     ;

VALUE AU1539F
     1='Havent'
     2='Read'
     3='Newspaper'
     4='Since'
     5='Television'
     ;

VALUE AU1544F
     1='Weeds'
     2='Are'
     3='Spoiling'
     4='This'
     5='Yard'
     ;

VALUE AU1549F
     1='Call'
     2='Me'
     3='Little'
     4='Later'
     5='Breakfast'
     ;

VALUE AU1554F
     1='Do'
     2='Have'
     3='Change'
     4='Five-dollar'
     5='Bill'
     ;

VALUE AU1559F
     1='How'
     2='Are'
     3='We'
     4='Bought'
     ;

VALUE AU1563F
     1='Like'
     2='Some'
     3='Ice'
     4='With'
     5='My'
     6='Pie'
     ;

VALUE AU1569F
     1='Dont'
     2='Think'
     3='Ill'
     4='Have'
     5='Dessert'
     ;

VALUE AU1574F
     1='Final level given'
     ;
RUN;


DATA D_4241;
   INFILE 'c:\temp\DU4241.txt' LRECL = 2000 MISSOVER;
      LENGTH
         SEQN 8
         N1AU0006 8
         N1AU0010 4
         N1AU0011 4
         N1AU0012 4
         N1AU0013 4
         N1AU0014 4
         N1AU0015 4
         N1AU0016 4
         N1AU0017 4
         N1AU0019 4
         N1AU0020 4
         N1AU0022 4
         N1AU0023 4
         N1AU0025 4
         N1AU0027 4
         N1AU0028 4
         N1AU0029 4
         N1AU0030 4
         N1AU0031 4
         N1AU0032 4
         N1AU0033 4
         N1AU0034 4
         N1AU0036 4
         N1AU0037 8
         N1AU0041 4
         N1AU0042 8
         N1AU0046 4
         N1AU0047 8
         N1AU0051 4
         N1AU0052 8
         N1AU0056 4
         N1AU0057 8
         N1AU0061 4
         N1AU0062 8
         N1AU0066 4
         N1AU0067 8
         N1AU0071 4
         N1AU0072 8
         N1AU0076 4
         N1AU0077 8
         N1AU0081 4
         N1AU0082 8
         N1AU0086 4
         N1AU0087 8
         N1AU0091 8
         N1AU0095 8
         N1AU0100 4
         N1AU0101 4
         N1AU0103 4
         N1AU0104 4
         N1AU0105 4
         N1AU0106 8
         N1AU0110 4
         N1AU0112 4
         N1AU0114 4
         N1AU0115 4
         N1AU0116 4
         N1AU0117 4
         N1AU0118 4
         N1AU0119 4
         N1AU0120 4
         N1AU0122 4
         N1AU0123 4
         N1AU0124 4
         N1AU0125 4
         N1AU0126 4
         N1AU0127 4
         N1AU0128 4
         N1AU0129 4
         N1AU0130 4
         N1AU0131 4
         N1AU0132 4
         N1AU0135 4
         N1AU0138 8
         N1AU0144 4
         N1AU0146 4
         N1AU0147 4
         N1AU0150 4
         N1AU0151 4
         N1AU0152 4
         N1AU0153 4
         N1AU0154 4
         N1AU0155 4
         N1AU0156 4
         N1AU0157 4
         N1AU0158 8
         N1AU0164 8
         N1AU0170 8
         N1AU0176 8
         N1AU0182 $12
         N1AU0194 4
         N1AU0196 4
         N1AU0199 4
         N1AU0201 8
         N1AU0205 $20
         N1AU0225 8
         N1AU0230 4
         N1AU0232 4
         N1AU0234 4
         N1AU0237 4
         N1AU0239 4
         N1AU0242 4
         N1AU0245 4
         N1AU0248 4
         N1AU0250 4
         N1AU0253 4
         N1AU0255 4
         N1AU0258 4
         N1AU0261 4
         N1AU0264 4
         N1AU0266 4
         N1AU0269 4
         N1AU0271 4
         N1AU0274 4
         N1AU0277 4
         N1AU0280 4
         N1AU0282 4
         N1AU0285 4
         N1AU0287 4
         N1AU0290 4
         N1AU0293 4
         N1AU0296 4
         N1AU0298 4
         N1AU0301 4
         N1AU0303 4
         N1AU0306 4
         N1AU0308 4
         N1AU0311 4
         N1AU0313 4
         N1AU0316 4
         N1AU0319 4
         N1AU0322 4
         N1AU0324 4
         N1AU0327 4
         N1AU0329 4
         N1AU0332 4
         N1AU0335 4
         N1AU0338 4
         N1AU0340 4
         N1AU0343 4
         N1AU0345 4
         N1AU0348 4
         N1AU0351 4
         N1AU0354 4
         N1AU0356 4
         N1AU0359 4
         N1AU0361 4
         N1AU0364 4
         N1AU0367 4
         N1AU0370 4
         N1AU0372 4
         N1AU0375 4
         N1AU0377 4
         N1AU0380 4
         N1AU0381 $44
         N1AU0425 4
         N1AU0427 4
         N1AU0428 4
         N1AU0429 8
         N1AU0433 8
         N1AU0438 8
         N1AU0444 8
         N1AU0450 8
         N1AU0455 8
         N1AU0460 8
         N1AU0466 8
         N1AU0470 8
         N1AU0474 8
         N1AU0479 4
         N1AU0480 4
         N1AU0482 4
         N1AU0483 4
         N1AU0484 8
         N1AU0488 8
         N1AU0494 8
         N1AU0499 8
         N1AU0503 8
         N1AU0507 8
         N1AU0513 8
         N1AU0519 8
         N1AU0525 8
         N1AU0530 8
         N1AU0534 4
         N1AU0535 4
         N1AU0537 4
         N1AU0538 4
         N1AU0539 8
         N1AU0544 8
         N1AU0548 8
         N1AU0554 4
         N1AU0557 8
         N1AU0563 8
         N1AU0569 8
         N1AU0574 8
         N1AU0580 8
         N1AU0585 8
         N1AU0589 4
         N1AU0590 4
         N1AU0592 4
         N1AU0593 4
         N1AU0594 8
         N1AU0598 8
         N1AU0604 8
         N1AU0609 8
         N1AU0615 8
         N1AU0620 8
         N1AU0626 8
         N1AU0631 8
         N1AU0636 8
         N1AU0641 4
         N1AU0644 4
         N1AU0645 4
         N1AU0647 4
         N1AU0648 4
         N1AU0649 8
         N1AU0655 8
         N1AU0659 8
         N1AU0664 8
         N1AU0670 8
         N1AU0675 8
         N1AU0681 8
         N1AU0686 8
         N1AU0691 8
         N1AU0695 8
         N1AU0699 4
         N1AU0700 4
         N1AU0702 4
         N1AU0703 4
         N1AU0704 8
         N1AU0709 8
         N1AU0713 8
         N1AU0719 8
         N1AU0724 8
         N1AU0729 8
         N1AU0735 8
         N1AU0740 8
         N1AU0745 8
         N1AU0749 8
         N1AU0754 4
         N1AU0755 4
         N1AU0757 4
         N1AU0758 4
         N1AU0759 8
         N1AU0764 8
         N1AU0768 8
         N1AU0773 8
         N1AU0779 8
         N1AU0785 8
         N1AU0791 8
         N1AU0796 8
         N1AU0800 8
         N1AU0805 8
         N1AU0809 4
         N1AU0810 4
         N1AU0812 4
         N1AU0813 4
         N1AU0814 8
         N1AU0818 8
         N1AU0823 8
         N1AU0827 8
         N1AU0832 8
         N1AU0837 8
         N1AU0842 8
         N1AU0848 8
         N1AU0853 8
         N1AU0858 8
         N1AU0864 4
         N1AU0865 4
         N1AU0867 4
         N1AU0868 4
         N1AU0869 8
         N1AU0875 8
         N1AU0881 8
         N1AU0885 8
         N1AU0889 8
         N1AU0895 8
         N1AU0901 8
         N1AU0906 8
         N1AU0910 8
         N1AU0914 8
         N1AU0919 4
         N1AU0920 4
         N1AU0922 4
         N1AU0923 4
         N1AU0924 8
         N1AU0928 8
         N1AU0933 8
         N1AU0939 8
         N1AU0944 8
         N1AU0949 8
         N1AU0954 8
         N1AU0959 8
         N1AU0963 8
         N1AU0969 8
         N1AU0974 4
         N1AU0975 $50
         N1AU1025 4
         N1AU1027 4
         N1AU1028 4
         N1AU1029 8
         N1AU1033 8
         N1AU1038 8
         N1AU1044 8
         N1AU1050 8
         N1AU1055 8
         N1AU1060 8
         N1AU1066 8
         N1AU1070 8
         N1AU1074 8
         N1AU1079 4
         N1AU1080 4
         N1AU1082 4
         N1AU1083 4
         N1AU1084 8
         N1AU1088 8
         N1AU1094 8
         N1AU1099 8
         N1AU1103 8
         N1AU1107 8
         N1AU1113 8
         N1AU1119 8
         N1AU1125 8
         N1AU1130 8
         N1AU1134 4
         N1AU1135 4
         N1AU1137 4
         N1AU1138 4
         N1AU1139 8
         N1AU1144 8
         N1AU1148 8
         N1AU1154 4
         N1AU1157 8
         N1AU1163 8
         N1AU1169 8
         N1AU1174 8
         N1AU1180 8
         N1AU1185 8
         N1AU1189 4
         N1AU1190 4
         N1AU1192 4
         N1AU1193 4
         N1AU1194 8
         N1AU1198 8
         N1AU1204 8
         N1AU1209 8
         N1AU1215 8
         N1AU1220 8
         N1AU1226 8
         N1AU1231 8
         N1AU1236 8
         N1AU1241 4
         N1AU1244 4
         N1AU1245 4
         N1AU1247 4
         N1AU1248 4
         N1AU1249 8
         N1AU1255 8
         N1AU1259 8
         N1AU1264 8
         N1AU1270 8
         N1AU1275 8
         N1AU1281 8
         N1AU1286 8
         N1AU1291 8
         N1AU1295 8
         N1AU1299 4
         N1AU1300 4
         N1AU1302 4
         N1AU1303 4
         N1AU1304 8
         N1AU1309 8
         N1AU1313 8
         N1AU1319 8
         N1AU1324 8
         N1AU1329 8
         N1AU1335 8
         N1AU1340 8
         N1AU1345 8
         N1AU1349 8
         N1AU1354 4
         N1AU1355 4
         N1AU1357 4
         N1AU1358 4
         N1AU1359 8
         N1AU1364 8
         N1AU1368 8
         N1AU1373 8
         N1AU1379 8
         N1AU1385 8
         N1AU1391 8
         N1AU1396 8
         N1AU1400 8
         N1AU1405 8
         N1AU1409 4
         N1AU1410 4
         N1AU1412 4
         N1AU1413 4
         N1AU1414 8
         N1AU1418 8
         N1AU1423 8
         N1AU1427 8
         N1AU1432 8
         N1AU1437 8
         N1AU1442 8
         N1AU1448 8
         N1AU1453 8
         N1AU1458 8
         N1AU1464 4
         N1AU1465 4
         N1AU1467 4
         N1AU1468 4
         N1AU1469 8
         N1AU1475 8
         N1AU1481 8
         N1AU1485 8
         N1AU1489 8
         N1AU1495 8
         N1AU1501 8
         N1AU1506 8
         N1AU1510 8
         N1AU1514 8
         N1AU1519 4
         N1AU1520 4
         N1AU1522 4
         N1AU1523 4
         N1AU1524 8
         N1AU1528 8
         N1AU1533 8
         N1AU1539 8
         N1AU1544 8
         N1AU1549 8
         N1AU1554 8
         N1AU1559 8
         N1AU1563 8
         N1AU1569 8
         N1AU1574 4
         N1AU1575 $26
      ;



FORMAT
     N1AU0010 AU0010F.
     N1AU0011 AU0011F.
     N1AU0012 AU0012F.
     N1AU0013 AU0013F.
     N1AU0014 AU0014F.
     N1AU0015 AU0015F.
     N1AU0016 AU0016F.
     N1AU0017 AU0017F.
     N1AU0019 AU0019F.
     N1AU0020 AU0020F.
     N1AU0022 AU0022F.
     N1AU0027 AU0027F.
     N1AU0028 AU0028F.
     N1AU0029 AU0029F.
     N1AU0030 AU0030F.
     N1AU0031 AU0031F.
     N1AU0032 AU0032F.
     N1AU0033 AU0033F.
     N1AU0034 AU0034F.
     N1AU0036 AU0036F.
     N1AU0037 AU0037F.
     N1AU0041 AU0041F.
     N1AU0042 AU0042F.
     N1AU0046 AU0046F.
     N1AU0047 AU0047F.
     N1AU0051 AU0051F.
     N1AU0052 AU0052F.
     N1AU0056 AU0056F.
     N1AU0057 AU0057F.
     N1AU0061 AU0061F.
     N1AU0062 AU0062F.
     N1AU0066 AU0066F.
     N1AU0067 AU0067F.
     N1AU0071 AU0071F.
     N1AU0072 AU0072F.
     N1AU0076 AU0076F.
     N1AU0077 AU0077F.
     N1AU0081 AU0081F.
     N1AU0082 AU0082F.
     N1AU0086 AU0086F.
     N1AU0087 AU0087F.
     N1AU0091 AU0091F.
     N1AU0100 AU0100F.
     N1AU0103 AU0103F.
     N1AU0104 AU0104F.
     N1AU0105 AU0105F.
     N1AU0110 AU0110F.
     N1AU0112 AU0112F.
     N1AU0114 AU0114F.
     N1AU0115 AU0115F.
     N1AU0116 AU0116F.
     N1AU0117 AU0117F.
     N1AU0118 AU0118F.
     N1AU0119 AU0119F.
     N1AU0120 AU0120F.
     N1AU0122 AU0122F.
     N1AU0123 AU0123F.
     N1AU0124 AU0124F.
     N1AU0125 AU0125F.
     N1AU0126 AU0126F.
     N1AU0127 AU0127F.
     N1AU0128 AU0128F.
     N1AU0129 AU0129F.
     N1AU0130 AU0130F.
     N1AU0131 AU0131F.
     N1AU0146 AU0146F.
     N1AU0147 AU0147F.
     N1AU0150 AU0150F.
     N1AU0151 AU0151F.
     N1AU0152 AU0152F.
     N1AU0153 AU0153F.
     N1AU0154 AU0154F.
     N1AU0155 AU0155F.
     N1AU0156 AU0156F.
     N1AU0157 AU0157F.
     N1AU0225 AU0225F.
     N1AU0230 AU0230F.
     N1AU0234 AU0234F.
     N1AU0237 AU0237F.
     N1AU0239 AU0239F.
     N1AU0242 AU0242F.
     N1AU0245 AU0245F.
     N1AU0250 AU0250F.
     N1AU0253 AU0253F.
     N1AU0255 AU0255F.
     N1AU0258 AU0258F.
     N1AU0261 AU0261F.
     N1AU0266 AU0266F.
     N1AU0269 AU0269F.
     N1AU0271 AU0271F.
     N1AU0274 AU0274F.
     N1AU0277 AU0277F.
     N1AU0282 AU0282F.
     N1AU0285 AU0285F.
     N1AU0287 AU0287F.
     N1AU0290 AU0290F.
     N1AU0293 AU0293F.
     N1AU0298 AU0298F.
     N1AU0301 AU0301F.
     N1AU0303 AU0303F.
     N1AU0308 AU0308F.
     N1AU0311 AU0311F.
     N1AU0313 AU0313F.
     N1AU0316 AU0316F.
     N1AU0319 AU0319F.
     N1AU0324 AU0324F.
     N1AU0327 AU0327F.
     N1AU0329 AU0329F.
     N1AU0332 AU0332F.
     N1AU0335 AU0335F.
     N1AU0340 AU0340F.
     N1AU0343 AU0343F.
     N1AU0345 AU0345F.
     N1AU0348 AU0348F.
     N1AU0351 AU0351F.
     N1AU0356 AU0356F.
     N1AU0359 AU0359F.
     N1AU0361 AU0361F.
     N1AU0364 AU0364F.
     N1AU0367 AU0367F.
     N1AU0372 AU0372F.
     N1AU0375 AU0375F.
     N1AU0377 AU0377F.
     N1AU0380 AU0380F.
     N1AU0427 AU0427F.
     N1AU0428 AU0428F.
     N1AU0479 AU0479F.
     N1AU0482 AU0482F.
     N1AU0483 AU0483F.
     N1AU0534 AU0534F.
     N1AU0537 AU0537F.
     N1AU0538 AU0538F.
     N1AU0589 AU0589F.
     N1AU0592 AU0592F.
     N1AU0593 AU0593F.
     N1AU0644 AU0644F.
     N1AU0647 AU0647F.
     N1AU0648 AU0648F.
     N1AU0699 AU0699F.
     N1AU0702 AU0702F.
     N1AU0703 AU0703F.
     N1AU0754 AU0754F.
     N1AU0757 AU0757F.
     N1AU0758 AU0758F.
     N1AU0809 AU0809F.
     N1AU0812 AU0812F.
     N1AU0813 AU0813F.
     N1AU0864 AU0864F.
     N1AU0867 AU0867F.
     N1AU0868 AU0868F.
     N1AU0919 AU0919F.
     N1AU0922 AU0922F.
     N1AU0923 AU0923F.
     N1AU0974 AU0974F.
     N1AU1027 AU1027F.
     N1AU1028 AU1028F.
     N1AU1079 AU1079F.
     N1AU1082 AU1082F.
     N1AU1083 AU1083F.
     N1AU1134 AU1134F.
     N1AU1137 AU1137F.
     N1AU1138 AU1138F.
     N1AU1189 AU1189F.
     N1AU1192 AU1192F.
     N1AU1193 AU1193F.
     N1AU1244 AU1244F.
     N1AU1247 AU1247F.
     N1AU1248 AU1248F.
     N1AU1299 AU1299F.
     N1AU1302 AU1302F.
     N1AU1303 AU1303F.
     N1AU1354 AU1354F.
     N1AU1357 AU1357F.
     N1AU1358 AU1358F.
     N1AU1409 AU1409F.
     N1AU1412 AU1412F.
     N1AU1413 AU1413F.
     N1AU1464 AU1464F.
     N1AU1467 AU1467F.
     N1AU1468 AU1468F.
     N1AU1519 AU1519F.
     N1AU1522 AU1522F.
     N1AU1523 AU1523F.
     ;

	INPUT
         SEQN 1-5
         N1AU0006 6-9
         N1AU0010 10
         N1AU0011 11
         N1AU0012 12
         N1AU0013 13
         N1AU0014 14
         N1AU0015 15
         N1AU0016 16
         N1AU0017 17-18
         N1AU0019 19
         N1AU0020 20-21
         N1AU0022 22
         N1AU0023 23-24
         N1AU0025 25-26
         N1AU0027 27
         N1AU0028 28
         N1AU0029 29
         N1AU0030 30
         N1AU0031 31
         N1AU0032 32
         N1AU0033 33
         N1AU0034 34-35
         N1AU0036 36
         N1AU0037 37-40
         N1AU0041 41
         N1AU0042 42-45
         N1AU0046 46
         N1AU0047 47-50
         N1AU0051 51
         N1AU0052 52-55
         N1AU0056 56
         N1AU0057 57-60
         N1AU0061 61
         N1AU0062 62-65
         N1AU0066 66
         N1AU0067 67-70
         N1AU0071 71
         N1AU0072 72-75
         N1AU0076 76
         N1AU0077 77-80
         N1AU0081 81
         N1AU0082 82-85
         N1AU0086 86
         N1AU0087 87-90
         N1AU0091 91-94
         N1AU0095 95-99
         N1AU0100 100
         N1AU0101 101-102
         N1AU0103 103
         N1AU0104 104
         N1AU0105 105
         N1AU0106 106-109
         N1AU0110 110-111
         N1AU0112 112-113
         N1AU0114 114
         N1AU0115 115
         N1AU0116 116
         N1AU0117 117
         N1AU0118 118
         N1AU0119 119
         N1AU0120 120-121
         N1AU0122 122
         N1AU0123 123
         N1AU0124 124
         N1AU0125 125
         N1AU0126 126
         N1AU0127 127
         N1AU0128 128
         N1AU0129 129
         N1AU0130 130
         N1AU0131 131
         N1AU0132 132-134
         N1AU0135 135-137
         N1AU0138 138-143
         N1AU0144 144-145
         N1AU0146 146
         N1AU0147 147-149
         N1AU0150 150
         N1AU0151 151
         N1AU0152 152
         N1AU0153 153
         N1AU0154 154
         N1AU0155 155
         N1AU0156 156
         N1AU0157 157
         N1AU0158 158-163
         N1AU0164 164-169
         N1AU0170 170-175
         N1AU0176 176-181
         N1AU0182 182-193
         N1AU0194 194-195
         N1AU0196 196-198
         N1AU0199 199-200
         N1AU0201 201-204
         N1AU0205 205-224
         N1AU0225 225-229
         N1AU0230 230-231
         N1AU0232 232-233
         N1AU0234 234-236
         N1AU0237 237-238
         N1AU0239 239-241
         N1AU0242 242-244
         N1AU0245 245-247
         N1AU0248 248-249
         N1AU0250 250-252
         N1AU0253 253-254
         N1AU0255 255-257
         N1AU0258 258-260
         N1AU0261 261-263
         N1AU0264 264-265
         N1AU0266 266-268
         N1AU0269 269-270
         N1AU0271 271-273
         N1AU0274 274-276
         N1AU0277 277-279
         N1AU0280 280-281
         N1AU0282 282-284
         N1AU0285 285-286
         N1AU0287 287-289
         N1AU0290 290-292
         N1AU0293 293-295
         N1AU0296 296-297
         N1AU0298 298-300
         N1AU0301 301-302
         N1AU0303 303-305
         N1AU0306 306-307
         N1AU0308 308-310
         N1AU0311 311-312
         N1AU0313 313-315
         N1AU0316 316-318
         N1AU0319 319-321
         N1AU0322 322-323
         N1AU0324 324-326
         N1AU0327 327-328
         N1AU0329 329-331
         N1AU0332 332-334
         N1AU0335 335-337
         N1AU0338 338-339
         N1AU0340 340-342
         N1AU0343 343-344
         N1AU0345 345-347
         N1AU0348 348-350
         N1AU0351 351-353
         N1AU0354 354-355
         N1AU0356 356-358
         N1AU0359 359-360
         N1AU0361 361-363
         N1AU0364 364-366
         N1AU0367 367-369
         N1AU0370 370-371
         N1AU0372 372-374
         N1AU0375 375-376
         N1AU0377 377-379
         N1AU0380 380
         N1AU0381 381-424
         N1AU0425 425-426
         N1AU0427 427
         N1AU0428 428
         N1AU0429 429-432
         N1AU0433 433-437
         N1AU0438 438-443
         N1AU0444 444-449
         N1AU0450 450-454
         N1AU0455 455-459
         N1AU0460 460-465
         N1AU0466 466-469
         N1AU0470 470-473
         N1AU0474 474-478
         N1AU0479 479
         N1AU0480 480-481
         N1AU0482 482
         N1AU0483 483
         N1AU0484 484-487
         N1AU0488 488-493
         N1AU0494 494-498
         N1AU0499 499-502
         N1AU0503 503-506
         N1AU0507 507-512
         N1AU0513 513-518
         N1AU0519 519-524
         N1AU0525 525-529
         N1AU0530 530-533
         N1AU0534 534
         N1AU0535 535-536
         N1AU0537 537
         N1AU0538 538
         N1AU0539 539-543
         N1AU0544 544-547
         N1AU0548 548-553
         N1AU0554 554-556
         N1AU0557 557-562
         N1AU0563 563-568
         N1AU0569 569-573
         N1AU0574 574-579
         N1AU0580 580-584
         N1AU0585 585-588
         N1AU0589 589
         N1AU0590 590-591
         N1AU0592 592
         N1AU0593 593
         N1AU0594 594-597
         N1AU0598 598-603
         N1AU0604 604-608
         N1AU0609 609-614
         N1AU0615 615-619
         N1AU0620 620-625
         N1AU0626 626-630
         N1AU0631 631-635
         N1AU0636 636-640
         N1AU0641 641-643
         N1AU0644 644
         N1AU0645 645-646
         N1AU0647 647
         N1AU0648 648
         N1AU0649 649-654
         N1AU0655 655-658
         N1AU0659 659-663
         N1AU0664 664-669
         N1AU0670 670-674
         N1AU0675 675-680
         N1AU0681 681-685
         N1AU0686 686-690
         N1AU0691 691-694
         N1AU0695 695-698
         N1AU0699 699
         N1AU0700 700-701
         N1AU0702 702
         N1AU0703 703
         N1AU0704 704-708
         N1AU0709 709-712
         N1AU0713 713-718
         N1AU0719 719-723
         N1AU0724 724-728
         N1AU0729 729-734
         N1AU0735 735-739
         N1AU0740 740-744
         N1AU0745 745-748
         N1AU0749 749-753
         N1AU0754 754
         N1AU0755 755-756
         N1AU0757 757
         N1AU0758 758
         N1AU0759 759-763
         N1AU0764 764-767
         N1AU0768 768-772
         N1AU0773 773-778
         N1AU0779 779-784
         N1AU0785 785-790
         N1AU0791 791-795
         N1AU0796 796-799
         N1AU0800 800-804
         N1AU0805 805-808
         N1AU0809 809
         N1AU0810 810-811
         N1AU0812 812
         N1AU0813 813
         N1AU0814 814-817
         N1AU0818 818-822
         N1AU0823 823-826
         N1AU0827 827-831
         N1AU0832 832-836
         N1AU0837 837-841
         N1AU0842 842-847
         N1AU0848 848-852
         N1AU0853 853-857
         N1AU0858 858-863
         N1AU0864 864
         N1AU0865 865-866
         N1AU0867 867
         N1AU0868 868
         N1AU0869 869-874
         N1AU0875 875-880
         N1AU0881 881-884
         N1AU0885 885-888
         N1AU0889 889-894
         N1AU0895 895-900
         N1AU0901 901-905
         N1AU0906 906-909
         N1AU0910 910-913
         N1AU0914 914-918
         N1AU0919 919
         N1AU0920 920-921
         N1AU0922 922
         N1AU0923 923
         N1AU0924 924-927
         N1AU0928 928-932
         N1AU0933 933-938
         N1AU0939 939-943
         N1AU0944 944-948
         N1AU0949 949-953
         N1AU0954 954-958
         N1AU0959 959-962
         N1AU0963 963-968
         N1AU0969 969-973
         N1AU0974 974
         N1AU0975 975-1024
         N1AU1025 1025-1026
         N1AU1027 1027
         N1AU1028 1028
         N1AU1029 1029-1032
         N1AU1033 1033-1037
         N1AU1038 1038-1043
         N1AU1044 1044-1049
         N1AU1050 1050-1054
         N1AU1055 1055-1059
         N1AU1060 1060-1065
         N1AU1066 1066-1069
         N1AU1070 1070-1073
         N1AU1074 1074-1078
         N1AU1079 1079
         N1AU1080 1080-1081
         N1AU1082 1082
         N1AU1083 1083
         N1AU1084 1084-1087
         N1AU1088 1088-1093
         N1AU1094 1094-1098
         N1AU1099 1099-1102
         N1AU1103 1103-1106
         N1AU1107 1107-1112
         N1AU1113 1113-1118
         N1AU1119 1119-1124
         N1AU1125 1125-1129
         N1AU1130 1130-1133
         N1AU1134 1134
         N1AU1135 1135-1136
         N1AU1137 1137
         N1AU1138 1138
         N1AU1139 1139-1143
         N1AU1144 1144-1147
         N1AU1148 1148-1153
         N1AU1154 1154-1156
         N1AU1157 1157-1162
         N1AU1163 1163-1168
         N1AU1169 1169-1173
         N1AU1174 1174-1179
         N1AU1180 1180-1184
         N1AU1185 1185-1188
         N1AU1189 1189
         N1AU1190 1190-1191
         N1AU1192 1192
         N1AU1193 1193
         N1AU1194 1194-1197
         N1AU1198 1198-1203
         N1AU1204 1204-1208
         N1AU1209 1209-1214
         N1AU1215 1215-1219
         N1AU1220 1220-1225
         N1AU1226 1226-1230
         N1AU1231 1231-1235
         N1AU1236 1236-1240
         N1AU1241 1241-1243
         N1AU1244 1244
         N1AU1245 1245-1246
         N1AU1247 1247
         N1AU1248 1248
         N1AU1249 1249-1254
         N1AU1255 1255-1258
         N1AU1259 1259-1263
         N1AU1264 1264-1269
         N1AU1270 1270-1274
         N1AU1275 1275-1280
         N1AU1281 1281-1285
         N1AU1286 1286-1290
         N1AU1291 1291-1294
         N1AU1295 1295-1298
         N1AU1299 1299
         N1AU1300 1300-1301
         N1AU1302 1302
         N1AU1303 1303
         N1AU1304 1304-1308
         N1AU1309 1309-1312
         N1AU1313 1313-1318
         N1AU1319 1319-1323
         N1AU1324 1324-1328
         N1AU1329 1329-1334
         N1AU1335 1335-1339
         N1AU1340 1340-1344
         N1AU1345 1345-1348
         N1AU1349 1349-1353
         N1AU1354 1354
         N1AU1355 1355-1356
         N1AU1357 1357
         N1AU1358 1358
         N1AU1359 1359-1363
         N1AU1364 1364-1367
         N1AU1368 1368-1372
         N1AU1373 1373-1378
         N1AU1379 1379-1384
         N1AU1385 1385-1390
         N1AU1391 1391-1395
         N1AU1396 1396-1399
         N1AU1400 1400-1404
         N1AU1405 1405-1408
         N1AU1409 1409
         N1AU1410 1410-1411
         N1AU1412 1412
         N1AU1413 1413
         N1AU1414 1414-1417
         N1AU1418 1418-1422
         N1AU1423 1423-1426
         N1AU1427 1427-1431
         N1AU1432 1432-1436
         N1AU1437 1437-1441
         N1AU1442 1442-1447
         N1AU1448 1448-1452
         N1AU1453 1453-1457
         N1AU1458 1458-1463
         N1AU1464 1464
         N1AU1465 1465-1466
         N1AU1467 1467
         N1AU1468 1468
         N1AU1469 1469-1474
         N1AU1475 1475-1480
         N1AU1481 1481-1484
         N1AU1485 1485-1488
         N1AU1489 1489-1494
         N1AU1495 1495-1500
         N1AU1501 1501-1505
         N1AU1506 1506-1509
         N1AU1510 1510-1513
         N1AU1514 1514-1518
         N1AU1519 1519
         N1AU1520 1520-1521
         N1AU1522 1522
         N1AU1523 1523
         N1AU1524 1524-1527
         N1AU1528 1528-1532
         N1AU1533 1533-1538
         N1AU1539 1539-1543
         N1AU1544 1544-1548
         N1AU1549 1549-1553
         N1AU1554 1554-1558
         N1AU1559 1559-1562
         N1AU1563 1563-1568
         N1AU1569 1569-1573
         N1AU1574 1574
         N1AU1575 1575-1600
      ;

      LABEL
         SEQN = "SAMPLE SEQUENCE NUMBER"
         N1AU0006 = "CATALOG NUMBER 4271"
         N1AU0010 = "SIZE OF PLACE"
         N1AU0011 = "SMSA-NOT SMSA"
         N1AU0012 = "TYPE OF LIVING QUARTERS"
         N1AU0013 = "LAND USAGE"
         N1AU0014 = "IF RURAL, ASKED HOW MANY ACRES OF LA ..."
         N1AU0015 = "IF 10 ACRES OF MORE, ASKED IF SALE O ..."
         N1AU0016 = "IF 10 ACRES OR LESS, ASKED IF SALE O ..."
         N1AU0017 = "AGE-HEAD OF HOUSEHOLD"
         N1AU0019 = "SEX-HEAD OF HOUSEHOLD"
         N1AU0020 = "HIGHEST GRADE ATTENDED-HEAD OF HOUSEHOLD"
         N1AU0022 = "RACE-HEAD OF HOUSEHOLD"
         N1AU0023 = "TOTAL NUMBER OF PERSONS IN HOUSEHOLD"
         N1AU0025 = "TOTAL SAMPLE PERSONS IN HOUSEHOLD"
         N1AU0027 = "NUMBER OF ROOMS IN HOUSE "
         N1AU0028 = "IS THERE PIPED WATER?"
         N1AU0029 = "IS THERE HOT AND COLD PIPED WATER?"
         N1AU0030 = "IF YES TO PIPED WATER-DOES HOUSE HAV ..."
         N1AU0031 = "DOES HOUSE HAVE A RANGE OR COOK STOVE?"
         N1AU0032 = "DOES HOUSE HAVE A REFRIGERATOR?"
         N1AU0033 = "ARE KITCHEN FACILITIES USED BY ANYON ..."
         N1AU0034 = "TOTAL FAMILY INCOME GROUP"
         N1AU0036 = "WAGES OR SALARIES?"
         N1AU0037 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER ..."
         N1AU0041 = "SOCIAL SECURITY OR  RAILROAD RETIREMENT?"
         N1AU0042 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AU0046 = "WELFARE PAYMENTS OR OTHER PUBLIC ASS ..."
         N1AU0047 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AU0051 = "UNEMPLOYMENT OR WORKMEN'S COMPENSATION?"
         N1AU0052 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AU0056 = "GOVERNMENT EMPLOYEE PENSIONS OR PRIV ..."
         N1AU0057 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AU0061 = "DIVIDENDS, INTEREST OR RENT?"
         N1AU0062 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AU0066 = "NET INCOME FROM  OWN NON-FARM BUSINE ..."
         N1AU0067 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AU0071 = "NET INCOME FROM A FARM?"
         N1AU0072 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AU0076 = "VETERAN'S PAYMENTS"
         N1AU0077 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AU0081 = "ALIMONY, CHILD SUPPORT OR CONTRIBUTI ..."
         N1AU0082 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AU0086 = "ANY OTHER INCOME?"
         N1AU0087 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AU0091 = "TOTAL AMOUNT(TOTAL OF POSITIONS 37-90)"
         N1AU0095 = "FAMILY UNIT CODE"
         N1AU0100 = "RELATIONSHIP TO HEAD OF HOUSEHOLD"
         N1AU0101 = "AGE AT INTERVIEW"
         N1AU0103 = "RACE OF EXAMINED PERSON"
         N1AU0104 = "SEX OF EXAMINED PERSON"
         N1AU0105 = "MARITAL STATUS"
         N1AU0106 = "DATE OF BIRTH (MONTH, YEAR)"
         N1AU0110 = "PLACE OF BIRTH"
         N1AU0112 = "HIGHEST GRADE OF REGULAR SCHOOL EVER ..."
         N1AU0114 = "DID HE FINISH THE GRADE?"
         N1AU0115 = "IS HE ATTENDING SCHOOL NOW?"
         N1AU0116 = "HAS HE EVER ATTENDED A SCHOOL OF ANY ..."
         N1AU0117 = "IF YES, WHAT KIND OF SCHOOL?"
         N1AU0118 = "IS ANY LANGUAGE OTHER THAN ENGLISH F ..."
         N1AU0119 = "IF YES, WHAT LANGUAGE"
         N1AU0120 = "WHAT IS YOUR MAIN ANCESTRY OR NATION ..."
         N1AU0122 = "WHAT WAS HE DOING MOST PAST THREE MO ..."
         N1AU0123 = "IF ' SOMETHING ELSE' FROM ABOVE, WHA ..."
         N1AU0124 = "IF 'KEEPING HOUSE' OR 'SOMETHING ELS ..."
         N1AU0125 = "IF 'WORKING' FROM ABOVE, DID HE WORK ..."
         N1AU0126 = "DID HE WORK AT ANY TIME LAST WEEK OR ..."
         N1AU0127 = "IF 'NO TO ABOVE, EVEN THOUGH HE DID  ..."
         N1AU0128 = "IF 'NO' IN POSITION 126, WAS HE LOOK ..."
         N1AU0129 = "IF YES TO ABOVE-WHICH?"
         N1AU0130 = "CLASS OF WORKER"
         N1AU0131 = "IF SELF-EMPLOYED IN 'OWN' BUSINESS A ..."
         N1AU0132 = "BUSINESS OR INDUSTRY CODE"
         N1AU0135 = "OCCUPATION CODE"
         N1AU0138 = "DATE OF EXAMINATION"
         N1AU0144 = "AGE AT EXAMINATION"
         N1AU0146 = "FARM"
         N1AU0147 = "POVERTY INDEX (X.XX)"
         N1AU0150 = "RELIGION"
         N1AU0151 = "FOOD PROGRAMS APPLICABILITY"
         N1AU0152 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1AU0153 = "ARE YOU BUYING STAMPS NOW?"
         N1AU0154 = "WHAT IS THE MAIN REASON YOU AREN'T P ..."
         N1AU0155 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1AU0156 = "ARE YOU RECEIVING COMMODITY FOODS  N ..."
         N1AU0157 = "WHY AREN'T YOU PARTICIPATING IN THE  ..."
         N1AU0158 = "DETAILED PERSONS-LOCATIONS 1-35"
         N1AU0164 = "ALL SAMPLE PERSONS, LOCATIONS 1-35"
         N1AU0170 = "DETAILED PERSONS-LOCATIONS 1-65"
         N1AU0176 = "ALL SAMPLE PERSONS, LOCATIONS 1-65"
         N1AU0182 = "DATA USER WORK AREA"
         N1AU0194 = "STRATA 1/"
         N1AU0196 = " PRIMARY SAMPLING UNITS1"
         N1AU0199 = " WORK AREA"
         N1AU0201 = "CATALOG NUMBER 4241"
         N1AU0205 = "BLANK--DATA USER WORK AREA"
         N1AU0225 = "AUDIOMETER NUMBER"
         N1AU0230 = "EXAMINER NUMBER"
         N1AU0232 = "AIR CONDUCTION--RIGHT EAR (RETEST R  ..."
         N1AU0234 = "AIR CONDUCTION HEARING LEVEL, RIGHT  ..."
         N1AU0237 = "MASKING ON RIGHT EAR (right ear HL + ..."
         N1AU0239 = "BONE CONDUCTION HEARING LEVEL ON LEF ..."
         N1AU0242 = "BONE CONDUCTION HEARING LEVEL ON LEF ..."
         N1AU0245 = "BONE CONDUCTION HEARING LEVEL ON LEF ..."
         N1AU0248 = "AIR CONDUCTION--RIGHT EAR (RETEST R  ..."
         N1AU0250 = "AIR CONDUCTION HEARING LEVEL, RIGHT  ..."
         N1AU0253 = "MASKING ON RIGHT EAR (right ear HL + ..."
         N1AU0255 = "BONE CONDUCTION HEARING LEVEL ON LEF ..."
         N1AU0258 = "BONE CONDUCTION HEARING LEVEL ON LEF ..."
         N1AU0261 = "BONE CONDUCTION HEARING LEVEL ON LEF ..."
         N1AU0264 = "4000HZ, AIR CONDUCTION--RIGHT EAR (R ..."
         N1AU0266 = "AIR CONDUCTION HEARING LEVEL, RIGHT  ..."
         N1AU0269 = "MASKING ON RIGHT EAR (right ear HL + ..."
         N1AU0271 = "BONE CONDUCTION HEARING LEVEL ON LEF ..."
         N1AU0274 = "BONE CONDUCTION HEARING LEVEL ON LEF ..."
         N1AU0277 = "BONE CONDUCTION HEARING LEVEL ON LEF ..."
         N1AU0280 = "AIR CONDUCTION--RIGHT EAR (RETEST R  ..."
         N1AU0282 = "AIR CONDUCTION HEARING LEVEL, RIGHT  ..."
         N1AU0285 = "MASKING ON RIGHT EAR (right ear HL + ..."
         N1AU0287 = "BONE CONDUCTION HEARING LEVEL ON LEF ..."
         N1AU0290 = "BONE CONDUCTION HEARING LEVEL ON LEF ..."
         N1AU0293 = "BONE CONDUCTION HEARING LEVEL ON LEF ..."
         N1AU0296 = "AIR CONDUCTION--RIGHT EAR (RETEST R  ..."
         N1AU0298 = "AIR CONDUCTION HEARING LEVEL ON RIGH ..."
         N1AU0301 = "MASKING ON RIGHT EAR (right ear HL + ..."
         N1AU0303 = "BONE CONDUCTION HEARING LEVEL ON LEF ..."
         N1AU0306 = "1000Hz AIR CONDUCTION--LEFT EAR (RET ..."
         N1AU0308 = "AIR CONDUCTION HEARING LEVEL ON RIGH ..."
         N1AU0311 = "MASKING ON LEFT EAR (right ear HL +  ..."
         N1AU0313 = "BONE CONDUCTION HEARING LEVEL ON RIG ..."
         N1AU0316 = "BONE CONDUCTION HEARING LEVEL ON RIG ..."
         N1AU0319 = "BONE CONDUCTION HEARING LEVEL ON RIG ..."
         N1AU0322 = "2000Hz AIR CONDUCTION--LEFT EAR (RET ..."
         N1AU0324 = "AIR CONDITION HEARING LEVEL ON LEFT  ..."
         N1AU0327 = "MASKING ON RIGHT EAR (right ear HL + ..."
         N1AU0329 = "BONE CONDUCTION HEARING LEVEL ON RIG ..."
         N1AU0332 = "BONE CONDUCTION HEARING LEVEL ON RIG ..."
         N1AU0335 = "BONE CONDUCTION HEARING LEVEL ON RIG ..."
         N1AU0338 = "4000 Hz AIR CONDUCTION HEARING LEVEL ..."
         N1AU0340 = "AIR CONDITION HEARING LEVEL ON LEFT  ..."
         N1AU0343 = "MASKING ON LEFT EAR (right ear HL +  ..."
         N1AU0345 = "BONE CONDUCTION HEARING LEVEL ON RIG ..."
         N1AU0348 = "BONE CONDUCTION HEARING LEVEL ON RIG ..."
         N1AU0351 = "BONE CONDUCTION HEARING LEVEL ON RIG ..."
         N1AU0354 = "500 Hz AIR CONDUCTION--LEFT EAR (RET ..."
         N1AU0356 = "AIR CONDUCTION HEARING LEVEL ON LEFT ..."
         N1AU0359 = "MASKING ON LEFT EAR(LEFT EAR HL + 30 Db)"
         N1AU0361 = "BONE CONDUCTION HEARING LEVEL ON RIG ..."
         N1AU0364 = "BONE CONDUCTION HEARING LEVEL ON RIG ..."
         N1AU0367 = "BONE CONDUCTION HEARING LEVEL ON RIG ..."
         N1AU0370 = "1000 Hz AIR CONDUCTION--LEFT EAR (RE ..."
         N1AU0372 = "AIR CONDUCTION HEARING LEVEL ON LEFT ..."
         N1AU0375 = "MASKING ON LEFT EAR (left ear HL + 30dB)"
         N1AU0377 = "BONE CONDUCTION HEARING LEVEL ON RIG ..."
         N1AU0380 = "CONDITIONS AFFECTING TEST RESULTS"
         N1AU0381 = "BLANK--DATA USER WORK AREA"
         N1AU0425 = "SPEECH TEST (RECEPTION) LIST NUMBER"
         N1AU0427 = "DECIBELS"
         N1AU0428 = "EAR TESTED"
         N1AU0429 = "LIST 01-SENTENCE 1 (0001-1234-KEY WO ..."
         N1AU0433 = "LIST 01-SENTENCE 2 (00001-12345-KEY  ..."
         N1AU0438 = "LIST 01-SENTENCE 3 (00001-123456-KEY ..."
         N1AU0444 = "LIST 01-SENTENCE 4 (00001-123456-KEY ..."
         N1AU0450 = "LIST 01-SENTENCE 5 (00001-12345-KEY  ..."
         N1AU0455 = "LIST 01-SENTENCE 6 (0001-12345-KEY W ..."
         N1AU0460 = "LIST 01-SENTENCE 7 (000001-123456-KE ..."
         N1AU0466 = "LIST 01-SENTENCE 8 (0001-1234-KEY WO ..."
         N1AU0470 = "LIST 01-SENTENCE 9 (0001-1234-KEY WO ..."
         N1AU0474 = "LIST 01-SENTENCE 10 (0001-12345-KEY  ..."
         N1AU0479 = "RECORDER"
         N1AU0480 = "LIST NUMBER"
         N1AU0482 = "DECIBELS"
         N1AU0483 = "EAR TESTED"
         N1AU0484 = "LIST 02- SENTENCE 1 (0001-1234-KEY W ..."
         N1AU0488 = "LIST 02- SENTENCE 2 (0001-123456-KEY ..."
         N1AU0494 = "LIST 02- SENTENCE 3 (0001-12345-KEY  ..."
         N1AU0499 = "LIST 02 -SENTENCE 4 (0001-1234-KEY W ..."
         N1AU0503 = "LIST 02 -SENTENCE 5 (0001-1234-KEY W ..."
         N1AU0507 = "LIST 02 -SENTENCE 6 (000001-123456-K ..."
         N1AU0513 = "LIST 02-SENTENCE 7 (000001-123456-KE ..."
         N1AU0519 = "LIST 02-SENTENCE 8 (000001-123456-KE ..."
         N1AU0525 = "LIST 02-SENTENCE 9 (00001-12345-KEY  ..."
         N1AU0530 = "LIST 02-SENTENCE 10 (0001-1234-KEY W ..."
         N1AU0534 = "RECORDER"
         N1AU0535 = "LIST NUMBER"
         N1AU0537 = "DECIBELS"
         N1AU0538 = "EAR TESTED"
         N1AU0539 = "LIST 03- SENTENCE 1 (0001-12345-KEY  ..."
         N1AU0544 = "LIST 03- SENTENCE 2 (0001-1234-KEY W ..."
         N1AU0548 = "LIST 03- SENTENCE 3 (0001-123456-KEY ..."
         N1AU0554 = "LIST 03 -SENTENCE 4 (001-123-KEY WOR ..."
         N1AU0557 = "LIST 03 -SENTENCE 5 (00001-123456-KE ..."
         N1AU0563 = "LIST 03 -SENTENCE 6 (000000-123456-K ..."
         N1AU0569 = "LIST 03-SENTENCE 7 (000001-12345-KEY ..."
         N1AU0574 = "LIST 03-SENTENCE 8 (000001-123456-KE ..."
         N1AU0580 = "LIST 03-SENTENCE 9 (00001-12345-KEY  ..."
         N1AU0585 = "LIST 03-SENTENCE 10 (0001-1234-KEY W ..."
         N1AU0589 = "RECORDER"
         N1AU0590 = "LIST NUMBER"
         N1AU0592 = "DECIBELS"
         N1AU0593 = "EAR TESTED"
         N1AU0594 = "LIST 04-SENTENCE 1 (0001-1234-KEY WO ..."
         N1AU0598 = "LIST 04-SENTENCE 2 (00001-123456-KEY ..."
         N1AU0604 = "LIST 04-SENTENCE 3 (0001-12345-KEY W ..."
         N1AU0609 = "LIST 04-SENTENCE 4 (00001-123456-KEY ..."
         N1AU0615 = "LIST 04-SENTENCE 5 (00001-12345-KEY  ..."
         N1AU0620 = "LIST 04-SENTENCE 6 (00001-123456-KEY ..."
         N1AU0626 = "LIST 04-SENTENCE 7 (00001-12345-KEY  ..."
         N1AU0631 = "LIST 04-SENTENCE 8 (00001-12345-KEY  ..."
         N1AU0636 = "LIST 04-SENTENCE 9 (00001-12345-KEY  ..."
         N1AU0641 = "LIST 04-SENTENCE 10 (001-123-KEY WOR ..."
         N1AU0644 = "RECORDER"
         N1AU0645 = "LIST NUMBER"
         N1AU0647 = "DECIBELS"
         N1AU0648 = "EAR TESTED"
         N1AU0649 = "LIST 05-SENTENCE 1 (000001-123456-KE ..."
         N1AU0655 = "LIST 05-SENTENCE 2 (0001-1234-KEY WO ..."
         N1AU0659 = "LIST 05-SENTENCE 3 (00001-12345-KEY  ..."
         N1AU0664 = "LIST 05-SENTENCE 4 (00001-123456-KEY ..."
         N1AU0670 = "LIST 05-SENTENCE 5 (00001-12345-KEY  ..."
         N1AU0675 = "LIST 05-SENTENCE 6 (000001-123456-KE ..."
         N1AU0681 = "LIST 05-SENTENCE 7 (00001-12345-KEY  ..."
         N1AU0686 = "LIST 05-SENTENCE 8 (00001-12345-KEY  ..."
         N1AU0691 = "LIST 05-SENTENCE 9 (0001-1234-KEY WO ..."
         N1AU0695 = "LIST 05-SENTENCE 10 (0001-1234-KEY W ..."
         N1AU0699 = "RECORDER"
         N1AU0700 = "LIST NUMBER"
         N1AU0702 = "DECIBELS"
         N1AU0703 = "EAR TESTED"
         N1AU0704 = "LIST 06-SENTENCE 1 (00001-12345-KEY  ..."
         N1AU0709 = "LIST 06-SENTENCE 2 (0001-1234-KEY WO ..."
         N1AU0713 = "LIST 06-SENTENCE 3 (000001-123456-KE ..."
         N1AU0719 = "LIST 06-SENTENCE 4 (00001-12345-KEY  ..."
         N1AU0724 = "LIST 06-SENTENCE 5 (00001-12345-KEY  ..."
         N1AU0729 = "LIST 06-SENTENCE 6 (000001-123456-KE ..."
         N1AU0735 = "LIST 06-SENTENCE 7 (00001-12345-KEY  ..."
         N1AU0740 = "LIST 06-SENTENCE 8 (00001-12345-KEY  ..."
         N1AU0745 = "LIST 06-SENTENCE 9 (0001-1234-KEY WO ..."
         N1AU0749 = "LIST 06-SENTENCE 10 (0001-12345-KEY  ..."
         N1AU0754 = "RECORDER"
         N1AU0755 = "LIST NUMBER"
         N1AU0757 = "DECIBELS"
         N1AU0758 = "EAR TESTED"
         N1AU0759 = "LIST 07-SENTENCE 1 (00001-12345-KEY  ..."
         N1AU0764 = "LIST 07-SENTENCE 2 (0001-1234-KEY WO ..."
         N1AU0768 = "LIST 07-SENTENCE 3 (00001-12345-KEY  ..."
         N1AU0773 = "LIST 07-SENTENCE 4 (000001-123456-KE ..."
         N1AU0779 = "LIST 07-SENTENCE 5 (000001-123456-KE ..."
         N1AU0785 = "LIST 07-SENTENCE 6 (000001-123456-KE ..."
         N1AU0791 = "LIST 07-SENTENCE 7 (00001-12345-KEY  ..."
         N1AU0796 = "LIST 07-SENTENCE 8 (00001-1234-KEY W ..."
         N1AU0800 = "LIST 07-SENTENCE 9 (00001-12345-KEY  ..."
         N1AU0805 = "LIST 07-SENTENCE 10 (0001-1234-KEY W ..."
         N1AU0809 = "RECORDER"
         N1AU0810 = "LIST NUMBER"
         N1AU0812 = "DECIBELS"
         N1AU0813 = "EAR TESTED"
         N1AU0814 = "LISTED 08-SENTENCE 1 (001-1234-KEY W ..."
         N1AU0818 = "LISTED 08-SENTENCE 2 (0001-12345-KEY ..."
         N1AU0823 = "LISTED 08-SENTENCE 3 (0001-1234-KEY  ..."
         N1AU0827 = "LISTED 08-SENTENCE 4 (00001-12345-KE ..."
         N1AU0832 = "LISTED 08-SENTENCE 5 (00001-12345-KE ..."
         N1AU0837 = "LISTED 08-SENTENCE 6 (00001-12345-KE ..."
         N1AU0842 = "LISTED 08-SENTENCE 7 (00001-123456-K ..."
         N1AU0848 = "LISTED 08-SENTENCE 8 (00001-12345-KE ..."
         N1AU0853 = "LISTED 08-SENTENCE 9 (00001-12345-KE ..."
         N1AU0858 = "LISTED 08-SENTENCE 10 (00001-123456- ..."
         N1AU0864 = "RECORDER"
         N1AU0865 = "LIST NUMBER"
         N1AU0867 = "DECIBELS"
         N1AU0868 = "EAR TESTED"
         N1AU0869 = "LIST 09-SENTENCE 1 (000001-123456-KE ..."
         N1AU0875 = "LIST 09-SENTENCE 2 (000001-123456-KE ..."
         N1AU0881 = "LIST 09-SENTENCE 3 (0001-1234-KEY WO ..."
         N1AU0885 = "LIST 09-SENTENCE 4 (0001-1234-KEY WO ..."
         N1AU0889 = "LIST 09-SENTENCE 5 (000001-123456-KE ..."
         N1AU0895 = "LIST 09-SENTENCE 6 (000001-123456-KE ..."
         N1AU0901 = "LIST 09-SENTENCE 7 (00001-12345-KEY  ..."
         N1AU0906 = "LIST 09-SENTENCE 8 (0001-1234-KEY WO ..."
         N1AU0910 = "LIST 09-SENTENCE 9 (0001-1234-KEY WO ..."
         N1AU0914 = "LIST 09-SENTENCE 10 (00001-12345-KEY ..."
         N1AU0919 = "RECORDER"
         N1AU0920 = "LIST NUMBER"
         N1AU0922 = "DECIBELS"
         N1AU0923 = "EAR TESTED"
         N1AU0924 = "LIST 10 -SENTENCE 1 (0001-1234-KEY W ..."
         N1AU0928 = "LIST 10 -SENTENCE 2 (00001-12345-KEY ..."
         N1AU0933 = "LIST 10 -SENTENCE 3 (000001-123456-K ..."
         N1AU0939 = "LIST 10 -SENTENCE 4 (00001-12345-KEY ..."
         N1AU0944 = "LIST 10 -SENTENCE 5 (00001-12345-KEY ..."
         N1AU0949 = "LIST 10 -SENTENCE 6 (00001-12345-KEY ..."
         N1AU0954 = "LIST 10 -SENTENCE 7 (00001-12345-KEY ..."
         N1AU0959 = "LIST 10 -SENTENCE 8 (00001-12345-KEY ..."
         N1AU0963 = "LIST 10 -SENTENCE 9 (00001-12345-KEY ..."
         N1AU0969 = "LIST 10 -SENTENCE 10 (00001-12345-KE ..."
         N1AU0974 = "RECORDER"
         N1AU0975 = "BLANK--DATA USER WORK AREA"
         N1AU1025 = "SPEECH TEST (RECEPTION) LIST NUMBER"
         N1AU1027 = "DECIBELS"
         N1AU1028 = "EAR TESTED"
         N1AU1029 = "LIST 01-SENTENCE 1 (0001-1234-KEY WO ..."
         N1AU1033 = "LIST 01-SENTENCE 2 (00001-12345-KEY  ..."
         N1AU1038 = "LIST 01-SENTENCE 3 (000001-123456-KE ..."
         N1AU1044 = "LIST 01-SENTENCE 4 (00001-123456-KEY ..."
         N1AU1050 = "LIST 01-SENTENCE 5 (00001-12345-KEY  ..."
         N1AU1055 = "LIST 01-SENTENCE 6 (0001-12345-KEY W ..."
         N1AU1060 = "LIST 01-SENTENCE 7 (000001-123456-KE ..."
         N1AU1066 = "LIST 01-SENTENCE 8 (0001-1234-KEY WO ..."
         N1AU1070 = "LIST 01-SENTENCE 9 (0001-1234-KEY WO ..."
         N1AU1074 = "LIST 01-SENTENCE 10 (0001-12345-KEY  ..."
         N1AU1079 = "RECORDER"
         N1AU1080 = "LIST NUMBER"
         N1AU1082 = "DECIBELS"
         N1AU1083 = "EAR TESTED"
         N1AU1084 = "LIST 02- SENTENCE 1 (0001-1234-KEY W ..."
         N1AU1088 = "LIST 02- SENTENCE 2 (000001-123456-K ..."
         N1AU1094 = "LIST 02- SENTENCE 3 (00001-12345-KEY ..."
         N1AU1099 = "LIST 02 -SENTENCE 4 (0001-1234-KEY W ..."
         N1AU1103 = "LIST 02 -SENTENCE 5 (0001-1234-KEY W ..."
         N1AU1107 = "LIST 02 -SENTENCE 6 (000001-123456-K ..."
         N1AU1113 = "LIST 02-SENTENCE 7 (000001-123456-KE ..."
         N1AU1119 = "LIST 02-SENTENCE 8 (000001-123456-KE ..."
         N1AU1125 = "LIST 02-SENTENCE 9 (00001-12345-KEY  ..."
         N1AU1130 = "LIST 02-SENTENCE 10 (0001-1234-KEY W ..."
         N1AU1134 = "RECORDER"
         N1AU1135 = "LIST NUMBER"
         N1AU1137 = "DECIBELS"
         N1AU1138 = "EAR TESTED"
         N1AU1139 = "LIST 03- SENTENCE 1 (00001-12345-KEY ..."
         N1AU1144 = "LIST 03- SENTENCE 2 (0001-1234-KEY W ..."
         N1AU1148 = "LIST 03- SENTENCE 3 (00001-123456-KE ..."
         N1AU1154 = "LIST 03 -SENTENCE 4 (001-123-KEY WOR ..."
         N1AU1157 = "LIST 03 -SENTENCE 5 (000001-123456-K ..."
         N1AU1163 = "LIST 03 -SENTENCE 6 (000000-123456-K ..."
         N1AU1169 = "LIST 03-SENTENCE 7 (000001-12345-KEY ..."
         N1AU1174 = "LIST 03-SENTENCE 8 (000001-123456-KE ..."
         N1AU1180 = "LIST 03-SENTENCE 9 (00001-12345-KEY  ..."
         N1AU1185 = "LIST 03-SENTENCE 10 (0001-1234-KEY W ..."
         N1AU1189 = "RECORDER"
         N1AU1190 = "LIST NUMBER"
         N1AU1192 = "DECIBELS"
         N1AU1193 = "EAR TESTED"
         N1AU1194 = "LIST 04-SENTENCE 1 (0001-1234-KEY WO ..."
         N1AU1198 = "LIST 04-SENTENCE 2 (00001-123456-KEY ..."
         N1AU1204 = "LIST 04-SENTENCE 3 (0001-12345-KEY W ..."
         N1AU1209 = "LIST 04-SENTENCE 4 (00001-123456-KEY ..."
         N1AU1215 = "LIST 04-SENTENCE 5 (00001-12345-KEY  ..."
         N1AU1220 = "LIST 04-SENTENCE 6 (00001-123456-KEY ..."
         N1AU1226 = "LIST 04-SENTENCE 7 (00001-12345-KEY  ..."
         N1AU1231 = "LIST 04-SENTENCE 8 (00001-12345-KEY  ..."
         N1AU1236 = "LIST 04-SENTENCE 9 (00001-12345-KEY  ..."
         N1AU1241 = "LIST 04-SENTENCE 10 (001-123-KEY WOR ..."
         N1AU1244 = "RECORDER"
         N1AU1245 = "LIST NUMBER"
         N1AU1247 = "DECIBELS"
         N1AU1248 = "EAR TESTED"
         N1AU1249 = "LIST 05-SENTENCE 1 (000001-123456-KE ..."
         N1AU1255 = "LIST 05-SENTENCE 2 (0001-1234-KEY WO ..."
         N1AU1259 = "LIST 05-SENTENCE 3 (00001-12345-KEY  ..."
         N1AU1264 = "LIST 05-SENTENCE 4 (00001-123456-KEY ..."
         N1AU1270 = "LIST 05-SENTENCE 5 (00001-12345-KEY  ..."
         N1AU1275 = "LIST 05-SENTENCE 6 (000001-123456-KE ..."
         N1AU1281 = "LIST 05-SENTENCE 7 (00001-12345-KEY  ..."
         N1AU1286 = "LIST 05-SENTENCE 8 (00001-12345-KEY  ..."
         N1AU1291 = "LIST 05-SENTENCE 9 (0001-1234-KEY WO ..."
         N1AU1295 = "LIST 05-SENTENCE 10 (0001-1234-KEY W ..."
         N1AU1299 = "RECORDER"
         N1AU1300 = "LIST NUMBER"
         N1AU1302 = "DECIBELS"
         N1AU1303 = "EAR TESTED"
         N1AU1304 = "LIST 06-SENTENCE 1 (00001-12345-KEY  ..."
         N1AU1309 = "LIST 06-SENTENCE 2 (0001-1234-KEY WO ..."
         N1AU1313 = "LIST 06-SENTENCE 3 (000001-123456-KE ..."
         N1AU1319 = "LIST 06-SENTENCE 4 (00001-12345-KEY  ..."
         N1AU1324 = "LIST 06-SENTENCE 5 (00001-12345-KEY  ..."
         N1AU1329 = "LIST 06-SENTENCE 6 (000001-123456-KE ..."
         N1AU1335 = "LIST 06-SENTENCE 7 (00001-12345-KEY  ..."
         N1AU1340 = "LIST 06-SENTENCE 8 (00001-12345-KEY  ..."
         N1AU1345 = "LIST 06-SENTENCE 9 (0001-1234-KEY WO ..."
         N1AU1349 = "LIST 06-SENTENCE 10 (0001-12345-KEY  ..."
         N1AU1354 = "RECORDER"
         N1AU1355 = "LIST NUMBER"
         N1AU1357 = "DECIBELS"
         N1AU1358 = "EAR TESTED"
         N1AU1359 = "LIST 07-SENTENCE 1 (00001-12345-KEY  ..."
         N1AU1364 = "LIST 07-SENTENCE 2 (0001-1234-KEY WO ..."
         N1AU1368 = "LIST 07-SENTENCE 3 (00001-12345-KEY  ..."
         N1AU1373 = "LIST 07-SENTENCE 4 (000001-123456-KE ..."
         N1AU1379 = "LIST 07-SENTENCE 5 (000001-123456-KE ..."
         N1AU1385 = "LIST 07-SENTENCE 6 (000001-123456-KE ..."
         N1AU1391 = "LIST 07-SENTENCE 7 (00001-12345-KEY  ..."
         N1AU1396 = "LIST 07-SENTENCE 8 (00001-1234-KEY W ..."
         N1AU1400 = "LIST 07-SENTENCE 9 (00001-12345-KEY  ..."
         N1AU1405 = "LIST 07-SENTENCE 10 (0001-1234-KEY W ..."
         N1AU1409 = "RECORDER"
         N1AU1410 = "LIST NUMBER"
         N1AU1412 = "DECIBELS"
         N1AU1413 = "EAR TESTED"
         N1AU1414 = "LISTED 08-SENTENCE 1 (0001-1234-KEY  ..."
         N1AU1418 = "LISTED 08-SENTENCE 2 (00001-12345-KE ..."
         N1AU1423 = "LISTED 08-SENTENCE 3 (00001-1234-KEY ..."
         N1AU1427 = "LISTED 08-SENTENCE 4 (00001-12345-KE ..."
         N1AU1432 = "LISTED 08-SENTENCE 5 (00001-12345-KE ..."
         N1AU1437 = "LISTED 08-SENTENCE 6 (00001-12345-KE ..."
         N1AU1442 = "LISTED 08-SENTENCE 7 (00001-123456-K ..."
         N1AU1448 = "LISTED 08-SENTENCE 8 (00001-12345-KE ..."
         N1AU1453 = "LISTED 08-SENTENCE 9 (00001-12345-KE ..."
         N1AU1458 = "LISTED 08-SENTENCE 10 (000001-123456 ..."
         N1AU1464 = "RECORDER"
         N1AU1465 = "LIST NUMBER"
         N1AU1467 = "DECIBELS"
         N1AU1468 = "EAR TESTED"
         N1AU1469 = "LIST 09-SENTENCE 1 (000001-123456-KE ..."
         N1AU1475 = "LIST 09-SENTENCE 2 (000001-123456-KE ..."
         N1AU1481 = "LIST 09-SENTENCE 3 (0001-1234-KEY WO ..."
         N1AU1485 = "LIST 09-SENTENCE 4 (0001-1234-KEY WO ..."
         N1AU1489 = "LIST 09-SENTENCE 5 (000001-123456-KE ..."
         N1AU1495 = "LIST 09-SENTENCE 6 (000001-123456-KE ..."
         N1AU1501 = "LIST 09-SENTENCE 7 (00001-12345-KEY  ..."
         N1AU1506 = "LIST 09-SENTENCE 8 (0001-1234-KEY WO ..."
         N1AU1510 = "LIST 09-SENTENCE 9 (0001-1234-KEY WO ..."
         N1AU1514 = "LIST 09-SENTENCE 10 (00001-12345-KEY ..."
         N1AU1519 = "RECORDER"
         N1AU1520 = "LIST NUMBER"
         N1AU1522 = "DECIBELS"
         N1AU1523 = "EAR TESTED"
         N1AU1524 = "LIST 10 -SENTENCE 1 (0001-1234-KEY W ..."
         N1AU1528 = "LIST 10 -SENTENCE 2 (00001-12345-KEY ..."
         N1AU1533 = "LIST 10 -SENTENCE 3 (000001-123456-K ..."
         N1AU1539 = "LIST 10 -SENTENCE 4 (00001-12345-KEY ..."
         N1AU1544 = "LIST 10 -SENTENCE 5 (00001-12345-KEY ..."
         N1AU1549 = "LIST 10 -SENTENCE 6 (00001-12345-KEY ..."
         N1AU1554 = "LIST 10 -SENTENCE 7 (00001-12345-KEY ..."
         N1AU1559 = "LIST 10 -SENTENCE 8 (00001-12345-KEY ..."
         N1AU1563 = "LIST 10 -SENTENCE 9 (00001-12345-KEY ..."
         N1AU1569 = "LIST 10 -SENTENCE 10 (00001-12345-KE ..."
         N1AU1574 = "RECORDER"
         N1AU1575 = "BLANK--DATA USER WORK AREA"
      ;
RUN;
