#========================================================================
# Regression ============================================================

require(datasets)    #���J��ƶ�
str(cars)            #�T�{��Ƶ��c
head(cars)           #�d��cars�e�������
summary(cars)        #�d�ݸ�Ƥ���
plot(x=cars$speed,   #�NX��Ʃ�cars����speed
     y=cars$dist,    #�NY��Ʃ�cars����dist
     pch=7,          #�I���˦��D��7��
     col=9)          #�C��D��9��
boxplot(cars,        #�N��Ʃ�cars
        col=5:6)     #�C��D��5���P6��

regression <- lm(cars$dist~cars$speed , #�Hdist�@�����ܼ�(Y)�A�Hspeed�@�����ܼ�(X)
                         data = cars)   #��Ƭ�cars
summary(regression)
#========================================================================
# Decision tree =========================================================
HRdata <- read.csv('C:/Users/User/Desktop/R/hr.csv') #Ū����ơA�åB�R�W��HRdata
str(HRdata)                                          #�[���ƫ��A
summary(HRdata)                   #�[���Ƥ���
install.packages("rpart")         #�w��rpart�M��
require(rpart)                    #���Jrpart�M��
HR.model <- rpart(left~. ,        #�Nleft��J���ܼ�(Y)�åB�N��l�ܼƩ�J���ܼ�(X)�A�åB�إߦbHR.model��
                  data = HRdata)  #��ƨ��۩�HRdata
install.packages("partykit")      #�w��partykit�M��
require(partykit)                 #���Jpartykit�M��
HR.tree <- as.party(HR.model)     #�NHR.model�ഫ���𪺫��A
plot(HR.tree)                     #�e�XHR.tree
#========================================================================