# threeRuleSmooth works

    Code
      print(as.ts(threeRuleSmooth(turnover, construction)), digits = 4L)
    Output
             Jan   Feb   Mar   Apr   May   Jun   Jul   Aug   Sep   Oct   Nov   Dec
      2000 11.07 10.91 11.25 11.35 11.47 11.50 11.78 11.71 11.75 11.79 11.78 12.04
      2001 11.94 12.10 12.03 11.93 11.98 11.95 11.70 12.12 11.76 12.15 12.08 12.18
      2002 12.02 11.97 11.99 12.36 12.30 12.24 12.22 12.42 12.45 12.58 12.32 12.42
      2003 12.54 12.75 12.76 12.78 12.58 12.93 12.98 13.26 13.17 13.34 13.33 13.47
      2004 13.75 13.76 13.74 14.02 13.99 14.01 14.18 13.94 14.34 14.47 14.53 14.58
      2005 14.52 14.58 14.67 14.83 14.81 14.92 15.27 15.36 15.52 15.49 15.90 15.55
      2006 15.75 15.93 16.16 16.14 16.51 16.69 16.83 16.74 16.94 16.85 17.13 17.54
      2007 17.64 17.83 17.90 17.75 18.23 18.19 18.12 18.11 18.20 18.34 18.00 18.38
      2008 18.94 19.05 19.50 19.04 18.78 19.07 19.01 19.11 18.88 18.95 18.29 18.39
      2009 18.01 17.95 17.86 17.86 17.60 17.62 17.68 17.48 17.31 17.43 17.35 17.66
      2010 17.33 17.02 16.99 17.06 17.31 17.49 17.62 17.52 17.89 17.77 18.15 17.96
      2011 18.05 18.08 18.22 18.27 18.43 18.26 18.76 18.23 18.34 18.30 18.78 18.78
      2012 18.45 18.17 18.49 18.43 18.52 18.33 18.66 18.31 18.18 18.34 18.01 18.01
      2013 18.34 18.06 17.64 18.32 18.31 18.16 18.45 18.55 18.36 18.25 18.69 18.97
      2014 17.91 18.29 18.25 18.12 17.81 18.36 17.89 18.47 17.98 17.88 17.56 17.78
      2015 17.52 17.47 17.45 17.37 17.02 17.46 17.36 17.27 17.25 17.39 17.58 17.36
      2016 17.26 17.57 17.24 17.13 17.55 17.14 17.19 17.22 17.68 17.55 17.84 17.63
      2017 17.77 17.98 18.44 17.61 18.77 19.05 18.60 18.32 18.53 18.55 18.71 19.25
      2018 19.13 19.17 18.46 19.26 18.70 19.39 18.99 19.60 19.27 19.84 19.61 19.88
      2019 19.88 20.14 20.61 20.61 20.58 20.05 20.06 21.21 20.61 20.46 20.50 20.38
      2020 20.47 19.67 18.70 16.20 14.88                                          

---

    Code
      print(as.ts(threeRuleSmooth(turnover, construction, start.benchmark = 2004,
        end.benchmark = 2017, start.domain = c(2004, 1), end.domain = c(2030, 12))),
      digits = 4L)
    Output
             Jan   Feb   Mar   Apr   May   Jun   Jul   Aug   Sep   Oct   Nov   Dec
      2004 13.79 13.78 13.75 14.03 13.99 14.01 14.17 13.92 14.32 14.45 14.52 14.56
      2005 14.51 14.57 14.66 14.83 14.81 14.92 15.27 15.37 15.53 15.49 15.91 15.55
      2006 15.75 15.93 16.16 16.14 16.51 16.69 16.83 16.74 16.94 16.85 17.13 17.54
      2007 17.64 17.82 17.90 17.75 18.23 18.19 18.12 18.11 18.20 18.34 18.00 18.38
      2008 18.94 19.05 19.50 19.04 18.78 19.07 19.01 19.11 18.88 18.95 18.29 18.39
      2009 18.01 17.95 17.86 17.86 17.60 17.62 17.68 17.48 17.31 17.43 17.35 17.66
      2010 17.33 17.02 16.99 17.06 17.31 17.49 17.62 17.52 17.89 17.77 18.15 17.96
      2011 18.05 18.08 18.22 18.27 18.43 18.26 18.76 18.23 18.34 18.30 18.78 18.78
      2012 18.45 18.17 18.49 18.43 18.52 18.33 18.66 18.31 18.18 18.34 18.01 18.01
      2013 18.34 18.06 17.64 18.32 18.31 18.16 18.45 18.55 18.36 18.25 18.69 18.97
      2014 17.91 18.29 18.25 18.12 17.81 18.36 17.88 18.47 17.98 17.88 17.56 17.78
      2015 17.52 17.47 17.45 17.37 17.02 17.47 17.36 17.27 17.25 17.39 17.57 17.35
      2016 17.26 17.56 17.23 17.13 17.55 17.14 17.18 17.22 17.68 17.55 17.86 17.65
      2017 17.79 18.01 18.47 17.64 18.80 19.07 18.61 18.32 18.52 18.52 18.66 19.18
      2018 19.03 19.05 18.34 19.11 18.55 19.24 18.83 19.45 19.13 19.71 19.49 19.79
      2019 19.82 20.10 20.60 20.61 20.61 20.09 20.11 21.28 20.69 20.53 20.58 20.46
      2020 20.55 19.74 18.77 16.26 14.92    NA    NA    NA    NA    NA    NA    NA
      2021    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA
      2022    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA
      2023    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA
      2024    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA
      2025    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA
      2026    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA
      2027    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA
      2028    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA
      2029    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA
      2030    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA    NA

