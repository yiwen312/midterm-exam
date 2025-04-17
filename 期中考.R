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

#第三題
library(ggplot2)
g <- ggplot(df, mapping = aes(x=Weight, y=Battery))
g+geom_point()+ggtitle("點陣圖") + xlab("手機重量") + ylab("電池容量")

#第四題
library(car)
leveneTest(PriceUSA~Company, data=df) #p值=5.218e-14 < 0.05，拒絕H0，表示不同廠牌中美國售價之變異數不相等

#第五題
aov1 <- aov(Weight~Company, data=df) 
summary(aov1) #p值=3.55e-05 < 0.05，結果具有統計顯著性，拒絕H0，表示不同廠牌中手機重量之變異數不相等

#第六題
aov2 <- aov(Weight~Company+Battery, data=df) 
summary(aov2) 
#Company的p值<2e-16，表示廠牌對手機重量具顯著差異
#Battery的p值<2e-16，表示電池容量對手機重量具顯著差異

#第七題
nrow(df[df$Year==2024 & df$Company=="Apple",])/nrow(df[df$Year==2024,]) #0.12

