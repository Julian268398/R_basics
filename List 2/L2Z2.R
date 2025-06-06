# https://www.statology.org/import-csv-into-r/
# https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/subset
# https://www.datamentor.io/r-programming/box-plot#google_vignette


#1
data <- read.csv("heart_disease_dataset.csv")

# count_male <- 0
# count_female <- 0

# for (i in 1:nrow(data)) {
#   if (data$Sex[i] == "male" && data$Disease[i] == "True") {
#     count_male <- count_male + 1
#   }
#   if (data$Sex[i] == "female" && data$Disease[i] == "True") {
#     count_female <- count_female + 1
#   }
# }

# print(paste("Men with disease:", count_male))
# print(paste("Women with disease:", count_female))

# percent_more <- ((count_male - count_female) / count_female) * 100
# print(paste("Men are", round(percent_more, 2), "% more likely to have heart disease"))


#2

# male_d <- subset(data, Sex == "male" & Disease == "True")
# female_d <- subset(data, Sex == "female" & Disease == "True")
# mean_male_d <- mean(male_d$Serum.cholesterol.in.mg.dl, na.rm = TRUE)
# mean_female_d <- mean(female_d$Serum.cholesterol.in.mg.dl, na.rm = TRUE)

# male_h <- subset(data, Sex == "male" & Disease == "False")
# female_h <- subset(data, Sex == "female" & Disease == "False")
# mean_male_h <- mean(male_h$Serum.cholesterol.in.mg.dl, na.rm = TRUE)
# mean_female_h <- mean(female_h$Serum.cholesterol.in.mg.dl, na.rm = TRUE)

# print(paste("Mean serum cholesterol for healthy man is", round(mean_male_h), "and for woman is", round(mean_female_h), "mg/dl. For man with disease it is", round(mean_male_d), "and for women with disease it is", round(mean_female_d)))

#3
# disease_data <- subset(data, Disease == "True")
# hist(disease_data$Age, main = "Age Distribution of Patients with Heart Disease", xlab = "Age", ylab = "Frequency")

# Odp: Najwięcje chorych jest z przedziału 50-55 lat

#4
# h <- subset(data, Disease == "False")
# nh <- subset(data, Disease == "True")
# boxplot(h$Maximum.heart.rate.achieved, nh$Maximum.heart.rate.achieved,
#         names = c("Healthy", "Diseased"),
#         main = "Maximum Heart Rate Achieved",
#         ylab = "Heart Rate (bpm)")

# Odp: Średnia maksymalna częstość akcji serca u zdrowych wynosi około 150, a u chorych około 130. U zdrowych jest większa rozpiętość wartości, a u chorych jest więcej wartości skrajnych.

#5