---

    Code
      print(smooth1, digits = 4L)
    Output
      
      Call:
      threeRuleSmooth(hfserie = indic, lfserie = account)
      
      delta rate:
      -0.000178
      
                 Jan       Feb       Mar       Apr       May       Jun       Jul
      2000              0.0000    1.9753    4.6995    4.9498   -0.9445   -6.9437
      2001  -57.2822  -62.1718  -71.2520  -78.6743  -79.3641  -76.7333  -75.0075
      2002 -116.6911 -120.5049 -130.5864 -142.0525 -149.5754 -148.7961 -138.7579
      2003 -165.0131 -157.9625 -143.7539 -122.8790 -119.2719 -125.6580 -145.3108
      2004 -155.7975 -154.0743 -140.8110 -122.1208 -105.8181  -96.8050  -88.9518
      2005 -143.5343 -149.4804 -158.0659 -161.1105 -164.1459 -170.2355 -175.8619
      2006  -78.5245  -73.7975  -79.8754  -96.0189 -102.3890  -96.3398  -81.1288
      2007 -141.7151 -131.2312 -132.0636 -137.4425 -141.0169 -137.8910 -128.6561
      2008 -115.2890 -112.4110 -110.7385 -113.3757 -110.1556 -103.1492  -91.7240
      2009  -86.9065  -95.1899  -97.9589 -100.0944 -103.9123 -112.7803 -116.7884
      2010  -95.8647 -102.0399 -100.8683  -92.4804  -97.8003 -114.8528 -147.7439
      2011  -93.1399  -89.9010  -88.8420  -89.0195  -85.6425  -84.5588  -84.7754
      2012 -156.4900 -152.2727 -129.9469  -93.4127  -79.6077  -90.9741 -126.2839
      2013 -205.7405 -203.2043 -204.2716 -202.0909 -184.3135 -153.2059 -105.5414
      2014 -155.9183 -141.3706 -136.0224 -136.6325 -134.2644 -131.2582 -127.2426
      2015 -142.4055 -163.6499 -196.4536 -243.2910 -267.3690 -272.0614 -253.2164
      2016 -158.0475 -168.5840 -173.3200 -169.3146 -167.9664 -172.5625 -175.6637
                 Aug       Sep       Oct       Nov       Dec
      2000  -17.0281  -27.6096  -36.0800  -43.8876  -51.6895
      2001  -79.2098  -85.2940 -100.5275 -111.6720 -118.9990
      2002 -133.6972 -134.6301 -137.7091 -144.8997 -155.8926
      2003 -151.5219 -150.7349 -137.2448 -135.2101 -141.7659
      2004  -90.3723  -99.7738 -115.9618 -131.8345 -138.0659
      2005 -170.7073 -157.0597 -136.7338 -116.8266  -94.3636
      2006  -84.8374 -107.5918 -144.1419 -162.5974 -158.3752
      2007 -129.0998 -128.8171 -128.6656 -129.9713 -123.3160
      2008  -81.1127  -75.1866  -70.6523  -70.7314  -78.2322
      2009 -110.3929 -103.4137  -86.7285  -78.4324  -81.8652
      2010 -158.7555 -151.7728 -125.3813 -107.1914  -97.7773
      2011  -94.2235 -105.3720 -117.8071 -131.6408 -147.5816
      2012 -156.1437 -174.4928 -186.2951 -197.5393 -204.6904
      2013  -89.5760 -102.8845 -142.0029 -166.0854 -171.7261
      2014 -121.2124 -118.5241 -119.7392 -125.3717 -131.4606
      2015 -226.9995 -201.6835 -169.5107 -149.2309 -146.8361
      2016 -181.5231 -183.5486 -185.9052                    

