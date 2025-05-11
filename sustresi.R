library(ggplot2)

Sys.setlocale("LC_ALL", "Turkish")

su_stresi_verileri <- data.frame(
  Ulke = c("Bahreyn", "K??br??s", "Kuveyt", "L??bnan", "Umman", "Katar", "Birle??ik Arap Emirlikleri",
           "Suudi Arabistan", "??srail", "M??s??r", "Libya", "Yemen", "Botsvana", "??ran", "??rd??n",
           "??ili", "San Marino", "Bel??ika", "Yunanistan", "Tunus", "Namibya", "G??ney Afrika",
           "Irak", "Hindistan", "Suriye"),
  
  Su_Stresi = c(5.00, 5.00, 5.00, 4.97, 4.97, 5.00, 5.00, 4.99, 5.00, 4.97,
                4.96, 4.95, 4.95, 4.95, 4.95, 4.95, 4.95, 4.95, 4.95, 4.95,
                4.95, 4.95, 4.95, 4.95, 4.95)
)


grafik <- ggplot(su_stresi_verileri, aes(x = reorder(Ulke, Su_Stresi), y = Su_Stresi, fill = Ulke)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  labs(title = "Su Stresi ile En Fazla Kar???? Kar????ya Olan ??lkeler",
       x = "??lke",
       y = "Su Stresi") +
  theme_minimal(base_size = 14) +
  theme(legend.position = "none")  # Renk efsanesini gizle


print(grafik)


ggsave("su_kitligi_tr.png", plot = grafik, width = 12, height = 8, dpi = 300)


print(grafik)