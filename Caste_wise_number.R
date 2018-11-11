Sahu_Number<- dat1[1,]
Yadav_Number<-dat1[1,]
Kurmi_Number<-dat1[1,]
Sahu_Number$AC<-"1"
Yadav_Number$AC<-"1"
Kurmi_Number$AC<-"1"

dat1<-read.csv("1.csv", header = FALSE)   
dat1$V3<-toupper(dat1$V3)
dat1$V3<-as.data.frame(dat1$V3)
Sahu<- subset(dat1, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"1"
Yadav<- subset(dat1, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"1"
Kurmi<-subset(dat1, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"1"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)

Sahu_Number<-Sahu_Number[-1,]
Yadav_Number<-Yadav_Number[-1,]
Kurmi_Number<-Kurmi_Number[-1,]


dat2<-read.csv("2.csv", header = FALSE)
Sahu<- subset(dat2, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"2"
Yadav<- subset(dat2, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"2"
Kurmi<-subset(dat2, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"2"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat3<-read.csv("3.csv", header = FALSE)
Sahu<- subset(dat3, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"3"
Yadav<- subset(dat3, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"3"
Kurmi<-subset(dat3, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"3"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat4<-read.csv("4.csv", header = FALSE)
Sahu<- subset(dat4, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"4"
Yadav<- subset(dat4, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"4"
Kurmi<-subset(dat4, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"4"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat5<-read.csv("5.csv", header = FALSE)
Sahu<- subset(dat5, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"5"
Yadav<- subset(dat5, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"5"
Kurmi<-subset(dat5, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"5"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat6<-read.csv("6.csv", header = FALSE)
Sahu<- subset(dat6, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"6"
Yadav<- subset(dat6, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"6"
Kurmi<-subset(dat6, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"6"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat7<-read.csv("7.csv", header = FALSE)
Sahu<- subset(dat7, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"7"
Yadav<- subset(dat7, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"7"
Kurmi<-subset(dat7, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"7"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat8<-read.csv("8.csv", header = FALSE)
Sahu<- subset(dat8, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"8"
Yadav<- subset(dat8, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"8"
Kurmi<-subset(dat8, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"8"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat9<-read.csv("9.csv", header = FALSE)
Sahu<- subset(dat9, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"9"
Yadav<- subset(dat9, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"9"
Kurmi<-subset(dat9, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"9"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)

X<-matrix(NA, nrow = dim(Sahu_Num)[1], ncol = 2)
Y<-matrix(NA, nrow = dim(Yadav_Num)[1], ncol = 2)
Z<-matrix(NA, nrow = dim(Kurmi_Num)[1], ncol = 2)

X[,1]<-Sahu_Num$V1
X[,1]<-paste("0", X[,1], sep="")
X[,2]<-Sahu_Num$AC

Y[,1]<-Yadav_Num$V1
Y[,1]<-paste("0", Y[,1], sep="")
Y[,2]<-Yadav_Num$AC

Z[,1]<-Kurmi_Num$V1
Z[,1]<-paste("0", Z[,1], sep="")
Z[,2]<-Kurmi_Num$AC

write.csv(X, "Sahu_Numbers1.csv")
write.csv(Y, "Yadav_Numbers1.csv")
write.csv(Z, "Kurmi_Numbers1.csv")


dat10<-read.csv("10.csv", header = FALSE)
Sahu<- subset(dat10, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"10"
Yadav<- subset(dat10, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"10"
Kurmi<-subset(dat10, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"10"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat11<-read.csv("11.csv", header = FALSE)
Sahu<- subset(dat11, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"11"
Yadav<- subset(dat11, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"11"
Kurmi<-subset(dat11, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"11"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat12<-read.csv("12.csv", header = FALSE)
Sahu<- subset(dat12, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"12"
Yadav<- subset(dat12, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"12"
Kurmi<-subset(dat12, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"12"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat13<-read.csv("13.csv", header = FALSE)
Sahu<- subset(dat13, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"13"
Yadav<- subset(dat13, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"13"
Kurmi<-subset(dat13, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"13"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat14<-read.csv("14.csv", header = FALSE)
Sahu<- subset(dat14, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"14"
Yadav<- subset(dat14, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"14"
Kurmi<-subset(dat14, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"14"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat15<-read.csv("15.csv", header = FALSE)
Sahu<- subset(dat15, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"15"
Yadav<- subset(dat15, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"15"
Kurmi<-subset(dat15, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"15"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat16<-read.csv("16.csv", header = FALSE)
Sahu<- subset(dat16, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"16"
Yadav<- subset(dat16, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"16"
Kurmi<-subset(dat16, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"16"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat17<-read.csv("17.csv", header = FALSE)
Sahu<- subset(dat17, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"17"
Yadav<- subset(dat17, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"17"
Kurmi<-subset(dat17, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"17"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat18<-read.csv("18.csv", header = FALSE)
Sahu<- subset(dat18, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"18"
Yadav<- subset(dat18, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"18"
Kurmi<-subset(dat18, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"18"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat19<-read.csv("19.csv", header = FALSE)
Sahu<- subset(dat19, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"19"
Yadav<- subset(dat19, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"19"
Kurmi<-subset(dat19, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"19"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat20<-read.csv("20.csv", header = FALSE)
Sahu<- subset(dat20, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"20"
Yadav<- subset(dat20, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"20"
Kurmi<-subset(dat20, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"20"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat21<-read.csv("21.csv", header = FALSE)
Sahu<- subset(dat21, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"21"
Yadav<- subset(dat21, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"21"
Kurmi<-subset(dat21, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"21"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat22<-read.csv("22.csv", header = FALSE)
Sahu<- subset(dat22, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"22"
Yadav<- subset(dat22, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"22"
Kurmi<-subset(dat22, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"22"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat23<-read.csv("23.csv", header = FALSE)
Sahu<- subset(dat23, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"23"
Yadav<- subset(dat23, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"23"
Kurmi<-subset(dat23, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"23"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat24<-read.csv("24.csv", header = FALSE)
Sahu<- subset(dat24, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"24"
Yadav<- subset(dat24, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"24"
Kurmi<-subset(dat24, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"24"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat25<-read.csv("25.csv", header = FALSE)
Sahu<- subset(dat25, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"25"
Yadav<- subset(dat25, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"25"
Kurmi<-subset(dat25, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"25"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat26<-read.csv("26.csv", header = FALSE)
Sahu<- subset(dat26, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"26"
Yadav<- subset(dat26, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"26"
Kurmi<-subset(dat26, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"26"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat27<-read.csv("27.csv", header = FALSE)
Sahu<- subset(dat27, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"27"
Yadav<- subset(dat27, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"27"
Kurmi<-subset(dat27, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"27"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat28<-read.csv("28.csv", header = FALSE)
Sahu<- subset(dat28, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"28"
Yadav<- subset(dat28, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"28"
Kurmi<-subset(dat28, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"28"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat29<-read.csv("29.csv", header = FALSE)
Sahu<- subset(dat29, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"29"
Yadav<- subset(dat29, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"29"
Kurmi<-subset(dat29, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"29"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat30<-read.csv("30.csv", header = FALSE)
Sahu<- subset(dat30, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"30"
Yadav<- subset(dat30, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"30"
Kurmi<-subset(dat30, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"30"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat31<-read.csv("31.csv", header = FALSE)
Sahu<- subset(dat31, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"31"
Yadav<- subset(dat31, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"31"
Kurmi<-subset(dat31, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"31"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat32<-read.csv("32.csv", header = FALSE)
Sahu<- subset(dat32, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"32"
Yadav<- subset(dat32, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"32"
Kurmi<-subset(dat32, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"32"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat33<-read.csv("33.csv", header = FALSE)
Sahu<- subset(dat33, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"33"
Yadav<- subset(dat33, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"33"
Kurmi<-subset(dat33, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"33"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat34<-read.csv("34.csv", header = FALSE)
Sahu<- subset(dat34, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"34"
Yadav<- subset(dat34, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"34"
Kurmi<-subset(dat34, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"34"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat35<-read.csv("35.csv", header = FALSE)
Sahu<- subset(dat35, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"35"
Yadav<- subset(dat35, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"35"
Kurmi<-subset(dat35, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"35"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat36<-read.csv("36.csv", header = FALSE)
Sahu<- subset(dat36, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"36"
Yadav<- subset(dat36, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"36"
Kurmi<-subset(dat36, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"36"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat37<-read.csv("37.csv", header = FALSE)
Sahu<- subset(dat37, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"37"
Yadav<- subset(dat37, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"37"
Kurmi<-subset(dat37, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"37"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat38<-read.csv("38.csv", header = FALSE)
Sahu<- subset(dat38, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"38"
Yadav<- subset(dat38, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"38"
Kurmi<-subset(dat38, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"38"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat39<-read.csv("39.csv", header = FALSE)
Sahu<- subset(dat39, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"39"
Yadav<- subset(dat39, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"39"
Kurmi<-subset(dat39, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"39"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat40<-read.csv("40.csv", header = FALSE)
Sahu<- subset(dat40, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"40"
Yadav<- subset(dat40, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"40"
Kurmi<-subset(dat40, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"40"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat41<-read.csv("41.csv", header = FALSE)
Sahu<- subset(dat41, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"41"
Yadav<- subset(dat41, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"41"
Kurmi<-subset(dat41, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"41"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat42<-read.csv("42.csv", header = FALSE)
Sahu<- subset(dat42, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"42"
Yadav<- subset(dat42, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"42"
Kurmi<-subset(dat42, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"42"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat43<-read.csv("43.csv", header = FALSE)
Sahu<- subset(dat43, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"43"
Yadav<- subset(dat43, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"43"
Kurmi<-subset(dat43, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"43"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat44<-read.csv("44.csv", header = FALSE)
Sahu<- subset(dat44, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"44"
Yadav<- subset(dat44, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"44"
Kurmi<-subset(dat44, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"44"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat45<-read.csv("45.csv", header = FALSE)
Sahu<- subset(dat45, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"45"
Yadav<- subset(dat45, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"45"
Kurmi<-subset(dat45, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"45"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat46<-read.csv("46.csv", header = FALSE)
Sahu<- subset(dat46, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"46"
Yadav<- subset(dat46, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"46"
Kurmi<-subset(dat46, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"46"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat47<-read.csv("47.csv", header = FALSE)
Sahu<- subset(dat47, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"47"
Yadav<- subset(dat47, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"47"
Kurmi<-subset(dat47, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"47"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat48<-read.csv("48.csv", header = FALSE)
Sahu<- subset(dat48, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"48"
Yadav<- subset(dat48, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"48"
Kurmi<-subset(dat48, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"48"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat49<-read.csv("49.csv", header = FALSE)
Sahu<- subset(dat49, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"49"
Yadav<- subset(dat49, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"49"
Kurmi<-subset(dat49, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"49"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat50<-read.csv("50.csv", header = FALSE)
Sahu<- subset(dat50, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"50"
Yadav<- subset(dat50, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"50"
Kurmi<-subset(dat50, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"50"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat51<-read.csv("51.csv", header = FALSE)
Sahu<- subset(dat51, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"51"
Yadav<- subset(dat51, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"51"
Kurmi<-subset(dat51, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"51"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat52<-read.csv("52.csv", header = FALSE)
Sahu<- subset(dat52, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"52"
Yadav<- subset(dat52, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"52"
Kurmi<-subset(dat52, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"52"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat53<-read.csv("53.csv", header = FALSE)
Sahu<- subset(dat53, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"53"
Yadav<- subset(dat53, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"53"
Kurmi<-subset(dat53, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"53"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat54<-read.csv("54.csv", header = FALSE)
Sahu<- subset(dat54, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"54"
Yadav<- subset(dat54, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"54"
Kurmi<-subset(dat54, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"54"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat55<-read.csv("55.csv", header = FALSE)
Sahu<- subset(dat55, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"55"
Yadav<- subset(dat55, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"55"
Kurmi<-subset(dat55, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"55"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat56<-read.csv("56.csv", header = FALSE)
Sahu<- subset(dat56, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"56"
Yadav<- subset(dat56, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"56"
Kurmi<-subset(dat56, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"56"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat57<-read.csv("57.csv", header = FALSE)
Sahu<- subset(dat57, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"57"
Yadav<- subset(dat57, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"57"
Kurmi<-subset(dat57, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"57"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat58<-read.csv("58.csv", header = FALSE)
Sahu<- subset(dat58, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"58"
Yadav<- subset(dat58, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"58"
Kurmi<-subset(dat58, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"58"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat59<-read.csv("59.csv", header = FALSE)
Sahu<- subset(dat59, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"59"
Yadav<- subset(dat59, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"59"
Kurmi<-subset(dat59, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"59"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat60<-read.csv("60.csv", header = FALSE)
Sahu<- subset(dat60, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"60"
Yadav<- subset(dat60, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"60"
Kurmi<-subset(dat60, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"60"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat61<-read.csv("61.csv", header = FALSE)
Sahu<- subset(dat61, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"61"
Yadav<- subset(dat61, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"61"
Kurmi<-subset(dat61, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"61"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat62<-read.csv("62.csv", header = FALSE)
Sahu<- subset(dat62, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"62"
Yadav<- subset(dat62, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"62"
Kurmi<-subset(dat62, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"62"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat63<-read.csv("63.csv", header = FALSE)
Sahu<- subset(dat63, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"63"
Yadav<- subset(dat63, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"63"
Kurmi<-subset(dat63, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"63"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat64<-read.csv("64.csv", header = FALSE)
Sahu<- subset(dat64, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"64"
Yadav<- subset(dat64, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"64"
Kurmi<-subset(dat64, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"64"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat65<-read.csv("65.csv", header = FALSE)
Sahu<- subset(dat65, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"65"
Yadav<- subset(dat65, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"65"
Kurmi<-subset(dat65, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"65"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat66<-read.csv("66.csv", header = FALSE)
Sahu<- subset(dat66, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"66"
Yadav<- subset(dat66, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"66"
Kurmi<-subset(dat66, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"66"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat67<-read.csv("67.csv", header = FALSE)
Sahu<- subset(dat67, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"67"
Yadav<- subset(dat67, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"67"
Kurmi<-subset(dat67, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"67"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat68<-read.csv("68.csv", header = FALSE)
Sahu<- subset(dat68, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"68"
Yadav<- subset(dat68, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"68"
Kurmi<-subset(dat68, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"68"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat69<-read.csv("69.csv", header = FALSE)
Sahu<- subset(dat69, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"69"
Yadav<- subset(dat69, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"69"
Kurmi<-subset(dat69, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"69"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat70<-read.csv("70.csv", header = FALSE)
Sahu<- subset(dat70, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"70"
Yadav<- subset(dat70, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"70"
Kurmi<-subset(dat70, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"70"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat71<-read.csv("71.csv", header = FALSE)
Sahu<- subset(dat71, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"71"
Yadav<- subset(dat71, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"71"
Kurmi<-subset(dat71, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"71"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat72<-read.csv("72.csv", header = FALSE)
Sahu<- subset(dat72, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"72"
Yadav<- subset(dat72, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"72"
Kurmi<-subset(dat72, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"72"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat73<-read.csv("73.csv", header = FALSE)
Sahu<- subset(dat73, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"73"
Yadav<- subset(dat73, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"73"
Kurmi<-subset(dat73, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"73"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat74<-read.csv("74.csv", header = FALSE)
Sahu<- subset(dat74, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"74"
Yadav<- subset(dat74, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"74"
Kurmi<-subset(dat74, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"74"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat75<-read.csv("75.csv", header = FALSE)
Sahu<- subset(dat75, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"75"
Yadav<- subset(dat75, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"75"
Kurmi<-subset(dat75, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"75"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat76<-read.csv("76.csv", header = FALSE)
Sahu<- subset(dat76, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"76"
Yadav<- subset(dat76, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"76"
Kurmi<-subset(dat76, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"76"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)
dat77<-read.csv("77.csv", header = FALSE)
Sahu<- subset(dat77, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"77"
Yadav<- subset(dat77, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"77"
Kurmi<-subset(dat77, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"77"
Sahu_Number<-rbind(Sahu_Number, Sahu)
Yadav_Number<-rbind(Yadav_Number, Yadav)
Kurmi_Number<-rbind(Kurmi_Number, Kurmi)


Sahu_Number1<- dat1[1,]
Yadav_Number1<-dat1[1,]
Kurmi_Number1<-dat1[1,]
Sahu_Number1$AC<-"1"
Yadav_Number1$AC<-"1"
Kurmi_Number1$AC<-"1"



dat78<-read.csv("78.csv", header = FALSE)
Sahu<- subset(dat78, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"78"
Yadav<- subset(dat78, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"78"
Kurmi<-subset(dat78, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"78"
Sahu_Number1<-rbind(Sahu_Number1, Sahu)
Yadav_Number1<-rbind(Yadav_Number1, Yadav)
Kurmi_Number1<-rbind(Kurmi_Number1, Kurmi)

Sahu_Number1<-Sahu_Number1[-1,]
Yadav_Number1<-Yadav_Number1[-1,]
Kurmi_Number1<-Kurmi_Number1[-1,]

dat79<-read.csv("79.csv", header = FALSE)
Sahu<- subset(dat79, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"79"
Yadav<- subset(dat79, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"79"
Kurmi<-subset(dat79, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"79"
Sahu_Number1<-rbind(Sahu_Number1, Sahu)
Yadav_Number1<-rbind(Yadav_Number1, Yadav)
Kurmi_Number1<-rbind(Kurmi_Number1, Kurmi)
dat80<-read.csv("80.csv", header = FALSE)
Sahu<- subset(dat80, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"80"
Yadav<- subset(dat80, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"80"
Kurmi<-subset(dat80, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"80"
Sahu_Number1<-rbind(Sahu_Number1, Sahu)
Yadav_Number1<-rbind(Yadav_Number1, Yadav)
Kurmi_Number1<-rbind(Kurmi_Number1, Kurmi)
dat81<-read.csv("81.csv", header = FALSE)
Sahu<- subset(dat81, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"81"
Yadav<- subset(dat81, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"81"
Kurmi<-subset(dat81, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"81"
Sahu_Number1<-rbind(Sahu_Number1, Sahu)
Yadav_Number1<-rbind(Yadav_Number1, Yadav)
Kurmi_Number1<-rbind(Kurmi_Number1, Kurmi)
dat82<-read.csv("82.csv", header = FALSE)
Sahu<- subset(dat82, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"82"
Yadav<- subset(dat82, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"82"
Kurmi<-subset(dat82, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"82"
Sahu_Number1<-rbind(Sahu_Number1, Sahu)
Yadav_Number1<-rbind(Yadav_Number1, Yadav)
Kurmi_Number1<-rbind(Kurmi_Number1, Kurmi)
dat83<-read.csv("83.csv", header = FALSE)
Sahu<- subset(dat83, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"83"
Yadav<- subset(dat83, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"83"
Kurmi<-subset(dat83, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"83"
Sahu_Number1<-rbind(Sahu_Number1, Sahu)
Yadav_Number1<-rbind(Yadav_Number1, Yadav)
Kurmi_Number1<-rbind(Kurmi_Number1, Kurmi)
dat84<-read.csv("84.csv", header = FALSE)
Sahu<- subset(dat84, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"84"
Yadav<- subset(dat84, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"84"
Kurmi<-subset(dat84, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"84"
Sahu_Number1<-rbind(Sahu_Number1, Sahu)
Yadav_Number1<-rbind(Yadav_Number1, Yadav)
Kurmi_Number1<-rbind(Kurmi_Number1, Kurmi)
dat85<-read.csv("85.csv", header = FALSE)
Sahu<- subset(dat85, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"85"
Yadav<- subset(dat85, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"85"
Kurmi<-subset(dat85, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"85"
Sahu_Number1<-rbind(Sahu_Number1, Sahu)
Yadav_Number1<-rbind(Yadav_Number1, Yadav)
Kurmi_Number1<-rbind(Kurmi_Number1, Kurmi)
dat86<-read.csv("86.csv", header = FALSE)
Sahu<- subset(dat86, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"86"
Yadav<- subset(dat86, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"86"
Kurmi<-subset(dat86, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"86"
Sahu_Number1<-rbind(Sahu_Number1, Sahu)
Yadav_Number1<-rbind(Yadav_Number1, Yadav)
Kurmi_Number1<-rbind(Kurmi_Number1, Kurmi)
dat87<-read.csv("87.csv", header = FALSE)
Sahu<- subset(dat87, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"87"
Yadav<- subset(dat87, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"87"
Kurmi<-subset(dat87, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"87"
Sahu_Number1<-rbind(Sahu_Number1, Sahu)
Yadav_Number1<-rbind(Yadav_Number1, Yadav)
Kurmi_Number1<-rbind(Kurmi_Number1, Kurmi)
dat88<-read.csv("88.csv", header = FALSE)
Sahu<- subset(dat88, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"88"
Yadav<- subset(dat88, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"88"
Kurmi<-subset(dat88, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"88"
Sahu_Number1<-rbind(Sahu_Number1, Sahu)
Yadav_Number1<-rbind(Yadav_Number1, Yadav)
Kurmi_Number1<-rbind(Kurmi_Number1, Kurmi)
dat89<-read.csv("89.csv", header = FALSE)
Sahu<- subset(dat89, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"89"
Yadav<- subset(dat89, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"89"
Kurmi<-subset(dat89, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"89"
Sahu_Number1<-rbind(Sahu_Number1, Sahu)
Yadav_Number1<-rbind(Yadav_Number1, Yadav)
Kurmi_Number1<-rbind(Kurmi_Number1, Kurmi)
dat90<-read.csv("90.csv", header = FALSE)
Sahu<- subset(dat90, (V3 =="SAHU")| (V3 =="SAHOO")|(V3 =="HARWANI"))
Sahu$AC<-"90"
Yadav<- subset(dat90, (V3 =="YADAV")| (V3 =="YADV")|(V3 =="YADU")|(V3 =="YADUVANSHI")|(V3 =="AHIR")|(V3 =="RAUT")|(V3 =="RAWAT"))
Yadav$AC<-"90"
Kurmi<-subset(dat90, (V3 =="GABHEL")| (V3 =="BAGHEL")|(V3 =="CHANDRA")|(V3 =="CHANDRAVANSHI")|(V3 =="CHANDRAKAR")|(V3 =="BAIS")|(V3 =="VERMA")|(V3 =="KASHYAP")|(V3 =="KAUSHIK")|(V3 =="SINGHOR")|(V3 =="CHANDRANAHU"))
Kurmi$AC<-"90"
Sahu_Number1<-rbind(Sahu_Number1, Sahu)
Yadav_Number1<-rbind(Yadav_Number1, Yadav)
Kurmi_Number1<-rbind(Kurmi_Number1, Kurmi)

Sahu_Num<-rbind(Sahu_Number, Sahu_Number1)
Yadav_Num<- rbind(Yadav_Number, Yadav_Number1)
Kurmi_Num<- rbind(Kurmi_Number, Kurmi_Number1)

X<-matrix(NA, nrow = dim(Sahu_Num)[1], ncol = 2)
Y<-matrix(NA, nrow = dim(Yadav_Num)[1], ncol = 2)
Z<-matrix(NA, nrow = dim(Kurmi_Num)[1], ncol = 2)

X[,1]<-Sahu_Num$V1
X[,1]<-paste("0", X[,1], sep="")
X[,2]<-Sahu_Num$AC

Y[,1]<-Yadav_Num$V1
Y[,1]<-paste("0", Y[,1], sep="")
Y[,2]<-Yadav_Num$AC

Z[,1]<-Kurmi_Num$V1
Z[,1]<-paste("0", Z[,1], sep="")
Z[,2]<-Kurmi_Num$AC

write.csv(X, "Sahu_Numbers.csv")
write.csv(Y, "Yadav_Numbers.csv")
write.csv(Z, "Kurmi_Numbers.csv")

