#---------------------------------------------
# Name : POOJITH M | Roll No: 23BAD083
#---------------------------------------------

# 1. Load the dataset
data <- read.csv("C:\\Users\\jodxo\\Downloads\\4.traffic_accidents.csv")

# 2. Aggregate data to calculate Accident Frequency (Count)
# Group by Vehicles, Casualties, Severity, and Type
agg_data <- aggregate(list(Frequency = rep(1, nrow(data))), 
                      by = list(Vehicles = data$Vehicles_Involved, 
                                Casualties = data$Casualties, 
                                Severity = data$Severity, 
                                Type = data$Accident_Type), 
                      FUN = sum)

# 3. Create Encodings
# Color Gradient for Severity (Ordered: Minor -> Major -> Fatal)
agg_data$Severity <- factor(agg_data$Severity, levels = c("Minor", "Major", "Fatal"))
# Create a color ramp from Gold (Minor) to Red (Fatal)
colors <- colorRampPalette(c("gold", "red"))(3)[agg_data$Severity]

# Shapes for Accident Type
shapes <- as.numeric(as.factor(agg_data$Type)) + 15 # Base shapes 16, 17, 18...

# 4. Generate Plot
plot(agg_data$Vehicles, agg_data$Casualties,
     cex = agg_data$Frequency * 2,         # Size -> Frequency (scaled for visibility)
     col = colors,                         # Color -> Severity (Gradient)
     pch = shapes,                         # Shape -> Accident Type
     main = "Accident Severity, Frequency & Type",
     xlab = "Vehicles Involved", ylab = "Casualties")

# Add Legends
legend("topright", legend = levels(agg_data$Severity), fill = colorRampPalette(c("gold", "red"))(3), title = "Severity")
legend("bottomright", legend = levels(as.factor(agg_data$Type)), pch = unique(shapes), title = "Type")