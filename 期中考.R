#yiwen為我的Github帳號

rm(list=ls()) #清空資料夾
df<-read.csv("C:/Users/USER/Desktop/R語言/期中考/Mobiles.csv") #讀取檔案

#第一題
apple <- subset(df,Company=="Apple")
samsung <-  subset(df,Company=="Samsung")
summary(apple$PriceUSA) #Apple美國售價中位數:999
summary(samsung$PriceUSA) #Samsung美國售價中位數:699
sd(apple$PriceUSA) #Apple美國售價標準差:247.8969
sd(samsung$PriceUSA) #Samsung美國售價標準差:515.3826

#第二題
boxplot(df$PriceChina~df$Year, data=df, xlab = "年份", ylab = "中國售價", main = "Boxplot")  
hist(df$PriceChina, xlab="中國售價", ylab="交易次數", main="Histogram")

