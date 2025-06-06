# https://www.statology.org/train-test-split-r/
# https://www.statology.org/logistic-regression-in-r/
# https://www.geeksforgeeks.org/data-type-conversion-in-r/
# https://www.geeksforgeeks.org/precision-recall-and-f1-score-using-r/
# https://www.statology.org/roc-curve-ggplot2/

library(caret)
library(Metrics)
library(ggplot2)
library(pROC)

data <- read.csv("heart_disease_dataset.csv")

data$Disease <- as.logical(data$Disease)

set.seed(1)

sample <- sample(c(TRUE, FALSE), nrow(data), replace=TRUE, prob=c(0.7,0.3))
train  <- data[sample, ]
test   <- data[!sample, ]

model_formula <- Disease ~ Age + Resting.blood.pressure + Serum.cholesterol.in.mg.dl + Maximum.heart.rate.achieved

model <- glm(model_formula, data=train, family=binomial)

options(scipen=999)

summary(model)

prediction <- predict(model, newdata = test, type="response")
# print(head(prediction))

predicted_class <- ifelse(prediction > 0.5, 1, 0)
actual_class <- as.integer(test$Disease)

# One verssion
# xtab <- table(predicted_class, actual_class)
# cm <- caret::confusionMatrix(data = xtab)
# print(cm)

# Another way
recall_score <- recall(actual_class, predicted_class)
precision_score <- precision(actual_class, predicted_class)
f1_score <- f1(actual_class, predicted_class)

cat("Recall:", recall_score, "\n")
cat("Precision:", precision_score, "\n")
cat("F1-Score:", f1_score, "\n")

roc_curve <- roc(actual_class, prediction)
p <- ggroc(roc_curve)
print(p)

auc_value <- auc(roc_curve)
print(paste("AUC:", auc_value))