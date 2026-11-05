-- Exercise 01 - a
-- Farmers of Pamplona (54518) with membership seniority in days as of today

SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.membership_date AS membership_date,
    CURRENT_DATE - T1.membership_date AS membership_days
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
ORDER BY CURRENT_DATE - T1.membership_date DESC;

/*
  document  |    first_name     |     last_name      | membership_date | membership_days                                                     
------------+-------------------+--------------------+-----------------+-----------------
 402745033  | Julißn Guillermo  | Valencia Narvßez   | 1995-01-27      |           11605
 361839624  | RocÝo Alba        | Ortega Serrano     | 1995-07-10      |           11441
 546579335  | Wilson            | Parra Prada        | 1995-07-28      |           11423
 939635303  | Marleny           | ┴lvarez Correa     | 1996-03-20      |           11187
 748380481  | Teresa Adriana    | Valencia Moreno    | 1996-07-23      |           11062
 1012324420 | Martha Carolina   | PÚrez Jaimes       | 1996-11-22      |           10940
 230971064  | Manuel            | Agudelo JimÚnez    | 1997-03-29      |           10813
 483692716  | Ramiro            | Barrera Villamizar | 1997-04-08      |           10803
 677772599  | Guillermo         | PÚrez PÚrez        | 1997-05-17      |           10764                                                     
 59388780   | Juan              | Ortega Zapata      | 1997-07-13      |           10707
 789425487  | EfraÝn Ricardo    | Contreras Ospina   | 1997-07-21      |           10699
 172555225  | Edilma Gabriela   | Arias ┴lvarez      | 1998-03-24      |           10453
 659942505  | Mariana           | Barrera Correa     | 1998-03-27      |           10450
 914235490  | Ëscar             | Ospina Gonzßlez    | 1998-05-02      |           10414
 963176673  | Luis              | Mosquera Perdomo   | 1998-07-29      |           10326
 142439635  | Yeison            | Medina Londo±o     | 1998-09-29      |           10264
 534023693  | Myriam            | Valencia Moreno    | 1998-11-03      |           10229
 446019320  | Fernando          | Rojas Cßrdenas     | 1998-12-16      |           10186
 33787285   | RubÚn             | Ramos Chamorro     | 1999-03-02      |           10110                                                     
 866702579  | ┴lvaro            | Berm·dez MarÝn     | 1999-06-21      |            9999
 155695928  | Martha            | Giraldo Arango     | 1999-09-14      |            9914
 1138270357 | Gustavo Heriberto | Torres Guerrero    | 1999-12-30      |            9807
 14046794   | Alberto           | ┴lvarez Villamizar | 2000-04-14      |            9701
 1185360305 | Ivßn              | Berm·dez Fl¾rez    | 2000-09-03      |            9559
 1145130870 | Elsa              | MarÝn Henao        | 2001-03-17      |            9364
 622024549  | Viviana           | Gonzßlez Molina    | 2001-04-18      |            9332
 824422301  | Hernando          | Montoya Agudelo    | 2001-07-22      |            9237
 1103932523 | Amparo            | Bastidas Chamorro  | 2001-08-01      |            9227
 712500733  | Esperanza         | Valencia Ortiz     | 2001-08-12      |            9216                                                     
 302059113  | Yuliana           | Sandoval Bedoya    | 2001-09-24      |            9173
 279649109  | Carlos            | Castillo Torres    | 2001-10-14      |            9153
 951995464  | Wilson Yeison     | DÝaz RamÝrez       | 2001-12-19      |            9087
 934117740  | Gustavo           | MarÝn Sandoval     | 2002-04-29      |            8956
 44817013   | AnÝbal            | Silva Villamizar   | 2002-05-19      |            8936
 358946393  | Carmen            | Cßrdenas Moreno    | 2002-06-25      |            8899
 1079700992 | Camila            | Sßnchez Pinz¾n     | 2002-07-01      |            8893
 403413565  | Reinaldo          | Sußrez PolanÝa     | 2002-07-31      |            8863
 968133883  | Sandra            | Ortega GarcÝa      | 2002-08-11      |            8852
 940051048  | David Germßn      | Romero Bonilla     | 2002-10-11      |            8791                                                     
 409306735  | M¾nica Claudia    | Fl¾rez Gonzßlez    | 2002-10-28      |            8774
 699387247  | Fanny             | Montoya Valencia   | 2003-04-01      |            8619
 1135293825 | Abelardo          | PÚrez Castro       | 2003-06-19      |            8540
 478755763  | Nicolßs           | Rivera Duque       | 2003-08-11      |            8487
 1177165427 | Juliana           | Ortega Osorio      | 2003-09-04      |            8463
 788902052  | Camilo Ivßn       | Calder¾n Trujillo  | 2003-12-14      |            8362
 436957556  | JazmÝn            | Burbano Jaimes     | 2003-12-19      |            8357
 768461420  | Marleny           | Agudelo Sandoval   | 2003-12-24      |            8352
 932437698  | Amparo            | Duarte Duque       | 2003-12-29      |            8347
 1053774538 | Isabella          | Mosquera Sandoval  | 2004-07-01      |            8162                                                     
 553185238  | ┴ngela            | Tovar Lasso        | 2004-08-27      |            8105
 549054771  | MarÝa             | Burbano Duarte     | 2004-09-23      |            8078
 811526011  | Arturo            | Tovar Calder¾n     | 2004-10-18      |            8053
 988262002  | JazmÝn            | Silva G¾mez        | 2005-03-22      |            7898
 91139207   | Mario             | Rinc¾n Sußrez      | 2005-04-23      |            7866
 456256773  | Luisa             | Lozano Losada      | 2005-08-31      |            7736
 637451261  | Arturo            | Contreras Pe±a     | 2005-12-04      |            7641
 137851877  | Gabriela          | RodrÝguez Ortega   | 2005-12-11      |            7634
 793273339  | Libardo           | Trujillo Torres    | 2005-12-16      |            7629
 1027436085 | Manuela           | Bastidas Medina    | 2006-04-11      |            7513                                                     
 846209158  | Daniel HÚctor     | Duque Ruiz         | 2006-04-18      |            7506
 257495692  | Myriam            | Fl¾rez Gonzßlez    | 2006-05-01      |            7493
 141739132  | Alba              | Vargas Losada      | 2006-06-01      |            7462
 788628125  | M¾nica            | ┴lvarez Carrillo   | 2006-09-25      |            7346
 727121857  | Alba              | Vera Calder¾n      | 2006-12-06      |            7274
 45024299   | Rodrigo Guillermo | Berm·dez Mu±oz     | 2006-12-11      |            7269
 674769591  | Ivßn              | Zapata Ortiz       | 2007-01-20      |            7229
 863442205  | Luz               | Rojas Torres       | 2007-04-09      |            7150
 828628976  | Diana             | DÝaz Medina        | 2007-05-01      |            7128
 94235991   | Rafael Francisco  | Rinc¾n Romero      | 2007-07-15      |            7053                                                     
 1189704117 | Mariana           | Ortiz Ruiz         | 2007-08-06      |            7031
 141613744  | ╔dgar             | Burbano Arango     | 2007-09-02      |            7004
 160538872  | Liliana           | Mosquera Uribe     | 2007-09-27      |            6979
 407150767  | Antonio           | Bastidas RodrÝguez | 2007-10-14      |            6962
 302345504  | Elsa              | Ramos Cßrdenas     | 2007-11-17      |            6928
 529703819  | M¾nica Elsa       | RamÝrez Castro     | 2007-11-28      |            6917
 131166207  | Jaime             | MarÝn Hernßndez    | 2008-01-27      |            6857
 1052279913 | Luis              | Jaimes Salazar     | 2008-02-07      |            6846
 1148351420 | InÚs              | JimÚnez Jaimes     | 2008-02-11      |            6842
 796884051  | Yuliana           | Zapata Parra       | 2008-04-01      |            6792                                                     
 302223305  | Camilo            | Arias Mora         | 2008-05-10      |            6753
 252140095  | Alba              | RÝos RodrÝguez     | 2008-05-14      |            6749
 1167191036 | Yuliana JazmÝn    | MejÝa Rangel       | 2008-06-17      |            6715
 578947645  | Mario             | Uribe CuÚllar      | 2008-06-30      |            6702
 336247561  | Francisco         | RamÝrez Sandoval   | 2008-08-09      |            6662
 1167705984 | Teresa            | Ibarra Caicedo     | 2008-12-20      |            6529
 1144582366 | David             | Zapata Arias       | 2009-02-20      |            6467
 223974138  | Rodrigo Nelson    | Cabrera Villamizar | 2009-05-02      |            6396
 316655568  | Nubia Natalia     | Henao RamÝrez      | 2009-05-15      |            6383
 1157650796 | Sara              | Losada GutiÚrrez   | 2009-06-09      |            6358                                                     
 571748382  | Marleny           | Pinz¾n Delgado     | 2009-08-08      |            6298
 232229735  | Libardo           | Lasso Serrano      | 2010-02-09      |            6113
 811782754  | Nicolßs           | Gonzßlez RodrÝguez | 2010-03-05      |            6089
 554620706  | Nelson Samuel     | MejÝa Vera         | 2010-03-14      |            6080
 1143372198 | Nelson            | Chamorro Vera      | 2010-04-17      |            6046
 10424994   | Cristian          | Herrera Zuluaga    | 2010-04-28      |            6035
 102695503  | SofÝa             | MarÝn Rojas        | 2010-05-06      |            6027
 290597798  | Rosa              | RÝos Cßrdenas      | 2010-06-24      |            5978
 314914042  | Olga Luisa        | Zapata Rivera      | 2010-09-15      |            5895
 1015411133 | Santiago          | Berm·dez Ruiz      | 2010-11-30      |            5819                                                     
 360667240  | Gabriela Carolina | Ni±o Ortiz         | 2010-12-08      |            5811
 1090968710 | Ruth              | RodrÝguez PÚrez    | 2010-12-11      |            5808
 1001674689 | Jaime Santiago    | CuÚllar Cßceres    | 2011-01-17      |            5771
 21358854   | Manuela Yolanda   | Benavides Delgado  | 2011-02-27      |            5730
 478787290  | Ëscar             | Rivera Tovar       | 2011-03-11      |            5718
 1146928395 | Julißn Germßn     | Delgado Villamizar | 2011-11-24      |            5460
 647948165  | Yesenia           | Rinc¾n Caicedo     | 2011-12-05      |            5449
 388108693  | Miguel            | Villamizar Correa  | 2011-12-30      |            5424
 649244180  | RocÝo             | Bastidas Sußrez    | 2012-01-07      |            5416
 797017145  | Isabella          | Barrera Cabrera    | 2012-01-31      |            5392                                                     
 974842644  | Arturo            | Hernßndez Uribe    | 2012-06-16      |            5255
 302894847  | Reinaldo Jorge    | Sßnchez Agudelo    | 2012-07-06      |            5235
 641839251  | EfraÝn            | Ortega Correa      | 2012-07-19      |            5222
 549847293  | Wilmer            | PÚrez Chamorro     | 2012-09-16      |            5163
 938685616  | Sandra            | Sandoval Ortega    | 2013-01-06      |            5051
 1001030458 | Liliana Luisa     | Chamorro VÚlez     | 2013-01-09      |            5048
 783174188  | Luz               | Osorio CuÚllar     | 2013-05-28      |            4909
 699883472  | Ramiro            | Parra Trujillo     | 2013-07-07      |            4869
 860920785  | Hugo              | JimÚnez Parra      | 2013-09-02      |            4812
 1185523747 | Elsa              | Ibarra Molina      | 2013-09-15      |            4799                                                     
 299842243  | Wilmer            | Montoya RodrÝguez  | 2013-11-10      |            4743
 931079279  | Edilma            | ┴lvarez Bonilla    | 2013-12-14      |            4709
 406352604  | Jaime Wilmer      | Ortiz Vargas       | 2014-01-22      |            4670
 970305595  | Alejandra Andrea  | Mosquera Moreno    | 2014-02-21      |            4640
 343256743  | Dora              | Hernßndez Correa   | 2014-03-08      |            4625
 870240973  | Jairo             | Molina Pab¾n       | 2014-03-13      |            4620
 89157555   | Heriberto         | JimÚnez Cßceres    | 2014-07-17      |            4494
 1090578662 | Gladys Patricia   | Sandoval Duarte    | 2014-08-04      |            4476
 503402827  | Heriberto AndrÚs  | CuÚllar Romero     | 2014-09-05      |            4444
 91091638   | Daniel            | Bonilla Duarte     | 2014-09-29      |            4420                                                     
 520313287  | Beatriz           | Hernßndez Mu±oz    | 2014-12-04      |            4354
 918053770  | Nubia Juliana     | Caicedo Medina     | 2014-12-15      |            4343
 333176982  | Edilma            | Rivera Rivera      | 2014-12-20      |            4338
 449792023  | Myriam            | Sandoval Osorio    | 2015-01-12      |            4315
 550696749  | Viviana           | Arias RamÝrez      | 2015-04-16      |            4221
 211924295  | ┴lvaro            | Valencia Rivera    | 2015-05-03      |            4204
 95544811   | InÚs              | Duque Cßrdenas     | 2015-05-19      |            4188
 525766302  | Gustavo           | Ibarra Agudelo     | 2015-06-30      |            4146
 977130251  | InÚs LucÝa        | DÝaz CuÚllar       | 2015-07-08      |            4138
 410167282  | Gustavo Pedro     | Romero Pinz¾n      | 2015-08-25      |            4090                                                     
 24999630   | Esperanza         | Romero Betancur    | 2015-08-30      |            4085
 382766013  | Diana             | Londo±o Ramos      | 2015-11-05      |            4018
 1148017860 | Fabio             | Hernßndez Lasso    | 2015-11-16      |            4007
 805029874  | Pedro             | RamÝrez Barrera    | 2015-11-19      |            4004
 897433183  | Patricia Amparo   | Rojas RÝos         | 2015-12-25      |            3968
 338193839  | Laura             | Zuluaga Benavides  | 2016-01-19      |            3943
 712758473  | Wilson            | L¾pez Villamizar   | 2016-02-19      |            3912
 42562183   | RocÝo Manuela     | Jaimes Cardona     | 2016-03-04      |            3898
 749444168  | Emilio            | Delgado Molina     | 2016-03-11      |            3891
 1180237528 | ┴ngela Beatriz    | Sandoval Berm·dez  | 2016-03-18      |            3884                                                     
 793512107  | Sandra            | Henao Jaimes       | 2016-03-31      |            3871
 587550249  | Gustavo           | Mosquera L¾pez     | 2016-05-14      |            3827
 765824560  | Manuel            | Quintero Arias     | 2016-07-15      |            3765
 1168119731 | Felipe Camilo     | RÝos Ospina        | 2016-07-27      |            3753
 756369749  | Andrea            | Cardona Ruiz       | 2016-07-29      |            3751
 754524782  | Diana             | Lozano Rinc¾n      | 2016-12-01      |            3626
 718906996  | Nelson            | Bedoya VÚlez       | 2016-12-09      |            3618
 35147265   | Carlos            | GutiÚrrez Pab¾n    | 2016-12-12      |            3615
 1117597835 | Cecilia Lorena    | DÝaz GarcÝa        | 2017-01-11      |            3585
 224364120  | Valentina         | Zapata Valencia    | 2017-01-12      |            3584                                                     
 1061690671 | Guillermo Pedro   | Arias RodrÝguez    | 2017-01-27      |            3569
 1060881964 | InÚs              | PolanÝa Bedoya     | 2017-03-05      |            3532
 746737893  | Natalia           | Ramos Vargas       | 2017-03-11      |            3526
 878614263  | Stella            | MarÝn Osorio       | 2017-03-13      |            3524
 734158943  | Alberto           | Bastidas RodrÝguez | 2017-03-21      |            3516
 644277425  | David             | Jaimes Ruiz        | 2017-05-24      |            3452
 276159211  | Francisco         | Restrepo Perdomo   | 2017-06-28      |            3417
 723123018  | Diego             | Ni±o Hernßndez     | 2017-07-04      |            3411
 599185252  | EfraÝn            | Pinz¾n Cabrera     | 2017-07-23      |            3392
 437443011  | Julißn            | Pe±a Betancur      | 2017-08-10      |            3374                                                     
 92240743   | Mario             | RÝos Ibarra        | 2017-09-05      |            3348
 433286601  | Esperanza         | Jaimes Vera        | 2017-11-07      |            3285
 1196615388 | Fernando          | Burbano Fl¾rez     | 2017-11-22      |            3270
 1109661392 | Fabio Luis        | Valencia RamÝrez   | 2017-12-20      |            3242
 700421194  | Teresa            | Torres Giraldo     | 2017-12-21      |            3241
 1089620113 | Myriam Yuliana    | Arango Narvßez     | 2018-02-23      |            3177
 135734682  | Diego             | Rivera JimÚnez     | 2018-03-26      |            3146
 254078333  | Alberto           | Ortiz Lasso        | 2018-04-22      |            3119
 808693611  | Natalia           | Ospina Burbano     | 2018-05-04      |            3107
 522380895  | InÚs              | Erazo Hernßndez    | 2018-05-11      |            3100                                                     
 425322677  | Luz Martha        | Jaimes Berm·dez    | 2018-07-11      |            3039
 455264704  | Valentina         | Mora Rangel        | 2018-08-12      |            3007
 754745808  | Jairo             | Romero GutiÚrrez   | 2018-08-15      |            3004
 463842401  | RocÝo             | ┴lvarez Cßrdenas   | 2018-09-19      |            2969
 1050862619 | Yesenia           | Silva Henao        | 2018-11-08      |            2919
 590872233  | Reinaldo          | Romero Agudelo     | 2019-02-22      |            2813
 356807172  | Aura              | Torres Ortega      | 2019-03-11      |            2796
 781810115  | Diana Isabella    | Molina Moreno      | 2019-04-12      |            2764
 850962053  | David             | Perdomo Mosquera   | 2019-05-15      |            2731
 737383707  | Yesenia           | Berm·dez Henao     | 2019-06-03      |            2712                                                     
 536338741  | Juliana Ana       | MejÝa MejÝa        | 2019-06-14      |            2701
 443361503  | RubÚn             | Villamizar MejÝa   | 2019-06-18      |            2697
 610678466  | Nicolßs           | Sßnchez RodrÝguez  | 2019-10-31      |            2562
 716388403  | Emilio            | Carrillo Perdomo   | 2019-11-08      |            2554
 548464915  | Yuliana           | RodrÝguez Vargas   | 2019-11-10      |            2552
 134410171  | Orlando           | Salazar Berm·dez   | 2019-12-13      |            2519
 697099528  | Fabio             | DÝaz CuÚllar       | 2019-12-26      |            2506
 1196659084 | Ivßn Jaime        | Cßceres Galvis     | 2020-02-17      |            2453
 51802865   | Alejandro         | Narvßez PolanÝa    | 2020-02-23      |            2447
 870262750  | Gloria Aura       | RÝos Vera          | 2020-03-03      |            2438                                                     
 622105662  | Alejandra         | Molina Torres      | 2020-03-27      |            2414
 283636187  | Gustavo           | Moreno L¾pez       | 2020-04-07      |            2403
 614786053  | ┴lvaro            | Correa RÝos        | 2020-05-17      |            2363
 356207226  | Luisa             | Caicedo Restrepo   | 2020-06-09      |            2340
 802182926  | Antonio           | DÝaz VÚlez         | 2020-07-04      |            2315
 1171130241 | Elsa              | MejÝa Vera         | 2020-07-24      |            2295
 65169775   | Aura              | Castillo Henao     | 2020-08-08      |            2280
 1084721334 | Javier            | Gonzßlez Zuluaga   | 2020-09-01      |            2256
 374080696  | Fernando          | Galvis Duarte      | 2020-09-13      |            2244
 517430119  | Emilio            | Berm·dez Rojas     | 2020-10-04      |            2223                                                     
 273193028  | Erika             | RÝos Sußrez        | 2020-10-22      |            2205
 942530661  | Javier            | Pinz¾n JimÚnez     | 2020-10-28      |            2199
 811557533  | Adriana           | Mosquera Ospina    | 2020-10-28      |            2199
 502796073  | AncÝzar           | Arango Silva       | 2020-11-24      |            2172
 1185160275 | Ramiro            | Zuluaga Duque      | 2020-11-24      |            2172
 765371022  | Luisa             | Montoya MejÝa      | 2021-01-12      |            2123
 922724022  | Esteban           | Salazar Parra      | 2021-01-22      |            2113
 727945493  | Gloria            | MarÝn Rivera       | 2021-01-28      |            2107
 1143295403 | Liliana           | PÚrez Parra        | 2021-01-31      |            2104
 914044314  | AncÝzar Cristian  | PolanÝa Delgado    | 2021-02-24      |            2080                                                     
 966970818  | Gustavo           | Parra Ortiz        | 2021-03-16      |            2060
 550093228  | Ruth              | JimÚnez Guerrero   | 2021-03-19      |            2057
 728596637  | Mauricio          | Pe±a Bastidas      | 2021-03-21      |            2055
 179146863  | Dora LucÝa        | Uribe Arango       | 2021-04-18      |            2027
 434293037  | Hernando Miguel   | JimÚnez Restrepo   | 2021-05-02      |            2013
 530206966  | Daniela           | Lozano Castro      | 2021-05-04      |            2011
 756405214  | Gloria            | Tovar Benavides    | 2021-05-16      |            1999
 56877324   | Javier            | Burbano Molina     | 2021-06-09      |            1975
 813687871  | AndrÚs Emilio     | Valencia Parra     | 2021-06-17      |            1967
 166716892  | Ricardo           | Castro Contreras   | 2021-06-18      |            1966                                                     
 155634182  | Luz               | Ni±o Guerrero      | 2021-06-20      |            1964
(230 rows)
*/