---

    Code
      print(smooth2, digits = 4L)
    Output
      
      Call:
      threeRuleSmooth(hfserie = indic, lfserie = account, start.benchmark = c(2003, 
          3), end.benchmark = c(2007, 4), start.domain = c(2004, 1), 
          end.domain = c(2017, 12), start.delta.rate = c(2007, 1), 
          end.delta.rate = c(2008, 4))
      
      delta rate:
      -0.07886
      
               Jan     Feb     Mar     Apr     May     Jun     Jul     Aug     Sep
      2004 -162.58 -151.87 -136.24 -120.73 -106.23  -97.79  -89.27  -90.29  -99.54
      2005 -143.55 -149.48 -158.05 -161.11 -164.15 -170.24 -175.86 -170.71 -157.06
      2006  -78.52  -73.80  -79.88  -96.02 -102.39  -96.34  -81.13  -84.84 -107.59
      2007 -141.74 -131.24 -132.03 -137.35 -140.98 -138.02 -129.07 -129.29 -128.21
      2008 -123.66 -122.84 -119.23 -116.46 -111.01 -104.63  -96.09  -87.10  -82.14
      2009  -74.87  -76.45  -76.62  -79.50  -82.25  -87.22  -86.46  -83.97  -87.36
      2010 -101.12 -100.06  -97.34  -92.79  -93.50  -96.60 -103.13 -103.73 -102.90
      2011  -86.72  -82.39  -79.99  -78.58  -74.85  -73.85  -74.71  -79.82  -81.72
      2012  -85.79  -87.00  -86.46  -87.02  -87.81  -89.17  -87.96  -89.31  -89.48
      2013  -97.41  -95.69  -94.92  -91.92  -89.03  -87.03  -83.77  -80.30  -76.89
      2014  -69.35  -64.97  -61.97  -59.20  -56.09  -53.54  -51.31  -48.32  -46.70
      2015  -50.13  -52.13  -54.00  -55.73  -55.23  -54.07  -51.58  -48.68  -47.08
      2016  -39.95  -39.44  -38.45  -36.48  -34.88  -34.29  -33.13  -32.45  -31.05
      2017      NA      NA      NA      NA      NA      NA      NA      NA      NA
               Oct     Nov     Dec
      2004 -115.88 -131.86 -138.12
      2005 -136.73 -116.83  -94.36
      2006 -144.14 -162.60 -158.38
      2007 -126.80 -129.18 -125.98
      2008  -77.92  -74.89  -76.07
      2009  -91.24  -94.81  -99.51
      2010  -99.48  -95.56  -92.30
      2011  -80.36  -81.48  -85.01
      2012  -91.62  -94.52  -96.69
      2013  -73.25  -72.18  -71.26
      2014  -46.63  -47.75  -48.41
      2015  -45.11  -42.52  -41.21
      2016  -29.71      NA      NA
      2017      NA      NA      NA

