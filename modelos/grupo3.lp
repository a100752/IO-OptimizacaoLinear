min: 1 xAB + 4 xAD
   + 1 xBA + 5 xBD
   + 5 xCD + 1 xCE + 7 xCF
   + 4 xDA + 5 xDB + 5 xDC + 2 xDE
   + 1 xEC + 2 xED + 4 xEF
   + 7 xFC + 4 xFE;

fluxo_A: xAB + xAD - xBA - xDA = 1;
fluxo_B: xBA + xBD - xAB - xDB = 0;
fluxo_C: xCD + xCE + xCF - xDC - xEC - xFC = 0;
fluxo_D: xDA + xDB + xDC + xDE - xAD - xBD - xCD - xED = 0;
fluxo_E: xEC + xED + xEF - xDE - xCE - xFE = 0;
fluxo_F: xFC + xFE - xCF - xEF = -1;

bin xAB, xAD, xBA, xBD, xCD, xCE, xCF, xDA, xDB, xDC, xDE, xEC, xED, xEF, xFC, xFE;
