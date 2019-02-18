employee <- data.frame(
	emp_id =	c(1:10),
	emp_name =  c("Rick","Dan","Michelle","Ryan","Gary","John","Rock","Matt","Bucky","Miz"),
	salary =  c(623.3,515.2,611.0,729.0,843.25,569.3,897.0,125.45,963.3,365),
	day_of_joining = as.Date(c("01-01-2012","06-02-2012","07-8-2012","06-01-2016","01-04-2012","06-04-2006","08-04-2007","09-04-2011","09-09-2011","09-11-2011")),
	no_of_dependents =c(0,1,3,1,2,3,2,4,2,0)
)

# print(employee)
# cat('\n\n')
# str(employee)
# cat('\n\n')
# print(summary(employee))
# result <- data.frame(employee$emp_name, employee$salary) 
# cat('\n\n')
# print(result)
# subset(employee,emp_id > 5)

filter(employee,emp_id > 5)