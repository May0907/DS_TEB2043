# Access vector elements using position. 
t <- c("Sun","Mon","Tue","Wed","Thurs","Fri","Sat") 
u <- t[c(2,3,6)] 
print(u) 
# Access vector elements using logical indexing. 
v <- t[c(TRUE,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE)] 
print(v) 
# Access vector elements using negative indexing. 
x <- t[c(-2,-5)] 
print(x) 
# Access vector elements using 0/1 indexing. 
y <- t[c(0,0,0,0,0,0,1)] 
print(y)