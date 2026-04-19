/*
 *  Survey:           NHANES I
 *  Years:            1971-1975
 *  Questionnaire:    Dermatology
 *  Tape Number:      4151
 *
 *  Code Created By:  CDC/IMB
 *
 *  DESCRIPTION:  This file is provided as a starting point to perform advanced 
 *  statistical queries on the survey data.  They are to be used in conjunction 
 *  with legacy codebooks or data tape documentation to analyze the data.  In order 
 *  to use this program: either copy the tape file to your C:\temp directory, or change 
 *  the infile to point to the location that your tape file is located.
*/

DATA D_4151;
   INFILE 'c:\temp\DU4151.txt' LRECL = 2000 MISSOVER;
      LENGTH
         SEQN 8
         N1DE0006 8
         N1DE0010 4
         N1DE0011 4
         N1DE0012 4
         N1DE0013 4
         N1DE0014 4
         N1DE0015 4
         N1DE0016 4
         N1DE0017 4
         N1DE0019 4
         N1DE0020 4
         N1DE0022 4
         N1DE0023 4
         N1DE0025 4
         N1DE0027 4
         N1DE0028 4
         N1DE0029 4
         N1DE0030 4
         N1DE0031 4
         N1DE0032 4
         N1DE0033 4
         N1DE0034 4
         N1DE0036 4
         N1DE0037 8
         N1DE0041 4
         N1DE0042 8
         N1DE0046 4
         N1DE0047 8
         N1DE0051 4
         N1DE0052 8
         N1DE0056 4
         N1DE0057 8
         N1DE0061 4
         N1DE0062 8
         N1DE0066 4
         N1DE0067 8
         N1DE0071 4
         N1DE0072 8
         N1DE0076 4
         N1DE0077 8
         N1DE0081 4
         N1DE0082 8
         N1DE0086 4
         N1DE0087 8
         N1DE0091 8
         N1DE0095 8
         N1DE0100 4
         N1DE0101 4
         N1DE0103 4
         N1DE0104 4
         N1DE0105 4
         N1DE0106 8
         N1DE0110 4
         N1DE0112 4
         N1DE0114 4
         N1DE0115 4
         N1DE0116 4
         N1DE0117 4
         N1DE0118 4
         N1DE0119 4
         N1DE0120 4
         N1DE0122 4
         N1DE0123 4
         N1DE0124 4
         N1DE0125 4
         N1DE0126 4
         N1DE0127 4
         N1DE0128 4
         N1DE0129 4
         N1DE0130 4
         N1DE0131 4
         N1DE0132 4
         N1DE0135 4
         N1DE0138 8
         N1DE0144 4
         N1DE0146 4
         N1DE0147 4
         N1DE0150 4
         N1DE0151 4
         N1DE0152 4
         N1DE0153 4
         N1DE0154 4
         N1DE0155 4
         N1DE0156 4
         N1DE0157 4
         N1DE0158 8
         N1DE0164 $6
         N1DE0170 8
         N1DE0176 $6
         N1DE0182 $12
         N1DE0194 4
         N1DE0196 4
         N1DE0199 4
         N1DE0201 8
         N1DE0205 $17
         N1DE0222 4
         N1DE0225 4
         N1DE0227 4
         N1DE0229 4
         N1DE0230 4
         N1DE0231 4
         N1DE0232 4
         N1DE0233 4
         N1DE0234 4
         N1DE0235 4
         N1DE0236 $6
         N1DE0242 4
         N1DE0244 $6
         N1DE0250 4
         N1DE0252 $6
         N1DE0258 4
         N1DE0260 $6
         N1DE0266 $6
         N1DE0272 4
         N1DE0273 $6
         N1DE0279 4
         N1DE0280 4
         N1DE0282 4
         N1DE0284 4
         N1DE0286 4
         N1DE0287 4
         N1DE0288 4
         N1DE0289 4
         N1DE0290 4
         N1DE0291 $1
         N1DE0292 $1
         N1DE0293 $1
         N1DE0294 $1
         N1DE0295 $1
         N1DE0296 $1
         N1DE0297 $1
         N1DE0298 8
         N1DE0302 4
         N1DE0303 $1
         N1DE0304 4
         N1DE0305 4
         N1DE0306 4
         N1DE0307 4
         N1DE0308 4
         N1DE0309 4
         N1DE0310 4
         N1DE0311 4
         N1DE0312 4
         N1DE0313 4
         N1DE0314 4
         N1DE0315 4
         N1DE0316 4
         N1DE0317 4
         N1DE0318 4
         N1DE0319 4
         N1DE0320 4
         N1DE0321 4
         N1DE0322 4
         N1DE0323 4
         N1DE0324 4
         N1DE0325 4
         N1DE0326 4
         N1DE0327 4
         N1DE0328 4
         N1DE0329 4
         N1DE0330 4
         N1DE0331 4
         N1DE0332 4
         N1DE0333 4
         N1DE0334 4
         N1DE0335 4
         N1DE0336 4
         N1DE0337 4
         N1DE0338 4
         N1DE0339 4
         N1DE0340 4
         N1DE0341 4
         N1DE0342 4
         N1DE0343 4
         N1DE0344 4
         N1DE0345 4
         N1DE0346 4
         N1DE0347 4
         N1DE0348 4
         N1DE0349 4
         N1DE0350 4
         N1DE0351 4
         N1DE0352 4
         N1DE0353 4
         N1DE0354 4
         N1DE0355 4
         N1DE0356 4
         N1DE0357 4
         N1DE0358 4
         N1DE0359 4
         N1DE0360 4
         N1DE0361 4
         N1DE0362 4
         N1DE0363 4
         N1DE0364 4
         N1DE0365 4
         N1DE0366 4
         N1DE0367 4
         N1DE0368 4
         N1DE0369 4
         N1DE0370 4
         N1DE0371 4
         N1DE0372 4
         N1DE0373 4
         N1DE0374 4
         N1DE0376 4
         N1DE0377 4
         N1DE0378 4
         N1DE0379 4
         N1DE0380 4
         N1DE0381 4
         N1DE0382 4
         N1DE0383 4
         N1DE0384 4
         N1DE0385 4
         N1DE0386 4
         N1DE0387 4
         N1DE0388 4
         N1DE0389 4
         N1DE0390 4
         N1DE0391 4
         N1DE0392 4
         N1DE0393 4
         N1DE0394 4
         N1DE0395 4
         N1DE0396 4
         N1DE0397 4
         N1DE0398 4
         N1DE0399 4
         N1DE0400 4
         N1DE0401 4
         N1DE0402 4
         N1DE0403 4
         N1DE0404 4
         N1DE0405 4
         N1DE0406 4
         N1DE0407 4
         N1DE0408 4
         N1DE0409 4
         N1DE0410 4
         N1DE0411 4
         N1DE0412 4
         N1DE0413 4
         N1DE0414 4
         N1DE0415 4
         N1DE0416 4
         N1DE0417 4
         N1DE0418 4
         N1DE0419 4
         N1DE0420 4
         N1DE0421 4
         N1DE0422 4
         N1DE0423 4
         N1DE0424 4
         N1DE0425 4
         N1DE0426 4
         N1DE0427 4
         N1DE0428 4
         N1DE0429 4
         N1DE0430 4
         N1DE0431 4
         N1DE0432 4
         N1DE0433 4
         N1DE0434 4
         N1DE0435 4
         N1DE0436 4
         N1DE0437 4
         N1DE0438 4
         N1DE0439 4
         N1DE0440 4
         N1DE0441 4
         N1DE0442 4
         N1DE0443 4
         N1DE0444 4
         N1DE0445 4
         N1DE0446 4
         N1DE0447 4
         N1DE0448 4
         N1DE0449 4
         N1DE0450 4
         N1DE0451 4
         N1DE0452 4
         N1DE0453 4
         N1DE0454 4
         N1DE0455 4
         N1DE0456 4
         N1DE0457 4
         N1DE0458 4
         N1DE0459 4
         N1DE0460 4
         N1DE0461 4
         N1DE0462 4
         N1DE0463 4
         N1DE0464 4
         N1DE0465 4
         N1DE0466 4
         N1DE0468 4
         N1DE0470 4
         N1DE0472 4
         N1DE0474 4
         N1DE0476 4
         N1DE0478 4
         N1DE0480 4
         N1DE0482 4
         N1DE0484 4
         N1DE0486 4
         N1DE0488 4
         N1DE0490 4
         N1DE0491 4
         N1DE0493 4
         N1DE0495 4
         N1DE0496 4
         N1DE0497 4
         N1DE0498 4
         N1DE0499 4
         N1DE0500 4
         N1DE0501 4
         N1DE0502 4
         N1DE0503 4
         N1DE0504 4
         N1DE0505 4
         N1DE0506 4
         N1DE0507 4
         N1DE0508 4
         N1DE0509 4
         N1DE0510 4
         N1DE0511 4
         N1DE0512 4
         N1DE0513 4
         N1DE0514 4
         N1DE0515 4
         N1DE0516 4
         N1DE0517 4
         N1DE0518 4
         N1DE0519 4
         N1DE0520 4
         N1DE0521 4
         N1DE0522 4
         N1DE0523 4
         N1DE0524 4
         N1DE0525 4
         N1DE0526 4
         N1DE0527 4
         N1DE0528 4
         N1DE0529 4
         N1DE0530 4
         N1DE0531 4
         N1DE0532 4
         N1DE0533 4
         N1DE0534 4
         N1DE0535 4
         N1DE0536 4
         N1DE0537 4
         N1DE0538 4
         N1DE0539 4
         N1DE0540 4
         N1DE0541 4
         N1DE0542 4
         N1DE0543 4
         N1DE0544 4
         N1DE0545 4
         N1DE0546 4
         N1DE0547 4
         N1DE0549 4
         N1DE0550 4
         N1DE0551 4
         N1DE0553 4
         N1DE0554 4
         N1DE0555 4
         N1DE0557 4
         N1DE0558 4
         N1DE0559 4
         N1DE0561 4
         N1DE0562 4
         N1DE0563 4
         N1DE0565 4
         N1DE0566 4
         N1DE0567 4
         N1DE0569 4
         N1DE0570 4
         N1DE0571 4
         N1DE0573 4
         N1DE0574 4
         N1DE0575 4
         N1DE0577 4
         N1DE0578 4
         N1DE0579 4
         N1DE0580 4
         N1DE0581 4
         N1DE0582 4
         N1DE0583 4
         N1DE0584 4
         N1DE0585 4
         N1DE0586 4
         N1DE0587 4
         N1DE0588 4
         N1DE0589 4
         N1DE0590 4
         N1DE0591 4
         N1DE0592 4
         N1DE0593 4
         N1DE0594 4
         N1DE0595 4
         N1DE0596 4
         N1DE0597 4
         N1DE0598 4
         N1DE0599 4
         N1DE0600 4
         N1DE0601 4
         N1DE0602 4
         N1DE0603 4
         N1DE0604 4
         N1DE0605 4
         N1DE0606 4
         N1DE0607 4
         N1DE0608 4
         N1DE0609 4
         N1DE0610 4
         N1DE0611 4
         N1DE0612 4
         N1DE0613 4
         N1DE0614 4
         N1DE0615 4
         N1DE0616 4
         N1DE0617 4
         N1DE0618 4
         N1DE0619 4
         N1DE0620 4
         N1DE0621 4
         N1DE0622 4
         N1DE0623 4
         N1DE0624 4
         N1DE0625 4
         N1DE0626 4
         N1DE0627 4
         N1DE0628 4
         N1DE0629 4
         N1DE0630 4
         N1DE0631 4
         N1DE0632 4
         N1DE0633 4
         N1DE0634 4
         N1DE0635 4
         N1DE0636 4
         N1DE0637 4
         N1DE0638 4
         N1DE0639 4
         N1DE0640 4
         N1DE0641 4
         N1DE0642 4
         N1DE0643 4
         N1DE0644 4
         N1DE0645 4
         N1DE0646 4
         N1DE0647 4
         N1DE0648 4
         N1DE0649 4
         N1DE0650 4
         N1DE0651 4
         N1DE0652 4
         N1DE0653 4
         N1DE0654 4
         N1DE0655 4
         N1DE0656 4
         N1DE0657 4
         N1DE0658 4
         N1DE0659 4
         N1DE0660 4
         N1DE0661 4
         N1DE0662 4
         N1DE0663 4
         N1DE0664 4
         N1DE0665 4
         N1DE0666 4
         N1DE0667 4
         N1DE0668 4
         N1DE0669 4
         N1DE0670 4
         N1DE0671 4
         N1DE0672 4
         N1DE0673 4
         N1DE0674 4
         N1DE0675 4
         N1DE0676 4
         N1DE0677 4
         N1DE0678 4
         N1DE0679 4
         N1DE0680 4
         N1DE0681 4
         N1DE0682 4
         N1DE0683 4
         N1DE0684 4
         N1DE0685 4
         N1DE0686 4
         N1DE0687 4
         N1DE0688 4
         N1DE0689 4
         N1DE0690 4
         N1DE0691 4
         N1DE0692 4
         N1DE0693 4
         N1DE0694 4
         N1DE0695 4
         N1DE0696 4
         N1DE0697 4
         N1DE0698 4
         N1DE0699 4
         N1DE0700 4
         N1DE0701 4
         N1DE0702 4
         N1DE0703 4
         N1DE0704 4
         N1DE0705 4
         N1DE0706 4
         N1DE0707 4
         N1DE0708 4
         N1DE0709 4
         N1DE0710 4
         N1DE0711 4
         N1DE0712 4
         N1DE0713 4
         N1DE0714 4
         N1DE0715 4
         N1DE0716 4
         N1DE0717 4
         N1DE0718 8
         N1DE0723 4
         N1DE0724 4
         N1DE0725 4
         N1DE0726 4
         N1DE0727 4
         N1DE0728 4
         N1DE0729 4
         N1DE0730 4
         N1DE0731 4
         N1DE0732 4
         N1DE0733 4
         N1DE0734 4
         N1DE0735 4
         N1DE0736 4
         N1DE0737 4
         N1DE0738 4
         N1DE0739 4
         N1DE0740 4
         N1DE0741 4
         N1DE0742 4
         N1DE0743 4
         N1DE0744 4
         N1DE0745 4
         N1DE0746 4
         N1DE0747 4
         N1DE0748 4
         N1DE0749 4
         N1DE0750 4
         N1DE0751 4
         N1DE0752 4
         N1DE0753 4
         N1DE0754 4
         N1DE0755 4
         N1DE0756 4
         N1DE0757 4
         N1DE0758 4
         N1DE0759 4
         N1DE0760 4
         N1DE0761 4
         N1DE0762 4
         N1DE0763 4
         N1DE0764 4
         N1DE0765 4
         N1DE0766 4
         N1DE0767 4
         N1DE0768 4
         N1DE0769 $6
         N1DE0775 $6
         N1DE0781 $6
         N1DE0787 4
         N1DE0788 4
         N1DE0789 4
         N1DE0790 4
         N1DE0792 4
         N1DE0794 4
         N1DE0796 4
         N1DE0798 4
         N1DE0800 4
         N1DE0802 4
         N1DE0804 4
         N1DE0806 4
         N1DE0808 4
         N1DE0810 4
         N1DE0811 4
         N1DE0812 4
         N1DE0813 4
         N1DE0814 4
         N1DE0815 4
         N1DE0816 4
         N1DE0817 4
         N1DE0818 4
         N1DE0819 4
         N1DE0820 4
         N1DE0821 4
         N1DE0822 4
         N1DE0823 4
         N1DE0824 4
         N1DE0825 4
         N1DE0826 4
         N1DE0827 4
         N1DE0828 4
         N1DE0829 4
         N1DE0830 4
         N1DE0831 4
         N1DE0832 4
         N1DE0833 4
         N1DE0834 4
         N1DE0835 4
         N1DE0836 4
         N1DE0837 4
         N1DE0838 4
         N1DE0839 4
         N1DE0840 4
         N1DE0841 4
         N1DE0842 4
         N1DE0843 4
         N1DE0844 4
         N1DE0845 4
         N1DE0846 4
         N1DE0847 4
         N1DE0848 4
         N1DE0849 4
         N1DE0850 4
         N1DE0851 4
         N1DE0852 4
         N1DE0853 4
         N1DE0854 4
         N1DE0855 4
         N1DE0856 4
         N1DE0857 4
         N1DE0858 4
         N1DE0859 4
         N1DE0860 4
         N1DE0861 4
         N1DE0862 4
         N1DE0863 4
         N1DE0864 4
         N1DE0865 4
         N1DE0866 4
         N1DE0867 4
         N1DE0868 4
         N1DE0869 4
         N1DE0870 4
         N1DE0871 4
         N1DE0872 4
         N1DE0873 4
         N1DE0875 4
         N1DE0877 4
         N1DE0879 4
         N1DE0881 4
         N1DE0883 4
         N1DE0884 4
         N1DE0885 4
         N1DE0887 4
         N1DE0889 4
         N1DE0890 4
         N1DE0891 4
         N1DE0893 4
         N1DE0895 $25
         N1DE0920 4
         N1DE0921 4
         N1DE0922 4
         N1DE0923 4
         N1DE0924 4
         N1DE0925 4
         N1DE0926 4
         N1DE0927 4
         N1DE0928 4
         N1DE0929 4
         N1DE0930 4
         N1DE0931 4
         N1DE0932 4
         N1DE0933 4
         N1DE0934 4
         N1DE0935 4
         N1DE0936 4
         N1DE0937 4
         N1DE0938 4
         N1DE0939 4
         N1DE0940 4
         N1DE0941 4
         N1DE0942 4
         N1DE0943 4
         N1DE0944 4
         N1DE0945 8
      ;


	INPUT
         SEQN 1-5
         N1DE0006 6-9
         N1DE0010 10
         N1DE0011 11
         N1DE0012 12
         N1DE0013 13
         N1DE0014 14
         N1DE0015 15
         N1DE0016 16
         N1DE0017 17-18
         N1DE0019 19
         N1DE0020 20-21
         N1DE0022 22
         N1DE0023 23-24
         N1DE0025 25-26
         N1DE0027 27
         N1DE0028 28
         N1DE0029 29
         N1DE0030 30
         N1DE0031 31
         N1DE0032 32
         N1DE0033 33
         N1DE0034 34-35
         N1DE0036 36
         N1DE0037 37-40
         N1DE0041 41
         N1DE0042 42-45
         N1DE0046 46
         N1DE0047 47-50
         N1DE0051 51
         N1DE0052 52-55
         N1DE0056 56
         N1DE0057 57-60
         N1DE0061 61
         N1DE0062 62-65
         N1DE0066 66
         N1DE0067 67-70
         N1DE0071 71
         N1DE0072 72-75
         N1DE0076 76
         N1DE0077 77-80
         N1DE0081 81
         N1DE0082 82-85
         N1DE0086 86
         N1DE0087 87-90
         N1DE0091 91-94
         N1DE0095 95-99
         N1DE0100 100
         N1DE0101 101-102
         N1DE0103 103
         N1DE0104 104
         N1DE0105 105
         N1DE0106 106-109
         N1DE0110 110-111
         N1DE0112 112-113
         N1DE0114 114
         N1DE0115 115
         N1DE0116 116
         N1DE0117 117
         N1DE0118 118
         N1DE0119 119
         N1DE0120 120-121
         N1DE0122 122
         N1DE0123 123
         N1DE0124 124
         N1DE0125 125
         N1DE0126 126
         N1DE0127 127
         N1DE0128 128
         N1DE0129 129
         N1DE0130 130
         N1DE0131 131
         N1DE0132 132-134
         N1DE0135 135-137
         N1DE0138 138-143
         N1DE0144 144-145
         N1DE0146 146
         N1DE0147 147-149
         N1DE0150 150
         N1DE0151 151
         N1DE0152 152
         N1DE0153 153
         N1DE0154 154
         N1DE0155 155
         N1DE0156 156
         N1DE0157 157
         N1DE0158 158-163
         N1DE0164 164-169
         N1DE0170 170-175
         N1DE0176 176-181
         N1DE0182 182-193
         N1DE0194 194-195
         N1DE0196 196-198
         N1DE0199 199-200
         N1DE0201 201-204
         N1DE0205 205-221
         N1DE0222 222-224
         N1DE0225 225-226
         N1DE0227 227-228
         N1DE0229 229
         N1DE0230 230
         N1DE0231 231
         N1DE0232 232
         N1DE0233 233
         N1DE0234 234
         N1DE0235 235
         N1DE0236 236-241
         N1DE0242 242-243
         N1DE0244 244-249
         N1DE0250 250-251
         N1DE0252 252-257
         N1DE0258 258-259
         N1DE0260 260-265
         N1DE0266 266-271
         N1DE0272 272
         N1DE0273 273-278
         N1DE0279 279
         N1DE0280 280-281
         N1DE0282 282-283
         N1DE0284 284-285
         N1DE0286 286
         N1DE0287 287
         N1DE0288 288
         N1DE0289 289
         N1DE0290 290
         N1DE0291 291
         N1DE0292 292
         N1DE0293 293
         N1DE0294 294
         N1DE0295 295
         N1DE0296 296
         N1DE0297 297
         N1DE0298 298-301
         N1DE0302 302
         N1DE0303 303
         N1DE0304 304
         N1DE0305 305
         N1DE0306 306
         N1DE0307 307
         N1DE0308 308
         N1DE0309 309
         N1DE0310 310
         N1DE0311 311
         N1DE0312 312
         N1DE0313 313
         N1DE0314 314
         N1DE0315 315
         N1DE0316 316
         N1DE0317 317
         N1DE0318 318
         N1DE0319 319
         N1DE0320 320
         N1DE0321 321
         N1DE0322 322
         N1DE0323 323
         N1DE0324 324
         N1DE0325 325
         N1DE0326 326
         N1DE0327 327
         N1DE0328 328
         N1DE0329 329
         N1DE0330 330
         N1DE0331 331
         N1DE0332 332
         N1DE0333 333
         N1DE0334 334
         N1DE0335 335
         N1DE0336 336
         N1DE0337 337
         N1DE0338 338
         N1DE0339 339
         N1DE0340 340
         N1DE0341 341
         N1DE0342 342
         N1DE0343 343
         N1DE0344 344
         N1DE0345 345
         N1DE0346 346
         N1DE0347 347
         N1DE0348 348
         N1DE0349 349
         N1DE0350 350
         N1DE0351 351
         N1DE0352 352
         N1DE0353 353
         N1DE0354 354
         N1DE0355 355
         N1DE0356 356
         N1DE0357 357
         N1DE0358 358
         N1DE0359 359
         N1DE0360 360
         N1DE0361 361
         N1DE0362 362
         N1DE0363 363
         N1DE0364 364
         N1DE0365 365
         N1DE0366 366
         N1DE0367 367
         N1DE0368 368
         N1DE0369 369
         N1DE0370 370
         N1DE0371 371
         N1DE0372 372
         N1DE0373 373
         N1DE0374 374-375
         N1DE0376 376
         N1DE0377 377
         N1DE0378 378
         N1DE0379 379
         N1DE0380 380
         N1DE0381 381
         N1DE0382 382
         N1DE0383 383
         N1DE0384 384
         N1DE0385 385
         N1DE0386 386
         N1DE0387 387
         N1DE0388 388
         N1DE0389 389
         N1DE0390 390
         N1DE0391 391
         N1DE0392 392
         N1DE0393 393
         N1DE0394 394
         N1DE0395 395
         N1DE0396 396
         N1DE0397 397
         N1DE0398 398
         N1DE0399 399
         N1DE0400 400
         N1DE0401 401
         N1DE0402 402
         N1DE0403 403
         N1DE0404 404
         N1DE0405 405
         N1DE0406 406
         N1DE0407 407
         N1DE0408 408
         N1DE0409 409
         N1DE0410 410
         N1DE0411 411
         N1DE0412 412
         N1DE0413 413
         N1DE0414 414
         N1DE0415 415
         N1DE0416 416
         N1DE0417 417
         N1DE0418 418
         N1DE0419 419
         N1DE0420 420
         N1DE0421 421
         N1DE0422 422
         N1DE0423 423
         N1DE0424 424
         N1DE0425 425
         N1DE0426 426
         N1DE0427 427
         N1DE0428 428
         N1DE0429 429
         N1DE0430 430
         N1DE0431 431
         N1DE0432 432
         N1DE0433 433
         N1DE0434 434
         N1DE0435 435
         N1DE0436 436
         N1DE0437 437
         N1DE0438 438
         N1DE0439 439
         N1DE0440 440
         N1DE0441 441
         N1DE0442 442
         N1DE0443 443
         N1DE0444 444
         N1DE0445 445
         N1DE0446 446
         N1DE0447 447
         N1DE0448 448
         N1DE0449 449
         N1DE0450 450
         N1DE0451 451
         N1DE0452 452
         N1DE0453 453
         N1DE0454 454
         N1DE0455 455
         N1DE0456 456
         N1DE0457 457
         N1DE0458 458
         N1DE0459 459
         N1DE0460 460
         N1DE0461 461
         N1DE0462 462
         N1DE0463 463
         N1DE0464 464
         N1DE0465 465
         N1DE0466 466-467
         N1DE0468 468-469
         N1DE0470 470-471
         N1DE0472 472-473
         N1DE0474 474-475
         N1DE0476 476-477
         N1DE0478 478-479
         N1DE0480 480-481
         N1DE0482 482-483
         N1DE0484 484-485
         N1DE0486 486-487
         N1DE0488 488-489
         N1DE0490 490
         N1DE0491 491-492
         N1DE0493 493-494
         N1DE0495 495
         N1DE0496 496
         N1DE0497 497
         N1DE0498 498
         N1DE0499 499
         N1DE0500 500
         N1DE0501 501
         N1DE0502 502
         N1DE0503 503
         N1DE0504 504
         N1DE0505 505
         N1DE0506 506
         N1DE0507 507
         N1DE0508 508
         N1DE0509 509
         N1DE0510 510
         N1DE0511 511
         N1DE0512 512
         N1DE0513 513
         N1DE0514 514
         N1DE0515 515
         N1DE0516 516
         N1DE0517 517
         N1DE0518 518
         N1DE0519 519
         N1DE0520 520
         N1DE0521 521
         N1DE0522 522
         N1DE0523 523
         N1DE0524 524
         N1DE0525 525
         N1DE0526 526
         N1DE0527 527
         N1DE0528 528
         N1DE0529 529
         N1DE0530 530
         N1DE0531 531
         N1DE0532 532
         N1DE0533 533
         N1DE0534 534
         N1DE0535 535
         N1DE0536 536
         N1DE0537 537
         N1DE0538 538
         N1DE0539 539
         N1DE0540 540
         N1DE0541 541
         N1DE0542 542
         N1DE0543 543
         N1DE0544 544
         N1DE0545 545
         N1DE0546 546
         N1DE0547 547-548
         N1DE0549 549
         N1DE0550 550
         N1DE0551 551-552
         N1DE0553 553
         N1DE0554 554
         N1DE0555 555-556
         N1DE0557 557
         N1DE0558 558
         N1DE0559 559-560
         N1DE0561 561
         N1DE0562 562
         N1DE0563 563-564
         N1DE0565 565
         N1DE0566 566
         N1DE0567 567-568
         N1DE0569 569
         N1DE0570 570
         N1DE0571 571-572
         N1DE0573 573
         N1DE0574 574
         N1DE0575 575-576
         N1DE0577 577
         N1DE0578 578
         N1DE0579 579
         N1DE0580 580
         N1DE0581 581
         N1DE0582 582
         N1DE0583 583
         N1DE0584 584
         N1DE0585 585
         N1DE0586 586
         N1DE0587 587
         N1DE0588 588
         N1DE0589 589
         N1DE0590 590
         N1DE0591 591
         N1DE0592 592
         N1DE0593 593
         N1DE0594 594
         N1DE0595 595
         N1DE0596 596
         N1DE0597 597
         N1DE0598 598
         N1DE0599 599
         N1DE0600 600
         N1DE0601 601
         N1DE0602 602
         N1DE0603 603
         N1DE0604 604
         N1DE0605 605
         N1DE0606 606
         N1DE0607 607
         N1DE0608 608
         N1DE0609 609
         N1DE0610 610
         N1DE0611 611
         N1DE0612 612
         N1DE0613 613
         N1DE0614 614
         N1DE0615 615
         N1DE0616 616
         N1DE0617 617
         N1DE0618 618
         N1DE0619 619
         N1DE0620 620
         N1DE0621 621
         N1DE0622 622
         N1DE0623 623
         N1DE0624 624
         N1DE0625 625
         N1DE0626 626
         N1DE0627 627
         N1DE0628 628
         N1DE0629 629
         N1DE0630 630
         N1DE0631 631
         N1DE0632 632
         N1DE0633 633
         N1DE0634 634
         N1DE0635 635
         N1DE0636 636
         N1DE0637 637
         N1DE0638 638
         N1DE0639 639
         N1DE0640 640
         N1DE0641 641
         N1DE0642 642
         N1DE0643 643
         N1DE0644 644
         N1DE0645 645
         N1DE0646 646
         N1DE0647 647
         N1DE0648 648
         N1DE0649 649
         N1DE0650 650
         N1DE0651 651
         N1DE0652 652
         N1DE0653 653
         N1DE0654 654
         N1DE0655 655
         N1DE0656 656
         N1DE0657 657
         N1DE0658 658
         N1DE0659 659
         N1DE0660 660
         N1DE0661 661
         N1DE0662 662
         N1DE0663 663
         N1DE0664 664
         N1DE0665 665
         N1DE0666 666
         N1DE0667 667
         N1DE0668 668
         N1DE0669 669
         N1DE0670 670
         N1DE0671 671
         N1DE0672 672
         N1DE0673 673
         N1DE0674 674
         N1DE0675 675
         N1DE0676 676
         N1DE0677 677
         N1DE0678 678
         N1DE0679 679
         N1DE0680 680
         N1DE0681 681
         N1DE0682 682
         N1DE0683 683
         N1DE0684 684
         N1DE0685 685
         N1DE0686 686
         N1DE0687 687
         N1DE0688 688
         N1DE0689 689
         N1DE0690 690
         N1DE0691 691
         N1DE0692 692
         N1DE0693 693
         N1DE0694 694
         N1DE0695 695
         N1DE0696 696
         N1DE0697 697
         N1DE0698 698
         N1DE0699 699
         N1DE0700 700
         N1DE0701 701
         N1DE0702 702
         N1DE0703 703
         N1DE0704 704
         N1DE0705 705
         N1DE0706 706
         N1DE0707 707
         N1DE0708 708
         N1DE0709 709
         N1DE0710 710
         N1DE0711 711
         N1DE0712 712
         N1DE0713 713
         N1DE0714 714
         N1DE0715 715
         N1DE0716 716
         N1DE0717 717
         N1DE0718 718-722
         N1DE0723 723
         N1DE0724 724
         N1DE0725 725
         N1DE0726 726
         N1DE0727 727
         N1DE0728 728
         N1DE0729 729
         N1DE0730 730
         N1DE0731 731
         N1DE0732 732
         N1DE0733 733
         N1DE0734 734
         N1DE0735 735
         N1DE0736 736
         N1DE0737 737
         N1DE0738 738
         N1DE0739 739
         N1DE0740 740
         N1DE0741 741
         N1DE0742 742
         N1DE0743 743
         N1DE0744 744
         N1DE0745 745
         N1DE0746 746
         N1DE0747 747
         N1DE0748 748
         N1DE0749 749
         N1DE0750 750
         N1DE0751 751
         N1DE0752 752
         N1DE0753 753
         N1DE0754 754
         N1DE0755 755
         N1DE0756 756
         N1DE0757 757
         N1DE0758 758
         N1DE0759 759
         N1DE0760 760
         N1DE0761 761
         N1DE0762 762
         N1DE0763 763
         N1DE0764 764
         N1DE0765 765
         N1DE0766 766
         N1DE0767 767
         N1DE0768 768
         N1DE0769 769-774
         N1DE0775 775-780
         N1DE0781 781-786
         N1DE0787 787
         N1DE0788 788
         N1DE0789 789
         N1DE0790 790-791
         N1DE0792 792-793
         N1DE0794 794-795
         N1DE0796 796-797
         N1DE0798 798-799
         N1DE0800 800-801
         N1DE0802 802-803
         N1DE0804 804-805
         N1DE0806 806-807
         N1DE0808 808-809
         N1DE0810 810
         N1DE0811 811
         N1DE0812 812
         N1DE0813 813
         N1DE0814 814
         N1DE0815 815
         N1DE0816 816
         N1DE0817 817
         N1DE0818 818
         N1DE0819 819
         N1DE0820 820
         N1DE0821 821
         N1DE0822 822
         N1DE0823 823
         N1DE0824 824
         N1DE0825 825
         N1DE0826 826
         N1DE0827 827
         N1DE0828 828
         N1DE0829 829
         N1DE0830 830
         N1DE0831 831
         N1DE0832 832
         N1DE0833 833
         N1DE0834 834
         N1DE0835 835
         N1DE0836 836
         N1DE0837 837
         N1DE0838 838
         N1DE0839 839
         N1DE0840 840
         N1DE0841 841
         N1DE0842 842
         N1DE0843 843
         N1DE0844 844
         N1DE0845 845
         N1DE0846 846
         N1DE0847 847
         N1DE0848 848
         N1DE0849 849
         N1DE0850 850
         N1DE0851 851
         N1DE0852 852
         N1DE0853 853
         N1DE0854 854
         N1DE0855 855
         N1DE0856 856
         N1DE0857 857
         N1DE0858 858
         N1DE0859 859
         N1DE0860 860
         N1DE0861 861
         N1DE0862 862
         N1DE0863 863
         N1DE0864 864
         N1DE0865 865
         N1DE0866 866
         N1DE0867 867
         N1DE0868 868
         N1DE0869 869
         N1DE0870 870
         N1DE0871 871
         N1DE0872 872
         N1DE0873 873-874
         N1DE0875 875-876
         N1DE0877 877-878
         N1DE0879 879-880
         N1DE0881 881-882
         N1DE0883 883
         N1DE0884 884
         N1DE0885 885-886
         N1DE0887 887-888
         N1DE0889 889
         N1DE0890 890
         N1DE0891 891-892
         N1DE0893 893-894
         N1DE0895 895-919
         N1DE0920 920
         N1DE0921 921
         N1DE0922 922
         N1DE0923 923
         N1DE0924 924
         N1DE0925 925
         N1DE0926 926
         N1DE0927 927
         N1DE0928 928
         N1DE0929 929
         N1DE0930 930
         N1DE0931 931
         N1DE0932 932
         N1DE0933 933
         N1DE0934 934
         N1DE0935 935
         N1DE0936 936
         N1DE0937 937
         N1DE0938 938
         N1DE0939 939
         N1DE0940 940
         N1DE0941 941
         N1DE0942 942
         N1DE0943 943
         N1DE0944 944
         N1DE0945 945-950
      ;

      LABEL
         SEQN = "SAMPLE SEQUENCE NUMBER"
         N1DE0006 = "CATALOG NUMBER 4271"
         N1DE0010 = "SIZE OF PLACE"
         N1DE0011 = "SMSA-NOT SMSA"
         N1DE0012 = "TYPE OF LIVING QUARTERS"
         N1DE0013 = "LAND USAGE"
         N1DE0014 = "IF RURAL, ASKED HOW MANY ACRES OF LA ..."
         N1DE0015 = "IF 10 ACRES OF MORE, ASKED IF SALE O ..."
         N1DE0016 = "IF 10 ACRES OR LESS, ASKED IF SALE O ..."
         N1DE0017 = "AGE-HEAD OF HOUSEHOLD"
         N1DE0019 = "SEX-HEAD OF HOUSEHOLD"
         N1DE0020 = "HIGHEST GRADE ATTENDED-HEAD OF HOUSEHOLD"
         N1DE0022 = "RACE-HEAD OF HOUSEHOLD"
         N1DE0023 = "TOTAL NUMBER OF PERSONS IN HOUSEHOLD"
         N1DE0025 = "TOTAL SAMPLE PERSONS IN HOUSEHOLD"
         N1DE0027 = "NUMBER OF ROOMS IN HOUSE "
         N1DE0028 = "IS THERE PIPED WATER?"
         N1DE0029 = "IS THERE HOT AND COLD PIPED WATER?"
         N1DE0030 = "IF YES TO PIPED WATER-DOES HOUSE HAV ..."
         N1DE0031 = "DOES HOUSE HAVE A RANGE OR COOK STOVE?"
         N1DE0032 = "DOES HOUSE HAVE A REFRIGERATOR?"
         N1DE0033 = "ARE KITCHEN FACILITIES USED BY ANYON ..."
         N1DE0034 = "TOTAL FAMILY INCOME GROUP"
         N1DE0036 = "WAGES OR SALARIES?"
         N1DE0037 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER ..."
         N1DE0041 = "SOCIAL SECURITY OR  RAILROAD RETIREMENT?"
         N1DE0042 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1DE0046 = "WELFARE PAYMENTS OR OTHER PUBLIC ASS ..."
         N1DE0047 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1DE0051 = "UNEMPLOYMENT OR WORKMEN'S COMPENSATION?"
         N1DE0052 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1DE0056 = "GOVERNMENT EMPLOYEE PENSIONS OR PRIV ..."
         N1DE0057 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1DE0061 = "DIVIDENDS, INTEREST OR RENT?"
         N1DE0062 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1DE0066 = "NET INCOME FROM  OWN NON-FARM BUSINE ..."
         N1DE0067 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1DE0071 = "NET INCOME FROM A FARM?"
         N1DE0072 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1DE0076 = "VETERAN'S PAYMENTS"
         N1DE0077 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1DE0081 = "ALIMONY, CHILD SUPPORT OR CONTRIBUTI ..."
         N1DE0082 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1DE0086 = "ANY OTHER INCOME?"
         N1DE0087 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1DE0091 = "TOTAL AMOUNT(TOTAL OF POSITIONS 37-90)"
         N1DE0095 = "FAMILY UNIT CODE"
         N1DE0100 = "RELATIONSHIP TO HEAD OF HOUSEHOLD"
         N1DE0101 = "AGE AT INTERVIEW"
         N1DE0103 = "RACE OF EXAMINED PERSON"
         N1DE0104 = "SEX OF EXAMINED PERSON"
         N1DE0105 = "MARITAL STATUS"
         N1DE0106 = "DATE OF BIRTH (MONTH, YEAR)"
         N1DE0110 = "PLACE OF BIRTH"
         N1DE0112 = "HIGHEST GRADE OF REGULAR SCHOOL EVER ..."
         N1DE0114 = "DID HE FINISH THE GRADE?"
         N1DE0115 = "IS HE ATTENDING SCHOOL NOW?"
         N1DE0116 = "HAS HE EVER ATTENDED A SCHOOL OF ANY ..."
         N1DE0117 = "IF YES, WHAT KIND OF SCHOOL?"
         N1DE0118 = "IS ANY LANGUAGE OTHER THAN ENGLISH F ..."
         N1DE0119 = "IF YES, WHAT LANGUAGE"
         N1DE0120 = "WHAT IS YOUR MAIN ANCESTRY OR NATION ..."
         N1DE0122 = "WHAT WAS HE DOING MOST PAST THREE MO ..."
         N1DE0123 = "IF ' SOMETHING ELSE' FROM ABOVE, WHA ..."
         N1DE0124 = "IF 'KEEPING HOUSE' OR 'SOMETHING ELS ..."
         N1DE0125 = "IF 'WORKING' FROM ABOVE, DID HE WORK ..."
         N1DE0126 = "DID HE WORK AT ANY TIME LAST WEEK OR ..."
         N1DE0127 = "IF 'NO TO ABOVE, EVEN THOUGH HE DID  ..."
         N1DE0128 = "IF 'NO' IN POSITION 126, WAS HE LOOK ..."
         N1DE0129 = "IF YES TO ABOVE-WHICH?"
         N1DE0130 = "CLASS OF WORKER"
         N1DE0131 = "IF SELF-EMPLOYED IN 'OWN' BUSINESS A ..."
         N1DE0132 = "BUSINESS OR INDUSTRY CODE"
         N1DE0135 = "OCCUPATION CODE"
         N1DE0138 = "DATE OF EXAMINATION"
         N1DE0144 = "AGE AT EXAMINATION"
         N1DE0146 = "FARM"
         N1DE0147 = "POVERTY INDEX (X.XX)"
         N1DE0150 = "RELIGION"
         N1DE0151 = "FOOD PROGRAMS APPLICABILITY"
         N1DE0152 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1DE0153 = "ARE YOU BUYING STAMPS NOW?"
         N1DE0154 = "WHAT IS THE MAIN REASON YOU AREN'T P ..."
         N1DE0155 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1DE0156 = "ARE YOU RECEIVING COMMODITY FOODS  N ..."
         N1DE0157 = "WHY AREN'T YOU PARTICIPATING IN THE  ..."
         N1DE0158 = "DETAILED PERSONS-LOCATIONS 1-35"
         N1DE0164 = "BLANK-DATA USER WORK AREA"
         N1DE0170 = "DETAILED PERSONS-LOCATIONS 1-65"
         N1DE0176 = "BLANK-DATA USER WORK AREA"
         N1DE0182 = "DETAILED PERSONS-LOCATIONS 1-100"
         N1DE0194 = "STRATA "
         N1DE0196 = "PSEUDO PRIMARY SAMPLING UNITS"
         N1DE0199 = "WORK AREA"
         N1DE0201 = "CATALOG NUMBER 4151"
         N1DE0205 = "WORK AREA"
         N1DE0222 = "EXAMINER NUMBER"
         N1DE0225 = "STATE OR FOREIGN COUNTRY OF LONGEST  ..."
         N1DE0227 = "YEARS OF LONGEST RESIDENCE"
         N1DE0229 = "OCCUPATIONAL EXPOSURE"
         N1DE0230 = "IF YES TO ABOVE, WHAT EXPOSURE CHEMI ..."
         N1DE0231 = "OILS"
         N1DE0232 = "INSECTICIDES"
         N1DE0233 = "IMMERSION (HANDS OR FEET)"
         N1DE0234 = "OTHER"
         N1DE0235 = "EXPOSURE TO LIGHT (BY HISTORY)"
         N1DE0236 = "SIGNIFICANT DERMATOGICAL DIAGNOSIS F ..."
         N1DE0242 = "WORK AREA"
         N1DE0244 = "CLINICAL  IMPRESSION CODE"
         N1DE0250 = "WORK AREA"
         N1DE0252 = "CLINICAL  IMPRESSION CODE"
         N1DE0258 = "WORK AREA"
         N1DE0260 = "PHOTOGRAPHY OF SKIN-LESION DIAGNOSIS ..."
         N1DE0266 = "SIGNIFICANT DERMATOLOGICAL DIAGNOSIS ..."
         N1DE0272 = "I F CODED ABOVE, PROBABILITY"
         N1DE0273 = "CODE"
         N1DE0279 = "IF CODED ABOVE, PROBABILITY"
         N1DE0280 = "HAIR COLOR (NATURAL)"
         N1DE0282 = "AGE AT FIRST GRAYING"
         N1DE0284 = "PREVIOUS HAIR COLOR IF GRAY OR WHITE ..."
         N1DE0286 = "IS HAIR DYED, TINTED OR BLEACHED?"
         N1DE0287 = "FLAG SIGNS"
         N1DE0288 = "EYE COLOR"
         N1DE0289 = "NEVUS OF IRIS"
         N1DE0290 = "SKIN TEXTURE SURFACE"
         N1DE0291 = "BLANK "
         N1DE0292 = "BLANK "
         N1DE0293 = "BLANK "
         N1DE0294 = "BLANK "
         N1DE0295 = "BLANK "
         N1DE0296 = "BLANK "
         N1DE0297 = "BLANK "
         N1DE0298 = "WORK AREA"
         N1DE0302 = "COMPLEXION"
         N1DE0303 = "BLANK"
         N1DE0304 = "PIGMENT ABERRATIONS"
         N1DE0305 = "MELANIN GENERAL--HYPER"
         N1DE0306 = "MELANIN GENERAL--HYPO"
         N1DE0307 = "MELANIN GENERAL --COSMETICALLY DISFI ..."
         N1DE0308 = "FACE"
         N1DE0309 = "BODY"
         N1DE0310 = "EXTREMITIES"
         N1DE0311 = "MELANIN LOCALIZED--HYPER"
         N1DE0312 = "MELANIN LOCALIZED--HYPO"
         N1DE0313 = "MELANIN LOCALIZED--COSMETICALLY DISF ..."
         N1DE0314 = "SENILE DEPIGMENTATION "
         N1DE0315 = "ICTERUS"
         N1DE0316 = "TATTOO--ARTIFACT"
         N1DE0317 = "TATTOOS"
         N1DE0318 = "IMPRESSION-ADDISON'S DISEASE"
         N1DE0319 = "ALBINISM"
         N1DE0320 = "PELLAGROID PIGMENTATION"
         N1DE0321 = "VITILIGO"
         N1DE0322 = "POST INFLAMMATORY"
         N1DE0323 = "CHRONICALLY III (HYPER)"
         N1DE0324 = "OTHER"
         N1DE0325 = "SIGNIFICANT SCARS-HYPERTROPHIC"
         N1DE0326 = "ATROPHIC"
         N1DE0327 = "KELOIDS"
         N1DE0328 = "NEVI--PIGMENTED AND RELATED LESIONS  ..."
         N1DE0329 = "SIZE OF LARGEST (JUNCTIONAL)"
         N1DE0330 = "LOCATION"
         N1DE0331 = "LOCATION"
         N1DE0332 = "DIAGNOSIS (CLINICAL IMPRESSION)HUTCH ..."
         N1DE0333 = "SIZE OF LARGEST HUTCHINSON'S FRAME"
         N1DE0334 = "LOCATION"
         N1DE0335 = "LOCATION"
         N1DE0336 = "DIAGNOSIS (CLINICAL IMPRESSION)MONGO ..."
         N1DE0337 = "SIZE OF LARGEST (MONGOLIAN SPOT)"
         N1DE0338 = "LOCATION"
         N1DE0339 = "LOCATION"
         N1DE0340 = "DIAGNOSIS"
         N1DE0341 = "SIZE OF LARGEST (BLUE NEVUS)"
         N1DE0342 = "LOCATION"
         N1DE0343 = "LOCATION"
         N1DE0344 = "DIAGNOSIS (CLINICAL IMPRESSION) NEVU ..."
         N1DE0345 = "SIZE OF LARGEST (NEVUS OF OTA)"
         N1DE0346 = "LOCATION"
         N1DE0347 = "LOCATION"
         N1DE0348 = "DIAGNOSIS (CLINICAL IMPRESSION) CAF  ..."
         N1DE0349 = "SIZE OF LARGEST (CAF AU LAIT)"
         N1DE0350 = "LOCATION"
         N1DE0351 = "LOCATION"
         N1DE0352 = "SENILE LENTIGENS"
         N1DE0353 = "EPHILIDES"
         N1DE0354 = "VASCULAR-DIAGNOSIS (CLINICAL IMPRESS ..."
         N1DE0355 = "LOCATION"
         N1DE0356 = "LOCATION"
         N1DE0357 = "DIAGNOSIS (CLINICAL IMPRESSION) FLAMMEUS"
         N1DE0358 = "SIZE OF LARGEST (FLAMMEUS)"
         N1DE0359 = "LOCATION"
         N1DE0360 = "LOCATION"
         N1DE0361 = "DIAGNOSIS (CLINICAL IMPRESSION) VASC ..."
         N1DE0362 = "SIZE OF LARGEST (VASCULOSUS)"
         N1DE0363 = "LOCATION"
         N1DE0364 = "LOCATION"
         N1DE0365 = "DIAGNOSIS (CLINICAL IMPRESSION) CAVE ..."
         N1DE0366 = "SIZE FO LARGEST (CAVERNOUS)"
         N1DE0367 = "LOCATION"
         N1DE0368 = "LOCATION"
         N1DE0369 = "DIAGNOSIS (CLINICAL IMPRESSION) SENI ..."
         N1DE0370 = "LOCATION"
         N1DE0371 = "LOCATION"
         N1DE0372 = "VASCULAR CHANGES OTHER THAN NEVI"
         N1DE0373 = "REYNAUD'S PHENOMENON SOURCE"
         N1DE0374 = "DURATION"
         N1DE0376 = "LOCATION"
         N1DE0377 = "VASCULAR CHANGES OTHER THAN NEVI PUR ..."
         N1DE0378 = "OTHER  PURPURA"
         N1DE0379 = "COLDNESS"
         N1DE0380 = "CYANOSIS"
         N1DE0381 = "EDEMA"
         N1DE0382 = "EDEMA-CHRONIC"
         N1DE0383 = "CUTIS MARMORATA"
         N1DE0384 = "ACTINIC DAMAGE-OVERALL IMPRESSION"
         N1DE0385 = "FINE TELANGIECTASIA"
         N1DE0386 = "SENILE ELASTOSIS"
         N1DE0387 = "ACTINIC KERATOSES"
         N1DE0388 = "OTHER TELANGIECTASIA-LOCATION"
         N1DE0389 = "LOCATION"
         N1DE0390 = "IMPRESSION-WEBER OSLER RONDOU"
         N1DE0391 = "POST IRRADIATION"
         N1DE0392 = "SCLERODACTYLY"
         N1DE0393 = "IDIOPATHIC FAMILIAL"
         N1DE0394 = "POIKILODERMA VASCULAR ATROPHICANS"
         N1DE0395 = "OTHER"
         N1DE0396 = "FAMILY HISTORY"
         N1DE0397 = "FAMILY HISTORY"
         N1DE0398 = "FAMILY HISTORY"
         N1DE0399 = "MISCELLANEOUS LESIONS OF COLOR AND T ..."
         N1DE0400 = "CLAVUS (FEET)"
         N1DE0401 = "SEBORRHEIC KERATOSES-FACE AND SCALP"
         N1DE0402 = "SEBORRHEIC KERATOSES-BACK AND CHEST"
         N1DE0403 = "SEBORRHEIC KERATOSES-NASOLABIAL OR O ..."
         N1DE0404 = "PAPULOSA NEGRA"
         N1DE0405 = "EPITHELIAL TAGS"
         N1DE0406 = "NEUROFIBROMATA"
         N1DE0407 = "DERMATO FIBROMATA"
         N1DE0408 = "EPIDERMAL NEVI"
         N1DE0409 = "WARTS-HAND"
         N1DE0410 = "WARTS-FEET"
         N1DE0411 = "WARTS-GENITAL"
         N1DE0412 = "WARTS-OTHER"
         N1DE0413 = "TOPHI"
         N1DE0414 = "XANTHOMATA"
         N1DE0415 = "ACANTHOSIS NIGRACANS"
         N1DE0416 = "LICHEN STRIATUS"
         N1DE0417 = "NEOPLASTIC CHANGE"
         N1DE0418 = "MALIGNANT TYPE FINDINGS-BASAL CELL E ..."
         N1DE0419 = "BASAL CELL EPITH LOCATION"
         N1DE0420 = "WORK AREA"
         N1DE0421 = "SUPERFICIAL BCE LOCATION"
         N1DE0422 = "SUPERFICIAL BCE LOCATION"
         N1DE0423 = "WORK AREA"
         N1DE0424 = "SQUAMOUS CELL CARINAMA LOCATION"
         N1DE0425 = "SQUAMOUS CELL CARCINOMA LOCATION"
         N1DE0426 = "WORK AREA"
         N1DE0427 = "BOWEN'S DISEASE LOCATION"
         N1DE0428 = "BOWEN'S DISEASE LOCATION"
         N1DE0429 = "WORK AREA"
         N1DE0430 = "LYMPHOMA-LEUKEMIA LOCATION"
         N1DE0431 = "LYMPHOMA-LEUKEMIA LOCATION"
         N1DE0432 = "WORK AREA"
         N1DE0433 = "METASTIC LOCATION"
         N1DE0434 = "METASTIC LOCATION"
         N1DE0435 = "WORK AREA"
         N1DE0436 = "MYCOSIS FUNGOIDES LOCATION (FACE)"
         N1DE0437 = "MYCOSIS FUNGOIDES LOCATION (TRUNK)"
         N1DE0438 = "WORK AREA"
         N1DE0439 = "OTHER-LOCATION"
         N1DE0440 = "OTHER-LOCATION"
         N1DE0441 = "WORK AREA"
         N1DE0442 = "LIPOMA"
         N1DE0443 = "GANGLIOMA"
         N1DE0444 = "SEBACEOUS ADEMOMA"
         N1DE0445 = "BENIGN NEOPLASM OF SWEAT GLANDS AND  ..."
         N1DE0446 = "OTHER FIBROMATA"
         N1DE0447 = "ECTODERMAL APPENDAGES-ECTODERMAL GLANDS"
         N1DE0448 = "ECCRINE(ACTIVITY) FOREHEAD (LOCATION)"
         N1DE0449 = "HANDS (LOCATION)"
         N1DE0450 = "FEET (LOCATION)"
         N1DE0451 = "DISHYDROTIC-HANDS"
         N1DE0452 = "DISHYDROTIC-FEET"
         N1DE0453 = "ANHYDROTIC"
         N1DE0454 = "APOCRINE (POST PUBERTAL) MAMMARY GLA ..."
         N1DE0455 = "FOX FORDYCE DISEASE-AXILLARY"
         N1DE0456 = "FOX FORDYCE DISEASE-PARA-AREOLAR"
         N1DE0457 = "FOX FORDYCE DISEASE-GENITAL"
         N1DE0458 = "SEBACEOUS GLANDS-SEBUM PRODUCTION"
         N1DE0459 = "INCLUSION CYSTS-NUMBERS"
         N1DE0460 = "INCLUSION CYSTS-LARGEST (IN CM)"
         N1DE0461 = "CHEST"
         N1DE0462 = "FACE"
         N1DE0463 = "BACK"
         N1DE0464 = "OTHER"
         N1DE0465 = "NAILS"
         N1DE0466 = "FINGERNAILS-(TOTAL NUMBER)"
         N1DE0468 = "FINGERNAIL ABNORMALITIES (NO. OF NAI ..."
         N1DE0470 = "YELLOW COLOR"
         N1DE0472 = "GREEN, BROWN OR BLACK COLOR"
         N1DE0474 = "SOFT QUALITY"
         N1DE0476 = "BRITTLE QUALITY"
         N1DE0478 = "RAISED CONTOUR"
         N1DE0480 = "SPOONED CONTOUR"
         N1DE0482 = "RIDGED SURFACE"
         N1DE0484 = "PITTED SURFACE"
         N1DE0486 = "OTHER (THICKENED)"
         N1DE0488 = "OTHER  (CLUBBED)"
         N1DE0490 = "COMPLETE ABSENCE OF NAILS, NOT TRAUMATIC"
         N1DE0491 = "BANDS-WHITE, CROSS"
         N1DE0493 = "BANDS-PIGMENTED, LONG"
         N1DE0495 = "FUNGUS"
         N1DE0496 = "TRAUMA"
         N1DE0497 = "ALOPECIA AREATA"
         N1DE0498 = "LICHEN PLANUS"
         N1DE0499 = "NEVUS OF IRIS"
         N1DE0500 = "PSHORIASIS"
         N1DE0501 = "OTHER"
         N1DE0502 = "TOENAILS ABNORNALITIES-THICKENDED"
         N1DE0503 = "DISCOLORED"
         N1DE0504 = "PIGMENTED BANDS"
         N1DE0505 = "FUNGUS"
         N1DE0506 = "PSORIASIS"
         N1DE0507 = "NEVUS OF IRIS"
         N1DE0508 = "TRAUMA"
         N1DE0509 = "OTHER"
         N1DE0510 = "HAIR"
         N1DE0511 = "SCALP-ALOPECIA-MALE PATTERN"
         N1DE0512 = "LOCALIZED"
         N1DE0513 = "DIFFUSE"
         N1DE0514 = "IMPRESSION OF ETIOLOGY AREATA"
         N1DE0515 = "INFECTION "
         N1DE0516 = "ANTI-METABOLITES"
         N1DE0517 = "TRAUMA"
         N1DE0518 = "POSTCLIMACTERIC"
         N1DE0519 = "FAMILIAL"
         N1DE0520 = "TEXTURE FINDINGS"
         N1DE0521 = "TEXTURE FINDINGS"
         N1DE0522 = "EYEBROWS"
         N1DE0523 = "EYELASHES"
         N1DE0524 = "FACIAL HAIR (POST PUBERTAL) MALES"
         N1DE0525 = "FACIAL HAIR (POST PUBERTAL) FEMALES"
         N1DE0526 = "FACIAL HAIR-ALOPECIA AREATA"
         N1DE0527 = "FACIAL HAIR-GENETICALLY DETERMINED"
         N1DE0528 = "FACIAL HAIR-POST INFECTION"
         N1DE0529 = "FACIAL HAIR-POST TRAUMA"
         N1DE0530 = "FACIAL HAIR-ENDOCRINE"
         N1DE0531 = "FACIAL HAIR-OTHER"
         N1DE0532 = "AXILLARY"
         N1DE0533 = "PUBLIC"
         N1DE0534 = "PUBLIC"
         N1DE0535 = "BODY HAIR-ANTERIOR THORAX"
         N1DE0536 = "POSTERIOR THORAX"
         N1DE0537 = "ARMS"
         N1DE0538 = "LEGS"
         N1DE0539 = "GENERAL"
         N1DE0540 = "REGIONAL EXAMINATION HEAD AND NECK"
         N1DE0541 = "SCALP "
         N1DE0542 = "SEBORRHEIC DERMATITIS"
         N1DE0543 = "TRUMA"
         N1DE0544 = "PSORIASIS"
         N1DE0545 = "OTHER"
         N1DE0546 = "EYES-XANTHELASMA EVER NOTICED?"
         N1DE0547 = "AGE OF ONSET"
         N1DE0549 = "FAMILY HISTORY"
         N1DE0550 = "ARCUS SENILIS EVER NOTICED?"
         N1DE0551 = "AGE OF ONSET"
         N1DE0553 = "FAMILY HISTORY"
         N1DE0554 = "BLEPHARITIS (ANGULAR) EVER NOTICED?"
         N1DE0555 = "AGE OF ONSET"
         N1DE0557 = "FAMILY HISTORY"
         N1DE0558 = "BLEPHARITIS (NOT ANGULAR) EVER NOTICED?"
         N1DE0559 = "AGE OF ONSET"
         N1DE0561 = "FAMILY HISTORY"
         N1DE0562 = "HORDEOLUM EVER NOTICED?"
         N1DE0563 = "AGE OF ONSET"
         N1DE0565 = "FAMILY HISTORY"
         N1DE0566 = "CHALAZION EVER NOTICED?"
         N1DE0567 = "AGE OF ONSET"
         N1DE0569 = "FAMILY HISTORY"
         N1DE0570 = "PTERYGIUM EVER NOTICED"
         N1DE0571 = "AGE OF ONSET"
         N1DE0573 = "FAMILY HISTORY"
         N1DE0574 = "TUMOR EVER NOTICED"
         N1DE0575 = "AGE OF ONSET"
         N1DE0577 = "FAMILY HISTORY"
         N1DE0578 = "EARS--DEFORMED"
         N1DE0579 = "EARS--DEFORMED"
         N1DE0580 = "NOSE--DEFORMED"
         N1DE0581 = "MOUTH FISSURING--LIPS"
         N1DE0582 = "FISSURING--BUCCAL MUCOSA"
         N1DE0583 = "FISSURING--GINGIVA"
         N1DE0584 = "FISSURING--TONGUE"
         N1DE0585 = "PIGMENTED LESION--LIPS"
         N1DE0586 = "PIGMENTED LESION--BUCCUL MUSCOSA"
         N1DE0587 = "PIGMENTED LESION--GINGIVA"
         N1DE0588 = "PIGMENTED LESION--TONGUE"
         N1DE0589 = "LEUKOPLAKIA--LIPS"
         N1DE0590 = "LEUKOPLAKIA--BUCCUAL MUCOSA"
         N1DE0591 = "LEUKOPLAKIA--GINGIVA"
         N1DE0592 = "LEUKOPLAKIA--TONGUE"
         N1DE0593 = "LICHEN PLANUS--LIPS"
         N1DE0594 = "LICHEN PLANUS--BUCCAL MUCOSA"
         N1DE0595 = "LICHEN PLANUS--GINGIVA"
         N1DE0596 = "LICHEN PLANUS--TONGUE"
         N1DE0597 = "TUMOR--LIPS"
         N1DE0598 = "TUMOR--BUCCAL MUCOSA"
         N1DE0599 = "TUMOR--GINGIVA"
         N1DE0600 = "TUMOR--TONGUE"
         N1DE0601 = "ANGULAR LESION OR SCARS"
         N1DE0602 = "CHEILOSIS"
         N1DE0603 = "TONGUE (GENERAL MACROGLOSSIA) MAL DE ..."
         N1DE0604 = "ATROPHY"
         N1DE0605 = "PAPILLAE"
         N1DE0606 = "PAPILLAE"
         N1DE0607 = "PALATE"
         N1DE0608 = "PALATE"
         N1DE0609 = "COLOR"
         N1DE0610 = "OTHER FINDINGS"
         N1DE0611 = "THORAX AND ABDOMEN"
         N1DE0612 = "SUPERNUMERARY AREOLAE WITH GLANDULAR ..."
         N1DE0613 = "SUPERNUMERARY AREOLAE WITHOUT GLANDU ..."
         N1DE0614 = "GYNECOMASTIA"
         N1DE0615 = "ETIOLOGY"
         N1DE0616 = "STRIAE"
         N1DE0617 = "STRIAE"
         N1DE0618 = "STRIAE"
         N1DE0619 = "STRIAE"
         N1DE0620 = "STRIAE"
         N1DE0621 = "THIGHS AND BUTTOCKS"
         N1DE0622 = "VENOUS STARS"
         N1DE0623 = "FINDINGS"
         N1DE0624 = "FINDINGS"
         N1DE0625 = "INTER-GLUEAL FISSURE"
         N1DE0626 = "GENITALIA"
         N1DE0627 = "FINDINGS"
         N1DE0628 = "ULCERS"
         N1DE0629 = "REDNESS AND SCALING DO TO"
         N1DE0630 = "FINDINGS"
         N1DE0631 = " EXTREMITIES"
         N1DE0632 = "CLUBBING ACQUIRED-SEVERITY"
         N1DE0633 = "DISFIGURING"
         N1DE0634 = "CLUBBING FAMILIAL-SEVERITY"
         N1DE0635 = "DISFIGURING"
         N1DE0636 = "DEFORMMITY ACQUIRED-SEVERITY"
         N1DE0637 = "DISFIGURING"
         N1DE0638 = "DEFORMITY FAMILIAL-SEVERITY"
         N1DE0639 = "DISFIGURING"
         N1DE0640 = "VARICOSITIES-RIGHT"
         N1DE0641 = "VARICOSITIES-LEFT"
         N1DE0642 = "FOLLICULAR HYPERKERATOSIS-UPPER-OUTE ..."
         N1DE0643 = "REST OF UPPER EXTREMITIES"
         N1DE0644 = "ENTIRE ARM"
         N1DE0645 = "UPPER-OUTER LEGS"
         N1DE0646 = "REST OF LOWER EXTREMITIES"
         N1DE0647 = "ENTIRE LEG"
         N1DE0648 = "UPPER BACK"
         N1DE0649 = "ABDOMEN"
         N1DE0650 = "BUTTOCKS"
         N1DE0651 = "DISEASE ORIENTED EXAMINATION"
         N1DE0652 = "ACNE VULGARIS"
         N1DE0653 = "IF'ACTIVE'ABOVE"
         N1DE0654 = "ACE CYSTS"
         N1DE0655 = "PIT SCARRING"
         N1DE0656 = "EXTENT OF ACNE"
         N1DE0657 = "FACE"
         N1DE0658 = "BACK "
         N1DE0659 = "CHEST"
         N1DE0660 = "SECONDARY ACNE"
         N1DE0661 = "ACNE ROSACEA"
         N1DE0662 = "SEBORRHEIC DERMATITIS NASO-LABIAL FOLD"
         N1DE0663 = "EYEBROWS"
         N1DE0664 = "SCALP"
         N1DE0665 = "POST AURICULAR"
         N1DE0666 = "AXILLAE"
         N1DE0667 = "GENITALIA"
         N1DE0668 = "INFRA-MAMMARY"
         N1DE0669 = "WORK AREA"
         N1DE0670 = "PSORIASIS"
         N1DE0671 = "IF 'ACTIVE' ABOVE"
         N1DE0672 = "LOCATION"
         N1DE0673 = "LOCATION"
         N1DE0674 = "JOINT INVOLVED"
         N1DE0675 = "JOINT INVOLVED"
         N1DE0676 = "JOINT INVOLVED"
         N1DE0677 = "FAMILY HISTORY"
         N1DE0678 = "FAMILY HISTORY"
         N1DE0679 = "DID JOINT PROBLEM PROCEED PSORIASIS"
         N1DE0680 = "ATOPIC DERMATITIS SEVERITY"
         N1DE0681 = "DISTRIBUTION"
         N1DE0682 = "FAMILY HISTORY"
         N1DE0683 = "FAMILY HISTORY"
         N1DE0684 = "PERSONAL HISTORY"
         N1DE0685 = "CAUSE OF URITICARIA (MORE THAN 1 ITE ..."
         N1DE0686 = "ANGLO-NEUROTIC EDEMA"
         N1DE0687 = "GIANT "
         N1DE0688 = "COLD"
         N1DE0689 = "ORDINARY URTICARIA"
         N1DE0690 = "FOOD"
         N1DE0691 = "INHALANT"
         N1DE0692 = "MEDICATION"
         N1DE0693 = "OBSCURE OR OTHER"
         N1DE0694 = "CONTACT DERMITIS (MORE THAN 1  ITEM  ..."
         N1DE0695 = "RUBBER"
         N1DE0696 = "MEDICATION"
         N1DE0697 = "LEATHER"
         N1DE0698 = "CHEMICAL"
         N1DE0699 = "COSMETICS"
         N1DE0700 = "METAL"
         N1DE0701 = "OBSCURE  "
         N1DE0702 = "FABRICS"
         N1DE0703 = "FUNGAL INFECTIONS-IMPRESSION-SCALP"
         N1DE0704 = "KOH-SCALP"
         N1DE0705 = "WOOD'S LAMP--SCALP"
         N1DE0706 = "IMPRESSION--FEET"
         N1DE0707 = "KOH--FEET"
         N1DE0708 = "WOOD'S LAMP--FEET"
         N1DE0709 = "IMPRESSION--HANDS"
         N1DE0710 = "KOH--HANDS"
         N1DE0711 = "WOOD'S LAMP--HANDS"
         N1DE0712 = "IMPRESSION--GROIN"
         N1DE0713 = "KOH--GROIN"
         N1DE0714 = "WOOD'S LAMP--GROIN"
         N1DE0715 = "IMPRESSION--OTHER"
         N1DE0716 = "KOH--OTHER"
         N1DE0717 = "WOOD'S LAMP--OTHER"
         N1DE0718 = "WORK AREA"
         N1DE0723 = "VIRAL INFECTION (EXCEPT WARTS)"
         N1DE0724 = "TZANEK SMEAR"
         N1DE0725 = "BACTERIAL INFECTIONS FURUNCLES-SCALP"
         N1DE0726 = "FACE"
         N1DE0727 = "TRUNK"
         N1DE0728 = "EXTREITIES"
         N1DE0729 = "BUTTOCK"
         N1DE0730 = "WORK AREA"
         N1DE0731 = "FOLLICULITIS-SCALP"
         N1DE0732 = "FACE"
         N1DE0733 = "TRUNK"
         N1DE0734 = "EXTREMITIES"
         N1DE0735 = "BUTTOCK"
         N1DE0736 = "WORK AREA"
         N1DE0737 = "TBC-SCALP"
         N1DE0738 = "FACE"
         N1DE0739 = "TRUNK"
         N1DE0740 = "EXTREMITIES"
         N1DE0741 = "BUTTOCK"
         N1DE0742 = "WORK AREA"
         N1DE0743 = "TBC-SCALP"
         N1DE0744 = "FACE"
         N1DE0745 = "TRUNK"
         N1DE0746 = "EXTREMITIES"
         N1DE0747 = "BUTTOCK"
         N1DE0748 = "WORK AREA"
         N1DE0749 = "HANSEN'S DISEASE-SCALP"
         N1DE0750 = "FACE"
         N1DE0751 = "TRUNK"
         N1DE0752 = "EXTREMITIES"
         N1DE0753 = "BUTTOCK"
         N1DE0754 = "WORK AREA"
         N1DE0755 = "SWIMMING POOL GRAN-SCALP"
         N1DE0756 = "FACE"
         N1DE0757 = "TRUNK"
         N1DE0758 = "EXTREMITIES"
         N1DE0759 = "BUTTOCK"
         N1DE0760 = "WORK AREA"
         N1DE0761 = "ANTHROPOD AND PROTOZOAN INFECTIONS-P ..."
         N1DE0762 = "SWIMMER'S ITCH"
         N1DE0763 = "PEDICUOSIS PUBIS"
         N1DE0764 = "MITES"
         N1DE0765 = "PEDICULOSIS CORPORIS"
         N1DE0766 = "LEISHMANIASIS"
         N1DE0767 = "CREEPING ERUPTION"
         N1DE0768 = "EVALUATION OF DERMATOLOGICAL COMPLAINT"
         N1DE0769 = "DIAGNOSTIC CODE--HAND"
         N1DE0775 = "DIAGNOSTIC CODE--FOOT"
         N1DE0781 = "DIAGNOSTIC CODE--OTHER"
         N1DE0787 = "RECURRENT--HAND?"
         N1DE0788 = "RECURRENT--FOOT?"
         N1DE0789 = "RECURRENT--OTHER?"
         N1DE0790 = "MONTHS ACTIVE IN PAST 12 MONTHS--HAND"
         N1DE0792 = "MONTHS ACTIVE IN PAST 12 MONTHS--FOOT"
         N1DE0794 = "MONTHS ACTIVE IN PAST 12 MONTHS--OTHER"
         N1DE0796 = "YEARS DURATION--HAND"
         N1DE0798 = "YEARS DURATION--FOOT"
         N1DE0800 = "YEARS DURATION--OTHER"
         N1DE0802 = "HAND"
         N1DE0804 = "FOOT "
         N1DE0806 = "OTHER"
         N1DE0808 = "TOTAL SKIN COMPLAINTS"
         N1DE0810 = "HANDICAP TO GAINFUL EMPLOYMENT OR HO ..."
         N1DE0811 = "FOOT "
         N1DE0812 = "OTHER"
         N1DE0813 = "TOTAL SKIN COMPLAINTS"
         N1DE0814 = "PRECLUDES PREFERRED OCCUPATION-HAND"
         N1DE0815 = "FOOT "
         N1DE0816 = "OTHER"
         N1DE0817 = "TOTAL SKIN COMPLAINTS"
         N1DE0818 = "HANDICAP TO SOCIAL RELATIONS-HAND"
         N1DE0819 = "FOOT "
         N1DE0820 = "OTHER"
         N1DE0821 = "TOTAL SKIN COMPLAINTS"
         N1DE0822 = "CARE SOUGHT-NON-PROFESSIONAL-HAND"
         N1DE0823 = "FOOT "
         N1DE0824 = "OTHER"
         N1DE0825 = "CARE SOUGHT-PHARMACY-HAND"
         N1DE0826 = "FOOT "
         N1DE0827 = "OTHER"
         N1DE0828 = "CARE SOUGHT-M.D.-HAND"
         N1DE0829 = "FOOT "
         N1DE0830 = "OTHER"
         N1DE0831 = "CARE SOUGHT-PODIATRIST-HAND "
         N1DE0832 = "FOOT "
         N1DE0833 = "OTHER"
         N1DE0834 = "CARE SOUGHT-OSTEOPATH-HAND"
         N1DE0835 = "FOOT "
         N1DE0836 = "OTHER"
         N1DE0837 = "CARE SOUGHT-DEMEATOLOGIST-HAND"
         N1DE0838 = "FOOT "
         N1DE0839 = "OTHER"
         N1DE0840 = "PRESENTLY UNDER CURRENT BEST CARE-HAND"
         N1DE0841 = "FOOT "
         N1DE0842 = "OTHER"
         N1DE0843 = "IF NO: WITH EXPERT CARE WOULD CONDIT ..."
         N1DE0844 = "FOOT "
         N1DE0845 = "OTHER"
         N1DE0846 = "WOULD CONDITION PERMIT FULL GAINFUL  ..."
         N1DE0847 = "FOOT "
         N1DE0848 = "OTHER"
         N1DE0849 = "DISFIGUREMENT-EXAMINER EVALUATION-HAND"
         N1DE0850 = "FOOT "
         N1DE0851 = "OTHER"
         N1DE0852 = "DISCOMFORT-PATIENT EVALUATION-PAIN O ..."
         N1DE0853 = "FOOT "
         N1DE0854 = "OTHER"
         N1DE0855 = "ITCHING-HAND"
         N1DE0856 = "FOOT "
         N1DE0857 = "OTHER"
         N1DE0858 = "LIMITATION OF MOTION-HAND"
         N1DE0859 = "FOOT "
         N1DE0860 = "OTHER"
         N1DE0861 = "OVERALL DISCOMFORT-HANDS"
         N1DE0862 = "FOOT "
         N1DE0863 = "OTHER"
         N1DE0864 = "OBSTACLE TO IMPROVEMENT OF CONDITION"
         N1DE0865 = "PATIENT COOPERATION"
         N1DE0866 = "DISTANCE FROM MEDICAL HELP"
         N1DE0867 = "AVAILABILITY OF TRANSPORTATION"
         N1DE0868 = "FINANCES"
         N1DE0869 = "OTHER"
         N1DE0870 = "ACTINIC DOMEDONES"
         N1DE0871 = "FUNGUS CULTURE REPORT NO. 1-KOH"
         N1DE0872 = "FUNGUS"
         N1DE0873 = "SITE"
         N1DE0875 = "FUNGUS CODE"
         N1DE0877 = "DATE OF REPORT-MONTH"
         N1DE0879 = "DAY"
         N1DE0881 = "YEAR"
         N1DE0883 = "FUNGUS CULTURE REPOR-NO. 2-KOH"
         N1DE0884 = "FUNGUS"
         N1DE0885 = "SITE"
         N1DE0887 = "FUNGUS CODE"
         N1DE0889 = "FANGUS CULTURE REPORT-NO.3 KOH"
         N1DE0890 = "FUNGUS"
         N1DE0891 = "SITE"
         N1DE0893 = "FUNGUS CODE"
         N1DE0895 = "WORK AREA"
         N1DE0920 = "BIOPSY CONFIRMATION OF SIGNIFICANT D ..."
         N1DE0921 = "DIAGNOSES ADDED FOR DETAILED FINDING"
         N1DE0922 = "GROUPED DIAGNOSIS FROM SIGNIFICANT D ..."
         N1DE0923 = "DERMATOPHYTOSES-(131)"
         N1DE0924 = "TUMORS (19X, 22X, 23X, 23Y)"
         N1DE0925 = "SEBORRHEIC DERMATITIS (7000010)"
         N1DE0926 = "ATOPIC DERMATITIS/ECZEMA (701, 70830 ..."
         N1DE0927 = "ICHTHYOSIS/KERATOSIS (710130, 710150)"
         N1DE0928 = "FOLLICULITIS (713908)"
         N1DE0929 = "VERRUCA VULGARIS (696030)"
         N1DE0930 = "PSORIASIS (706090)"
         N1DE0931 = "SEBORRHEIC GLAND DISEASES-(7141-7149)"
         N1DE0932 = "VITILIGO (716210"
         N1DE0933 = "HERPES SIMPLEX (096)"
         N1DE0934 = "ACNE VULGARIS (714150)"
         N1DE0935 = "XEROSIS (714930)"
         N1DE0936 = "TINEA PEDIS (13100)"
         N1DE0937 = "TINEA UNGUIM (1312--)"
         N1DE0938 = "TINEA VERSICOLOR (131910)"
         N1DE0939 = "TINEA CRURIS (13131)"
         N1DE0940 = "MALIGNANT TUMORS (19X)"
         N1DE0941 = "BENIGN TUMORS (22X0)"
         N1DE0942 = "PRECANCEROUS & NS (23X, 23Y)"
         N1DE0943 = "ATOPIC DERMATITIS (708310)"
         N1DE0944 = "ACTINIC KERATOSIS (23X081)"
         N1DE0945 = "WORK AREA"
      ;
RUN;
