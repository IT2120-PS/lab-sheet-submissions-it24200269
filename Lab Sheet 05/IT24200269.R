setwd("C:\\Users\\VICTUS\\Desktop\\it24200269")
delivary_times<-read.table("Exercise - Lab 05.txt",header = TRUE, sep = ",")
fix(delivary_times)
print(delivary_times)
histogram<- hist.default(delivary_times$Delivery_Time_.minutes,main = "Histogram of delivery times",
                         bresks = seq(20,70,length = 10 ,xlab = "delivery times(minutes)"),
                         ylab = "frequency",right = FALSE ,col = "lightblue",border = "black")
freq<- histogram$counts
freq
cum_freq<-cumsum(freq)
cum_freq
breaks<-histogram$breaks
breaks
mids <-histogram$mids
mids
plot(mids,freq,type = "l",main= "frequency ploygon (ogive) of delivery times ",
     xlab = "delivery time(minutes)",
     ylab = "cumulative frequency",
     col= "red",
     pch= 16)
new <-c()
for (i in 1:length(breaks)) {
  if (i==1){
    new[i]=0
  }else{
    new[i]=cum_freq[i-1]
  }
  
}
plot(breaks,new,type= "l",main= "frequency ploygon (ogive) of delivery times ",
     xlab = "delivery time(minutes)",
     ylab = "cumulative frequency",
     ylim = c (0,max(cum_freq)))