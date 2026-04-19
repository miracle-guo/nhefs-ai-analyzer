/*
 *  Survey:           NHANES I
 *  Years:            1971-1975
 *  Questionnaire:    Medical Examination
 *  Tape Number:      4233
 *
 *  Code Created By:  CDC/IMB
 *
 *  DESCRIPTION:  This file is provided as a starting point to perform advanced 
 *  statistical queries on the survey data.  They are to be used in conjunction 
 *  with legacy codebooks or data tape documentation to analyze the data.  In order 
 *  to use this program: either copy the tape file to your C:\temp directory, or change 
 *  the infile to point to the location that your tape file is located.
*/

DATA D_4233;
   INFILE 'c:\temp\DU4233.txt' LRECL = 2000 MISSOVER;
      LENGTH
         SEQN 8
         N1ME0006 8
         N1ME0010 4
         N1ME0011 4
         N1ME0012 4
         N1ME0013 4
         N1ME0014 4
         N1ME0015 4
         N1ME0016 4
         N1ME0017 4
         N1ME0019 4
         N1ME0020 4
         N1ME0022 4
         N1ME0023 4
         N1ME0025 4
         N1ME0027 4
         N1ME0028 4
         N1ME0029 4
         N1ME0030 4
         N1ME0031 4
         N1ME0032 4
         N1ME0033 4
         N1ME0034 4
         N1ME0036 4
         N1ME0037 8
         N1ME0041 4
         N1ME0042 8
         N1ME0046 4
         N1ME0047 8
         N1ME0051 4
         N1ME0052 8
         N1ME0056 4
         N1ME0057 8
         N1ME0061 4
         N1ME0062 8
         N1ME0066 4
         N1ME0067 8
         N1ME0071 4
         N1ME0072 8
         N1ME0076 4
         N1ME0077 8
         N1ME0081 4
         N1ME0082 8
         N1ME0086 4
         N1ME0087 8
         N1ME0091 8
         N1ME0095 8
         N1ME0100 4
         N1ME0101 4
         N1ME0103 4
         N1ME0104 4
         N1ME0105 4
         N1ME0106 8
         N1ME0110 4
         N1ME0112 4
         N1ME0114 4
         N1ME0115 4
         N1ME0116 4
         N1ME0117 4
         N1ME0118 4
         N1ME0119 4
         N1ME0120 4
         N1ME0122 4
         N1ME0123 4
         N1ME0124 4
         N1ME0125 4
         N1ME0126 4
         N1ME0127 4
         N1ME0128 4
         N1ME0129 4
         N1ME0130 4
         N1ME0131 4
         N1ME0132 4
         N1ME0135 4
         N1ME0138 8
         N1ME0144 4
         N1ME0146 4
         N1ME0147 4
         N1ME0150 4
         N1ME0151 4
         N1ME0152 4
         N1ME0153 4
         N1ME0154 4
         N1ME0155 4
         N1ME0156 4
         N1ME0157 4
         N1ME0158 8
         N1ME0164 8
         N1ME0170 8
         N1ME0176 8
         N1ME0182 8
         N1ME0188 8
         N1ME0194 4
         N1ME0196 4
         N1ME0199 $2
         N1ME0201 8
         N1ME0205 $20
         N1ME0225 4
         N1ME0228 4
         N1ME0231 4
         N1ME0234 4
         N1ME0235 4
         N1ME0236 4
         N1ME0237 4
         N1ME0238 4
         N1ME0239 4
         N1ME0240 4
         N1ME0241 4
         N1ME0242 4
         N1ME0243 4
         N1ME0244 4
         N1ME0245 4
         N1ME0246 4
         N1ME0247 4
         N1ME0248 4
         N1ME0249 4
         N1ME0250 4
         N1ME0251 4
         N1ME0252 4
         N1ME0253 4
         N1ME0254 4
         N1ME0255 4
         N1ME0256 4
         N1ME0257 4
         N1ME0258 4
         N1ME0259 4
         N1ME0260 4
         N1ME0261 4
         N1ME0262 4
         N1ME0263 4
         N1ME0264 4
         N1ME0265 4
         N1ME0266 4
         N1ME0267 4
         N1ME0268 4
         N1ME0269 4
         N1ME0270 4
         N1ME0271 4
         N1ME0272 4
         N1ME0273 4
         N1ME0274 4
         N1ME0275 4
         N1ME0276 4
         N1ME0277 4
         N1ME0278 4
         N1ME0279 4
         N1ME0280 4
         N1ME0281 4
         N1ME0282 4
         N1ME0283 4
         N1ME0284 4
         N1ME0285 8
         N1ME0290 4
         N1ME0291 4
         N1ME0292 8
         N1ME0297 4
         N1ME0298 8
         N1ME0306 4
         N1ME0307 4
         N1ME0308 4
         N1ME0309 4
         N1ME0310 4
         N1ME0311 4
         N1ME0312 4
         N1ME0313 4
         N1ME0314 4
         N1ME0315 4
         N1ME0316 4
         N1ME0317 4
         N1ME0318 4
         N1ME0319 4
         N1ME0320 4
         N1ME0321 4
         N1ME0322 4
         N1ME0323 4
         N1ME0324 4
         N1ME0325 4
         N1ME0326 4
         N1ME0327 4
         N1ME0328 4
         N1ME0329 8
         N1ME0333 $3
         N1ME0336 $3
         N1ME0339 $3
         N1ME0342 $3
         N1ME0345 $3
         N1ME0348 $3
         N1ME0351 $3
         N1ME0354 4
         N1ME0357 4
         N1ME0360 4
         N1ME0361 4
         N1ME0362 8
         N1ME0366 $59
         N1ME0425 4
         N1ME0426 4
         N1ME0427 4
         N1ME0428 4
         N1ME0429 4
         N1ME0430 4
         N1ME0431 4
         N1ME0432 4
         N1ME0433 4
         N1ME0434 4
         N1ME0435 4
         N1ME0436 4
         N1ME0437 4
         N1ME0438 4
         N1ME0439 4
         N1ME0440 4
         N1ME0441 4
         N1ME0442 4
         N1ME0443 4
         N1ME0444 4
         N1ME0445 4
         N1ME0446 4
         N1ME0447 4
         N1ME0448 4
         N1ME0449 4
         N1ME0450 4
         N1ME0451 4
         N1ME0452 4
         N1ME0453 4
         N1ME0454 4
         N1ME0455 4
         N1ME0456 4
         N1ME0457 4
         N1ME0458 4
         N1ME0459 4
         N1ME0460 4
         N1ME0461 4
         N1ME0462 4
         N1ME0463 4
         N1ME0464 4
         N1ME0465 4
         N1ME0466 4
         N1ME0467 4
         N1ME0468 4
         N1ME0469 4
         N1ME0470 4
         N1ME0471 4
         N1ME0472 4
         N1ME0473 4
         N1ME0474 4
         N1ME0475 4
         N1ME0476 4
         N1ME0477 4
         N1ME0478 4
         N1ME0479 4
         N1ME0480 4
         N1ME0481 4
         N1ME0482 4
         N1ME0483 4
         N1ME0484 4
         N1ME0485 4
         N1ME0486 4
         N1ME0487 4
         N1ME0488 4
         N1ME0489 4
         N1ME0490 4
         N1ME0491 4
         N1ME0492 4
         N1ME0493 4
         N1ME0494 4
         N1ME0495 4
         N1ME0496 4
         N1ME0497 4
         N1ME0498 4
         N1ME0499 4
         N1ME0500 4
         N1ME0501 4
         N1ME0502 4
         N1ME0503 4
         N1ME0504 4
         N1ME0505 4
         N1ME0506 4
         N1ME0507 4
         N1ME0508 4
         N1ME0509 4
         N1ME0510 4
         N1ME0511 4
         N1ME0512 4
         N1ME0513 4
         N1ME0514 4
         N1ME0515 4
         N1ME0516 4
         N1ME0517 4
         N1ME0518 4
         N1ME0519 4
         N1ME0520 4
         N1ME0521 4
         N1ME0522 4
         N1ME0523 4
         N1ME0524 4
         N1ME0525 4
         N1ME0526 4
         N1ME0527 4
         N1ME0528 4
         N1ME0529 4
         N1ME0530 4
         N1ME0531 4
         N1ME0532 4
         N1ME0533 4
         N1ME0534 4
         N1ME0535 4
         N1ME0536 4
         N1ME0537 4
         N1ME0538 4
         N1ME0539 4
         N1ME0540 4
         N1ME0541 4
         N1ME0542 4
         N1ME0543 4
         N1ME0544 4
         N1ME0545 4
         N1ME0546 4
         N1ME0547 4
         N1ME0548 4
         N1ME0549 4
         N1ME0550 4
         N1ME0551 4
         N1ME0552 4
         N1ME0553 4
         N1ME0554 4
         N1ME0555 4
         N1ME0556 4
         N1ME0557 4
         N1ME0558 4
         N1ME0559 4
         N1ME0560 4
         N1ME0561 4
         N1ME0562 4
         N1ME0563 4
         N1ME0564 4
         N1ME0565 4
         N1ME0566 4
         N1ME0567 4
         N1ME0568 4
         N1ME0569 4
         N1ME0570 4
         N1ME0571 4
         N1ME0572 4
         N1ME0573 4
         N1ME0574 4
         N1ME0575 4
         N1ME0576 4
         N1ME0577 4
         N1ME0578 4
         N1ME0579 4
         N1ME0580 4
         N1ME0581 4
         N1ME0582 4
         N1ME0583 4
         N1ME0584 4
         N1ME0585 4
         N1ME0586 4
         N1ME0587 4
         N1ME0588 4
         N1ME0589 4
         N1ME0590 4
         N1ME0591 4
         N1ME0592 4
         N1ME0593 4
         N1ME0594 4
         N1ME0595 4
         N1ME0596 4
         N1ME0597 4
         N1ME0598 4
         N1ME0599 4
         N1ME0600 4
         N1ME0601 4
         N1ME0602 4
         N1ME0603 4
         N1ME0604 4
         N1ME0605 4
         N1ME0606 4
         N1ME0607 4
         N1ME0608 4
         N1ME0609 4
         N1ME0610 4
         N1ME0611 4
         N1ME0612 4
         N1ME0613 4
         N1ME0614 4
         N1ME0615 4
         N1ME0616 4
         N1ME0617 4
         N1ME0618 4
         N1ME0619 4
         N1ME0620 4
         N1ME0621 4
         N1ME0622 4
         N1ME0623 4
         N1ME0624 4
         N1ME0625 4
         N1ME0626 4
         N1ME0627 4
         N1ME0628 4
         N1ME0629 4
         N1ME0630 4
         N1ME0631 4
         N1ME0632 4
         N1ME0633 4
         N1ME0634 4
         N1ME0635 4
         N1ME0636 4
         N1ME0637 4
         N1ME0638 4
         N1ME0639 4
         N1ME0640 4
         N1ME0641 4
         N1ME0642 4
         N1ME0643 4
         N1ME0644 4
         N1ME0645 4
         N1ME0646 4
         N1ME0647 4
         N1ME0648 4
         N1ME0649 4
         N1ME0650 4
         N1ME0651 4
         N1ME0652 4
         N1ME0653 4
         N1ME0654 4
         N1ME0655 4
         N1ME0656 4
         N1ME0657 4
         N1ME0658 4
         N1ME0659 4
         N1ME0660 4
         N1ME0661 4
         N1ME0662 4
         N1ME0663 4
         N1ME0664 4
         N1ME0665 4
         N1ME0666 4
         N1ME0667 4
         N1ME0668 4
         N1ME0669 4
         N1ME0670 4
         N1ME0671 4
         N1ME0672 4
         N1ME0673 4
         N1ME0674 4
         N1ME0675 4
         N1ME0676 4
         N1ME0677 4
         N1ME0678 4
         N1ME0679 4
         N1ME0680 4
         N1ME0681 4
         N1ME0682 4
         N1ME0683 4
         N1ME0684 4
         N1ME0685 4
         N1ME0686 4
         N1ME0687 4
         N1ME0688 4
         N1ME0689 4
         N1ME0690 4
         N1ME0691 4
         N1ME0692 4
         N1ME0693 4
         N1ME0694 4
         N1ME0695 4
         N1ME0696 4
         N1ME0697 4
         N1ME0698 4
         N1ME0699 4
         N1ME0700 4
         N1ME0701 4
         N1ME0702 4
         N1ME0703 4
         N1ME0704 4
         N1ME0705 4
         N1ME0706 4
         N1ME0707 8
         N1ME0711 4
         N1ME0712 4
         N1ME0715 4
         N1ME0718 4
         N1ME0721 4
         N1ME0724 4
         N1ME0725 4
         N1ME0726 $1
         N1ME0727 4
         N1ME0730 4
         N1ME0731 $1
         N1ME0732 $3
         N1ME0735 4
         N1ME0736 $1
         N1ME0737 4
         N1ME0740 4
         N1ME0741 $1
         N1ME0742 $3
         N1ME0745 4
         N1ME0746 $1
         N1ME0747 $3
         N1ME0750 4
         N1ME0751 $1
         N1ME0752 $3
         N1ME0755 4
         N1ME0756 $1
         N1ME0757 $3
         N1ME0760 4
         N1ME0761 $1
         N1ME0762 $3
         N1ME0765 4
         N1ME0766 $1
         N1ME0767 4
         N1ME0770 4
         N1ME0771 $1
         N1ME0772 $3
         N1ME0775 4
         N1ME0776 $1
         N1ME0777 $3
         N1ME0780 4
         N1ME0781 $1
         N1ME0782 $3
         N1ME0785 4
         N1ME0786 $1
         N1ME0787 $3
         N1ME0790 4
         N1ME0791 $1
         N1ME0792 $3
         N1ME0795 4
         N1ME0796 $1
         N1ME0797 4
         N1ME0800 $25
         N1ME0825 4
         N1ME0826 4
         N1ME0827 4
         N1ME0828 4
         N1ME0829 4
         N1ME0830 4
         N1ME0831 4
         N1ME0832 4
         N1ME0833 4
         N1ME0834 4
         N1ME0835 4
         N1ME0836 4
         N1ME0837 4
         N1ME0838 4
         N1ME0839 4
         N1ME0840 $11
      ;

      INPUT
         SEQN 1-5
         N1ME0006 6-9
         N1ME0010 10
         N1ME0011 11
         N1ME0012 12
         N1ME0013 13
         N1ME0014 14
         N1ME0015 15
         N1ME0016 16
         N1ME0017 17-18
         N1ME0019 19
         N1ME0020 20-21
         N1ME0022 22
         N1ME0023 23-24
         N1ME0025 25-26
         N1ME0027 27
         N1ME0028 28
         N1ME0029 29
         N1ME0030 30
         N1ME0031 31
         N1ME0032 32
         N1ME0033 33
         N1ME0034 34-35
         N1ME0036 36
         N1ME0037 37-40
         N1ME0041 41
         N1ME0042 42-45
         N1ME0046 46
         N1ME0047 47-50
         N1ME0051 51
         N1ME0052 52-55
         N1ME0056 56
         N1ME0057 57-60
         N1ME0061 61
         N1ME0062 62-65
         N1ME0066 66
         N1ME0067 67-70
         N1ME0071 71
         N1ME0072 72-75
         N1ME0076 76
         N1ME0077 77-80
         N1ME0081 81
         N1ME0082 82-85
         N1ME0086 86
         N1ME0087 87-90
         N1ME0091 91-94
         N1ME0095 95-99
         N1ME0100 100
         N1ME0101 101-102
         N1ME0103 103
         N1ME0104 104
         N1ME0105 105
         N1ME0106 106-109
         N1ME0110 110-111
         N1ME0112 112-113
         N1ME0114 114
         N1ME0115 115
         N1ME0116 116
         N1ME0117 117
         N1ME0118 118
         N1ME0119 119
         N1ME0120 120-121
         N1ME0122 122
         N1ME0123 123
         N1ME0124 124
         N1ME0125 125
         N1ME0126 126
         N1ME0127 127
         N1ME0128 128
         N1ME0129 129
         N1ME0130 130
         N1ME0131 131
         N1ME0132 132-134
         N1ME0135 135-137
         N1ME0138 138-143
         N1ME0144 144-145
         N1ME0146 146
         N1ME0147 147-149
         N1ME0150 150
         N1ME0151 151
         N1ME0152 152
         N1ME0153 153
         N1ME0154 154
         N1ME0155 155
         N1ME0156 156
         N1ME0157 157
         N1ME0158 158-163
         N1ME0164 164-169
         N1ME0170 170-175
         N1ME0176 176-181
         N1ME0182 182-187
         N1ME0188 188-193
         N1ME0194 194-195
         N1ME0196 196-198
         N1ME0199 199-200
         N1ME0201 201-204
         N1ME0205 205-224
         N1ME0225 225-227
         N1ME0228 228-230
         N1ME0231 231-233
         N1ME0234 234
         N1ME0235 235
         N1ME0236 236
         N1ME0237 237
         N1ME0238 238
         N1ME0239 239
         N1ME0240 240
         N1ME0241 241
         N1ME0242 242
         N1ME0243 243
         N1ME0244 244
         N1ME0245 245
         N1ME0246 246
         N1ME0247 247
         N1ME0248 248
         N1ME0249 249
         N1ME0250 250
         N1ME0251 251
         N1ME0252 252
         N1ME0253 253
         N1ME0254 254
         N1ME0255 255
         N1ME0256 256
         N1ME0257 257
         N1ME0258 258
         N1ME0259 259
         N1ME0260 260
         N1ME0261 261
         N1ME0262 262
         N1ME0263 263
         N1ME0264 264
         N1ME0265 265
         N1ME0266 266
         N1ME0267 267
         N1ME0268 268
         N1ME0269 269
         N1ME0270 270
         N1ME0271 271
         N1ME0272 272
         N1ME0273 273
         N1ME0274 274
         N1ME0275 275
         N1ME0276 276
         N1ME0277 277
         N1ME0278 278
         N1ME0279 279
         N1ME0280 280
         N1ME0281 281
         N1ME0282 282
         N1ME0283 283
         N1ME0284 284
         N1ME0285 285-289
         N1ME0290 290
         N1ME0291 291
         N1ME0292 292-296
         N1ME0297 297
         N1ME0298 298-305
         N1ME0306 306
         N1ME0307 307
         N1ME0308 308
         N1ME0309 309
         N1ME0310 310
         N1ME0311 311
         N1ME0312 312
         N1ME0313 313
         N1ME0314 314
         N1ME0315 315
         N1ME0316 316
         N1ME0317 317
         N1ME0318 318
         N1ME0319 319
         N1ME0320 320
         N1ME0321 321
         N1ME0322 322
         N1ME0323 323
         N1ME0324 324
         N1ME0325 325
         N1ME0326 326
         N1ME0327 327
         N1ME0328 328
         N1ME0329 329-332
         N1ME0333 333-335
         N1ME0336 336-338
         N1ME0339 339-341
         N1ME0342 342-344
         N1ME0345 345-347
         N1ME0348 348-350
         N1ME0351 351-353
         N1ME0354 354-356
         N1ME0357 357-359
         N1ME0360 360
         N1ME0361 361
         N1ME0362 362-365
         N1ME0366 366-424
         N1ME0425 425
         N1ME0426 426
         N1ME0427 427
         N1ME0428 428
         N1ME0429 429
         N1ME0430 430
         N1ME0431 431
         N1ME0432 432
         N1ME0433 433
         N1ME0434 434
         N1ME0435 435
         N1ME0436 436
         N1ME0437 437
         N1ME0438 438
         N1ME0439 439
         N1ME0440 440
         N1ME0441 441
         N1ME0442 442
         N1ME0443 443
         N1ME0444 444
         N1ME0445 445
         N1ME0446 446
         N1ME0447 447
         N1ME0448 448
         N1ME0449 449
         N1ME0450 450
         N1ME0451 451
         N1ME0452 452
         N1ME0453 453
         N1ME0454 454
         N1ME0455 455
         N1ME0456 456
         N1ME0457 457
         N1ME0458 458
         N1ME0459 459
         N1ME0460 460
         N1ME0461 461
         N1ME0462 462
         N1ME0463 463
         N1ME0464 464
         N1ME0465 465
         N1ME0466 466
         N1ME0467 467
         N1ME0468 468
         N1ME0469 469
         N1ME0470 470
         N1ME0471 471
         N1ME0472 472
         N1ME0473 473
         N1ME0474 474
         N1ME0475 475
         N1ME0476 476
         N1ME0477 477
         N1ME0478 478
         N1ME0479 479
         N1ME0480 480
         N1ME0481 481
         N1ME0482 482
         N1ME0483 483
         N1ME0484 484
         N1ME0485 485
         N1ME0486 486
         N1ME0487 487
         N1ME0488 488
         N1ME0489 489
         N1ME0490 490
         N1ME0491 491
         N1ME0492 492
         N1ME0493 493
         N1ME0494 494
         N1ME0495 495
         N1ME0496 496
         N1ME0497 497
         N1ME0498 498
         N1ME0499 499
         N1ME0500 500
         N1ME0501 501
         N1ME0502 502
         N1ME0503 503
         N1ME0504 504
         N1ME0505 505
         N1ME0506 506
         N1ME0507 507
         N1ME0508 508
         N1ME0509 509
         N1ME0510 510
         N1ME0511 511
         N1ME0512 512
         N1ME0513 513
         N1ME0514 514
         N1ME0515 515
         N1ME0516 516
         N1ME0517 517
         N1ME0518 518
         N1ME0519 519
         N1ME0520 520
         N1ME0521 521
         N1ME0522 522
         N1ME0523 523
         N1ME0524 524
         N1ME0525 525
         N1ME0526 526
         N1ME0527 527
         N1ME0528 528
         N1ME0529 529
         N1ME0530 530
         N1ME0531 531
         N1ME0532 532
         N1ME0533 533
         N1ME0534 534
         N1ME0535 535
         N1ME0536 536
         N1ME0537 537
         N1ME0538 538
         N1ME0539 539
         N1ME0540 540
         N1ME0541 541
         N1ME0542 542
         N1ME0543 543
         N1ME0544 544
         N1ME0545 545
         N1ME0546 546
         N1ME0547 547
         N1ME0548 548
         N1ME0549 549
         N1ME0550 550
         N1ME0551 551
         N1ME0552 552
         N1ME0553 553
         N1ME0554 554
         N1ME0555 555
         N1ME0556 556
         N1ME0557 557
         N1ME0558 558
         N1ME0559 559
         N1ME0560 560
         N1ME0561 561
         N1ME0562 562
         N1ME0563 563
         N1ME0564 564
         N1ME0565 565
         N1ME0566 566
         N1ME0567 567
         N1ME0568 568
         N1ME0569 569
         N1ME0570 570
         N1ME0571 571
         N1ME0572 572
         N1ME0573 573
         N1ME0574 574
         N1ME0575 575
         N1ME0576 576
         N1ME0577 577
         N1ME0578 578
         N1ME0579 579
         N1ME0580 580
         N1ME0581 581
         N1ME0582 582
         N1ME0583 583
         N1ME0584 584
         N1ME0585 585
         N1ME0586 586
         N1ME0587 587
         N1ME0588 588
         N1ME0589 589
         N1ME0590 590
         N1ME0591 591
         N1ME0592 592
         N1ME0593 593
         N1ME0594 594
         N1ME0595 595
         N1ME0596 596
         N1ME0597 597
         N1ME0598 598
         N1ME0599 599
         N1ME0600 600
         N1ME0601 601
         N1ME0602 602
         N1ME0603 603
         N1ME0604 604
         N1ME0605 605
         N1ME0606 606
         N1ME0607 607
         N1ME0608 608
         N1ME0609 609
         N1ME0610 610
         N1ME0611 611
         N1ME0612 612
         N1ME0613 613
         N1ME0614 614
         N1ME0615 615
         N1ME0616 616
         N1ME0617 617
         N1ME0618 618
         N1ME0619 619
         N1ME0620 620
         N1ME0621 621
         N1ME0622 622
         N1ME0623 623
         N1ME0624 624
         N1ME0625 625
         N1ME0626 626
         N1ME0627 627
         N1ME0628 628
         N1ME0629 629
         N1ME0630 630
         N1ME0631 631
         N1ME0632 632
         N1ME0633 633
         N1ME0634 634
         N1ME0635 635
         N1ME0636 636
         N1ME0637 637
         N1ME0638 638
         N1ME0639 639
         N1ME0640 640
         N1ME0641 641
         N1ME0642 642
         N1ME0643 643
         N1ME0644 644
         N1ME0645 645
         N1ME0646 646
         N1ME0647 647
         N1ME0648 648
         N1ME0649 649
         N1ME0650 650
         N1ME0651 651
         N1ME0652 652
         N1ME0653 653
         N1ME0654 654
         N1ME0655 655
         N1ME0656 656
         N1ME0657 657
         N1ME0658 658
         N1ME0659 659
         N1ME0660 660
         N1ME0661 661
         N1ME0662 662
         N1ME0663 663
         N1ME0664 664
         N1ME0665 665
         N1ME0666 666
         N1ME0667 667
         N1ME0668 668
         N1ME0669 669
         N1ME0670 670
         N1ME0671 671
         N1ME0672 672
         N1ME0673 673
         N1ME0674 674
         N1ME0675 675
         N1ME0676 676
         N1ME0677 677
         N1ME0678 678
         N1ME0679 679
         N1ME0680 680
         N1ME0681 681
         N1ME0682 682
         N1ME0683 683
         N1ME0684 684
         N1ME0685 685
         N1ME0686 686
         N1ME0687 687
         N1ME0688 688
         N1ME0689 689
         N1ME0690 690
         N1ME0691 691
         N1ME0692 692
         N1ME0693 693
         N1ME0694 694
         N1ME0695 695
         N1ME0696 696
         N1ME0697 697
         N1ME0698 698
         N1ME0699 699
         N1ME0700 700
         N1ME0701 701
         N1ME0702 702
         N1ME0703 703
         N1ME0704 704
         N1ME0705 705
         N1ME0706 706
         N1ME0707 707-710
         N1ME0711 711
         N1ME0712 712-714
         N1ME0715 715-717
         N1ME0718 718-720
         N1ME0721 721-723
         N1ME0724 724
         N1ME0725 725
         N1ME0726 726
         N1ME0727 727-729
         N1ME0730 730
         N1ME0731 731
         N1ME0732 732-734
         N1ME0735 735
         N1ME0736 736
         N1ME0737 737-739
         N1ME0740 740
         N1ME0741 741
         N1ME0742 742-744
         N1ME0745 745
         N1ME0746 746
         N1ME0747 747-749
         N1ME0750 750
         N1ME0751 751
         N1ME0752 752-754
         N1ME0755 755
         N1ME0756 756
         N1ME0757 757-759
         N1ME0760 760
         N1ME0761 761
         N1ME0762 762-764
         N1ME0765 765
         N1ME0766 766
         N1ME0767 767-769
         N1ME0770 770
         N1ME0771 771
         N1ME0772 772-774
         N1ME0775 775
         N1ME0776 776
         N1ME0777 777-779
         N1ME0780 780
         N1ME0781 781
         N1ME0782 782-784
         N1ME0785 785
         N1ME0786 786
         N1ME0787 787-789
         N1ME0790 790
         N1ME0791 791
         N1ME0792 792-794
         N1ME0795 795
         N1ME0796 796
         N1ME0797 797-799
         N1ME0800 800-824
         N1ME0825 825
         N1ME0826 826
         N1ME0827 827
         N1ME0828 828
         N1ME0829 829
         N1ME0830 830
         N1ME0831 831
         N1ME0832 832
         N1ME0833 833
         N1ME0834 834
         N1ME0835 835
         N1ME0836 836
         N1ME0837 837
         N1ME0838 838
         N1ME0839 839
         N1ME0840 840-850
      ;

      LABEL
         SEQN = "SAMPLE SEQUENCE NUMBER"
         N1ME0006 = "CATALOG NUMBER 4271"
         N1ME0010 = "SIZE OF PLACE"
         N1ME0011 = "SMSA-NOT SMSA"
         N1ME0012 = "TYPE OF LIVING QUARTERS"
         N1ME0013 = "LAND USAGE"
         N1ME0014 = "IF RURAL, ASKED HOW MANY ACRES OF LA ..."
         N1ME0015 = "IF 10 ACRES OF MORE, ASKED IF SALE O ..."
         N1ME0016 = "IF 10 ACRES OR LESLL, ASKED IF SALE  ..."
         N1ME0017 = "AGE-HEAD OF HOUSEHOLD"
         N1ME0019 = "SEX-HEAD OF HOUSEHOLD"
         N1ME0020 = "HIGHEST GRADE ATTENDED-HEAD OF HOUSEHOLD"
         N1ME0022 = "RACE-HEAD OF HOUSEHOLD"
         N1ME0023 = "TOTAL NUMBER OF PERSONS IN HOUSEHOLD"
         N1ME0025 = "TOTAL SAMPLE PERSONS IN HOUSEHOLD"
         N1ME0027 = "NUMBER OF ROOMS IN H9OUSE "
         N1ME0028 = "IS THERE PIPED WATER?"
         N1ME0029 = "IS THER HOT AND COLD PIPED WATER?"
         N1ME0030 = "IF YES TO PIPED WATER-DOES HOUS HAVE ..."
         N1ME0031 = "DOES HOUSE HAVE A RANGE OR COOK STOVE?"
         N1ME0032 = "DOES HOUSE HAVE A REFRIGERATOR?"
         N1ME0033 = "ARE KITCHEN FACILITIES USED BY ANYON ..."
         N1ME0034 = "TOTAL FAMILY INCOME GROUP"
         N1ME0036 = "WAGES OR SALARIES?"
         N1ME0037 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER ..."
         N1ME0041 = "SOCIAL SECURITY OR  RAILROAD RETIREMENT?"
         N1ME0042 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1ME0046 = "WELFARE PAYMENTS OR OTHER PUBLIC ASS ..."
         N1ME0047 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1ME0051 = "UNEMPLOYMENT OR WORKMEN'S COMPENSATION?"
         N1ME0052 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1ME0056 = "BOVERNMENT EMPLOYEE PESIONS OR PRIVA ..."
         N1ME0057 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1ME0061 = "DIVENDES, INTEREST OR RENT?"
         N1ME0062 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1ME0066 = "NET INCOME FROM  OWN NON-FARM BUSINE ..."
         N1ME0067 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1ME0071 = "NET INCOME FROM A FARM?"
         N1ME0072 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1ME0076 = "VETERAN'S PAYMENTS"
         N1ME0077 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1ME0081 = "ALIMONY, CHILD SUPPORT OR CONTRIBUTI ..."
         N1ME0082 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1ME0086 = "ANY OTHER INCOME?"
         N1ME0087 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1ME0091 = "TOTAL AMOUNT(OTAL OF POSITIONS 37-90)"
         N1ME0095 = "FAMILY UNIT CODE"
         N1ME0100 = "RELATIONSHIP TO HEAD OF HOUSEHOLD"
         N1ME0101 = "AGE AT INTERVIEW"
         N1ME0103 = "RACE OF EXAMINED PERSON"
         N1ME0104 = "SEX OF EXAMINED PERSON"
         N1ME0105 = "MARITAL STATUS"
         N1ME0106 = "DATE OF BIRTH (MONTH, YEAR)"
         N1ME0110 = "PLACE OF BIRTH"
         N1ME0112 = "HIGHEST GRADE OF REGULAR SCHOOL EVER ..."
         N1ME0114 = "DID HE FINISH THE GRADE?"
         N1ME0115 = "IS HE ATTENDING SCHOOL NOW?"
         N1ME0116 = "HAS HE EVER ATTENDED A SCHOOL OF ANY ..."
         N1ME0117 = "IF YES, WHAT KIND OF SCHOOL?"
         N1ME0118 = "IS ANY LANGUAGE OTHER THAN ENGLISH F ..."
         N1ME0119 = "IF YES, WHAT LANGUAGE"
         N1ME0120 = "WHAT IS YOUR MAIN ANCESTRY OR NATION ..."
         N1ME0122 = "WHAT WAS HE DOING MOST PAST THREE MO ..."
         N1ME0123 = "IF ' SOMETHING ELSE' FROM ABOVE, WHA ..."
         N1ME0124 = "IF 'KEEPING HOUSE' OR 'SOMETHING ELS ..."
         N1ME0125 = "IF 'WORKING' FROM ABOVE, DID HE WORK ..."
         N1ME0126 = "DID HE WORK AT ANY TIME LAST WEEK OR ..."
         N1ME0127 = "IF 'NO TO ABOVE, EVEN THOUGH HE DID  ..."
         N1ME0128 = "IF 'NO' IN POSITION 126, WAS HE LOOK ..."
         N1ME0129 = "IF YES TO ABOVE-WHICH?"
         N1ME0130 = "CLASS OF WORKER"
         N1ME0131 = "IF SELF-EMPLOYED IN 'OWN' BUSINESS A ..."
         N1ME0132 = "BUSINESS OR INDUSTRY CODE"
         N1ME0135 = "OCCUPATION CODE"
         N1ME0138 = "DATE OF EXAMINATION"
         N1ME0144 = "AGE AT EXAMINATION"
         N1ME0146 = "FARM"
         N1ME0147 = "POVERTY INDEX (X.XX)"
         N1ME0150 = "RELGION"
         N1ME0151 = "FOOD PROGRAMS APPLICABLITY"
         N1ME0152 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1ME0153 = "ARE YOU BUYING STAMPS NOW?"
         N1ME0154 = "WHAT IS THE MAIN REASON YOU AREN'T P ..."
         N1ME0155 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1ME0156 = "ARE YOU RECEIVING COMMODITY FOODS  N ..."
         N1ME0157 = "WHY AREN'T YOU PARTICPATING IN THE P ..."
         N1ME0158 = "DETAILED PERSONS-LOCATIONS 1-35"
         N1ME0164 = "ALL SAMPLE PERSONS-LOCATIONS 1-35"
         N1ME0170 = "DETAILED PERSONS-LOCATIONS 1-65"
         N1ME0176 = "ALL SAMPLE PERSONS-LOCATIONS 1-65"
         N1ME0182 = "DETAILED PERSONS-LOCATIONS  66-100"
         N1ME0188 = "DETALED PERSONS LOCATION 1-1000"
         N1ME0194 = "STRATA 1"
         N1ME0196 = "PRIMARY SAMPLING UNITS 1"
         N1ME0199 = "DATA USER WORK AREA"
         N1ME0201 = "CATALOG NUMBER 4233"
         N1ME0205 = "DATA USER WORK AREA"
         N1ME0225 = "PULSE"
         N1ME0228 = "SYSTOLIC"
         N1ME0231 = "DIASTOLIC"
         N1ME0234 = "HEAD, EYES, EARS, NOSE AND THROAT"
         N1ME0235 = "FINDINGS: DRY, STARING HAIR"
         N1ME0236 = "DYSPIGMENTED HAIR"
         N1ME0237 = "EASILY PLUCKABLE HAIR"
         N1ME0238 = "ABNORMAL TEXTURE OF LOSS OF CURL"
         N1ME0239 = "CIRCUMCORNEAL INJECTION"
         N1ME0240 = "CONJUNCTIVAL INJECTION"
         N1ME0241 = "ANGULAR BLEPHAITIS"
         N1ME0242 = "XEROSIS"
         N1ME0243 = "BITOT'S SPOTS"
         N1ME0244 = "KERATOMALACIA"
         N1ME0245 = "XEROPHTHALMIA"
         N1ME0246 = "ANGULAR LESIONS OF LIPS"
         N1ME0247 = "ANGULAR SCARS OF LIPS"
         N1ME0248 = "CHEILOSIS"
         N1ME0249 = "FILFORM PAPILLARY ATROPHY OF TONGUE"
         N1ME0250 = "FUNGIFORM PAPILLARY HYPERTROPHY OF T ..."
         N1ME0251 = "GEOGRAPHIC TONGUE"
         N1ME0252 = "FISSURES OF TONGUE"
         N1ME0253 = "SEPERATIONS OR SWELLING OF TONGUE"
         N1ME0254 = "SCARLET BEEFY TONGUE"
         N1ME0255 = "MAGENTA TONGUE"
         N1ME0256 = "NASO-LABIAL SEBORRHEA"
         N1ME0257 = "VISIBLE ENLARGED PAROTIDS"
         N1ME0258 = "BOSSING OF SKULL"
         N1ME0259 = "OTHER "
         N1ME0260 = "THYROIDS EVALUATION"
         N1ME0261 = "OTHER THYROID FINDING"
         N1ME0262 = "FINDINGS-TENDERNESS"
         N1ME0263 = "FINDINGS-NODULE"
         N1ME0264 = "ISTHMUS"
         N1ME0265 = "OTHER "
         N1ME0266 = "CHEST EVALUATION"
         N1ME0267 = "BEADING OF RIBS"
         N1ME0268 = "FOLLICULAR HYPERKERATOSIS OF UPPER BACK"
         N1ME0269 = "WHEEZING ON AUSCULTATION (DIFFUSE)"
         N1ME0270 = "WHEEZING ON AUSCULTATION (FOCAL)"
         N1ME0271 = "DECREASED BREATH SOUNDS"
         N1ME0272 = "OTHER FINDINGS"
         N1ME0273 = "CARDIOVASCULAR EVALUATION"
         N1ME0274 = "IF FINDINGS: CYANOSIS"
         N1ME0275 = "IRREGULAR PULSE"
         N1ME0276 = "CARDIAC MURMUR"
         N1ME0277 = "OTHER FINDINGS"
         N1ME0278 = "ABDOMINAL EVALUATION"
         N1ME0279 = "IF FINDINGS: HEPATOMEGALY"
         N1ME0280 = "SPELENOMEGALY"
         N1ME0281 = "UTERINE ENLARGEMENT"
         N1ME0282 = "UMBILICAL HERNIA"
         N1ME0283 = "POT BELLY "
         N1ME0284 = "MASS(ES)"
         N1ME0285 = "AREA(S) OF MASS(ES)"
         N1ME0290 = "OTHER FINDINGS"
         N1ME0291 = "SURGICAL SCARS"
         N1ME0292 = "AREA(S) OF SURGICAL SCAR"
         N1ME0297 = "OTHER FINDINGS"
         N1ME0298 = "WORK AREA"
         N1ME0306 = "MUSCULOSKELETAL EVALUATION"
         N1ME0307 = "BOW LEGS"
         N1ME0308 = "KNOCK KNEES"
         N1ME0309 = "EPIPHYSIAL ENLARGEMENT, WRISTS"
         N1ME0310 = "OTHER FINDINGS"
         N1ME0311 = "NEUROLOGICAL EVALUATION"
         N1ME0312 = "ABSENT KNEE JERKS"
         N1ME0313 = "ABSENT ANKLE JERKS"
         N1ME0314 = "POSITIVE CHVOSTEK SIGN"
         N1ME0315 = "APATHY"
         N1ME0316 = "MARKED HYPERIRRITABILITY"
         N1ME0317 = "OTHER"
         N1ME0318 = "SKIN EVALUATION"
         N1ME0319 = "IF FINDINGS: FOLLICULAR HYPERKERATOS ..."
         N1ME0320 = "HYPERPIGMENTATION, HANDS AND FACE"
         N1ME0321 = "DRY OR SCALING SKIN"
         N1ME0322 = "PERIFOLLICULOSIS"
         N1ME0323 = "PETECHIAL"
         N1ME0324 = "MOSAIC SKIN"
         N1ME0325 = "PELLAGROUS DERMATITIS"
         N1ME0326 = "ECCHYMOSES"
         N1ME0327 = "OTHER FINDINGS"
         N1ME0328 = "GENERAL EVALUATION"
         N1ME0329 = "WORK AREA"
         N1ME0333 = "SUMMARY OF FINDINGS BY ICD CODE FIND ..."
         N1ME0336 = "FINDINGS #2"
         N1ME0339 = "FINDINGS #3"
         N1ME0342 = "FINDINGS #4"
         N1ME0345 = "FINDINGS #5"
         N1ME0348 = "FINDINGS #6"
         N1ME0351 = "FINDINGS #7"
         N1ME0354 = "FINDINGS #8"
         N1ME0357 = "FINDINGS #9"
         N1ME0360 = "EXAMNER'S SUBJECTIVE IMPRESSION OF N ..."
         N1ME0361 = "OBESE"
         N1ME0362 = "TEMPERATURE (XXX.X)"
         N1ME0366 = "WORK AREA"
         N1ME0425 = "EXTERNAL EAR (EXCEPT CANAL) RIGHT EAR"
         N1ME0426 = "LEFT EAR"
         N1ME0427 = "OPERATIVE SCAR (RIGHT)"
         N1ME0428 = "OPERATIVE SCAR (LEFT)"
         N1ME0429 = "OTHER (RIGHT)"
         N1ME0430 = "OTHER (LEFT)"
         N1ME0431 = "PIERCED EARS"
         N1ME0432 = "AUDITORY CANAL RIGHT EAR"
         N1ME0433 = "LEFT EAR"
         N1ME0434 = "OCCLUDED (RIGHT)"
         N1ME0435 = "OCCLUDED (LEFT)"
         N1ME0436 = "OCCLUDED BY-(RIGHT)"
         N1ME0437 = "OCCLUDED BY-(LEFT)"
         N1ME0438 = "DRUM (RIGHT)"
         N1ME0439 = "DRUM (LEFT)"
         N1ME0440 = "DULL-TRANSPARENT (RIGHT)"
         N1ME0441 = "DULL-TRANSPARENT (LEFT)"
         N1ME0442 = "BULGING-RETRACTED (RIGHT)"
         N1ME0443 = "BULGING-RETRACTED (LEFT)"
         N1ME0444 = "CALCIUM PLAQUES (RIGHT)"
         N1ME0445 = "CALCIUM PLAQUES (LEFT)"
         N1ME0446 = "OTHER FINDINGS (RIGHT)"
         N1ME0447 = "OTHER FINDINGS (LEFT)"
         N1ME0448 = "RED-OTHER DISCOLORATION (RIGHT)"
         N1ME0449 = "RED-OTHER DISCOLORATION (LEFT)"
         N1ME0450 = "FLUID (RIGHT)"
         N1ME0451 = "FLUID (LEFT)"
         N1ME0452 = "SCARS (RIGHT)"
         N1ME0453 = "SCARS (LEFT)"
         N1ME0454 = "PERFORATED (RIGHT)"
         N1ME0455 = "PERFORATED (LEFT)"
         N1ME0456 = "NARES (RIGHT)"
         N1ME0457 = "NARES (LEFT)"
         N1ME0458 = "OBSTRUCTION (RIGHT)"
         N1ME0459 = "OBSTRUCTION (LEFT)"
         N1ME0460 = "DEVIATED SEPTUM (RIGHT)"
         N1ME0461 = "DEVIATED SEPTUM (LEFT)"
         N1ME0462 = "SWOLLEN TURBINATES (RIGHT)"
         N1ME0463 = "SWOLLEN TURBINATES (LEFT)"
         N1ME0464 = "CHRONIC INFLAMMATION (RIGHT)"
         N1ME0465 = "CHRONIC INFLAMMATION (LEFT)"
         N1ME0466 = "OTHER (RIGHT)"
         N1ME0467 = "OTHER (LEFT)"
         N1ME0468 = "NECK "
         N1ME0469 = "ADENOPATHY"
         N1ME0470 = "TRACHEAL DEVIATION"
         N1ME0471 = "OTHER"
         N1ME0472 = "CHEST AUSCULTATION"
         N1ME0473 = "RIGHT CHEST-UPPER LOBE"
         N1ME0474 = "BRONCHIAL BREATH SOUNDS"
         N1ME0475 = "RALES"
         N1ME0476 = "RHONCHI"
         N1ME0477 = "WHEEZE"
         N1ME0478 = "MIDDLE LOBE"
         N1ME0479 = "BRONCHIAL BREATH SOUNDS"
         N1ME0480 = "RALES"
         N1ME0481 = "RHONCHI"
         N1ME0482 = "WHEEZE"
         N1ME0483 = "LOWER LOBE"
         N1ME0484 = "BRONCHIAL BREATH SOUNDS"
         N1ME0485 = "RALES"
         N1ME0486 = "RHONCHI"
         N1ME0487 = "WHEEZE"
         N1ME0488 = "LEFT CHEST UPPER LOBE"
         N1ME0489 = "BRONCHIAL BREATH SOUNDS"
         N1ME0490 = "RALES"
         N1ME0491 = "RHONCHI"
         N1ME0492 = "WHEEZE"
         N1ME0493 = "LOWER LOBE"
         N1ME0494 = "BRONCHIAL BREATH SOUNDS"
         N1ME0495 = "RALES"
         N1ME0496 = "RHONCHI"
         N1ME0497 = "WHEEZE"
         N1ME0498 = "OTHER CHEST FINDINGS"
         N1ME0499 = "PMI (POINT OF MAXIMAL IMPULSE)"
         N1ME0500 = "INTERSPACE"
         N1ME0501 = "MIDCLAVICULAR"
         N1ME0502 = "THRILLS"
         N1ME0503 = "SYSTOLIC"
         N1ME0504 = "DIASTOLIC"
         N1ME0505 = "FIRST HEART SOUND"
         N1ME0506 = "SECOND HEART SOUND"
         N1ME0507 = "MURMURS"
         N1ME0508 = "IF MURMUR-TYPE (SYSTOLIC)"
         N1ME0509 = "IF MURMUR-TYPE (DIASTOLIC)"
         N1ME0510 = "APEX-SYSTOLIC"
         N1ME0511 = "APEX-DIASTOLIC"
         N1ME0512 = "MEDPRECORDIUM-SYSTOLIC"
         N1ME0513 = "MEDPRECORDIUM-DIASTOLIC"
         N1ME0514 = "LEFT BASE-SYSTOLIC"
         N1ME0515 = "LEFT BASE-DIASTOLIC"
         N1ME0516 = "RIGHT BASE-DIASTOLIC"
         N1ME0517 = "RIGHT BASE-SYSTOLIC"
         N1ME0518 = "MITRAL"
         N1ME0519 = "AORTIC"
         N1ME0520 = "TRICUSPID"
         N1ME0521 = "PULMONIC"
         N1ME0522 = "ASD"
         N1ME0523 = "VSD"
         N1ME0524 = "OTHER"
         N1ME0525 = "DON'T KNOW"
         N1ME0526 = "OTHER CARDIAC OR CARDIOBASCULAR FINDINGS"
         N1ME0527 = "EDEMA"
         N1ME0528 = "OTHER "
         N1ME0529 = "NECK VEIN DISTENSION"
         N1ME0530 = "RIGHT RADIAL"
         N1ME0531 = "RIGHT FEMORAL"
         N1ME0532 = "RIGHT DORSIS PEDIS"
         N1ME0533 = "LEFT RADIAL"
         N1ME0534 = "LEFT FEMORAL"
         N1ME0535 = "LEFT DORSALIS PEDIS"
         N1ME0536 = "RIGHT RADIAL"
         N1ME0537 = "RIGHT FEMORAL"
         N1ME0538 = "RIGHT DORSIS PEDIS"
         N1ME0539 = "OTHER"
         N1ME0540 = "LEFT RADIAL"
         N1ME0541 = "LEFT FEMORAL"
         N1ME0542 = "LEFT DORSALIS PEDIS"
         N1ME0543 = "OTHER "
         N1ME0544 = "KNEES"
         N1ME0545 = "GENU VARUM"
         N1ME0546 = "GENU VARUM"
         N1ME0547 = "GENU RECURVATUM"
         N1ME0548 = "FIXED FLEXION"
         N1ME0549 = "OTHER"
         N1ME0550 = "RIGHT MEDIAL"
         N1ME0551 = "RIGHT MEDIAL"
         N1ME0552 = "RIGHT LATERAL"
         N1ME0553 = "RIGHT LATERAL"
         N1ME0554 = "RIGHT DIFFUSE"
         N1ME0555 = "RIGHT DIFFUSE"
         N1ME0556 = "LEFT MEDIAL"
         N1ME0557 = "LEFT MEDIAL"
         N1ME0558 = "LEFT LATERAL"
         N1ME0559 = "LEFT LATERAL"
         N1ME0560 = "LEFT DIFFUSE"
         N1ME0561 = "LEFT DIFFUSE"
         N1ME0562 = "RIGHT SUPRAPATERLLAR"
         N1ME0563 = "LEFT SUPRAPATERLLAR"
         N1ME0564 = "RIGHT INFRAPATELLAR"
         N1ME0565 = "LEFT INFRAPATELLAR"
         N1ME0566 = "SWELLING"
         N1ME0567 = "FLUID"
         N1ME0568 = "SOFT TISSUE PROLIFEATION"
         N1ME0569 = "SUBPATELLAR CREPITUS"
         N1ME0570 = "MUSCULAR WASTING THIGH"
         N1ME0571 = "OTHER"
         N1ME0572 = "HIPS"
         N1ME0573 = "EXTENSION--ACTIVE"
         N1ME0574 = "EXTENTION--PASSIVE"
         N1ME0575 = "FLEXION--ACTIVE"
         N1ME0576 = "FLEXION--PASSIVE"
         N1ME0577 = "ABDUCTION--ACTIVE"
         N1ME0578 = "ABDUCTION--PASSIVE"
         N1ME0579 = "ADDUCTION--ACTIVE"
         N1ME0580 = "ADDUCTION--PASSIVE"
         N1ME0581 = "EXTERNAL ROTATION--ACTIVE"
         N1ME0582 = "EXTERNAL ROTATION--PASSIVE"
         N1ME0583 = "INTERNAL ROTATION--ACTIVE"
         N1ME0584 = "INTERNAL ROTATION--PASSIVE"
         N1ME0585 = "MUSCLE WASTINGS (GLUTEAL)"
         N1ME0586 = "TROCHANTER TENDERNESS"
         N1ME0587 = "GROIN TENDERNESS"
         N1ME0588 = "OTHER "
         N1ME0589 = "JOINTS"
         N1ME0590 = "TENDER"
         N1ME0591 = "SWELLING"
         N1ME0592 = "DEFORMITY"
         N1ME0593 = "LIMITATION"
         N1ME0594 = "PAIN ON MOTION"
         N1ME0595 = "OTHER"
         N1ME0596 = "TENDER"
         N1ME0597 = "SWELLING"
         N1ME0598 = "DEFORMITY"
         N1ME0599 = "LIMITATION"
         N1ME0600 = "PAIN ON MOTION"
         N1ME0601 = "OTHER"
         N1ME0602 = "TENDER"
         N1ME0603 = "SWELLING"
         N1ME0604 = "DEFORMITY"
         N1ME0605 = "LIMITATION"
         N1ME0606 = "PAIN ON MOTION"
         N1ME0607 = "OTHER"
         N1ME0608 = "TENDER--RIGHT"
         N1ME0609 = "TENDER--LEFT"
         N1ME0610 = "SWELLING--RIGHT"
         N1ME0611 = "SWELLING--LEFT"
         N1ME0612 = "DEFORMITY--RIGHT"
         N1ME0613 = "DEFORMITY--LEFT"
         N1ME0614 = "LIMITATION--RIGHT"
         N1ME0615 = "LIMITATION-LEFT"
         N1ME0616 = "PAIN ON MOTION--RIGHT"
         N1ME0617 = "PAIN ON MOTION--LEFT"
         N1ME0618 = "OTHER--RIGHT"
         N1ME0619 = "OTHER--LEFT"
         N1ME0620 = "TENDER--RIGHT"
         N1ME0621 = "TENDER--LEFT"
         N1ME0622 = "SWELLING--RIGHT"
         N1ME0623 = "SWELLING--LEFT"
         N1ME0624 = "DEFORMITY--RIGHT"
         N1ME0625 = "DEFORMITY--LEFT"
         N1ME0626 = "LIMITATION--RIGHT"
         N1ME0627 = "LIMITATION--LEFT"
         N1ME0628 = "PAIN ON MOTION--RIGHT"
         N1ME0629 = "PAIN ON MOTION--LEFT"
         N1ME0630 = "OTHER--RIGHT"
         N1ME0631 = "OTHER--LEFT"
         N1ME0632 = "TENDER--RIGHT"
         N1ME0633 = "TENDER--LEFT"
         N1ME0634 = "SWELLING--RIGHT"
         N1ME0635 = "SWELLING--LEFT"
         N1ME0636 = "DEFORMITY--RIGHT"
         N1ME0637 = "DEFORMITY--LEFT"
         N1ME0638 = "LIMITATION--RIGHT"
         N1ME0639 = "LIMITATION--LEFT"
         N1ME0640 = "HERBERDEN'S NODES--RIGHT"
         N1ME0641 = "HERBERDEN'S NODES--LEFT"
         N1ME0642 = "PAIN ON MOTION--RIGHT"
         N1ME0643 = "PAIN ON MOTION--LEFT"
         N1ME0644 = "OTHER--RIGHT"
         N1ME0645 = "OTHER--LEFT"
         N1ME0646 = "OTHER JOINTS ANKLE- TENDER"
         N1ME0647 = "SWELLING"
         N1ME0648 = "DEFORMITY"
         N1ME0649 = "LIMITATION"
         N1ME0650 = "PAIN IN MOTION"
         N1ME0651 = "OTHER"
         N1ME0652 = "FEET-TENDER"
         N1ME0653 = "SWELLING"
         N1ME0654 = "DEFORMITY"
         N1ME0655 = "LIMITATION"
         N1ME0656 = "PAIN IN MOTION"
         N1ME0657 = "OTHER"
         N1ME0658 = "BACK"
         N1ME0659 = "SCOLIOSIS"
         N1ME0660 = "KYPHOSIS"
         N1ME0661 = "LORDOSIS"
         N1ME0662 = "SCIATIC NOTCH"
         N1ME0663 = "SACROILIC"
         N1ME0664 = "OTHER"
         N1ME0665 = "CERVICAL SPINE"
         N1ME0666 = "THORACIC SPINE"
         N1ME0667 = "LUMBAR SPINE FLEXION"
         N1ME0668 = "LUMBAR SPINE--RIGHT LATERAL FLEXION"
         N1ME0669 = "LUMBAR SPINE--LEFT LATERAL FLEXION"
         N1ME0670 = "FULL EXTENSION"
         N1ME0671 = "PAIN ON MOTION"
         N1ME0672 = "CERVICAL "
         N1ME0673 = "THORACIC   "
         N1ME0674 = "LOW BACK"
         N1ME0675 = "DIFFUSE"
         N1ME0676 = "UNCERTAIN"
         N1ME0677 = "CERVICAL"
         N1ME0678 = "THORACIC"
         N1ME0679 = "LOW BACK"
         N1ME0680 = "DIFFUSE"
         N1ME0681 = "UNCERTAIN"
         N1ME0682 = "RIGHT LATERAL BENDING-CERVICAL"
         N1ME0683 = "THORACIC"
         N1ME0684 = "LOW BACK"
         N1ME0685 = "DIFFUSE"
         N1ME0686 = "UNCERTAIN"
         N1ME0687 = "LEFT LATERAL BENDING-CERVICAL"
         N1ME0688 = "THORACIC"
         N1ME0689 = "LOW BACK"
         N1ME0690 = "DIFFUSE"
         N1ME0691 = "UNCERTAIN"
         N1ME0692 = "RIGHT ROTATION-CERVICAL"
         N1ME0693 = "THORACIC"
         N1ME0694 = "LOW BACK"
         N1ME0695 = "DIFFUSE"
         N1ME0696 = "UNCERTAIN"
         N1ME0697 = "LEFT ROTATION-CERVICAL"
         N1ME0698 = "THORACIC"
         N1ME0699 = "LOW BACK"
         N1ME0700 = "DIFFUSE"
         N1ME0701 = "UNCERTAIN"
         N1ME0702 = "STRAIGHT-LEG RASING TEST- RIGHT LEG"
         N1ME0703 = "INCREASE ON ANKLE (RIGHT LEG)"
         N1ME0704 = "LEFT LEG"
         N1ME0705 = "INCEREASE DORSIFLEXION (LEFT LEG)"
         N1ME0706 = "OTHER SYSTEMS"
         N1ME0707 = "BLOOD PRESSURE"
         N1ME0711 = "AM OR PM"
         N1ME0712 = "RECUMBENT--SYSTOLIC"
         N1ME0715 = "RECUMBENT--DIASTOLIC"
         N1ME0718 = "SITTING--SYSTOLIC"
         N1ME0721 = "SITTING--DIASTOLIC"
         N1ME0724 = "SUMMARY OF DIAGNOSTIC IMPRESSION"
         N1ME0725 = "ICD CODES-SEVERITY"
         N1ME0726 = "CERTAINTY"
         N1ME0727 = "ICD CODE  "
         N1ME0730 = "SEVERITY"
         N1ME0731 = "CERTAINTY"
         N1ME0732 = "ICD CODE"
         N1ME0735 = "SEVERITY"
         N1ME0736 = "CERTAINTY"
         N1ME0737 = "ICD CODE"
         N1ME0740 = "SEVERITY"
         N1ME0741 = "CERTAINTY"
         N1ME0742 = "ICD CODE"
         N1ME0745 = "SEVERITY"
         N1ME0746 = "CERTAINTY"
         N1ME0747 = "ICD CODE"
         N1ME0750 = "SEVERITY"
         N1ME0751 = "CERTAINTY"
         N1ME0752 = "ICD CODE"
         N1ME0755 = "SEVERITY"
         N1ME0756 = "CERTAINTY"
         N1ME0757 = "ICD CODE"
         N1ME0760 = "SEVERITY"
         N1ME0761 = "CERTAINTY"
         N1ME0762 = "ICD CODE"
         N1ME0765 = "SEVERITY"
         N1ME0766 = "CERTAINTY"
         N1ME0767 = "ICD CODE"
         N1ME0770 = "SEVERITY"
         N1ME0771 = "CERTAINTY"
         N1ME0772 = "ICD CODE"
         N1ME0775 = "SEVERITY"
         N1ME0776 = "CERTAINTY"
         N1ME0777 = "ICD CODE"
         N1ME0780 = "SEVERITY"
         N1ME0781 = "CERTAINTY"
         N1ME0782 = "ICD CODE"
         N1ME0785 = "SEVERITY"
         N1ME0786 = "CERTAINTY"
         N1ME0787 = "ICD CODE"
         N1ME0790 = "SEVERITY"
         N1ME0791 = "CERTAINTY"
         N1ME0792 = "ICD CODE"
         N1ME0795 = "SEVERITY"
         N1ME0796 = "CERTAINTY"
         N1ME0797 = "ICD CODE"
         N1ME0800 = "DATA USER WORK AREA OCULAR FUNDI"
         N1ME0825 = "NORMAL"
         N1ME0826 = "FUNDUS NOT VISUALIZED"
         N1ME0827 = "GLOBE ABSENT"
         N1ME0828 = "INCREASED LIGHT REFKLEX"
         N1ME0829 = "NARROW ARTERIOLES"
         N1ME0830 = "TORTUOUS ARTERIOLES"
         N1ME0831 = "AV COMPRESSION"
         N1ME0832 = "HEMMORHAGE"
         N1ME0833 = "EXUDATE"
         N1ME0834 = "VENOUS ENGORGEMENT"
         N1ME0835 = "PAPILLEDMA"
         N1ME0836 = "DISC ABNORMAL"
         N1ME0837 = "LENS OPACITIES"
         N1ME0838 = "IRITIS"
         N1ME0839 = "OTHER"
         N1ME0840 = "DATA USER WORK AREA"
      ;
RUN;
