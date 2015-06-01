# Mckinsey digital labs Sales Data 

# To calculate probability of an item appearing in a transaction 
get.sales.items <- function(sales) {
  sales.items <- grep('item', colnames(sales), value = TRUE) # Count the no of columns 
  return(sales.items)
}

sales.items <- grep('item', colnames(total.sales), value = TRUE) 
?nrow
?ncolumn

max(sales.data$id)

summary(sales.data)

sales.p<-data.frame(apply(sales.data[2:100000, 2:51], 2,sum) )

sales.p<-sales.p/100000


colnames(sales.p)<- "prob"
length (sales.data)
typeof(sales.p)

hist(sales.p$prob)
plot(sales.p$prob, rownames(sales.p))

sales.p<-rbind(sales.items,sales.p)
sales.p
plot(sales.p)
