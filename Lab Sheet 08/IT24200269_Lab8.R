setwd("C:\\Users\\HOME\\OneDrive\\Desktop\\IT24200269\\Lab 08")
getwd()

weights_data <- data<-read.table("Exercise - LaptopsWeights.txt", header=TRUE)
weights <- weights_data$Weight

#Q1
pop_mean <- mean(weights)
pop_sd   <- sd(weights)

# Population Mean
pop_mean
# Population Standard Deviation
pop_sd

#Q2
set.seed(123)  
n_samples <- 25
n_size    <- 6

sample_means <- numeric(n_samples)
sample_sds   <- numeric(n_samples)

for(i in 1:n_samples){
  samp <- sample(weights, n_size, replace = TRUE)
  sample_means[i] <- mean(samp)
  sample_sds[i]   <- sd(samp)
}

# all 25 sample means
sample_means
# all 25 sample standard deviations
sample_sds

#Q3
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means   <- sd(sample_means)

# Mean of the 25 sample means
mean_of_sample_means
# SD of the 25 sample means
sd_of_sample_means
