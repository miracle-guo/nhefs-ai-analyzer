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
