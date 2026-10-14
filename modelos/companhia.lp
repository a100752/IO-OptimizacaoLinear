/* Grupo 4 - Planeamento de Producao */
/* Variaveis:                                              */
/*   pn_p_t = producao normal do produto p no mes t        */
/*   pe_p_t = producao extraordinaria do produto p no mes t */
/*   st_p_t = stock do produto p no final do mes t         */

min: 11 pn_1_1 + 12 pn_2_1 + 15 pe_1_1 + 24 pe_2_1
   + 13 pn_1_2 + 15 pn_2_2 + 17 pe_1_2 + 19 pe_2_2
   + 16 pn_1_3 + 15 pn_2_3 + 21 pe_1_3 + 24 pe_2_3
   + 1 st_1_1 + 2 st_2_1
   + 2 st_1_2 + 1 st_2_2;

/* Capacidade combinada em horario normal */
cap_normal_1: pn_1_1 + pn_2_1 <= 10;
cap_normal_2: pn_1_2 + pn_2_2 <= 8;
cap_normal_3: pn_1_3 + pn_2_3 <= 10;

/* Capacidade combinada em horario extraordinario */
cap_extra_1: pe_1_1 + pe_2_1 <= 3;
cap_extra_2: pe_1_2 + pe_2_2 <= 2;
cap_extra_3: pe_1_3 + pe_2_3 <= 3;

/* Equilibrio de fluxo - Produto 1 */
/* stock_inicial = 0, stock_final_mes3 = 0 */
fluxo_p1_mes1: pn_1_1 + pe_1_1 - st_1_1 = 5;
fluxo_p1_mes2: st_1_1 + pn_1_2 + pe_1_2 - st_1_2 = 3;
fluxo_p1_mes3: st_1_2 + pn_1_3 + pe_1_3 = 4;

/* Equilibrio de fluxo - Produto 2 */
fluxo_p2_mes1: pn_2_1 + pe_2_1 - st_2_1 = 3;
fluxo_p2_mes2: st_2_1 + pn_2_2 + pe_2_2 - st_2_2 = 5;
fluxo_p2_mes3: st_2_2 + pn_2_3 + pe_2_3 = 4;
