#---------------------------------------------
# Name : POOJITH M | Roll No: 23BAD083
#---------------------------------------------


# 1. Load the dataset
data <- read.csv("C:\\Users\\jodxo\\Downloads\\3.healthcare_data.csv")

# 2. Create Age Groups (e.g., Young, Middle, Senior) for color encoding
# Breaking age into 3 groups
data$Age_Group <- cut(data$Age, breaks = 3, labels = c("Young", "Middle", "Senior"))

# Define colors for each group: Young=Red, Middle=Green, Senior=Blue
colors <- c("red", "green", "blue")[data$Age_Group]

# 3. Generate Scatter Plot Matrix with Color Encoding
# Selecting numeric health indicators: Age, BMI, Blood_Pressure, Glucose_Level, Cholesterol
pairs(data[, 4:7], 
      col = colors, 
      pch = 19, 
      main = "Scatter Plot Matrix by Age Group")

# Add a legend to the plot
legend("topright", legend = levels(data$Age_Group), fill = c("red", "green", "blue"))

# 4. Identify Correlated Health Indicators
cor_matrix <- cor(data[, c("Age", "BMI", "Blood_Pressure", "Glucose_Level", "Cholesterol")])

print(cor_matrix)