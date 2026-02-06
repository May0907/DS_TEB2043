# Prompt two strings from user
string1 <- readline(prompt = "Enter string 1: ")
string2 <- readline(prompt = "Enter string 2: ")
# Compare strings (case-insensitive)
if (tolower(string1) == tolower(string2)) {
  cat("Both inputs are similar: TRUE \n")
} else {
  cat("Both inputs are similar: FALSE.\n")
}