# threeRuleSmooth works with set delta

    Code
      print(smooth, digits = 4L)
    Output
      
      Call:
      threeRuleSmooth(hfserie = turnover, lfserie = construction, start.benchmark = 2004, 
          end.benchmark = 2017, start.domain = c(1990, 1), end.domain = c(2030, 
              12), set.delta.rate = 2)
      
      delta rate:
      2
      
                 Jan       Feb       Mar       Apr       May       Jun       Jul
      1990        NA        NA        NA        NA        NA        NA        NA
      1991        NA        NA        NA        NA        NA        NA        NA
      1992        NA        NA        NA        NA        NA        NA        NA
      1993        NA        NA        NA        NA        NA        NA        NA
      1994        NA        NA        NA        NA        NA        NA        NA
      1995        NA        NA        NA        NA        NA        NA        NA
      1996        NA        NA        NA        NA        NA        NA        NA
      1997        NA        NA        NA        NA        NA        NA        NA
      1998        NA        NA        NA        NA        NA        NA        NA
      1999        NA        NA        NA        NA        NA        NA        NA
      2000 -463.1168 -448.1011 -453.4555 -449.1072 -445.8797 -438.9826 -441.5262
      2001 -401.9666 -400.0256 -389.5994 -378.4677 -371.7628 -362.0571 -345.9317
      2002 -296.7949 -285.1480 -275.4859 -273.4414 -261.5989 -250.1517 -239.5374
      2003 -184.3369 -176.7701 -165.8462 -154.6831 -140.6282 -132.1007 -119.7524
      2004  -35.7217  -21.1301   -8.2009    3.0708   12.7308   20.6868   27.2031
      2005   28.3234   24.3938   20.9439   18.0013   15.2792   13.1503   11.6546
      2006   11.7636   13.0643   14.3039   15.2051   16.3635   17.2112   17.8871
      2007   18.8306   18.6718   18.4362   18.0148   18.2610   18.0243   17.8059
      2008   18.6015   18.8066   19.3430   18.9715   18.7803   19.1192   19.0997
      2009   18.1000   18.0104   17.8949   17.8787   17.5966   17.6086   17.6564
      2010   17.3100   17.0034   16.9789   17.0560   17.3106   17.4947   17.6251
      2011   18.0516   18.0714   18.2145   18.2602   18.4173   18.2553   18.7558
      2012   18.4825   18.2081   18.5322   18.4688   18.5516   18.3537   18.6698
      2013   18.2172   17.9242   17.4975   18.1827   18.1813   18.0689   18.3947
      2014   18.3571   18.8169   18.7939   18.6375   18.2554   18.7027   18.0641
      2015   15.8467   15.5467   15.4399   15.4456   15.3774   16.1916   16.6781
      2016   23.5044   24.8822   24.7314   24.2792   23.9496   21.8681   19.7934
      2017   -6.4352  -10.3917  -12.1710  -10.6314   -7.7865   -1.5993    7.2769
      2018  118.3997  143.2859  161.0780  191.4037  207.9811  238.0863  254.3528
      2019  387.2724  411.5652  440.9885  460.8902  480.6210  488.0679  508.5425
      2020  646.1135  641.5645  629.7666  562.5650  532.0133        NA        NA
      2021        NA        NA        NA        NA        NA        NA        NA
      2022        NA        NA        NA        NA        NA        NA        NA
      2023        NA        NA        NA        NA        NA        NA        NA
      2024        NA        NA        NA        NA        NA        NA        NA
      2025        NA        NA        NA        NA        NA        NA        NA
      2026        NA        NA        NA        NA        NA        NA        NA
      2027        NA        NA        NA        NA        NA        NA        NA
      2028        NA        NA        NA        NA        NA        NA        NA
      2029        NA        NA        NA        NA        NA        NA        NA
      2030        NA        NA        NA        NA        NA        NA        NA
                 Aug       Sep       Oct       Nov       Dec
      1990        NA        NA        NA        NA        NA
      1991        NA        NA        NA        NA        NA
      1992        NA        NA        NA        NA        NA
      1993        NA        NA        NA        NA        NA
      1994        NA        NA        NA        NA        NA
      1995        NA        NA        NA        NA        NA
      1996        NA        NA        NA        NA        NA
      1997        NA        NA        NA        NA        NA
      1998        NA        NA        NA        NA        NA
      1999        NA        NA        NA        NA        NA
      2000 -430.8678 -424.9344 -418.7871 -410.9050 -412.6032
      2001 -348.9695 -329.3443 -330.5306 -318.6701 -311.0895
      2002 -233.1268 -223.3852 -215.3123 -200.7788 -192.4891
      2003 -108.7737  -94.1270  -80.8061  -65.8273  -50.9553
      2004   31.1682   34.8539   36.1794   35.5113   32.9486
      2005   10.4090    9.6951    9.3673    9.8324   10.3498
      2006   18.1717   18.6352   18.6226   18.8701   19.1016
      2007   17.6795   17.7078   17.8141   17.5093   17.9446
      2008   19.2332   19.0205   19.0926   18.4283   18.5035
      2009   17.4466   17.2726   17.3895   17.3164   17.6293
      2010   17.5257   17.9028   17.7751   18.1545   17.9632
      2011   18.2296   18.3421   18.3073   18.7895   18.8055
      2012   18.3066   18.1611   18.2961   17.9492   17.9202
      2013   18.5475   18.4299   18.4021   18.9337   19.3202
      2014   18.4461   17.7155   17.3232   16.6813   16.5063
      2015   17.3287   18.2195   19.4484   20.9159   22.0615
      2016   17.0745   14.0749    9.8830    5.2301   -0.2708
      2017   18.4624   32.6681   49.3079   69.1274   93.7721
      2018  283.9133  299.5630  328.8471  344.5254  368.6214
      2019  559.1575  564.5684  581.3355  604.0027  621.8240
      2020        NA        NA        NA        NA        NA
      2021        NA        NA        NA        NA        NA
      2022        NA        NA        NA        NA        NA
      2023        NA        NA        NA        NA        NA
      2024        NA        NA        NA        NA        NA
      2025        NA        NA        NA        NA        NA
      2026        NA        NA        NA        NA        NA
      2027        NA        NA        NA        NA        NA
      2028        NA        NA        NA        NA        NA
      2029        NA        NA        NA        NA        NA
      2030        NA        NA        NA        NA        NA

