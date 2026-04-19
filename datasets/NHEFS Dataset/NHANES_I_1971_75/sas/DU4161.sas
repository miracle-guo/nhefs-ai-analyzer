/*
 *  Survey:           NHANES I
 *  Years:            1971-1975
 *  Questionnaire:    Ophthalmology
 *  Tape Number:      4161
 *
 *  Code Created By:  CDC/IMB
 *
 *  DESCRIPTION:  This file is provided as a starting point to perform advanced 
 *  statistical queries on the survey data.  They are to be used in conjunction 
 *  with legacy codebooks or data tape documentation to analyze the data.  In order 
 *  to use this program: either copy the tape file to your C:\temp directory, or change 
 *  the infile to point to the location that your tape file is located.
*/

DATA D_4161;
   INFILE 'c:\temp\DU4161.txt' LRECL = 2000 MISSOVER;
      LENGTH
         SEQN 8
         N1OP0006 8
         N1OP0010 4
         N1OP0011 4
         N1OP0012 4
         N1OP0013 4
         N1OP0014 4
         N1OP0015 4
         N1OP0016 4
         N1OP0017 4
         N1OP0019 4
         N1OP0020 4
         N1OP0022 4
         N1OP0023 4
         N1OP0025 4
         N1OP0027 4
         N1OP0028 4
         N1OP0029 4
         N1OP0030 4
         N1OP0031 4
         N1OP0032 4
         N1OP0033 4
         N1OP0034 4
         N1OP0036 4
         N1OP0037 8
         N1OP0041 4
         N1OP0042 8
         N1OP0046 4
         N1OP0047 8
         N1OP0051 4
         N1OP0052 8
         N1OP0056 4
         N1OP0057 8
         N1OP0061 4
         N1OP0062 8
         N1OP0066 4
         N1OP0067 8
         N1OP0071 4
         N1OP0072 8
         N1OP0076 4
         N1OP0077 8
         N1OP0081 4
         N1OP0082 8
         N1OP0086 4
         N1OP0087 8
         N1OP0091 8
         N1OP0095 8
         N1OP0100 4
         N1OP0101 4
         N1OP0103 4
         N1OP0104 4
         N1OP0105 4
         N1OP0106 8
         N1OP0110 4
         N1OP0112 4
         N1OP0114 4
         N1OP0115 4
         N1OP0116 4
         N1OP0117 4
         N1OP0118 4
         N1OP0119 4
         N1OP0120 4
         N1OP0122 4
         N1OP0123 4
         N1OP0124 4
         N1OP0125 4
         N1OP0126 4
         N1OP0127 4
         N1OP0128 4
         N1OP0129 4
         N1OP0130 4
         N1OP0131 4
         N1OP0132 4
         N1OP0135 4
         N1OP0138 8
         N1OP0144 4
         N1OP0146 4
         N1OP0147 4
         N1OP0150 4
         N1OP0151 4
         N1OP0152 4
         N1OP0153 4
         N1OP0154 4
         N1OP0155 4
         N1OP0156 4
         N1OP0157 4
         N1OP0158 8
         N1OP0164 $6
         N1OP0170 8
         N1OP0176 $6
         N1OP0182 $12
         N1OP0194 4
         N1OP0196 4
         N1OP0199 $2
         N1OP0201 8
         N1OP0205 $5
         N1OP0210 4
         N1OP0212 $13
         N1OP0225 4
         N1OP0226 8
         N1OP0232 8
         N1OP0238 8
         N1OP0244 4
         N1OP0245 4
         N1OP0247 4
         N1OP0249 4
         N1OP0251 4
         N1OP0253 4
         N1OP0255 4
         N1OP0257 4
         N1OP0258 4
         N1OP0259 4
         N1OP0260 4
         N1OP0261 4
         N1OP0262 4
         N1OP0263 4
         N1OP0264 4
         N1OP0265 4
         N1OP0266 4
         N1OP0267 4
         N1OP0268 4
         N1OP0270 4
         N1OP0272 4
         N1OP0274 4
         N1OP0276 4
         N1OP0278 4
         N1OP0280 4
         N1OP0281 4
         N1OP0282 4
         N1OP0283 4
         N1OP0284 8
         N1OP0288 4
         N1OP0289 8
         N1OP0293 4
         N1OP0296 4
         N1OP0297 8
         N1OP0301 4
         N1OP0302 8
         N1OP0306 4
         N1OP0309 4
         N1OP0310 8
         N1OP0314 4
         N1OP0315 8
         N1OP0319 4
         N1OP0322 4
         N1OP0324 4
         N1OP0326 4
         N1OP0327 8
         N1OP0331 4
         N1OP0332 8
         N1OP0336 4
         N1OP0339 4
         N1OP0341 4
         N1OP0343 4
         N1OP0344 4
         N1OP0345 4
         N1OP0346 4
         N1OP0347 4
         N1OP0348 4
         N1OP0349 4
         N1OP0350 4
         N1OP0351 4
         N1OP0352 4
         N1OP0353 4
         N1OP0354 4
         N1OP0355 4
         N1OP0356 4
         N1OP0357 4
         N1OP0358 4
         N1OP0359 4
         N1OP0360 4
         N1OP0361 4
         N1OP0362 4
         N1OP0363 4
         N1OP0364 4
         N1OP0365 4
         N1OP0366 4
         N1OP0367 4
         N1OP0368 4
         N1OP0369 4
         N1OP0370 4
         N1OP0371 4
         N1OP0372 4
         N1OP0373 4
         N1OP0374 4
         N1OP0375 4
         N1OP0376 4
         N1OP0377 4
         N1OP0378 4
         N1OP0379 4
         N1OP0380 4
         N1OP0381 4
         N1OP0382 4
         N1OP0383 4
         N1OP0384 4
         N1OP0385 4
         N1OP0386 4
         N1OP0387 4
         N1OP0388 4
         N1OP0389 4
         N1OP0390 4
         N1OP0391 4
         N1OP0392 4
         N1OP0393 4
         N1OP0394 4
         N1OP0395 4
         N1OP0396 4
         N1OP0397 4
         N1OP0398 4
         N1OP0399 4
         N1OP0400 4
         N1OP0401 4
         N1OP0402 4
         N1OP0403 4
         N1OP0404 4
         N1OP0405 4
         N1OP0406 4
         N1OP0407 4
         N1OP0408 4
         N1OP0409 4
         N1OP0410 4
         N1OP0411 4
         N1OP0412 4
         N1OP0413 4
         N1OP0414 4
         N1OP0415 4
         N1OP0416 4
         N1OP0417 4
         N1OP0418 4
         N1OP0419 4
         N1OP0420 4
         N1OP0421 4
         N1OP0422 4
         N1OP0423 4
         N1OP0424 4
         N1OP0425 4
         N1OP0426 4
         N1OP0427 4
         N1OP0428 4
         N1OP0429 4
         N1OP0430 4
         N1OP0431 4
         N1OP0432 4
         N1OP0433 4
         N1OP0434 4
         N1OP0435 4
         N1OP0436 4
         N1OP0437 4
         N1OP0438 4
         N1OP0439 4
         N1OP0440 4
         N1OP0441 4
         N1OP0442 4
         N1OP0443 4
         N1OP0444 4
         N1OP0445 4
         N1OP0446 4
         N1OP0447 4
         N1OP0448 4
         N1OP0449 4
         N1OP0450 4
         N1OP0451 4
         N1OP0452 4
         N1OP0453 4
         N1OP0454 4
         N1OP0455 4
         N1OP0456 4
         N1OP0457 4
         N1OP0458 4
         N1OP0459 4
         N1OP0460 4
         N1OP0461 4
         N1OP0462 4
         N1OP0463 4
         N1OP0464 4
         N1OP0465 4
         N1OP0466 4
         N1OP0467 4
         N1OP0468 4
         N1OP0469 4
         N1OP0470 4
         N1OP0471 4
         N1OP0472 4
         N1OP0473 4
         N1OP0474 4
         N1OP0475 $1
         N1OP0476 4
         N1OP0477 4
         N1OP0478 4
         N1OP0479 4
         N1OP0480 4
         N1OP0481 8
         N1OP0487 4
         N1OP0488 4
         N1OP0489 4
         N1OP0490 8
         N1OP0496 4
         N1OP0497 4
         N1OP0498 4
         N1OP0499 8
         N1OP0505 4
         N1OP0506 4
         N1OP0507 4
         N1OP0508 8
         N1OP0514 4
         N1OP0515 4
         N1OP0516 4
         N1OP0517 8
         N1OP0523 4
         N1OP0524 4
         N1OP0525 4
         N1OP0526 8
         N1OP0532 4
         N1OP0533 4
         N1OP0534 4
         N1OP0535 8
         N1OP0541 4
         N1OP0542 4
         N1OP0543 4
         N1OP0544 8
         N1OP0550 4
         N1OP0551 4
         N1OP0552 4
         N1OP0553 8
         N1OP0559 4
         N1OP0560 4
         N1OP0561 4
         N1OP0562 8
         N1OP0568 4
         N1OP0569 4
         N1OP0570 4
         N1OP0571 $80
      ;

      INPUT
         SEQN 1-5
         N1OP0006 6-9
         N1OP0010 10
         N1OP0011 11
         N1OP0012 12
         N1OP0013 13
         N1OP0014 14
         N1OP0015 15
         N1OP0016 16
         N1OP0017 17-18
         N1OP0019 19
         N1OP0020 20-21
         N1OP0022 22
         N1OP0023 23-24
         N1OP0025 25-26
         N1OP0027 27
         N1OP0028 28
         N1OP0029 29
         N1OP0030 30
         N1OP0031 31
         N1OP0032 32
         N1OP0033 33
         N1OP0034 34-35
         N1OP0036 36
         N1OP0037 37-40
         N1OP0041 41
         N1OP0042 42-45
         N1OP0046 46
         N1OP0047 47-50
         N1OP0051 51
         N1OP0052 52-55
         N1OP0056 56
         N1OP0057 57-60
         N1OP0061 61
         N1OP0062 62-65
         N1OP0066 66
         N1OP0067 67-70
         N1OP0071 71
         N1OP0072 72-75
         N1OP0076 76
         N1OP0077 77-80
         N1OP0081 81
         N1OP0082 82-85
         N1OP0086 86
         N1OP0087 87-90
         N1OP0091 91-94
         N1OP0095 95-99
         N1OP0100 100
         N1OP0101 101-102
         N1OP0103 103
         N1OP0104 104
         N1OP0105 105
         N1OP0106 106-109
         N1OP0110 110-111
         N1OP0112 112-113
         N1OP0114 114
         N1OP0115 115
         N1OP0116 116
         N1OP0117 117
         N1OP0118 118
         N1OP0119 119
         N1OP0120 120-121
         N1OP0122 122
         N1OP0123 123
         N1OP0124 124
         N1OP0125 125
         N1OP0126 126
         N1OP0127 127
         N1OP0128 128
         N1OP0129 129
         N1OP0130 130
         N1OP0131 131
         N1OP0132 132-134
         N1OP0135 135-137
         N1OP0138 138-143
         N1OP0144 144-145
         N1OP0146 146
         N1OP0147 147-149
         N1OP0150 150
         N1OP0151 151
         N1OP0152 152
         N1OP0153 153
         N1OP0154 154
         N1OP0155 155
         N1OP0156 156
         N1OP0157 157
         N1OP0158 158-163
         N1OP0164 164-169
         N1OP0170 170-175
         N1OP0176 176-181
         N1OP0182 182-193
         N1OP0194 194-195
         N1OP0196 196-198
         N1OP0199 199-200
         N1OP0201 201-204
         N1OP0205 205-209
         N1OP0210 210-211
         N1OP0212 212-224
         N1OP0225 225
         N1OP0226 226-231
         N1OP0232 232-237
         N1OP0238 238-243
         N1OP0244 244
         N1OP0245 245-246
         N1OP0247 247-248
         N1OP0249 249-250
         N1OP0251 251-252
         N1OP0253 253-254
         N1OP0255 255-256
         N1OP0257 257
         N1OP0258 258
         N1OP0259 259
         N1OP0260 260
         N1OP0261 261
         N1OP0262 262
         N1OP0263 263
         N1OP0264 264
         N1OP0265 265
         N1OP0266 266
         N1OP0267 267
         N1OP0268 268-269
         N1OP0270 270-271
         N1OP0272 272-273
         N1OP0274 274-275
         N1OP0276 276-277
         N1OP0278 278-279
         N1OP0280 280
         N1OP0281 281
         N1OP0282 282
         N1OP0283 283
         N1OP0284 284-287
         N1OP0288 288
         N1OP0289 289-292
         N1OP0293 293-295
         N1OP0296 296
         N1OP0297 297-300
         N1OP0301 301
         N1OP0302 302-305
         N1OP0306 306-308
         N1OP0309 309
         N1OP0310 310-313
         N1OP0314 314
         N1OP0315 315-318
         N1OP0319 319-321
         N1OP0322 322-323
         N1OP0324 324-325
         N1OP0326 326
         N1OP0327 327-330
         N1OP0331 331
         N1OP0332 332-335
         N1OP0336 336-338
         N1OP0339 339-340
         N1OP0341 341-342
         N1OP0343 343
         N1OP0344 344
         N1OP0345 345
         N1OP0346 346
         N1OP0347 347
         N1OP0348 348
         N1OP0349 349
         N1OP0350 350
         N1OP0351 351
         N1OP0352 352
         N1OP0353 353
         N1OP0354 354
         N1OP0355 355
         N1OP0356 356
         N1OP0357 357
         N1OP0358 358
         N1OP0359 359
         N1OP0360 360
         N1OP0361 361
         N1OP0362 362
         N1OP0363 363
         N1OP0364 364
         N1OP0365 365
         N1OP0366 366
         N1OP0367 367
         N1OP0368 368
         N1OP0369 369
         N1OP0370 370
         N1OP0371 371
         N1OP0372 372
         N1OP0373 373
         N1OP0374 374
         N1OP0375 375
         N1OP0376 376
         N1OP0377 377
         N1OP0378 378
         N1OP0379 379
         N1OP0380 380
         N1OP0381 381
         N1OP0382 382
         N1OP0383 383
         N1OP0384 384
         N1OP0385 385
         N1OP0386 386
         N1OP0387 387
         N1OP0388 388
         N1OP0389 389
         N1OP0390 390
         N1OP0391 391
         N1OP0392 392
         N1OP0393 393
         N1OP0394 394
         N1OP0395 395
         N1OP0396 396
         N1OP0397 397
         N1OP0398 398
         N1OP0399 399
         N1OP0400 400
         N1OP0401 401
         N1OP0402 402
         N1OP0403 403
         N1OP0404 404
         N1OP0405 405
         N1OP0406 406
         N1OP0407 407
         N1OP0408 408
         N1OP0409 409
         N1OP0410 410
         N1OP0411 411
         N1OP0412 412
         N1OP0413 413
         N1OP0414 414
         N1OP0415 415
         N1OP0416 416
         N1OP0417 417
         N1OP0418 418
         N1OP0419 419
         N1OP0420 420
         N1OP0421 421
         N1OP0422 422
         N1OP0423 423
         N1OP0424 424
         N1OP0425 425
         N1OP0426 426
         N1OP0427 427
         N1OP0428 428
         N1OP0429 429
         N1OP0430 430
         N1OP0431 431
         N1OP0432 432
         N1OP0433 433
         N1OP0434 434
         N1OP0435 435
         N1OP0436 436
         N1OP0437 437
         N1OP0438 438
         N1OP0439 439
         N1OP0440 440
         N1OP0441 441
         N1OP0442 442
         N1OP0443 443
         N1OP0444 444
         N1OP0445 445
         N1OP0446 446
         N1OP0447 447
         N1OP0448 448
         N1OP0449 449
         N1OP0450 450
         N1OP0451 451
         N1OP0452 452
         N1OP0453 453
         N1OP0454 454
         N1OP0455 455
         N1OP0456 456
         N1OP0457 457
         N1OP0458 458
         N1OP0459 459
         N1OP0460 460
         N1OP0461 461
         N1OP0462 462
         N1OP0463 463
         N1OP0464 464
         N1OP0465 465
         N1OP0466 466
         N1OP0467 467
         N1OP0468 468
         N1OP0469 469
         N1OP0470 470
         N1OP0471 471
         N1OP0472 472
         N1OP0473 473
         N1OP0474 474
         N1OP0475 475
         N1OP0476 476
         N1OP0477 477
         N1OP0478 478
         N1OP0479 479
         N1OP0480 480
         N1OP0481 481-486
         N1OP0487 487
         N1OP0488 488
         N1OP0489 489
         N1OP0490 490-495
         N1OP0496 496
         N1OP0497 497
         N1OP0498 498
         N1OP0499 499-504
         N1OP0505 505
         N1OP0506 506
         N1OP0507 507
         N1OP0508 508-513
         N1OP0514 514
         N1OP0515 515
         N1OP0516 516
         N1OP0517 517-522
         N1OP0523 523
         N1OP0524 524
         N1OP0525 525
         N1OP0526 526-531
         N1OP0532 532
         N1OP0533 533
         N1OP0534 534
         N1OP0535 535-540
         N1OP0541 541
         N1OP0542 542
         N1OP0543 543
         N1OP0544 544-549
         N1OP0550 550
         N1OP0551 551
         N1OP0552 552
         N1OP0553 553-558
         N1OP0559 559
         N1OP0560 560
         N1OP0561 561
         N1OP0562 562-567
         N1OP0568 568
         N1OP0569 569
         N1OP0570 570
         N1OP0571 571-650
      ;

      LABEL
         SEQN = "SAMPLE SEQUENCE NUMBER"
         N1OP0006 = "CATALOG NUMBER 4271"
         N1OP0010 = "SIZE OF PLACE"
         N1OP0011 = "SMSA-NOT SMSA"
         N1OP0012 = "TYPE OF LIVING QUARTERS"
         N1OP0013 = "LAND USAGE"
         N1OP0014 = "IF RURAL, ASKED HOW MANY ACRES OF LA ..."
         N1OP0015 = "IF 10 ACRES OF MORE, ASKED IF SALE O ..."
         N1OP0016 = "IF 10 ACRES OR LESS, ASKED IF SALE O ..."
         N1OP0017 = "AGE-HEAD OF HOUSEHOLD"
         N1OP0019 = "SEX-HEAD OF HOUSEHOLD"
         N1OP0020 = "HIGHEST GRADE ATTENDED-HEAD OF HOUSEHOLD"
         N1OP0022 = "RACE-HEAD OF HOUSEHOLD"
         N1OP0023 = "TOTAL NUMBER OF PERSONS IN HOUSEHOLD"
         N1OP0025 = "TOTAL SAMPLE PERSONS IN HOUSEHOLD"
         N1OP0027 = "NUMBER OF ROOMS IN HOUSE "
         N1OP0028 = "IS THERE PIPED WATER?"
         N1OP0029 = "IS THERE HOT AND COLD PIPED WATER?"
         N1OP0030 = "IF YES TO PIPED WATER-DOES HOUSE HAV ..."
         N1OP0031 = "DOES HOUSE HAVE A RANGE OR COOK STOVE?"
         N1OP0032 = "DOES HOUSE HAVE A REFRIGERATOR?"
         N1OP0033 = "ARE KITCHEN FACILITIES USED BY ANYON ..."
         N1OP0034 = "TOTAL FAMILY INCOME GROUP"
         N1OP0036 = "WAGES OR SALARIES?"
         N1OP0037 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER ..."
         N1OP0041 = "SOCIAL SECURITY OR  RAILROAD RETIREMENT?"
         N1OP0042 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1OP0046 = "WELFARE PAYMENTS OR OTHER PUBLIC ASS ..."
         N1OP0047 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1OP0051 = "UNEMPLOYMENT OR WORKMEN'S COMPENSATION?"
         N1OP0052 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1OP0056 = "GOVERNMENT EMPLOYEE PENSIONS OR PRIV ..."
         N1OP0057 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1OP0061 = "DIVIDENDS, INTEREST OR RENT?"
         N1OP0062 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1OP0066 = "NET INCOME FROM  OWN NON-FARM BUSINE ..."
         N1OP0067 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1OP0071 = "NET INCOME FROM A FARM?"
         N1OP0072 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1OP0076 = "VETERAN'S PAYMENTS"
         N1OP0077 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1OP0081 = "ALIMONY, CHILD SUPPORT OR CONTRIBUTI ..."
         N1OP0082 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1OP0086 = "ANY OTHER INCOME?"
         N1OP0087 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1OP0091 = "TOTAL AMOUNT(TOTAL OF POSITIONS 37-90)"
         N1OP0095 = "FAMILY UNIT CODE"
         N1OP0100 = "RELATIONSHIP TO HEAD OF HOUSEHOLD"
         N1OP0101 = "AGE AT INTERVIEW"
         N1OP0103 = "RACE OF EXAMINED PERSON"
         N1OP0104 = "SEX OF EXAMINED PERSON"
         N1OP0105 = "MARITAL STATUS"
         N1OP0106 = "DATE OF BIRTH (MONTH, YEAR)"
         N1OP0110 = "PLACE OF BIRTH"
         N1OP0112 = "HIGHEST GRADE OF REGULAR SCHOOL EVER ..."
         N1OP0114 = "DID HE FINISH THE GRADE?"
         N1OP0115 = "IS HE ATTENDING SCHOOL NOW?"
         N1OP0116 = "HAS HE EVER ATTENDED A SCHOOL OF ANY ..."
         N1OP0117 = "IF YES, WHAT KIND OF SCHOOL?"
         N1OP0118 = "IS ANY LANGUAGE OTHER THAN ENGLISH F ..."
         N1OP0119 = "IF YES, WHAT LANGUAGE"
         N1OP0120 = "WHAT IS YOUR MAIN ANCESTRY OR NATION ..."
         N1OP0122 = "WHAT WAS HE DOING MOST PAST THREE MO ..."
         N1OP0123 = "IF ' SOMETHING ELSE' FROM ABOVE, WHA ..."
         N1OP0124 = "IF 'KEEPING HOUSE' OR 'SOMETHING ELS ..."
         N1OP0125 = "IF 'WORKING' FROM ABOVE, DID HE WORK ..."
         N1OP0126 = "DID HE WORK AT ANY TIME LAST WEEK OR ..."
         N1OP0127 = "IF 'NO TO ABOVE, EVEN THOUGH HE DID  ..."
         N1OP0128 = "IF 'NO' IN POSITION 126, WAS HE LOOK ..."
         N1OP0129 = "IF YES TO ABOVE-WHICH?"
         N1OP0130 = "CLASS OF WORKER"
         N1OP0131 = "IF SELF-EMPLOYED IN 'OWN' BUSINESS A ..."
         N1OP0132 = "BUSINESS OR INDUSTRY CODE"
         N1OP0135 = "OCCUPATION CODE"
         N1OP0138 = "DATE OF EXAMINATION"
         N1OP0144 = "AGE AT EXAMINATION"
         N1OP0146 = "FARM"
         N1OP0147 = "POVERTY INDEX (X.XX)"
         N1OP0150 = "RELIGION"
         N1OP0151 = "FOOD PROGRAMS APPLICABILITY"
         N1OP0152 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1OP0153 = "ARE YOU BUYING STAMPS NOW?"
         N1OP0154 = "WHAT IS THE MAIN REASON YOU AREN'T P ..."
         N1OP0155 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1OP0156 = "ARE YOU RECEIVING COMMODITY FOODS  N ..."
         N1OP0157 = "WHY AREN'T YOU PARTICIPATING IN THE  ..."
         N1OP0158 = "DETAILED PERSONS-LOCATIONS 1-35"
         N1OP0164 = "BLANK-DATA USER WORK AREA"
         N1OP0170 = "DETAILED PERSONS-LOCATIONS 1-65"
         N1OP0176 = "BLANK-DATA USER WORK AREA"
         N1OP0182 = "DETAILED PERSONS-LOCATIONS 1-100"
         N1OP0194 = "STRATA 1/"
         N1OP0196 = "PRIMARY SAMPLING UNITS1/"
         N1OP0199 = "DATA USER WORK AREA"
         N1OP0201 = "CATALOG NUMBER 4161"
         N1OP0205 = "BLANK-WORK AREA"
         N1OP0210 = "EXAMINER NUMBER"
         N1OP0212 = "BLANK-WORK AREA"
         N1OP0225 = "SIGNIFICANT OCULAR HISTOR"
         N1OP0226 = "SURGERY-STRABISMUS/CATARACT"
         N1OP0232 = "OTHER-INJURY/INFECTION"
         N1OP0238 = "OTHER-INJURY/INFECTION"
         N1OP0244 = "VISUAL ACUITY-OPTOTYPE USED"
         N1OP0245 = "ACUITY- CC OD"
         N1OP0247 = "OS "
         N1OP0249 = "SC OD"
         N1OP0251 = "OS "
         N1OP0253 = "IF NOT 20/20 PINHOLE (ACUITY) OD"
         N1OP0255 = "OS "
         N1OP0257 = "MOTILITY-TROPIA"
         N1OP0258 = "TROPIA"
         N1OP0259 = "TROPIA"
         N1OP0260 = "PHORIA"
         N1OP0261 = "PHORIA"
         N1OP0262 = "NYSTAGMUS"
         N1OP0263 = "PUPILS-ANISOCORIA-LOCATION"
         N1OP0264 = "ABSENT LIGHT REFLEX-DIRECT"
         N1OP0265 = "ABSENT LIGHT REFEX-CONSENSUAL"
         N1OP0266 = "OTHER-INJURY/INFECTION"
         N1OP0267 = "NO ABNORALITY"
         N1OP0268 = "TONOMETRY (EXAMINEES 20 YEARS AND OV ..."
         N1OP0270 = "APPLANATION-OS"
         N1OP0272 = "APPLANATION-OD"
         N1OP0274 = "APPLANATION-OS"
         N1OP0276 = "APPLANATION-OD"
         N1OP0278 = "APPLANATION-OS"
         N1OP0280 = "DILATION (1 GTT. 10% PHENYLEPHRINE OU)"
         N1OP0281 = "MAXILLARY SINUS TRANSLILLUMINATION ( ..."
         N1OP0282 = "LEFT"
         N1OP0283 = "REFRATION-PRESNT GLASSES SPHERE SIGN-OD"
         N1OP0284 = "SPHERE-OD (XX.XX-DECIMAL NOT SHOWN O ..."
         N1OP0288 = "CYLINDER SIGN-OD"
         N1OP0289 = "CYLINDER-OD (XX.XX DECIMAL NOT SHOWN ..."
         N1OP0293 = "AXIS-OD"
         N1OP0296 = "SPHERE SIGN-OS"
         N1OP0297 = "SPHERE-OS (XX.XX-DECIMAL NOT SHOWN O ..."
         N1OP0301 = "CYLINDER SIGN-OS"
         N1OP0302 = "CYLINDER-OS (XX.XX-DECIMAL NOT SHOWN ..."
         N1OP0306 = "AXIS-OS"
         N1OP0309 = "REFRACTION-IF ACUITY LESS THAN 20/40 ..."
         N1OP0310 = "SPHERE-OD (XX.XX-DECIMAL NOT SHOWN O ..."
         N1OP0314 = "CYLINDER SIGN-OD"
         N1OP0315 = "CYLINDER-OD(XX.XX-DECIMAL NOT SHOWN  ..."
         N1OP0319 = "AXIS-OD"
         N1OP0322 = "VA-OD"
         N1OP0324 = "PH-OD"
         N1OP0326 = "SPHERE SIGN-OS"
         N1OP0327 = "SPHERE-OS "
         N1OP0331 = "CYLINDER SIGN-OS"
         N1OP0332 = "CYLINDER-OS (XX.XX-DECIMAL NOT SHOWN ..."
         N1OP0336 = "AXIS-OS"
         N1OP0339 = "VA-OS"
         N1OP0341 = "PH-OS"
         N1OP0343 = "LIDS-BLEPHARITIS"
         N1OP0344 = "ANULAR"
         N1OP0345 = "CHALAZION"
         N1OP0346 = "CONCRETIONS"
         N1OP0347 = "ECTROPION"
         N1OP0348 = "ENTROPION"
         N1OP0349 = "HORDEOLUM"
         N1OP0350 = "PTOSIS"
         N1OP0351 = "OTHER-INJURY/INFECTION"
         N1OP0352 = "NO ABNORALITY"
         N1OP0353 = "GLOBE-ENUCLEATION"
         N1OP0354 = "EXOPHTHALALMOS"
         N1OP0355 = "MICROPHTHALMOS"
         N1OP0356 = "OTHER "
         N1OP0357 = "NO ABNORALITY"
         N1OP0358 = "CONJUCTIVA-BITOT'S SPOT"
         N1OP0359 = "CONJUNCTIVITIST-ALLERGIC"
         N1OP0360 = "FOLLICULAR"
         N1OP0361 = "INFECTIOUS"
         N1OP0362 = "BACTERIAL"
         N1OP0363 = "VIRAL"
         N1OP0364 = "FOLLICLES (NO INFLAMMATION)"
         N1OP0365 = "INCLUSIONS"
         N1OP0366 = "PINGUECULUM"
         N1OP0367 = "XEROSIS"
         N1OP0368 = "OTHER"
         N1OP0369 = "NO ABNORALITY"
         N1OP0370 = "SCLERA-ECTASIA"
         N1OP0371 = "EPISCLERITIS"
         N1OP0372 = "SCLERITIS"
         N1OP0373 = "OTHE"
         N1OP0374 = "NO ABNORALITY"
         N1OP0375 = "CORNEA-ARCUS SENILIS"
         N1OP0376 = "BAND KERATOPATHY"
         N1OP0377 = "DEGENERATION"
         N1OP0378 = "DYSTROPHY"
         N1OP0379 = "EDEMA-EPITHELIAL"
         N1OP0380 = "EDEMA-STROMAL"
         N1OP0381 = "ENDOTHELIAL KP'S"
         N1OP0382 = "GUTTATA"
         N1OP0383 = "KERATITIS"
         N1OP0384 = "KERATOMALACIA"
         N1OP0385 = "KRUKENBERG SPINDLE"
         N1OP0386 = "OPACITY"
         N1OP0387 = "SUPERFICIAL STROMAL"
         N1OP0388 = "PTERYGIUM"
         N1OP0389 = "VESSELS"
         N1OP0390 = "OTHER"
         N1OP0391 = "NO ABNORALITY"
         N1OP0392 = "WORK AREA"
         N1OP0393 = "ANTERIOR CHAMBER-CELLS"
         N1OP0394 = "FLARE"
         N1OP0395 = "OTHER"
         N1OP0396 = "NO ABNORALITY"
         N1OP0397 = "IRIS-SYNECHAE"
         N1OP0398 = "SYNECHIAE-POSTERIOR"
         N1OP0399 = "ATROPHY"
         N1OP0400 = "COLOBOMA"
         N1OP0401 = "IRITIS"
         N1OP0402 = "NOEOVASCULARIZATION"
         N1OP0403 = "OTHER"
         N1OP0404 = "NO ABNORALITY"
         N1OP0405 = "LENS-APHAKIA"
         N1OP0406 = "CATARACT-IMMATURE"
         N1OP0407 = "INTUMESCENT"
         N1OP0408 = "MATURE"
         N1OP0409 = "HYPERMATURE"
         N1OP0410 = "MORGAGIAN"
         N1OP0411 = "OPACITY-ANTERIOR POLAR"
         N1OP0412 = "CORTICAL"
         N1OP0413 = "NUCLEAR"
         N1OP0414 = "POST SUBCAPSULAR"
         N1OP0415 = "PIGMENT ON SURFACE"
         N1OP0416 = "OTHER"
         N1OP0417 = "NO ABNORALITY"
         N1OP0418 = "VITREOUS-DETACHMENT"
         N1OP0419 = "HEMORRAGE"
         N1OP0420 = "OPACITY"
         N1OP0421 = "OTHER"
         N1OP0422 = "NO"
         N1OP0423 = "RETINA DISC-DRUSEN"
         N1OP0424 = "GLAUCOMATOUS CUP"
         N1OP0425 = "NEVASCULARIZATION"
         N1OP0426 = "OPTIC ATROPHY-PRIMARY"
         N1OP0427 = "SECONDRY"
         N1OP0428 = "PAPILLEDEMA"
         N1OP0429 = "PAPILLITIS"
         N1OP0430 = "OTHER"
         N1OP0431 = "MACULA DEGENERATION-SENILE"
         N1OP0432 = "DISCIFORM"
         N1OP0433 = "CIRINATE"
         N1OP0434 = "DIABETIC INVOLEMENT"
         N1OP0435 = "EDEMA"
         N1OP0436 = "HYPERTENSIVE INVOLEMENT"
         N1OP0437 = "PIGMENT EPITH. DETAH"
         N1OP0438 = "OTHER"
         N1OP0439 = "VESSELS ARTERIES-BRANCH OCCLUSION"
         N1OP0440 = "CENTRAL OCCLUSION"
         N1OP0441 = "GENERAL NOARROW (1-4)"
         N1OP0442 = "SCLOROSIS (1-4)"
         N1OP0443 = "VEINS-BRANCH OCCLUSION"
         N1OP0444 = "CENTRAL OCCLUSION"
         N1OP0445 = "DILATATION"
         N1OP0446 = "SAUSAGING"
         N1OP0447 = "SHEATHING"
         N1OP0448 = "TORTUOSITY"
         N1OP0449 = "CAPILLARIES-MICROANEURYSMS"
         N1OP0450 = "NEOVASCULARIZATION"
         N1OP0451 = "OTHER"
         N1OP0452 = "EXUDATES-COTTON WOOL"
         N1OP0453 = "HARD"
         N1OP0454 = "WAXY"
         N1OP0455 = "OTHER"
         N1OP0456 = "HEMORRHAGES-CHOROIDAL"
         N1OP0457 = "PRERETIANAL"
         N1OP0458 = "DEEP-RETINAL"
         N1OP0459 = "SEPERFICIAL-RETINAL"
         N1OP0460 = "OTHER"
         N1OP0461 = "PIGMENT CHANGES-CHORIDAL"
         N1OP0462 = "EPITHELIAL-ATROPHY"
         N1OP0463 = "HYPERPLASIA"
         N1OP0464 = "OTHER"
         N1OP0465 = "ANGIOID STREAKS"
         N1OP0466 = "DETACHMENT"
         N1OP0467 = "DRUSEN"
         N1OP0468 = "INFLAMMATION-CHORIORETINITS"
         N1OP0469 = "ACTIVE"
         N1OP0470 = "INACTIVE"
         N1OP0471 = "RETROLENTAL FIBORPLASIA"
         N1OP0472 = "OTHER"
         N1OP0473 = "NO ABNORALITY"
         N1OP0474 = "NOT VISUALIZED"
         N1OP0475 = "BLANK-WORK AREA"
         N1OP0476 = "NOT VISUALIZED"
         N1OP0477 = "AMBLYOPIA"
         N1OP0478 = "CONDITION DECREASSES VISION"
         N1OP0479 = "TREATMENT"
         N1OP0480 = "EYE AFFECTED"
         N1OP0481 = "CONDITION CODE"
         N1OP0487 = "CONDITION DECREASES VISION"
         N1OP0488 = "TREATMENT"
         N1OP0489 = "EYE AFFECTED"
         N1OP0490 = "CONDITON CODE"
         N1OP0496 = "CONDITION DECREASSES VISION"
         N1OP0497 = "TREATMENT"
         N1OP0498 = "EYE AFFECTED"
         N1OP0499 = "CONDITON CODE"
         N1OP0505 = "CONDITION DECREASES VISION"
         N1OP0506 = "TREATMENT"
         N1OP0507 = "EYE AFFECTED"
         N1OP0508 = "CONDITION CODE"
         N1OP0514 = "CONDITION DECREASES VISION"
         N1OP0515 = "TREATMENT"
         N1OP0516 = "EYE AFFECTED"
         N1OP0517 = "CONDITION CODE"
         N1OP0523 = "CONDITION DECREASES VISION"
         N1OP0524 = "TREATMENT "
         N1OP0525 = "EYE AFFECTED"
         N1OP0526 = "CONDITON CODE"
         N1OP0532 = "CONDITION DECREASES VISION"
         N1OP0533 = "TREATMENT"
         N1OP0534 = "EYE AFFECTED"
         N1OP0535 = "CONDITON CODE"
         N1OP0541 = "CONDITON DECREASES VISION"
         N1OP0542 = "TREATMENT"
         N1OP0543 = "EYE AFFECTED"
         N1OP0544 = "CONDITION CODE"
         N1OP0550 = "CONDITION DECREASES VISION"
         N1OP0551 = "TREATMENT"
         N1OP0552 = "EYE AFFECTED"
         N1OP0553 = "CONDITION CODE"
         N1OP0559 = "DONDITION  DECREASES VISION"
         N1OP0560 = "TREATMENT"
         N1OP0561 = "EYE AFFECTED"
         N1OP0562 = "CONDITION CODE"
         N1OP0568 = "CONTION DECREASES VISION"
         N1OP0569 = "TREATMENT"
         N1OP0570 = "EYE AFFECTED"
         N1OP0571 = "BLANK-WORK AREA"
      ;
RUN;
