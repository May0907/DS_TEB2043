# Create data frame
df <- data.frame(
  Name = c("Anastasia", "Dima", "Michael", "Matthew", "Laura", "Kevin", "Jonas"),
  Score = c(12.5, 9.0, 16.5, 12.0, 9.0, 8.0, 19.0),
  Attempts = c(1, 3, 2, 3, 2, 1, 2)
)
print("Data Frame:")
print(df)

# Add 'qualify' column to existing data frame
df$Qualify <- c("yes", "no", "yes", "no", "no", "no", "yes")
print("Data Frame with Qualify Column:")
print(df)

# Add a new row for Emily
new_row <- data.frame(Name = "Emily", Score = 14.5, Attempts = 1, Qualify = "yes")
df <- rbind(df, new_row)

df$Qualify <- as.factor(df$Qualify)
df$Name <- as.factor(df$Name)
print("Data Frame with New Row:")
print(df)

print("Structure of Data Frame:")
str(df)

print("Summary of Data Frame:")
summary(df)

print("Number of Rows:")
nrow(df)

print("Number of Columns:")
ncol(df)
