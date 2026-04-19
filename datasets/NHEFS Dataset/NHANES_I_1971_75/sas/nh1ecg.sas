*********************************************************************;
**** CREATE SAS FILE FOR ECG, NHANES I                           ****;
**** DATA SET NAME:  "D:\DATA\NH1ECG.DAT"                         ****;
**** LRECL:  559                                                 ****;
**** LRECL includes 2 positions for CRLF, assuming use of PC SAS ****;
*********************************************************************;

    FILENAME EC1 "D:\DATA\NH1ECG.DAT" LRECL=559;

    DATA WORK;
      INFILE EC1 MISSOVER;

      LENGTH
        SEQN      7
        ECPSNUM   3
        HSSEX     3
        DMARACER  3
        HSAGEIR   3
        SDPPSU    3
        SDPSTRA   3
        SDPPSUR   3
        WTPFEX    8
        ECPTECH1  4
        ECPLEADS  3
        ECPWIDTH  3
        ECPDEPTH  3
        ECPG1     3
        ECPG2     3
        ECPG3     3
        ECPG4     3
        ECPG5     3
        ECPG6     3
        ECPL1     3
        ECPF1     3
        ECPV1     3
        ECPL4     3
        ECPF4     3
        ECPV4     3
        ECPL5     3
        ECPF5     3
        ECPV5     3
        ECPL9     3
        ECPF9     3
        ECPV9     3
        ECPMC2    3
        ECPMC3    3
        ECPMC6    3
        ECPMC7    3
        ECPMC91   3
        ECPMC93   3
        ECPMC94   3
        ECPMC95   3
        ECPCIIS   3
        ECPCIIS2  3
        ECPCIIS3  3
        ECPCIIS4  3
        ECPLVM    3
        ECPLVMI   3
        ECPLVM3   3
        ECPRATE   3
        ECPPR     3
        ECPQRS    3
        ECPQT     3
        ECPAXIS1  4
        ECPAXIS2  4
        ECPAXIS3  4
        ECPBEAT   3
        ECPP1     3
        ECPP2     3
        ECPP3     3
        ECPP4     4
        ECPQA1    4
        ECPQA2    4
        ECPQA3    4
        ECPQA4    4
        ECPQA5    4
        ECPQA6    4
        ECPQA7    4
        ECPQA8    4
        ECPQA9    4
        ECPQA10   4
        ECPQA11   4
        ECPQD1    3
        ECPQD2    3
        ECPQD3    3
        ECPQD4    3
        ECPQD5    3
        ECPQD6    3
        ECPQD7    3
        ECPQD8    3
        ECPQD9    3
        ECPQD10   3
        ECPQD11   3
        ECPRA1    4
        ECPRA2    4
        ECPRA3    4
        ECPRA4    4
        ECPRA5    4
        ECPRA6    4
        ECPRA7    4
        ECPRA8    4
        ECPRA9    4
        ECPRA10   4
        ECPRA11   4
        ECPRA12   4
        ECPRD1    3
        ECPRD2    3
        ECPRD3    3
        ECPRD4    3
        ECPRD5    3
        ECPRD6    3
        ECPRD7    3
        ECPRD8    3
        ECPRD9    3
        ECPRD10   3
        ECPRD11   3
        ECPRD12   3
        ECPSA1    4
        ECPSA2    4
        ECPSA3    4
        ECPSA4    4
        ECPSA5    4
        ECPSA6    4
        ECPSA7    4
        ECPSA8    4
        ECPSA9    4
        ECPSA10   4
        ECPSA11   4
        ECPSA12   4
        ECPSD1    3
        ECPSD2    3
        ECPSD3    3
        ECPSD4    3
        ECPSD5    3
        ECPSD6    3
        ECPSD7    3
        ECPSD8    3
        ECPSD9    3
        ECPSD10   3
        ECPSD11   3
        ECPSD12   3
        ECPRPA1   4
        ECPRPA2   4
        ECPRPA3   4
        ECPRPA4   4
        ECPRPA5   4
        ECPRPA6   4
        ECPRPA7   4
        ECPRPA8   4
        ECPRPA9   4
        ECPRPA10  4
        ECPRPA11  4
        ECPRPA12  4
        ECPJ1     4
        ECPJ2     4
        ECPJ3     4
        ECPJ4     4
        ECPJ5     4
        ECPJ6     4
        ECPJ7     4
        ECPJ8     4
        ECPJ9     4
        ECPJ10    4
        ECPJ11    4
        ECPJ12    4
        ECPNTA1   4
        ECPNTA2   4
        ECPNTA3   4
        ECPNTA4   4
        ECPNTA5   4
        ECPNTA6   4
        ECPNTA7   4
        ECPNTA8   4
        ECPNTA9   4
        ECPNTA10  4
        ECPNTA11  4
        ECPNTA12  4
        ECPPTA1   4
        ECPPTA2   4
        ECPPTA3   4
        ECPPTA4   4
        ECPPTA5   4
        ECPPTA6   4
        ECPPTA7   4
        ECPPTA8   4
        ECPPTA9   4
        ECPPTA10  4
        ECPPTA11  4
        ECPPTA12  4
      ;

      FORMAT
      ;

     INPUT
        SEQN     1-5
        ECPSNUM  6
        HSSEX    7
        DMARACER 8
        HSAGEIR  9-10
        SDPPSU   11-13
        SDPSTRA  14-15
        SDPPSUR  16
        WTPFEX   17-22
        ECPTECH1 23
        ECPLEADS 24-25
        ECPWIDTH 26
        ECPDEPTH 27
        ECPG1    28
        ECPG2    29
        ECPG3    30
        ECPG4    31
        ECPG5    32
        ECPG6    33
        ECPL1    34-35
        ECPF1    36-37
        ECPV1    38-39
        ECPL4    40-41
        ECPF4    42-43
        ECPV4    44-45
        ECPL5    46
        ECPF5    47
        ECPV5    48
        ECPL9    49
        ECPF9    50
        ECPV9    51
        ECPMC2   52-53
        ECPMC3   54-55
        ECPMC6   56-57
        ECPMC7   58
        ECPMC91  59
        ECPMC93  60
        ECPMC94  61
        ECPMC95  62
        ECPCIIS  63-65
        ECPCIIS2 66
        ECPCIIS3 67
        ECPCIIS4 68
        ECPLVM   69-71
        ECPLVMI  72-74
        ECPLVM3  75
        ECPRATE  76-78
        ECPPR    79-81
        ECPQRS   82-84
        ECPQT    85-87
        ECPAXIS1 88-91
        ECPAXIS2 92-95
        ECPAXIS3 96-99
        ECPBEAT  100-101
        ECPP1    102-104
        ECPP2    105-107
        ECPP3    108-110
        ECPP4    111-114
        ECPQA1   115-118
        ECPQA2   119-122
        ECPQA3   123-126
        ECPQA4   127-130
        ECPQA5   131-134
        ECPQA6   135-138
        ECPQA7   139-142
        ECPQA8   143-146
        ECPQA9   147-150
        ECPQA10  151-154
        ECPQA11  155-158
        ECPQD1   159-161
        ECPQD2   162-164
        ECPQD3   165-167
        ECPQD4   168-170
        ECPQD5   171-173
        ECPQD6   174-176
        ECPQD7   177-179
        ECPQD8   180-182
        ECPQD9   183-185
        ECPQD10  186-188
        ECPQD11  189-191
        ECPRA1   192-195
        ECPRA2   196-199
        ECPRA3   200-203
        ECPRA4   204-207
        ECPRA5   208-211
        ECPRA6   212-215
        ECPRA7   216-219
        ECPRA8   220-223
        ECPRA9   224-227
        ECPRA10  228-231
        ECPRA11  232-235
        ECPRA12  236-239
        ECPRD1   240-242
        ECPRD2   243-245
        ECPRD3   246-248
        ECPRD4   249-251
        ECPRD5   252-254
        ECPRD6   255-257
        ECPRD7   258-260
        ECPRD8   261-263
        ECPRD9   264-266
        ECPRD10  267-269
        ECPRD11  270-272
        ECPRD12  273-275
        ECPSA1   276-279
        ECPSA2   280-283
        ECPSA3   284-287
        ECPSA4   288-291
        ECPSA5   292-295
        ECPSA6   296-299
        ECPSA7   300-303
        ECPSA8   304-307
        ECPSA9   308-311
        ECPSA10  312-315
        ECPSA11  316-319
        ECPSA12  320-323
        ECPSD1   324-326
        ECPSD2   327-329
        ECPSD3   330-332
        ECPSD4   333-335
        ECPSD5   336-338
        ECPSD6   339-341
        ECPSD7   342-344
        ECPSD8   345-347
        ECPSD9   348-350
        ECPSD10  351-353
        ECPSD11  354-356
        ECPSD12  357-359
        ECPRPA1  360-363
        ECPRPA2  364-367
        ECPRPA3  368-371
        ECPRPA4  372-375
        ECPRPA5  376-379
        ECPRPA6  380-383
        ECPRPA7  384-387
        ECPRPA8  388-391
        ECPRPA9  392-395
        ECPRPA10 396-399
        ECPRPA11 400-403
        ECPRPA12 404-407
        ECPJ1    408-411
        ECPJ2    412-415
        ECPJ3    416-419
        ECPJ4    420-423
        ECPJ5    424-427
        ECPJ6    428-431
        ECPJ7    432-435
        ECPJ8    436-439
        ECPJ9    440-443
        ECPJ10   444-447
        ECPJ11   448-451
        ECPJ12   452-455
        ECPNTA1  456-460
        ECPNTA2  461-464
        ECPNTA3  465-468
        ECPNTA4  469-472
        ECPNTA5  473-476
        ECPNTA6  477-480
        ECPNTA7  481-484
        ECPNTA8  485-489
        ECPNTA9  490-494
        ECPNTA10 495-499
        ECPNTA11 500-504
        ECPNTA12 505-509
        ECPPTA1  510-513
        ECPPTA2  514-517
        ECPPTA3  518-521
        ECPPTA4  522-525
        ECPPTA5  526-529
        ECPPTA6  530-533
        ECPPTA7  534-537
        ECPPTA8  538-541
        ECPPTA9  542-545
        ECPPTA10 546-549
        ECPPTA11 550-553
        ECPPTA12 554-557
     ;

      LABEL
        SEQN     = "Sample person identification number"
        ECPSNUM  = "NHANES I Survey (1971-75)"
        HSSEX    = "Sex"
        DMARACER = "Race"
        HSAGEIR  = "Age at interview (Screener) in years"
        SDPPSU   = "Pseudo-PSU"
        SDPSTRA  = "Pseudo-stratum"
        SDPPSUR  = "Revised Pseudo-PSU"
        WTPFEX   = "MEC-examined sample final weight"
        ECPTECH1 = "Technician number (not reported)"
        ECPLEADS = "Number of leads"
        ECPWIDTH = "Chest half-width (mm) (not reported)"
        ECPDEPTH = "Chest half-depth (mm) (not reported)"
        ECPG1    = "Major ECG abnormalities"
        ECPG2    = "Minor ECG abnormalities"
        ECPG3    = "Probable myocardial infarction (MI)"
        ECPG4    = "Possible myocardial infarction (MI)"
        ECPG5    = "Probable left ventricular hypertrophy"
        ECPG6    = "Possible LVH by MC"
        ECPL1    = "MC 1 Leadgroup L(I, aVL, V6)"
        ECPF1    = "MC 1 Leadgroup F(II, III, aVF)"
        ECPV1    = "MC 1 Leadgroup V(V1-V5)"
        ECPL4    = "MC 4 Leadgroup L"
        ECPF4    = "MC 4 Leadgroup F"
        ECPV4    = "MC 4 Leadgroup V"
        ECPL5    = "MC 5 Leadgroup L"
        ECPF5    = "MC 5 Leadgroup F"
        ECPV5    = "MC 5 Leadgroup V"
        ECPL9    = "MC 9.2 Leadgroup L"
        ECPF9    = "MC 9.2 Leadgroup F"
        ECPV9    = "MC 9.2 Leadgroup V"
        ECPMC2   = "MC 2 (QRS axis code)"
        ECPMC3   = "MC 3 (High-amplitude R waves)"
        ECPMC6   = "MC 6 (A-V conduction)"
        ECPMC7   = "MC 7 (Ventricular conduction)"
        ECPMC91  = "MC 9.1 (Low-amplitude QRS)"
        ECPMC93  = "MC 9.3 (High-amplitude P)"
        ECPMC94  = "MC 9.4 (QRS transition zone)"
        ECPMC95  = "MC 9.5 (High-amplitude T)"
        ECPCIIS  = "Cardiac infarction score (12-lead by 10)"
        ECPCIIS2 = "Probable infarction/injury"
        ECPCIIS3 = "Possible infarction/injury"
        ECPCIIS4 = "Consider infarction/injury"
        ECPLVM   = "ECG estimate of LV mass"
        ECPLVMI  = "ECG estimate of LV mass index"
        ECPLVM3  = "Probable LVH"
        ECPRATE  = "Heart rate (beats per minute)"
        ECPPR    = "PR interval (msec)"
        ECPQRS   = "QRS interval (msec)"
        ECPQT    = "QT interval (msec)"
        ECPAXIS1 = "P axis, frontal plane (degrees)"
        ECPAXIS2 = "QRS axis, frontal plane (degrees)"
        ECPAXIS3 = "T axis, frontal plane (degrees)"
        ECPBEAT  = "Rhythm code"
        ECPP1    = "P amplitude, positive phase, lead II(uV)"
        ECPP2    = "P duration, lead II (msec)"
        ECPP3    = "P amplitude, positive phase, lead V1(uV)"
        ECPP4    = "P amplitude, negative phase, lead V1(uV)"
        ECPQA1   = "Q or QS amplitude, lead I (uV)"
        ECPQA2   = "Q or QS amplitude, lead II (uV)"
        ECPQA3   = "Q or QS amplitude, lead III (uV)"
        ECPQA4   = "Q or QS amplitude, lead aVL (uV)"
        ECPQA5   = "Q or QS amplitude, lead AVF (uV)"
        ECPQA6   = "Q or QS amplitude, lead V1 (uV)"
        ECPQA7   = "Q or QS amplitude, lead V2 (uV)"
        ECPQA8   = "Q or QS amplitude, lead V3 (uV)"
        ECPQA9   = "Q or QS amplitude, lead V4 (uV)"
        ECPQA10  = "Q or QS amplitude, lead V5 (uV)"
        ECPQA11  = "Q or QS amplitude, lead V6 (uV)"
        ECPQD1   = "Q or QS duration, lead I (msec)"
        ECPQD2   = "Q or QS duration, lead II (msec)"
        ECPQD3   = "Q or QS duration, lead III (msec)"
        ECPQD4   = "Q or QS duration, lead aVL (msec)"
        ECPQD5   = "Q or QS duration, lead aVF (msec)"
        ECPQD6   = "Q or QS duration, lead V1 (msec)"
        ECPQD7   = "Q or QS duration, lead V2 (msec)"
        ECPQD8   = "Q or QS duration, lead V3 (msec)"
        ECPQD9   = "Q or QS duration, lead V4 (msec)"
        ECPQD10  = "Q or QS duration, lead V5 (msec)"
        ECPQD11  = "Q or QS duration, lead V6 (msec)"
        ECPRA1   = "R amplitude, lead I (uV)"
        ECPRA2   = "R amplitude, lead II (uV)"
        ECPRA3   = "R amplitude, lead III (uV)"
        ECPRA4   = "R amplitude, lead aVR (uV)"
        ECPRA5   = "R amplitude, lead aVL (uV)"
        ECPRA6   = "R amplitude, lead aVF (uV)"
        ECPRA7   = "R amplitude, lead V1 (uV)"
        ECPRA8   = "R amplitude, lead V2 (uV)"
        ECPRA9   = "R amplitude, lead V3 (uV)"
        ECPRA10  = "R amplitude, lead V4 (uV)"
        ECPRA11  = "R amplitude, lead V5 (uV)"
        ECPRA12  = "R amplitude, lead V6 (uV)"
        ECPRD1   = "R duration, lead I (msec)"
        ECPRD2   = "R duration, lead II (msec)"
        ECPRD3   = "R duration, lead III (msec)"
        ECPRD4   = "R duration, lead aVR (msec)"
        ECPRD5   = "R duration, lead aVL (msec)"
        ECPRD6   = "R duration, lead aVF (msec)"
        ECPRD7   = "R duration, lead V1 (msec)"
        ECPRD8   = "R duration, lead V2 (msec)"
        ECPRD9   = "R duration, lead V3 (msec)"
        ECPRD10  = "R duration, lead V4 (msec)"
        ECPRD11  = "R duration, lead V5 (msec)"
        ECPRD12  = "R duration, lead V6 (msec)"
        ECPSA1   = "S amplitude, lead I (uV)"
        ECPSA2   = "S amplitude, lead II (uV)"
        ECPSA3   = "S amplitude, lead III (uV)"
        ECPSA4   = "S amplitude, lead aVR (uV)"
        ECPSA5   = "S amplitude, lead aVL (uV)"
        ECPSA6   = "S amplitude, lead aVF (uV)"
        ECPSA7   = "S amplitude, lead V1 (uV)"
        ECPSA8   = "S amplitude, lead V2 (uV)"
        ECPSA9   = "S amplitude, lead V3 (uV)"
        ECPSA10  = "S amplitude, lead V4 (uV)"
        ECPSA11  = "S amplitude, lead V5 (uV)"
        ECPSA12  = "S amplitude, lead V6 (uV)"
        ECPSD1   = "S duration, lead I (msec)"
        ECPSD2   = "S duration, lead II (msec)"
        ECPSD3   = "S duration, lead III (msec)"
        ECPSD4   = "S duration, lead aVR (msec)"
        ECPSD5   = "S duration, lead aVL (msec)"
        ECPSD6   = "S duration, lead aVF (msec)"
        ECPSD7   = "S duration, lead V1 (msec)"
        ECPSD8   = "S duration, lead V2 (msec)"
        ECPSD9   = "S duration, lead V3 (msec)"
        ECPSD10  = "S duration, lead V4 (msec)"
        ECPSD11  = "S duration, lead V5 (msec)"
        ECPSD12  = "S duration, lead V6 (msec)"
        ECPRPA1  = "R' amplitude, lead I (uV)"
        ECPRPA2  = "R' amplitude, lead II (uV)"
        ECPRPA3  = "R' amplitude, lead III (uV)"
        ECPRPA4  = "R' amplitude, lead aVR (uV)"
        ECPRPA5  = "R' amplitude, lead aVL (uV)"
        ECPRPA6  = "R' amplitude, lead aVF (uV)"
        ECPRPA7  = "R' amplitude, lead V1 (uV)"
        ECPRPA8  = "R' amplitude, lead V2 (uV)"
        ECPRPA9  = "R' amplitude, lead V3 (uV)"
        ECPRPA10 = "R' amplitude, lead V4 (uV)"
        ECPRPA11 = "R' amplitude, lead V5 (uV)"
        ECPRPA12 = "R' amplitude, lead V6 (uV)"
        ECPJ1    = "J amplitude, lead I (uV)"
        ECPJ2    = "J amplitude, lead II (uV)"
        ECPJ3    = "J amplitude, lead III (uV)"
        ECPJ4    = "J amplitude, lead aVR (uV)"
        ECPJ5    = "J amplitude, lead aVL (uV)"
        ECPJ6    = "J amplitude, lead aVF (uV)"
        ECPJ7    = "J amplitude, lead V1 (uV)"
        ECPJ8    = "J amplitude, lead V2 (uV)"
        ECPJ9    = "J amplitude, lead V3 (uV)"
        ECPJ10   = "J amplitude, lead V4 (uV)"
        ECPJ11   = "J amplitude, lead V5 (uV)"
        ECPJ12   = "J amplitude, lead V6 (uV)"
        ECPNTA1  = "Negative T amplitude, lead I (uV)"
        ECPNTA2  = "Negative T amplitude, lead II (uV)"
        ECPNTA3  = "Negative T amplitude, lead III (uV)"
        ECPNTA4  = "Negative T amplitude, lead aVR (uV)"
        ECPNTA5  = "Negative T amplitude, lead aVL (uV)"
        ECPNTA6  = "Negative T amplitude, lead aVF (uV)"
        ECPNTA7  = "Negative T amplitude, lead V1 (uV)"
        ECPNTA8  = "Negative T amplitude, lead V2 (uV)"
        ECPNTA9  = "Negative T amplitude, lead V3 (uV)"
        ECPNTA10 = "Negative T amplitude, lead V4 (uV)"
        ECPNTA11 = "Negative T amplitude, lead V5 (uV)"
        ECPNTA12 = "Negative T amplitude, lead V6 (uV)"
        ECPPTA1  = "Positive T amplitude, lead I (uV)"
        ECPPTA2  = "Positive T amplitude, lead II (uV)"
        ECPPTA3  = "Positive T amplitude, lead III (uV)"
        ECPPTA4  = "Positive T amplitude, lead aVR (uV)"
        ECPPTA5  = "Positive T amplitude, lead aVL (uV)"
        ECPPTA6  = "Positive T amplitude, lead aVF (uV)"
        ECPPTA7  = "Positive T amplitude, lead V1 (uV)"
        ECPPTA8  = "Positive T amplitude, lead V2 (uV)"
        ECPPTA9  = "Positive T amplitude, lead V3 (uV)"
        ECPPTA10 = "Positive T amplitude, lead V4 (uV)"
        ECPPTA11 = "Positive T amplitude, lead V5 (uV)"
        ECPPTA12 = "Positive T amplitude, lead V6 (uV)"
      ;

