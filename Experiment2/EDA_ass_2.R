# -------------------------------
# ROLL NO : 23BAD083
# -------------------------------

library(ggplot2)
library(dplyr)
library(lubridate)

df <- read.csv("C:\\Users\\jodxo\\Downloads\\2.ecommerce_transactions.csv")

df$Transaction_Date <- as.Date(df$Transaction_Date)

df$Month <- format(df$Transaction_Date, "%Y-%m") 

ggplot(df, aes(x = Transaction_Amount)) +
  geom_histogram(binwidth = 200, fill = "steelblue", color = "white") +
  labs(title = "Distribution of Transaction Amounts",
       x = "Transaction Amount (INR)",
       y = "Frequency") +
  theme_minimal()

ggplot(df, aes(x = Product_Category, y = Transaction_Amount, fill = Product_Category)) +
  geom_boxplot() +
  labs(title = "Outlier Detection: Transaction Amount by Category",
       x = "Product Category",
       y = "Transaction Amount") +
  theme_minimal()

heatmap_data <- df %>%
  group_by(Month, Product_Category) %>%
  summarise(Total_Sales = sum(Transaction_Amount), .groups = 'drop')

ggplot(heatmap_data, aes(x = Month, y = Product_Category, fill = Total_Sales)) +
  geom_tile(color = "white") +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "Heatmap of Monthly Sales Intensity",
       x = "Month",
       y = "Product Category",
       fill = "Sales") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) # Rotate dates for readability