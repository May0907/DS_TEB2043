#Rename column
my_matrix <- matrix(c(1,2,3,4,5,6), nrow=2)
print(my_matrix)
df_from_matrix <- data.frame(my_matrix)
print(df_from_matrix)
names(df_from_matrix) <- c('col_1','col_2','col_3')
print(df_from_matrix)

# Create data frame from list of vectors
my_list <- list(Rating=1:4,
                Animal=c('Koala', 'Hedgehog', 'Sloth', 'Panda'),
                Country=c('Australia', 'Italy', 'Peru', 'China'),
                avg_sleep_hours=c(21,18,17,10))
print(my_list)
super_sleepers <- data.frame(my_list)
print(super_sleepers)

#Create data frame
emp.data <- data.frame(
  emp_id = c (1.5),
  emp_name = c("Rick", "Dan", "Michelle", "Ryan", "Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25)
)
print(emp.data)
str(emp.data)
print(summary(emp.data))
print(dim(emp.data))
print(ncol(emp.data))
print(nrow(emp.data))
print(emp.data$salary)
print(emp.data[["salary"]])
print(emp.data[3])
result <- emp.data[1:2,]
print(result)

# Add 'department' column in data frame
emp.data$dept <- c("IT","Operations","IT","HR","Finance")
v <- emp.data
print(v)

# Create new data frame and add 'start_date' column
emp.newdata <- cbind(emp.data,
start_date = as.Date(c("2012-01-01","2013-09-23","2014-11-15",
"2014-05-11","2015-03-27")))

# Second data frame
emp.newdata <- data.frame(
  emp_id=c(6:8),
  emp_name=c("Rasmi","Pranab","Tusar"),
  salary=c(578.0,722.5,632.8),
  dept=c("IT","Operations","Finance")
)

# Bind two data frames
emp.finaldata <- rbind(emp.data,emp.newdata)
print(emp.finaldata)

# Remove second row and first column
result <- emp.data[-c(2),-c(1)]
print(result)
