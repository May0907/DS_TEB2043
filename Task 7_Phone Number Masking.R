# Prompt name and phone number
name <- readline(prompt = "Enter name: ")
phone <- readline(prompt = "Enter phone number: ")
# Convert name to uppercase
name_upper <- toupper(name)
# Extract first 3 and last 4 digits of phone number
phone_display <- paste0(
  substr(phone, 1, 3),
  "****",
  substr(phone, nchar(phone) - 3, nchar(phone))
)
# Result
cat("Name:", name_upper)
cat("Phone Number:", phone_display)
cat("Hi,", name_upper, ". A verification code has been sent to", phone_display)
