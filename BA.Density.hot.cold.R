fake_density_data <- data.frame(density = c(50, 79, 81, 54, 76, 64, 85, 76, 70, 66, 50, 40, 45, 66, 56, 54, 60, 70, 51, 33), type = c(rep("HS", 10), rep("CS", 10)))

fake_density_data
hot <- fake_density_data[fake_density_data$type == "HS",]
cold <- fake_density_data[fake_density_data$type == "CS",]
t.test(hot$density, cold$density)


BA.hs.cs <- data.frame(basal.area = c(5.991124528, 1.626441787, 7.319918737, 0.147699361, 16.29587045, 3.820641361, 6.789358716, 2.377722254, 10.73237689, 17.3610667, 0.501023814, 11.3512065, 10.08890279, 14.361832, 15.63041567), type = c(rep("CS", 8), rep("HS", 7)))
BA.hs.cs
hot <- BA.hs.cs[BA.hs.cs$type == "HS",]
cold <- BA.hs.cs[BA.hs.cs$type == "CS",]
t.test(hot$basal.area, cold$basal.area)


Density.hs.cs <- data.frame(density = c(81.66666667, 26.66666667, 130, 6.666666667, 90, 6.666666667, 55, 110, 186.6666667, 376.6666667, 80, 363.3333333, 101.6666667, 140, 96.66666667), type = c(rep("CS", 8), rep("HS", 7)))
Density.hs.cs

hot <- Density.hs.cs[Density.hs.cs$type == "HS",]
cold <- Density.hs.cs[Density.hs.cs$type == "CS",]
t.test(hot$density, cold$density)
                     
                                      
                                      
                                      