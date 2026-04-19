/*
 *  Survey:           NHANES I
 *  Years:            1971-1975
 *  Questionnaire:    Arthritis Data
 *  Tape Number:      4121
 *
 *  Code Created By:  CDC/IMB
 *
 *  DESCRIPTION:  This file is provided as a starting point to perform advanced 
 *  statistical queries on the survey data.  They are to be used in conjunction 
 *  with legacy codebooks or data tape documentation to analyze the data.  In order 
 *  to use this program: either copy the tape file to your C:\temp directory, or change 
 *  the infile to point to the location that your tape file is located.
*/

DATA D_4121;
   INFILE 'c:\temp\DU4121.txt'  LRECL = 2000 MISSOVER;
      LENGTH
         SEQN 8
         N1AR0006 8
         N1AR0010 4
         N1AR0011 4
         N1AR0012 4
         N1AR0013 4
         N1AR0014 4
         N1AR0015 4
         N1AR0016 4
         N1AR0017 4
         N1AR0019 4
         N1AR0020 4
         N1AR0022 4
         N1AR0023 4
         N1AR0025 4
         N1AR0027 4
         N1AR0028 4
         N1AR0029 4
         N1AR0030 4
         N1AR0031 4
         N1AR0032 4
         N1AR0033 4
         N1AR0034 4
         N1AR0036 4
         N1AR0037 8
         N1AR0041 4
         N1AR0042 8
         N1AR0046 4
         N1AR0047 8
         N1AR0051 4
         N1AR0052 8
         N1AR0056 4
         N1AR0057 8
         N1AR0061 4
         N1AR0062 8
         N1AR0066 4
         N1AR0067 8
         N1AR0071 4
         N1AR0072 8
         N1AR0076 4
         N1AR0077 8
         N1AR0081 4
         N1AR0082 8
         N1AR0086 4
         N1AR0087 8
         N1AR0091 8
         N1AR0095 8
         N1AR0100 4
         N1AR0101 4
         N1AR0103 4
         N1AR0104 4
         N1AR0105 4
         N1AR0106 8
         N1AR0110 4
         N1AR0112 4
         N1AR0114 4
         N1AR0115 4
         N1AR0116 4
         N1AR0117 4
         N1AR0118 4
         N1AR0119 4
         N1AR0120 4
         N1AR0122 4
         N1AR0123 4
         N1AR0124 4
         N1AR0125 4
         N1AR0126 4
         N1AR0127 4
         N1AR0128 4
         N1AR0129 4
         N1AR0130 4
         N1AR0131 4
         N1AR0132 4
         N1AR0135 4
         N1AR0138 8
         N1AR0144 4
         N1AR0146 4
         N1AR0147 4
         N1AR0150 4
         N1AR0151 4
         N1AR0152 4
         N1AR0153 4
         N1AR0154 4
         N1AR0155 4
         N1AR0156 4
         N1AR0157 4
         N1AR0158 8
         N1AR0164 $6
         N1AR0170 8
         N1AR0176 $6
         N1AR0182 8
         N1AR0188 8
         N1AR0194 4
         N1AR0196 4
         N1AR0199 4
         N1AR0201 8
         N1AR0205 $20
         N1AR0225 4
         N1AR0226 4
         N1AR0227 4
         N1AR0228 4
         N1AR0229 4
         N1AR0230 4
         N1AR0231 4
         N1AR0232 4
         N1AR0233 4
         N1AR0234 4
         N1AR0235 4
         N1AR0236 4
         N1AR0237 4
         N1AR0238 4
         N1AR0239 4
         N1AR0240 4
         N1AR0241 4
         N1AR0242 4
         N1AR0243 4
         N1AR0244 4
         N1AR0245 4
         N1AR0246 4
         N1AR0247 4
         N1AR0248 4
         N1AR0249 4
         N1AR0250 4
         N1AR0251 4
         N1AR0252 4
         N1AR0253 4
         N1AR0254 4
         N1AR0255 4
         N1AR0256 4
         N1AR0257 4
         N1AR0258 4
         N1AR0259 4
         N1AR0260 4
         N1AR0262 4
         N1AR0263 4
         N1AR0264 4
         N1AR0265 4
         N1AR0266 4
         N1AR0267 4
         N1AR0268 4
         N1AR0269 4
         N1AR0270 4
         N1AR0271 4
         N1AR0272 4
         N1AR0273 4
         N1AR0274 4
         N1AR0275 4
         N1AR0276 4
         N1AR0277 4
         N1AR0278 4
         N1AR0279 4
         N1AR0280 4
         N1AR0281 4
         N1AR0282 4
         N1AR0283 4
         N1AR0284 4
         N1AR0285 4
         N1AR0286 4
         N1AR0287 4
         N1AR0288 4
         N1AR0289 4
         N1AR0291 4
         N1AR0292 4
         N1AR0293 4
         N1AR0294 4
         N1AR0295 4
         N1AR0297 4
         N1AR0298 4
         N1AR0299 4
         N1AR0300 4
         N1AR0301 4
         N1AR0302 4
         N1AR0303 4
         N1AR0304 4
         N1AR0305 4
         N1AR0306 4
         N1AR0307 4
         N1AR0308 4
         N1AR0309 4
         N1AR0310 4
         N1AR0311 4
         N1AR0312 4
         N1AR0313 4
         N1AR0314 4
         N1AR0315 4
         N1AR0316 4
         N1AR0317 4
         N1AR0318 4
         N1AR0319 4
         N1AR0320 4
         N1AR0321 4
         N1AR0322 4
         N1AR0323 4
         N1AR0324 4
         N1AR0325 4
         N1AR0326 4
         N1AR0327 4
         N1AR0328 4
         N1AR0329 4
         N1AR0330 4
         N1AR0331 4
         N1AR0332 4
         N1AR0333 4
         N1AR0334 4
         N1AR0335 4
         N1AR0336 4
         N1AR0337 4
         N1AR0338 4
         N1AR0339 4
         N1AR0340 4
         N1AR0341 4
         N1AR0342 4
         N1AR0343 4
         N1AR0344 4
         N1AR0345 4
         N1AR0346 4
         N1AR0347 4
         N1AR0348 4
         N1AR0349 4
         N1AR0350 4
         N1AR0351 4
         N1AR0352 4
         N1AR0353 4
         N1AR0354 4
         N1AR0355 4
         N1AR0356 4
         N1AR0357 4
         N1AR0358 4
         N1AR0359 4
         N1AR0360 4
         N1AR0361 4
         N1AR0362 4
         N1AR0363 4
         N1AR0364 4
         N1AR0365 4
         N1AR0366 4
         N1AR0367 4
         N1AR0368 4
         N1AR0369 4
         N1AR0370 4
         N1AR0371 4
         N1AR0372 4
         N1AR0373 4
         N1AR0374 4
         N1AR0375 4
         N1AR0376 4
         N1AR0377 4
         N1AR0378 $1
         N1AR0379 4
         N1AR0380 4
         N1AR0381 4
         N1AR0382 4
         N1AR0383 4
         N1AR0384 4
         N1AR0385 4
         N1AR0386 4
         N1AR0387 4
         N1AR0388 4
         N1AR0389 4
         N1AR0390 4
         N1AR0391 4
         N1AR0392 4
         N1AR0393 4
         N1AR0394 4
         N1AR0395 4
         N1AR0396 4
         N1AR0397 4
         N1AR0398 4
         N1AR0399 4
         N1AR0400 4
         N1AR0401 4
         N1AR0402 4
         N1AR0403 4
         N1AR0404 4
         N1AR0405 4
         N1AR0406 4
         N1AR0407 4
         N1AR0408 4
         N1AR0409 4
         N1AR0410 4
         N1AR0411 4
         N1AR0412 4
         N1AR0413 4
         N1AR0414 4
         N1AR0415 4
         N1AR0416 4
         N1AR0417 4
         N1AR0418 4
         N1AR0419 4
         N1AR0420 4
         N1AR0421 4
         N1AR0422 4
         N1AR0423 4
         N1AR0424 4
         N1AR0425 4
         N1AR0426 4
         N1AR0427 4
         N1AR0428 4
         N1AR0429 4
         N1AR0430 4
         N1AR0431 4
         N1AR0432 4
         N1AR0433 4
         N1AR0434 4
         N1AR0435 4
         N1AR0436 4
         N1AR0437 4
         N1AR0438 4
         N1AR0439 4
         N1AR0440 4
         N1AR0441 4
         N1AR0442 4
         N1AR0443 4
         N1AR0444 4
         N1AR0445 4
         N1AR0446 4
         N1AR0447 4
         N1AR0448 4
         N1AR0449 4
         N1AR0450 4
         N1AR0451 4
         N1AR0452 4
         N1AR0453 4
         N1AR0454 4
         N1AR0455 4
         N1AR0456 4
         N1AR0457 4
         N1AR0458 4
         N1AR0459 4
         N1AR0460 4
         N1AR0461 4
         N1AR0462 4
         N1AR0463 4
         N1AR0464 4
         N1AR0465 4
         N1AR0466 4
         N1AR0467 4
         N1AR0468 4
         N1AR0469 4
         N1AR0470 4
         N1AR0471 4
         N1AR0472 4
         N1AR0473 4
         N1AR0474 4
         N1AR0475 4
         N1AR0476 4
         N1AR0477 4
         N1AR0478 4
         N1AR0479 $1
         N1AR0480 4
         N1AR0483 4
         N1AR0484 4
         N1AR0485 4
         N1AR0486 4
         N1AR0487 4
         N1AR0488 4
         N1AR0489 4
         N1AR0490 4
         N1AR0491 4
         N1AR0492 4
         N1AR0493 4
         N1AR0494 4
         N1AR0495 4
         N1AR0496 4
         N1AR0497 4
         N1AR0498 4
         N1AR0499 4
         N1AR0500 4
         N1AR0501 4
         N1AR0502 4
         N1AR0503 4
         N1AR0504 4
         N1AR0505 4
         N1AR0506 4
         N1AR0507 4
         N1AR0508 4
         N1AR0509 4
         N1AR0510 4
         N1AR0511 4
         N1AR0512 4
         N1AR0513 4
         N1AR0514 4
         N1AR0515 4
         N1AR0516 4
         N1AR0517 4
         N1AR0518 4
         N1AR0519 4
         N1AR0520 4
         N1AR0521 4
         N1AR0522 4
         N1AR0523 4
         N1AR0524 4
         N1AR0525 4
         N1AR0526 4
         N1AR0527 4
         N1AR0528 4
         N1AR0529 4
         N1AR0530 4
         N1AR0531 4
         N1AR0532 4
         N1AR0533 4
         N1AR0534 4
         N1AR0535 4
         N1AR0536 4
         N1AR0537 4
         N1AR0538 4
         N1AR0539 4
         N1AR0540 4
         N1AR0541 4
         N1AR0542 4
         N1AR0543 4
         N1AR0544 4
         N1AR0545 4
         N1AR0546 4
         N1AR0547 4
         N1AR0548 4
         N1AR0549 4
         N1AR0550 4
         N1AR0551 4
         N1AR0552 4
         N1AR0553 4
         N1AR0554 4
         N1AR0555 4
         N1AR0556 4
         N1AR0557 4
         N1AR0558 4
         N1AR0559 4
         N1AR0560 4
         N1AR0561 4
         N1AR0562 4
         N1AR0563 4
         N1AR0564 4
         N1AR0565 4
         N1AR0566 4
         N1AR0567 4
         N1AR0568 4
         N1AR0569 4
         N1AR0570 4
         N1AR0571 4
         N1AR0572 4
         N1AR0573 4
         N1AR0574 4
         N1AR0575 4
         N1AR0576 4
         N1AR0577 4
         N1AR0578 4
         N1AR0579 4
         N1AR0580 4
         N1AR0581 4
         N1AR0582 4
         N1AR0583 4
         N1AR0584 4
         N1AR0585 4
         N1AR0586 4
         N1AR0587 4
         N1AR0588 4
         N1AR0589 4
         N1AR0590 4
         N1AR0591 4
         N1AR0592 4
         N1AR0593 4
         N1AR0594 4
         N1AR0595 4
         N1AR0596 4
         N1AR0597 4
         N1AR0598 4
         N1AR0599 4
         N1AR0600 4
         N1AR0601 4
         N1AR0602 4
         N1AR0603 4
         N1AR0604 4
         N1AR0605 4
         N1AR0606 4
         N1AR0607 4
         N1AR0608 4
         N1AR0609 4
         N1AR0610 4
         N1AR0611 4
         N1AR0612 4
         N1AR0613 4
         N1AR0614 4
         N1AR0615 4
         N1AR0616 4
         N1AR0617 4
         N1AR0618 4
         N1AR0619 4
         N1AR0620 4
         N1AR0621 4
         N1AR0622 4
         N1AR0623 4
         N1AR0624 4
         N1AR0625 4
         N1AR0626 4
         N1AR0627 4
         N1AR0628 4
         N1AR0629 4
         N1AR0630 4
         N1AR0631 4
         N1AR0632 4
         N1AR0633 4
         N1AR0634 4
         N1AR0635 4
         N1AR0636 4
         N1AR0637 4
         N1AR0638 4
         N1AR0639 4
         N1AR0640 4
         N1AR0641 4
         N1AR0642 4
         N1AR0643 4
         N1AR0644 4
         N1AR0645 4
         N1AR0646 4
         N1AR0647 4
         N1AR0648 4
         N1AR0649 4
         N1AR0650 4
         N1AR0651 4
         N1AR0652 4
         N1AR0653 4
         N1AR0654 4
         N1AR0655 4
         N1AR0656 4
         N1AR0657 4
         N1AR0658 4
         N1AR0659 4
         N1AR0660 4
         N1AR0661 4
         N1AR0662 4
         N1AR0663 4
         N1AR0664 4
         N1AR0665 4
         N1AR0666 4
         N1AR0667 4
         N1AR0668 4
         N1AR0669 4
         N1AR0670 4
         N1AR0671 4
         N1AR0672 4
         N1AR0673 4
         N1AR0674 4
         N1AR0675 4
         N1AR0676 4
         N1AR0677 4
         N1AR0678 $23
      ;

      INPUT
         SEQN 1-5
         N1AR0006 6-9
         N1AR0010 10
         N1AR0011 11
         N1AR0012 12
         N1AR0013 13
         N1AR0014 14
         N1AR0015 15
         N1AR0016 16
         N1AR0017 17-18
         N1AR0019 19
         N1AR0020 20-21
         N1AR0022 22
         N1AR0023 23-24
         N1AR0025 25-26
         N1AR0027 27
         N1AR0028 28
         N1AR0029 29
         N1AR0030 30
         N1AR0031 31
         N1AR0032 32
         N1AR0033 33
         N1AR0034 34-35
         N1AR0036 36
         N1AR0037 37-40
         N1AR0041 41
         N1AR0042 42-45
         N1AR0046 46
         N1AR0047 47-50
         N1AR0051 51
         N1AR0052 52-55
         N1AR0056 56
         N1AR0057 57-60
         N1AR0061 61
         N1AR0062 62-65
         N1AR0066 66
         N1AR0067 67-70
         N1AR0071 71
         N1AR0072 72-75
         N1AR0076 76
         N1AR0077 77-80
         N1AR0081 81
         N1AR0082 82-85
         N1AR0086 86
         N1AR0087 87-90
         N1AR0091 91-94
         N1AR0095 95-99
         N1AR0100 100
         N1AR0101 101-102
         N1AR0103 103
         N1AR0104 104
         N1AR0105 105
         N1AR0106 106-109
         N1AR0110 110-111
         N1AR0112 112-113
         N1AR0114 114
         N1AR0115 115
         N1AR0116 116
         N1AR0117 117
         N1AR0118 118
         N1AR0119 119
         N1AR0120 120-121
         N1AR0122 122
         N1AR0123 123
         N1AR0124 124
         N1AR0125 125
         N1AR0126 126
         N1AR0127 127
         N1AR0128 128
         N1AR0129 129
         N1AR0130 130
         N1AR0131 131
         N1AR0132 132-134
         N1AR0135 135-137
         N1AR0138 138-143
         N1AR0144 144-145
         N1AR0146 146
         N1AR0147 147-149
         N1AR0150 150
         N1AR0151 151
         N1AR0152 152
         N1AR0153 153
         N1AR0154 154
         N1AR0155 155
         N1AR0156 156
         N1AR0157 157
         N1AR0158 158-163
         N1AR0164 164-169
         N1AR0170 170-175
         N1AR0176 176-181
         N1AR0182 182-187
         N1AR0188 188-193
         N1AR0194 194-195
         N1AR0196 196-198
         N1AR0199 199-200
         N1AR0201 201-204
         N1AR0205 205-224
         N1AR0225 225
         N1AR0226 226
         N1AR0227 227
         N1AR0228 228
         N1AR0229 229
         N1AR0230 230
         N1AR0231 231
         N1AR0232 232
         N1AR0233 233
         N1AR0234 234
         N1AR0235 235
         N1AR0236 236
         N1AR0237 237
         N1AR0238 238
         N1AR0239 239
         N1AR0240 240
         N1AR0241 241
         N1AR0242 242
         N1AR0243 243
         N1AR0244 244
         N1AR0245 245
         N1AR0246 246
         N1AR0247 247
         N1AR0248 248
         N1AR0249 249
         N1AR0250 250
         N1AR0251 251
         N1AR0252 252
         N1AR0253 253
         N1AR0254 254
         N1AR0255 255
         N1AR0256 256
         N1AR0257 257
         N1AR0258 258
         N1AR0259 259
         N1AR0260 260-261
         N1AR0262 262
         N1AR0263 263
         N1AR0264 264
         N1AR0265 265
         N1AR0266 266
         N1AR0267 267
         N1AR0268 268
         N1AR0269 269
         N1AR0270 270
         N1AR0271 271
         N1AR0272 272
         N1AR0273 273
         N1AR0274 274
         N1AR0275 275
         N1AR0276 276
         N1AR0277 277
         N1AR0278 278
         N1AR0279 279
         N1AR0280 280
         N1AR0281 281
         N1AR0282 282
         N1AR0283 283
         N1AR0284 284
         N1AR0285 285
         N1AR0286 286
         N1AR0287 287
         N1AR0288 288
         N1AR0289 289-290
         N1AR0291 291
         N1AR0292 292
         N1AR0293 293
         N1AR0294 294
         N1AR0295 295-296
         N1AR0297 297
         N1AR0298 298
         N1AR0299 299
         N1AR0300 300
         N1AR0301 301
         N1AR0302 302
         N1AR0303 303
         N1AR0304 304
         N1AR0305 305
         N1AR0306 306
         N1AR0307 307
         N1AR0308 308
         N1AR0309 309
         N1AR0310 310
         N1AR0311 311
         N1AR0312 312
         N1AR0313 313
         N1AR0314 314
         N1AR0315 315
         N1AR0316 316
         N1AR0317 317
         N1AR0318 318
         N1AR0319 319
         N1AR0320 320
         N1AR0321 321
         N1AR0322 322
         N1AR0323 323
         N1AR0324 324
         N1AR0325 325
         N1AR0326 326
         N1AR0327 327
         N1AR0328 328
         N1AR0329 329
         N1AR0330 330
         N1AR0331 331
         N1AR0332 332
         N1AR0333 333
         N1AR0334 334
         N1AR0335 335
         N1AR0336 336
         N1AR0337 337
         N1AR0338 338
         N1AR0339 339
         N1AR0340 340
         N1AR0341 341
         N1AR0342 342
         N1AR0343 343
         N1AR0344 344
         N1AR0345 345
         N1AR0346 346
         N1AR0347 347
         N1AR0348 348
         N1AR0349 349
         N1AR0350 350
         N1AR0351 351
         N1AR0352 352
         N1AR0353 353
         N1AR0354 354
         N1AR0355 355
         N1AR0356 356
         N1AR0357 357
         N1AR0358 358
         N1AR0359 359
         N1AR0360 360
         N1AR0361 361
         N1AR0362 362
         N1AR0363 363
         N1AR0364 364
         N1AR0365 365
         N1AR0366 366
         N1AR0367 367
         N1AR0368 368
         N1AR0369 369
         N1AR0370 370
         N1AR0371 371
         N1AR0372 372
         N1AR0373 373
         N1AR0374 374
         N1AR0375 375
         N1AR0376 376
         N1AR0377 377
         N1AR0378 378
         N1AR0379 379
         N1AR0380 380
         N1AR0381 381
         N1AR0382 382
         N1AR0383 383
         N1AR0384 384
         N1AR0385 385
         N1AR0386 386
         N1AR0387 387
         N1AR0388 388
         N1AR0389 389
         N1AR0390 390
         N1AR0391 391
         N1AR0392 392
         N1AR0393 393
         N1AR0394 394
         N1AR0395 395
         N1AR0396 396
         N1AR0397 397
         N1AR0398 398
         N1AR0399 399
         N1AR0400 400
         N1AR0401 401
         N1AR0402 402
         N1AR0403 403
         N1AR0404 404
         N1AR0405 405
         N1AR0406 406
         N1AR0407 407
         N1AR0408 408
         N1AR0409 409
         N1AR0410 410
         N1AR0411 411
         N1AR0412 412
         N1AR0413 413
         N1AR0414 414
         N1AR0415 415
         N1AR0416 416
         N1AR0417 417
         N1AR0418 418
         N1AR0419 419
         N1AR0420 420
         N1AR0421 421
         N1AR0422 422
         N1AR0423 423
         N1AR0424 424
         N1AR0425 425
         N1AR0426 426
         N1AR0427 427
         N1AR0428 428
         N1AR0429 429
         N1AR0430 430
         N1AR0431 431
         N1AR0432 432
         N1AR0433 433
         N1AR0434 434
         N1AR0435 435
         N1AR0436 436
         N1AR0437 437
         N1AR0438 438
         N1AR0439 439
         N1AR0440 440
         N1AR0441 441
         N1AR0442 442
         N1AR0443 443
         N1AR0444 444
         N1AR0445 445
         N1AR0446 446
         N1AR0447 447
         N1AR0448 448
         N1AR0449 449
         N1AR0450 450
         N1AR0451 451
         N1AR0452 452
         N1AR0453 453
         N1AR0454 454
         N1AR0455 455
         N1AR0456 456
         N1AR0457 457
         N1AR0458 458
         N1AR0459 459
         N1AR0460 460
         N1AR0461 461
         N1AR0462 462
         N1AR0463 463
         N1AR0464 464
         N1AR0465 465
         N1AR0466 466
         N1AR0467 467
         N1AR0468 468
         N1AR0469 469
         N1AR0470 470
         N1AR0471 471
         N1AR0472 472
         N1AR0473 473
         N1AR0474 474
         N1AR0475 475
         N1AR0476 476
         N1AR0477 477
         N1AR0478 478
         N1AR0479 479
         N1AR0480 480-482
         N1AR0483 483
         N1AR0484 484
         N1AR0485 485
         N1AR0486 486
         N1AR0487 487
         N1AR0488 488
         N1AR0489 489
         N1AR0490 490
         N1AR0491 491
         N1AR0492 492
         N1AR0493 493
         N1AR0494 494
         N1AR0495 495
         N1AR0496 496
         N1AR0497 497
         N1AR0498 498
         N1AR0499 499
         N1AR0500 500
         N1AR0501 501
         N1AR0502 502
         N1AR0503 503
         N1AR0504 504
         N1AR0505 505
         N1AR0506 506
         N1AR0507 507
         N1AR0508 508
         N1AR0509 509
         N1AR0510 510
         N1AR0511 511
         N1AR0512 512
         N1AR0513 513
         N1AR0514 514
         N1AR0515 515
         N1AR0516 516
         N1AR0517 517
         N1AR0518 518
         N1AR0519 519
         N1AR0520 520
         N1AR0521 521
         N1AR0522 522
         N1AR0523 523
         N1AR0524 524
         N1AR0525 525
         N1AR0526 526
         N1AR0527 527
         N1AR0528 528
         N1AR0529 529
         N1AR0530 530
         N1AR0531 531
         N1AR0532 532
         N1AR0533 533
         N1AR0534 534
         N1AR0535 535
         N1AR0536 536
         N1AR0537 537
         N1AR0538 538
         N1AR0539 539
         N1AR0540 540
         N1AR0541 541
         N1AR0542 542
         N1AR0543 543
         N1AR0544 544
         N1AR0545 545
         N1AR0546 546
         N1AR0547 547
         N1AR0548 548
         N1AR0549 549
         N1AR0550 550
         N1AR0551 551
         N1AR0552 552
         N1AR0553 553
         N1AR0554 554
         N1AR0555 555
         N1AR0556 556
         N1AR0557 557
         N1AR0558 558
         N1AR0559 559
         N1AR0560 560
         N1AR0561 561
         N1AR0562 562
         N1AR0563 563
         N1AR0564 564
         N1AR0565 565
         N1AR0566 566
         N1AR0567 567
         N1AR0568 568
         N1AR0569 569
         N1AR0570 570
         N1AR0571 571
         N1AR0572 572
         N1AR0573 573
         N1AR0574 574
         N1AR0575 575
         N1AR0576 576
         N1AR0577 577
         N1AR0578 578
         N1AR0579 579
         N1AR0580 580
         N1AR0581 581
         N1AR0582 582
         N1AR0583 583
         N1AR0584 584
         N1AR0585 585
         N1AR0586 586
         N1AR0587 587
         N1AR0588 588
         N1AR0589 589
         N1AR0590 590
         N1AR0591 591
         N1AR0592 592
         N1AR0593 593
         N1AR0594 594
         N1AR0595 595
         N1AR0596 596
         N1AR0597 597
         N1AR0598 598
         N1AR0599 599
         N1AR0600 600
         N1AR0601 601
         N1AR0602 602
         N1AR0603 603
         N1AR0604 604
         N1AR0605 605
         N1AR0606 606
         N1AR0607 607
         N1AR0608 608
         N1AR0609 609
         N1AR0610 610
         N1AR0611 611
         N1AR0612 612
         N1AR0613 613
         N1AR0614 614
         N1AR0615 615
         N1AR0616 616
         N1AR0617 617
         N1AR0618 618
         N1AR0619 619
         N1AR0620 620
         N1AR0621 621
         N1AR0622 622
         N1AR0623 623
         N1AR0624 624
         N1AR0625 625
         N1AR0626 626
         N1AR0627 627
         N1AR0628 628
         N1AR0629 629
         N1AR0630 630
         N1AR0631 631
         N1AR0632 632
         N1AR0633 633
         N1AR0634 634
         N1AR0635 635
         N1AR0636 636
         N1AR0637 637
         N1AR0638 638
         N1AR0639 639
         N1AR0640 640
         N1AR0641 641
         N1AR0642 642
         N1AR0643 643
         N1AR0644 644
         N1AR0645 645
         N1AR0646 646
         N1AR0647 647
         N1AR0648 648
         N1AR0649 649
         N1AR0650 650
         N1AR0651 651
         N1AR0652 652
         N1AR0653 653
         N1AR0654 654
         N1AR0655 655
         N1AR0656 656
         N1AR0657 657
         N1AR0658 658
         N1AR0659 659
         N1AR0660 660
         N1AR0661 661
         N1AR0662 662
         N1AR0663 663
         N1AR0664 664
         N1AR0665 665
         N1AR0666 666
         N1AR0667 667
         N1AR0668 668
         N1AR0669 669
         N1AR0670 670
         N1AR0671 671
         N1AR0672 672
         N1AR0673 673
         N1AR0674 674
         N1AR0675 675
         N1AR0676 676
         N1AR0677 677
         N1AR0678 678-700
      ;

      LABEL
         SEQN = "SAMPLE SEQUENCE NUMBER"
         N1AR0006 = "CATALOG NUMBER 4271"
         N1AR0010 = "SIZE OF PLACE"
         N1AR0011 = "SMSA-NOT SMSA"
         N1AR0012 = "TYPE OF LIVING QUARTERS"
         N1AR0013 = "LAND USAGE"
         N1AR0014 = "IF RURAL, ASKED HOW MANY ACRES OF LA ..."
         N1AR0015 = "IF 10 ACRES OF MORE, ASKED IF SALE O ..."
         N1AR0016 = "IF 10 ACRES OR LESS, ASKED IF SALE O ..."
         N1AR0017 = "AGE-HEAD OF HOUSEHOLD"
         N1AR0019 = "SEX-HEAD OF HOUSEHOLD"
         N1AR0020 = "HIGHEST GRADE ATTENDED-HEAD OF HOUSEHOLD"
         N1AR0022 = "RACE-HEAD OF HOUSEHOLD"
         N1AR0023 = "TOTAL NUMBER OF PERSONS IN HOUSEHOLD"
         N1AR0025 = "TOTAL SAMPLE PERSONS IN HOUSEHOLD"
         N1AR0027 = "NUMBER OF ROOMS IN HOUSE "
         N1AR0028 = "IS THERE PIPED WATER?"
         N1AR0029 = "IS THERE HOT AND COLD PIPED WATER?"
         N1AR0030 = "IF YES TO PIPED WATER-DOES HOUSE HAV ..."
         N1AR0031 = "DOES HOUSE HAVE A RANGE OR COOK STOVE?"
         N1AR0032 = "DOES HOUSE HAVE A REFRIGERATOR?"
         N1AR0033 = "ARE KITCHEN FACILITIES USED BY ANYON ..."
         N1AR0034 = "TOTAL FAMILY INCOME GROUP"
         N1AR0036 = "WAGES OR SALARIES?"
         N1AR0037 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER ..."
         N1AR0041 = "SOCIAL SECURITY OR  RAILROAD RETIREMENT?"
         N1AR0042 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AR0046 = "WELFARE PAYMENTS OR OTHER PUBLIC ASS ..."
         N1AR0047 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AR0051 = "UNEMPLOYMENT OR WORKMEN'S COMPENSATION?"
         N1AR0052 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AR0056 = "GOVERNMENT EMPLOYEE PENSIONS OR PRIV ..."
         N1AR0057 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AR0061 = "DIVIDENDS, INTEREST OR RENT?"
         N1AR0062 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AR0066 = "NET INCOME FROM  OWN NON-FARM BUSINE ..."
         N1AR0067 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AR0071 = "NET INCOME FROM A FARM?"
         N1AR0072 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AR0076 = "VETERAN'S PAYMENTS"
         N1AR0077 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AR0081 = "ALIMONY, CHILD SUPPORT OR CONTRIBUTI ..."
         N1AR0082 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AR0086 = "ANY OTHER INCOME?"
         N1AR0087 = "IF YES TO ABOVE, HOW MUCH ALTOGETHER?"
         N1AR0091 = "TOTAL AMOUNT(TOTAL OF POSITIONS 37-90)"
         N1AR0095 = "FAMILY UNIT CODE"
         N1AR0100 = "RELATIONSHIP TO HEAD OF HOUSEHOLD"
         N1AR0101 = "AGE AT INTERVIEW"
         N1AR0103 = "RACE OF EXAMINED PERSON"
         N1AR0104 = "SEX OF EXAMINED PERSON"
         N1AR0105 = "MARITAL STATUS"
         N1AR0106 = "DATE OF BIRTH (MONTH, YEAR)"
         N1AR0110 = "PLACE OF BIRTH"
         N1AR0112 = "HIGHEST GRADE OF REGULAR SCHOOL EVER ..."
         N1AR0114 = "DID HE FINISH THE GRADE?"
         N1AR0115 = "IS HE ATTENDING SCHOOL NOW?"
         N1AR0116 = "HAS HE EVER ATTENDED A SCHOOL OF ANY ..."
         N1AR0117 = "IF YES, WHAT KIND OF SCHOOL?"
         N1AR0118 = "IS ANY LANGUAGE OTHER THAN ENGLISH F ..."
         N1AR0119 = "IF YES, WHAT LANGUAGE"
         N1AR0120 = "WHAT IS YOUR MAIN ANCESTRY OR NATION ..."
         N1AR0122 = "WHAT WAS HE DOING MOST PAST THREE MO ..."
         N1AR0123 = "IF ' SOMETHING ELSE' FROM ABOVE, WHA ..."
         N1AR0124 = "IF 'KEEPING HOUSE' OR 'SOMETHING ELS ..."
         N1AR0125 = "IF 'WORKING' FROM ABOVE, DID HE WORK ..."
         N1AR0126 = "DID HE WORK AT ANY TIME LAST WEEK OR ..."
         N1AR0127 = "IF 'NO TO ABOVE, EVEN THOUGH HE DID  ..."
         N1AR0128 = "IF 'NO' IN POSITION 126, WAS HE LOOK ..."
         N1AR0129 = "IF YES TO ABOVE-WHICH?"
         N1AR0130 = "CLASS OF WORKER"
         N1AR0131 = "IF SELF-EMPLOYED IN 'OWN' BUSINESS A ..."
         N1AR0132 = "BUSINESS OR INDUSTRY CODE"
         N1AR0135 = "OCCUPATION CODE"
         N1AR0138 = "DATE OF EXAMINATION"
         N1AR0144 = "AGE AT EXAMINATION"
         N1AR0146 = "FARM"
         N1AR0147 = "POVERTY INDEX (X.XX)"
         N1AR0150 = "RELIGION"
         N1AR0151 = "FOOD PROGRAMS APPLICABILITY"
         N1AR0152 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1AR0153 = "ARE YOU BUYING STAMPS NOW?"
         N1AR0154 = "WHAT IS THE MAIN REASON YOU AREN'T P ..."
         N1AR0155 = "ARE YOU CERTIFIED TO PARTICIPATE IN  ..."
         N1AR0156 = "ARE YOU RECEIVING COMMODITY FOODS  N ..."
         N1AR0157 = "WHY AREN'T YOU PARTICIPATING IN THE  ..."
         N1AR0158 = "DETAILED PERSONS-LOCATIONS 1-35"
         N1AR0164 = "BLANK-DATA USER WORK AREA"
         N1AR0170 = "DETAILED PERSONS-LOCATIONS 1-65"
         N1AR0176 = "BLANK-DATA USER WORK AREA"
         N1AR0182 = "DETAILED PERSONS-LOCATIONS 66-100"
         N1AR0188 = "DETAILED PERSONS-LOCATIONS 1-100"
         N1AR0194 = "STRATA"
         N1AR0196 = "PSEUDO PRIMARY SAMPLING UNITS"
         N1AR0199 = "WORK AREA"
         N1AR0201 = "CATALOG NUMBER 4121"
         N1AR0205 = "BLANK-AVAILABLE FOR WORKSPACE"
         N1AR0225 = "PAIN IN BACK OR NECK ON MOST DAYS FO ..."
         N1AR0226 = "HAS PAIN BEEN PRESENT ON ANY ONE OCC ..."
         N1AR0227 = "IS PAIN USUALLY LOCATED IN NECK?"
         N1AR0228 = "IS PAIN USUALLY LOCATED IN UPPER BACK?"
         N1AR0229 = "IS PAIN USUALLY LOCATED IN MID-BACK?"
         N1AR0230 = "IS PAIN USUALLY LOCATED IN LOWER BACK?"
         N1AR0231 = "IS PAIN MOST INTENSE IN NECK?"
         N1AR0232 = "IS PAIN MOST INTENSE IN UPPER BACK?"
         N1AR0233 = "IS PAIN MOST INTENSE IN MID-BACK?"
         N1AR0234 = "IS PAIN MOST INTENSE IN LOWER BACK?"
         N1AR0235 = "PAIN PRESENT WHEN RESTING AT NIGHT?"
         N1AR0236 = "DOES PAIN AWAKEN YOU FROM SLEEP AT N ..."
         N1AR0237 = "HAS PAIN IN BACK EVER SEEMED TO SPREAD?"
         N1AR0238 = "DOES PAIN SPREAD TO THE BACK OF THE  ..."
         N1AR0239 = "DOES PAIN SPREAD TO THE BACK OF THE  ..."
         N1AR0240 = "DOES PAIN SPREAD TO THE BACK OF BOTH ..."
         N1AR0241 = "DOES PAIN SPREAD TO THE TOP OF THE HEAD?"
         N1AR0242 = "DOES PAIN SPREAD TO THE SIDES OF THE ..."
         N1AR0243 = "HAS PAIN IN NECK EVER SEEMED TO SPREAD?"
         N1AR0244 = "DOES PAIN SPREAD TO   THE TOP AND BA ..."
         N1AR0245 = "DOES PAIN SPREAD TO EITHER SHOULDER  ..."
         N1AR0246 = "DOES PAIN SPREAD TO THE ARMS OR HANDS?"
         N1AR0247 = "DOES PAIN SPREAD TO OTHER LOCATIONS?"
         N1AR0248 = "IS BACK OR NECK PAIN MADE WORSE BY C ..."
         N1AR0249 = "IS BACK OR NECK PAIN MADE WORSE WITH ..."
         N1AR0250 = "IS BACK OR NECK PAIN MADE WORSE AFTE ..."
         N1AR0251 = "IS BACK OR NECK PAIN MADE WORSE BY P ..."
         N1AR0252 = "IS BACK OR NECK PAIN MADE WORSE AFTE ..."
         N1AR0253 = "HOW OLD WHEN FIRST EXPERIENCED RECUR ..."
         N1AR0254 = "WHEN WAS LAST TIME YOU HAD THIS PAIN?"
         N1AR0255 = "WHAT IS LONGEST EPISODE OF BACK OR N ..."
         N1AR0256 = "DOES BACK OR NECK PAIN OCCUR MORE FR ..."
         N1AR0257 = "EVER HAD SPRAINED BACK DUE TO SOME T ..."
         N1AR0258 = "EVER HAD A 'WHIPLASH' INJURY OF THE  ..."
         N1AR0259 = "EVER HAD RUPTURED DISC IN EITHER YOU ..."
         N1AR0260 = "AT WHAT AGE?"
         N1AR0262 = "WERE YOU IN TRACTION?"
         N1AR0263 = "WAS SURGERY NECESSARY?"
         N1AR0264 = "EVER STAYED IN HOSPITAL OVERNIGHT FO ..."
         N1AR0265 = "HAD PAIN IN OR AROUND EITHER HIP JOI ..."
         N1AR0266 = "HAS PAIN IN HI AREA BEEN PRESENT ON  ..."
         N1AR0267 = "WHERE DID YOU FIRST NOTICE IT?"
         N1AR0268 = "IN HIP AREA IS PAIN USUALLY MOST INT ..."
         N1AR0269 = "IN HIP AREA IS PAIN USUALLY MOST INT ..."
         N1AR0270 = "IN HIP AREA IS PAIN USUALLY MOST INT ..."
         N1AR0271 = "IN HIP AREA IS PAIN USUALLY INTENSE  ..."
         N1AR0272 = "IN HIP AREA IS PAIN USUALLY INTENSE  ..."
         N1AR0273 = "IN HIP AREA IS PAIN USUALLY INTENSE  ..."
         N1AR0274 = "IN HIP AREA IS PAIN USUALLY MOST INT ..."
         N1AR0275 = "IN HIP AREA IS PAIN USUALLY MOST INT ..."
         N1AR0276 = "IN HIP AREA IS PAIN USUALLY MOST INT ..."
         N1AR0277 = "IN HIP AREA IS PAIN USUALLY MOST INT ..."
         N1AR0278 = "FROM HIP HAS PAIN TENDED TO SPREAD T ..."
         N1AR0279 = "FROM HIP HAS PAIN TENDED TO SPREAD T ..."
         N1AR0280 = "FROM HIP HAS PAIN TENDED TO SPREAD T ..."
         N1AR0281 = "FROM HIP HAS PAIN TENDED TO SPREAD T ..."
         N1AR0282 = "HAD PAIN IN OR AROUND HIP WHEN COUGH ..."
         N1AR0283 = "WHEN HIP PAIN PRESENT DOES IT HURT A ..."
         N1AR0284 = "HOW OLD WHEN FIRST EXPERIENCED RECUR ..."
         N1AR0285 = "LAST TIME YOU HAD PAIN?"
         N1AR0286 = "LONGEST EPISODE OF HIP PAIN YOU HAVE ..."
         N1AR0287 = "EVER HAD A FRACTURED HIP?"
         N1AR0288 = "WHICH HIP WAS BROKEN?"
         N1AR0289 = "HOW OLD WHEN  IT HAPPENED?"
         N1AR0291 = "WAS HIP IN TRACTION?"
         N1AR0292 = "WAS THERE SURGERY"
         N1AR0293 = "EVER HAD A DISLOCATED HIP?"
         N1AR0294 = "WHICH HIP DISLOCATED?"
         N1AR0295 = "HOW OLD WHEN IT HAPPENED?"
         N1AR0297 = "WAS HIP IN TRACTION?"
         N1AR0298 = "WAS THERE SURGERY?"
         N1AR0299 = "HAD PAIN IN OR AROUND KNEE MOST DAYS ..."
         N1AR0300 = "PAIN IN KNEE AREA BEEN PRESENT ON AN ..."
         N1AR0301 = "IN WHICH KNEE DID YOU FIRST HAVE IT?"
         N1AR0302 = "HOW OLD WHEN FIRST EXPERIENCED RECUR ..."
         N1AR0303 = "WHEN KNEE PAIN PRESENT, IS IT MOST I ..."
         N1AR0304 = "WHEN KNEE PAIN PRESENT, IS IT MOST I ..."
         N1AR0305 = "WHEN KNEE PAIN PRESENT, IS IT MOST I ..."
         N1AR0306 = "WHEN KNEE PAIN PRESENT, IS IT MOST I ..."
         N1AR0307 = "WHEN KNEE PAIN PRESENT, IS IT MOST I ..."
         N1AR0308 = "WHEN KNEE PAIN PRESENT, IS IT MOST I ..."
         N1AR0309 = "WHEN KNEE PAIN PRESENT, DOES IT HURT ..."
         N1AR0310 = "WHEN KNEE PAIN PRESENT, IS THERE ALS ..."
         N1AR0311 = "WHEN PAIN PRESENT, EVER HAD 'LOCKING ..."
         N1AR0312 = "EITHER KNEE EVER 'GIVEN WAY' UNDER YOU?"
         N1AR0313 = "WHICH KNEE GAVE WAY?"
         N1AR0314 = "LAST TIME YOU HAD THIS KNEE PAIN?"
         N1AR0315 = "LONGEST EPISODE OF KNEE PAIN YOU HAV ..."
         N1AR0316 = "EVER HAD A FRACTURED KNEE?"
         N1AR0317 = "WHICH KNEE FRACTURED?"
         N1AR0318 = "EVER HAD SEVERE TWISTING OF EITHER K ..."
         N1AR0319 = "WHICH KNEE?"
         N1AR0320 = "EVER HAD ANY OTHER KNEE INJURY?"
         N1AR0321 = "WHICH KNEE?"
         N1AR0322 = "EVER HAD HIP, KNEE OR BACK DISEASE T ..."
         N1AR0323 = "WHICH JOIN?"
         N1AR0324 = "IF HIP, WHICH HIP?"
         N1AR0325 = "IF KNEE, WHICH KNEE?"
         N1AR0326 = "HAD PAIN OR ACHING IN ANY JOINT OTHE ..."
         N1AR0327 = "WERE FINGERS PAINFUL?"
         N1AR0328 = "IF YES, WHICH FINGERS?"
         N1AR0329 = "WAS WRIST PAINFUL?"
         N1AR0330 = "IF YES, WHICH WRIST?"
         N1AR0331 = "WAS ELBOW PAINFUL?"
         N1AR0332 = "IF YES WHICH ELBOW?"
         N1AR0333 = "WAS SHOULDER PAINFUL?"
         N1AR0334 = "IF YES, WHICH SHOULDER?"
         N1AR0335 = "WAS ANKLE PAINFUL?"
         N1AR0336 = "IF YES, WHICH ANKLE?"
         N1AR0337 = "WAS FOOT PAINFUL?"
         N1AR0338 = " IF YES, WHICH FOOT?"
         N1AR0339 = "ANY SWELLING OF JOINTS WITH PAIN PRE ..."
         N1AR0340 = "HAS THIS SWELLING BEEN PRESENT ON AN ..."
         N1AR0341 = "IS SWELLING AND TENDERNESS ON TOUCHI ..."
         N1AR0342 = "IF YES, WHICH FINGERS?"
         N1AR0343 = "IS SWELLING AND TENDERNESS ON TOUCHI ..."
         N1AR0344 = "IF YES, WHICH WRIST?"
         N1AR0345 = "IS SWELLING AND TENDERNESS ON TOUCHI ..."
         N1AR0346 = "IF YES, WHICH ELBOW?"
         N1AR0347 = "IS SWELLING AND TENDERNESS ON TOUCHI ..."
         N1AR0348 = "IF YES, WHICH SHOULDER?"
         N1AR0349 = "IS SWELLING AND TENDERNESS ON TOUCHI ..."
         N1AR0350 = "IF YES, WHICH HIP?"
         N1AR0351 = "IS SWELLING AND TENDERNESS ON TOUCHI ..."
         N1AR0352 = "IF YES, WHICH KNEE?"
         N1AR0353 = "IS SWELLING AND TENDERNESS ON TOUCHI ..."
         N1AR0354 = "IF YES, WHICH ANKLE?"
         N1AR0355 = "IS SWELLING AND TENDERNESS ON TOUCHI ..."
         N1AR0356 = "IF YES, WHICH FOOT?"
         N1AR0357 = "HOW OLD WHEN FIRST EXPERIENCED SWELL ..."
         N1AR0358 = "LAST TIME YOU HAD THIS SWELLING?"
         N1AR0359 = "HAD STIFFNESS IN JOINTS AND MUSCLES  ..."
         N1AR0360 = "HAS STIFFNESS BEEN PRESENT ON ANY ON ..."
         N1AR0361 = "IS MORNING STIFFNESS USUALLY IN FINGERS?"
         N1AR0362 = "IF YES, WHICH FINGERS?"
         N1AR0363 = "IS MORNING STIFFNESS USUALLY IN WRISTS?"
         N1AR0364 = "IF YES, WHICH WRIST?"
         N1AR0365 = "IS MORNING STIFFNESS USUALLY IN ELBOWS?"
         N1AR0366 = "IF YES, WHICH ELBOW?"
         N1AR0367 = "IS MORNING STIFFNESS USUALLY IN SHOU ..."
         N1AR0368 = "IF YES, WHICH SHOULDER?"
         N1AR0369 = "IS MORNING STIFFNESS USUALLY IN HIPS?"
         N1AR0370 = "IF YES, WHICH HIP?"
         N1AR0371 = "IS THIS MORNING STIFFNESS USUALLY IN ..."
         N1AR0372 = "IF YES, WHICH KNEE?"
         N1AR0373 = "IS MORNING STIFFNESS USUALLY IN ANKLES?"
         N1AR0374 = "IF YES, WHICH ANKLE?"
         N1AR0375 = "IS MORNING STIFFNESS USUALLY IN YOUR ..."
         N1AR0376 = "IF YES, WHICH FOOT?"
         N1AR0377 = "IS MORNING STIFFNESS USUALLY IN YOUR ..."
         N1AR0378 = "BLANK-WORKSPACE"
         N1AR0379 = "HOW LONG DOES STIFFNESS LAST?"
         N1AR0380 = "HOW OLD WHEN FIRST EXPERIENCED MORNI ..."
         N1AR0381 = "WHEN WAS LAST TIME YOU HAD THIS STIF ..."
         N1AR0382 = "EVER HAD PAIN, SWELLING OR  STIFFNES ..."
         N1AR0383 = "WAS THIS THE CAUSE OF PAIN, SWELLING ..."
         N1AR0384 = "IS THIS THE CAUSE OF ANY PAIN, SWELL ..."
         N1AR0385 = "HAVE YOU EVER BEEN TREATED BY ANY OF ..."
         N1AR0386 = "INTERNIST"
         N1AR0387 = " RHEUMATOLOGIST?"
         N1AR0388 = "ORTHOPEDIST?"
         N1AR0389 = "CHIROPRACTOR?"
         N1AR0390 = "OSTEOPATH?"
         N1AR0391 = "FOOT DOCTOR?"
         N1AR0392 = "PHYSICAL THERAPIST?"
         N1AR0393 = "OCCUPATIONAL THERAPIST?"
         N1AR0394 = "OTHER?"
         N1AR0395 = "NEVER BEEN TREATED"
         N1AR0396 = "CURRENTLY BEING TREATED BY DOCTOR FO ..."
         N1AR0397 = "WHAT TYPE DOCTOR?"
         N1AR0398 = "DID HE SAY THE PROBLEM WAS ONE OF TH ..."
         N1AR0399 = "DID HE SAY THE PROBLEM WAS ONE OF TH ..."
         N1AR0400 = "DID HE SAY THE PROBLEM WAS ONE OF TH ..."
         N1AR0401 = "DID HE SAY THE PROBLEM WAS ONE OF TH ..."
         N1AR0402 = "DID HE SAY THE PROBLEM WAS ONE OF TH ..."
         N1AR0403 = "DID HE SAY THE PROBLEM WAS SOMETHING ..."
         N1AR0404 = "WHEN WAS THE LAST TIME YOU SAW HIM?"
         N1AR0405 = "WHO ORIGINALLY REFERRED YOU TO THIS  ..."
         N1AR0406 = "WHERE DO YOU USUALLY SEE HIM?"
         N1AR0407 = "HOW LONG WILL IT BE UNTIL YOUR NEXT  ..."
         N1AR0408 = "EVER USED SPLINTS OR CASTS FOR TREAT ..."
         N1AR0409 = "DO SPLINTS OR CASTS DO YOU ANY GOOD?"
         N1AR0410 = "IF YES TO EITHER OF ABOVE, DO YOU US ..."
         N1AR0411 = "EVER USED BRACES FOR TREATMENT OF YO ..."
         N1AR0412 = "DO THEY DO YOU ANY GOOD?"
         N1AR0413 = "IF YES TO EITHER OF ABOVE, DO YOU US ..."
         N1AR0414 = "EVER USED DIATHERMY OR PARAFFIN FOR  ..."
         N1AR0415 = "DO THEY DO YOU ANY GOOD?"
         N1AR0416 = "IF YES TO EITHER OF ABOVE, DO YOU US ..."
         N1AR0417 = "EVER USE HOP PACKS OR HEATING PADS F ..."
         N1AR0418 = "DO THEY DO YOU ANY GOOD?"
         N1AR0419 = "IF YES TO EITHER OF ABOVE, DO YOU US ..."
         N1AR0420 = "EVER USE COLD PACKS OR ICE FOR TREAT ..."
         N1AR0421 = "DO THEY DO ANY GOOD?"
         N1AR0422 = "IF YES TO EITHER OF ABOVE, DO YOU US ..."
         N1AR0423 = "EVER USE REST FOR TREATMENT OF JOIN  ..."
         N1AR0424 = "DOES IT DO ANY GOOD?"
         N1AR0425 = "IF YES TO EITHER OF ABOVE, DO YOU RE ..."
         N1AR0426 = "EVER USED TRACTION FOR TREATMENT OF  ..."
         N1AR0427 = "DOES IT DO ANY GOOD?"
         N1AR0428 = "IF YES TO EITHER OF ABOVE, DO YOU US ..."
         N1AR0429 = "EVER USE EXERCISE OR PHYSICAL THERAP ..."
         N1AR0430 = "DOES IT DO ANY GOOD?"
         N1AR0431 = "IF YES TO EITHER OF ABOVE, DO YOU US ..."
         N1AR0432 = "EVER USE ASPIRIN FOR TREATMENT OF JO ..."
         N1AR0433 = "DOES IT DO ANY GOOD?"
         N1AR0434 = "IF YES TO EITHER OF ABOVE, DO YOU US ..."
         N1AR0435 = "EVER USE A CAN FOR TREATMENT OF JOIN ..."
         N1AR0436 = "DOES IT DO ANY GOOD?"
         N1AR0437 = "IF YES TO EITHER OF ABOVE, DO YOU US ..."
         N1AR0438 = "EVER USE A CRUTCH FOR TREATMENT OF J ..."
         N1AR0439 = "DOES IT DO ANY GOOD?"
         N1AR0440 = "IF YES TO EITHER OF ABOVE, DO YOU US ..."
         N1AR0441 = "EVER USE A STIFF MATTRESS FOR TREATM ..."
         N1AR0442 = "DOES IT DO ANY GOOD?"
         N1AR0443 = "IF YES EITHER OF ABOVE, DO YOU USE I ..."
         N1AR0444 = "EVER USE A BED BOARD FOR TREATMENT O ..."
         N1AR0445 = "DOES IT DO ANY GOOD?"
         N1AR0446 = "IF YES TO EITHER OF ABOVE, DO YOU US ..."
         N1AR0447 = "EVER HAD INJECTIONS INTO ANY JOINTS?"
         N1AR0448 = "DID THEY DO ANY GOOD?"
         N1AR0449 = "EVER TAKEN ANY CORTISONE-LIKE MEDICA ..."
         N1AR0450 = "IF YES, DID IT DO ANY GOOD?"
         N1AR0451 = "EVER TAKEN ANY BUTAZOLINDIN FOR YOUR ..."
         N1AR0452 = "IF YES, DID IT DO ANY GOOD?"
         N1AR0453 = "EVER TAKEN DARVON OR TYLENOL FOR YOU ..."
         N1AR0454 = "IF YES, DID IT DO ANY GOOD?"
         N1AR0455 = "EVER TAKEN INDOCIN FOR YOUR JOINTS?"
         N1AR0456 = "IF YES, DID IT DO ANY GOOD?"
         N1AR0457 = "GO UP AND DOWN STAIRS?"
         N1AR0458 = "GET INTO OR OUT OF A CAR?"
         N1AR0459 = "USE WASHING CAILITIES?"
         N1AR0460 = "DRESS YOURSELF?"
         N1AR0461 = "FEED YOURSELF?"
         N1AR0462 = "GET INTO OR OUT OF BED?"
         N1AR0463 = "AT PRESENT TIME, DOES JOINT CONDITIO ..."
         N1AR0464 = "EVER HAD TO STAY IN BED AT HOME FOR  ..."
         N1AR0465 = "EVER STAYED OVERNIGHT IN HOSPITAL BE ..."
         N1AR0466 = "WITH RESPECT TO YOUR JOINT TROUBLE,  ..."
         N1AR0467 = "JOB STATUS ONE MONTH BEFORE FIRST DE ..."
         N1AR0468 = "AS RESULT OF JOINT CONDITION, HAS TH ..."
         N1AR0469 = "WHAT IS IT NOW?"
         N1AR0470 = "DAYS LOST DURING PAST 12 MONTHS AS R ..."
         N1AR0471 = "QUALITY OF FILM (KNEES)"
         N1AR0472 = "GENERAL ABNORMAL (KNEES)"
         N1AR0473 = "OSTCOARTHROSIS (KNEES)"
         N1AR0474 = "QUALITY OF FILM (PELVIS)"
         N1AR0475 = "SACRO-ILIAC JOINT-GENERAL ABNORMAL"
         N1AR0476 = "SACRO-ILIAC JOINT-OSTEOARTHROSIS"
         N1AR0477 = "HIPS-GENERAL ABNORMAL"
         N1AR0478 = "HIPS-OSTEOARTHROSIS"
         N1AR0479 = "PLUS OR MINUS"
         N1AR0480 = "MEASUREMENT"
         N1AR0483 = "READER NUMBER"
         N1AR0484 = "OSTEOARTHROSIS (OVERALL GRADE)"
         N1AR0485 = "JOINT SPACE NARROWING-RIGHT LATERAL"
         N1AR0486 = "RIGHT MEDIAL"
         N1AR0487 = "LEFT LATERAL"
         N1AR0488 = "OSTEOPHYTOSIS-GRADE BY QUADRANTS RIG ..."
         N1AR0489 = "RIGHT LATERAL FEMURE"
         N1AR0490 = "RIGHT MEDIAL FEMURE"
         N1AR0491 = "LEFT MEDIAL FEMURE"
         N1AR0492 = "LEFT LATERAL FEMURE"
         N1AR0493 = "RIGHT LATERAL TIBIA"
         N1AR0494 = "RIGHT MEDIAL TIBIA"
         N1AR0495 = "LEFT MEDIAL TIBIA"
         N1AR0496 = "LEFT LATERAL TIBIA"
         N1AR0497 = "TIBIA SPINE OSTEOPHYTES"
         N1AR0498 = "BONY SCLEROSIS NEAR JOINT MARGIN"
         N1AR0499 = "CYSTS NEAR JOINTS"
         N1AR0500 = "EROSIONS"
         N1AR0501 = "OSTEOPOROSIS"
         N1AR0502 = "CHONDROCALCINOSIS-RIGHT"
         N1AR0503 = "CHONDROCALCINOSIS"
         N1AR0504 = "LOOSE CALCIFIED BLODIES"
         N1AR0505 = "READER NUMBER"
         N1AR0506 = "OSTEOARTHROSIS (OVERALL GRADE)"
         N1AR0507 = "JOINT SPACE NARROWING RIGHT LATERAL"
         N1AR0508 = "RIGHT MEDIAL"
         N1AR0509 = "LEFT MEDIAL"
         N1AR0510 = "LEFT LATERAL"
         N1AR0511 = "OSTEOPHYTOSIS-GRADE BY QUADRANTS RIG ..."
         N1AR0512 = "RIGHT MEDIAL FEMURE"
         N1AR0513 = "LEFT MEDIAL FEMURE"
         N1AR0514 = "LEFT LATERAL FEMURE"
         N1AR0515 = "RIGHT LATERAL TIBIA"
         N1AR0516 = "RIGHT MEDIAL TIBIA"
         N1AR0517 = "LEFT MEDIAL TIBIA"
         N1AR0518 = "LEFT LATERAL TIBIA"
         N1AR0519 = "TIBIA SPIN OSPEOPHYTES"
         N1AR0520 = "BONY SCLEROSIS NEAR JOINT MARGIN"
         N1AR0521 = "CYSTS NEAR JOINTS"
         N1AR0522 = "EROSIONS"
         N1AR0523 = "OSTEOPOROSIS"
         N1AR0524 = "CHONDROCALCINOSIS-RIGHT"
         N1AR0525 = "CHONDRACALCINOSIS-LEFTR"
         N1AR0526 = "LOOSE CALCIFIED BODIES"
         N1AR0527 = "OSTEOARTHROSIS (OVERALL GRADE)"
         N1AR0528 = "JOINT SPACE NARROWING RIGHT LATERAL"
         N1AR0529 = "RIGHT MEDIAL"
         N1AR0530 = "LEFT MEDIAL"
         N1AR0531 = "LEFT LATERAL"
         N1AR0532 = "OSTESOPHYTOSIS-GRADE BY QUADRANTS RI ..."
         N1AR0533 = "RIGHT MEDIAL FEMURE"
         N1AR0534 = "LEFT MEDIAL FEMURE"
         N1AR0535 = "LEFT LATERAL FEMURE"
         N1AR0536 = "RIGHT LATERAL TIBIA"
         N1AR0537 = "RIGHT MEDIALTIBIA"
         N1AR0538 = "LEFT MEDIAL TIBIA"
         N1AR0539 = "LEFT LATERAL TIBIA"
         N1AR0540 = "TIBIA SPINE OSTEOPHYTES"
         N1AR0541 = "BONY SCLEROSIS NEAR JOINT MARGIN"
         N1AR0542 = "CYSTS NEAR JOINTS"
         N1AR0543 = "EROSIONS"
         N1AR0544 = "OSTEOPOROSIS"
         N1AR0545 = "CHONDROCALCINOSIS-RIGHT"
         N1AR0546 = "CHONDROCALCINOSIS-LEFT"
         N1AR0547 = "READER NUMBER"
         N1AR0548 = "OSTEOARTHOSIS (OVERALL GRADE)-RIGHT HIP"
         N1AR0549 = "OSTEOARTHOSIS (OVERALL GRADE)-LEFT HIP"
         N1AR0550 = "JOINT SPACE NARROWING RIGHT"
         N1AR0551 = "RIGHT"
         N1AR0552 = "RIGHT"
         N1AR0553 = "LEFT"
         N1AR0554 = "LEFT"
         N1AR0555 = "LEFT"
         N1AR0556 = "BONY SCLEROSIS RIGHT"
         N1AR0557 = "RIGHT"
         N1AR0558 = "LEFT"
         N1AR0559 = "LEFT"
         N1AR0560 = "OSTEOPHYTOSIS-RIGHT"
         N1AR0561 = "RIGHT"
         N1AR0562 = "RIGHT"
         N1AR0563 = "RIGHT"
         N1AR0564 = "RIGHT"
         N1AR0565 = "RIGHT"
         N1AR0566 = "RIGHT"
         N1AR0567 = "RIGHT"
         N1AR0568 = "LEFT"
         N1AR0569 = "LEFT"
         N1AR0570 = "LEFT"
         N1AR0571 = "LEFT"
         N1AR0572 = "LEFT"
         N1AR0573 = "LEFT"
         N1AR0574 = "LEFT"
         N1AR0575 = "CYSTS    "
         N1AR0576 = "EROSIONS"
         N1AR0577 = "OSTEOPOROSIS"
         N1AR0578 = "ACETABULAR ABNORMALITIES"
         N1AR0579 = "CHONDROCALCINOSIS-RIGHT"
         N1AR0580 = "CHONDROCALCINOSIS-SYSHYSIS"
         N1AR0581 = "CHONDROCALCINOSIS-LEFT"
         N1AR0582 = "HEAD DEFORMITY-(PRIMARY)"
         N1AR0583 = "HEAD DEFORMITY (SECONDARY)"
         N1AR0584 = "READER NUMBER"
         N1AR0585 = "OSTEOARTHROSIS (OVERALL GRADE)-RIGHT HIP"
         N1AR0586 = "OSTEOARTHROSIS (OVERALL GRADE)-LEFT HIP"
         N1AR0587 = "JOINT SPACE NARROWING RIGHT"
         N1AR0588 = "RIGHT"
         N1AR0589 = "RIGHT"
         N1AR0590 = "LEFT"
         N1AR0591 = "LEFT"
         N1AR0592 = "LEFT"
         N1AR0593 = "BONY SCLEROSIS RIGHT"
         N1AR0594 = "RIGHT"
         N1AR0595 = "LEFT "
         N1AR0596 = "LEFT"
         N1AR0597 = "OSTEOPHYTOSIS RIGHT"
         N1AR0598 = "RIGHT"
         N1AR0599 = "RIGHT"
         N1AR0600 = "RIGHT"
         N1AR0601 = "RIGHT"
         N1AR0602 = "RIGHT"
         N1AR0603 = "RIGHT"
         N1AR0604 = "LEFT"
         N1AR0605 = "LEFT"
         N1AR0606 = "LEFT"
         N1AR0607 = "LEFT"
         N1AR0608 = "LEFT"
         N1AR0609 = "LEFT"
         N1AR0610 = "LEFT"
         N1AR0611 = "CYSTS"
         N1AR0612 = "EROSIONS"
         N1AR0613 = "OSTEOPOROSIS"
         N1AR0614 = "ACETABULAR ABNORMALITIES"
         N1AR0615 = "CHONDROCALCINOSIS-RIGHT"
         N1AR0616 = "CHONDROCALCINOSIS-SYSHYSIS"
         N1AR0617 = "CHONDROCALCINOSIS-LEFT"
         N1AR0618 = "HEAD DEFORMITY (PRIMARY)"
         N1AR0619 = "HEAD DEFORMITY (SECONDARY)"
         N1AR0620 = "OSTEOARTHROSIS (OVERALL GRADE)-RIGHT  "
         N1AR0621 = "OSTEOARTHROSIS (OVERALL GRADE)-LEFT   "
         N1AR0622 = "JOINT SPACE NARROWING RIGHT"
         N1AR0623 = "RIGHT"
         N1AR0624 = "RIGHT"
         N1AR0625 = "LEFT"
         N1AR0626 = "LEFT"
         N1AR0627 = "LEFT"
         N1AR0628 = "BONY SCLEROSIS RIGHT"
         N1AR0629 = "RIGHT"
         N1AR0630 = "LEFT"
         N1AR0631 = "LEFT"
         N1AR0632 = "OSTEOPHYTOSIS RIGHT"
         N1AR0633 = "RIGHT"
         N1AR0634 = "RIGHT"
         N1AR0635 = "RIGHT"
         N1AR0636 = "RIGHT"
         N1AR0637 = "RIGHT"
         N1AR0638 = "RIGHT"
         N1AR0639 = "LEFT"
         N1AR0640 = "LEFT"
         N1AR0641 = "LEFT"
         N1AR0642 = "LEFT"
         N1AR0643 = "LEFT"
         N1AR0644 = "LEFT"
         N1AR0645 = "LEFT"
         N1AR0646 = "CYSTS"
         N1AR0647 = "EROSIONS"
         N1AR0648 = "OSTEOPOROSIS"
         N1AR0649 = "ACETABULAR ABNORMALITIES"
         N1AR0650 = "CHONDROCALCINOSIS-RIGHT"
         N1AR0651 = "CHONDROCALCINOSIS-SYSHYSIS"
         N1AR0652 = "CHONDROCALCINOSIS-LEFT"
         N1AR0653 = "HEAD DEFORMITY (PRIMARY)"
         N1AR0654 = "HEAD DEFORMITY (SECONDARY)"
         N1AR0655 = "READER NUMBER"
         N1AR0656 = "SACROILITIS (OVERALL GRADE)"
         N1AR0657 = "EROSIONS-RIGHT"
         N1AR0658 = "EROSIONS-LEFT"
         N1AR0659 = "SCLEROSIS-RIGHT"
         N1AR0660 = "SCLEROSIS-LEFT"
         N1AR0661 = "ANKYLOSIS-RIGHT"
         N1AR0662 = "ANKYLOSIS-LEFT"
         N1AR0663 = "READER NUMBER"
         N1AR0664 = "SACROILITIS (OVERALL GRADE)"
         N1AR0665 = "EROSIONS-RIGHT"
         N1AR0666 = "EROSIONS-LEFT"
         N1AR0667 = "SCLEROSIS-RIGHT"
         N1AR0668 = "SCLEROSIS-LEFT"
         N1AR0669 = "ANKYLOSIS-RIGHT"
         N1AR0670 = "ANKYLOSIS-LEFT"
         N1AR0671 = "SACROLILITIS (OVERALL GRADE)"
         N1AR0672 = "EROSION-RIGHT"
         N1AR0673 = "EROSIONS-LEFT"
         N1AR0674 = "SCLEROSIS-RIGHT"
         N1AR0675 = "SCLEROSIS-LEFT"
         N1AR0676 = "ANKYLOSIS-RIGHT"
         N1AR0677 = "ANKYLOSIS-LEFT"
         N1AR0678 = "WORK AREA"
      ;
RUN;

