#This code will give weighs wrt region to each caller in a new column named Weighs. calldetail is used as sample data. Database is used as 
#CHG_Database for population related reference. i is the constituency number which should be changed according to AC.
# input reuiqred: i ie AC No. Sampled Data as calldetail. CHG Data as Database. Column name for Raw Data should be gender


i<-2
#Wts for Region wise distribution
gender_wt<-matrix(data = NA, nrow = 3, ncol = 3)
dimnames(gender_wt) = list( c("Male","Female", "Missing_gender"),c("Pop_perc", "Sample_perc", "weights"))
gender_wt<-as.data.frame(gender_wt)
#Rel_wt$Sample_perc<-100*Rel_wt$Sample_count/sum(Rel_wt$Sample_count)
#Rel_wt$weights<-Rel_wt$Pop_perc/Rel_wt$Sample_perc
gender_wt$Pop_perc<-c(Database$Male_perc[i], Database$Female_perc[i],0)
gender_Count<-count(calldetail,"gender")
gender_Count<-as.data.frame(gender_Count)
gender_Count$perc<-round(100*gender_Count$freq/sum(gender_Count$freq, na.rm = TRUE),2)

#Pasting Sample perc
gender_wt$Sample_perc[1]<-gender_Count$perc[gender_Count$gender=="Male"]
gender_wt$Sample_perc[2]<-gender_Count$perc[gender_Count$gender=="Female"]
gender_wt$Sample_perc[3]<-gender_Count$perc[is.na(gender_Count$gender)]


gender_wt$weights<-round(gender_wt$Pop_perc/gender_wt$Sample_perc,2)
gender_wt$weights[gender_wt$weights>2]<- 2
gender_wt$weights[gender_wt$weights<0.5]<- 0.5


calldetail$gender_wt<-0      ## Assigining weights<-1 to everyone
calldetail$gender_wt[calldetail$gender=="Male"]<-gender_wt$weights[1]     #Assigning wts to Male
calldetail$gender_wt[calldetail$gender=="Female"]<-gender_wt$weights[2]   #Assigning wts to Female
calldetail$gender_wt[calldetail$gender_wt=="0"]<-mean(calldetail$gender_wt, na.rm = TRUE)


#CHG_Database for population related reference. i is the constituency number which should be changed according to AC.
# input reuiqred: i ie AC No. Sampled Data as calldetail. CHG Data as Database. Column name for Raw Data should be iscity


i<-2
#Wts for iscity wise distribution
iscity_wt<-matrix(data = NA, nrow = 3, ncol = 3)
dimnames(iscity_wt) = list( c("Urban","Rural","Missing_region"),c("Pop_perc", "Sample_perc", "weights"))
iscity_wt<-as.data.frame(iscity_wt)
#Rel_wt$Sample_perc<-100*Rel_wt$Sample_count/sum(Rel_wt$Sample_count)
#Rel_wt$weights<-Rel_wt$Pop_perc/Rel_wt$Sample_perc
iscity_wt$Pop_perc<-c(Database$percent_urban[i], Database$percent_rural[i],0)
iscity_Count<-count(calldetail,"iscity")
iscity_Count<-as.data.frame(iscity_Count)
iscity_Count$perc<-round(100*iscity_Count$freq/sum(iscity_Count$freq, na.rm = TRUE),2)

#Pasting Sample perc
iscity_wt$Sample_perc[1]<-iscity_Count$perc[iscity_Count$iscity=="Urban"]
iscity_wt$Sample_perc[2]<-iscity_Count$perc[iscity_Count$iscity=="Rural"]
iscity_wt$Sample_perc[3]<-iscity_Count$perc[iscity_Count$iscity=="Missing"]


calldetail$iscity_wt<-0  #Assigning all wts<-1 and putting respective weigths to each onward

iscity_wt$weights<-round(iscity_wt$Pop_perc/iscity_wt$Sample_perc,2)
iscity_wt$weights[iscity_wt$weights>2]<-2
iscity_wt$weights[iscity_wt$weights<0.5]<-0.5

calldetail$iscity_wt[calldetail$iscity=="Urban"]<-iscity_wt$weights[1]
calldetail$iscity_wt[calldetail$iscity=="Rural"]<-iscity_wt$weights[2]
calldetail$iscity_wt[calldetail$iscity_wt=="0"]<-mean(calldetail$iscity_wt, na.rm = TRUE)


#This code will give weighs wrt religion to each caller in a new column named Weighs. calldetail is used as sample data. Database is used as 
#CHG_Database for population related reference. i is the constituency number which should be changed according to AC.
# input reuiqred: i ie AC No. Sampled Data as calldetail. CHG Data as Database


i<-2
#Wts for religion wise distribution
Rel_wt<-matrix(data = NA, nrow = 6, ncol = 3)
dimnames(Rel_wt) = list( c("Hindu", "Muslim", "Sikh", "Christian", "Other", "NoAnswer"),c("Pop_perc", "Sample_perc", "weights"))
Rel_wt<-as.data.frame(Rel_wt)
#Rel_wt$Sample_perc<-100*Rel_wt$Sample_count/sum(Rel_wt$Sample_count)
#Rel_wt$weights<-Rel_wt$Pop_perc/Rel_wt$Sample_perc
Rel_wt$Pop_perc<-c(Database$percent_hindu[i], Database$percent_muslim[i], Database$percent_sikh[i], Database$percent_christian[i], Database$percent_other_religion[i], 0)
religion_Count<-count(calldetail,"religion")
religion_Count$perc<-round(100*religion_Count$freq/sum(religion_Count$freq, na.rm = TRUE),2)

#Pasting Sample perc
Rel_wt$Sample_perc[1]<-religion_Count$perc[religion_Count$religion=="Hindu"]
Rel_wt$Sample_perc[2]<-religion_Count$perc[religion_Count$religion=="Islam"]
Rel_wt$Sample_perc[3]<-religion_Count$perc[religion_Count$religion=="Sikhism"]
Rel_wt$Sample_perc[4]<-religion_Count$perc[religion_Count$religion=="Christianity"]
Rel_wt$Sample_perc[5]<-sum(religion_Count$perc[(religion_Count$religion!="Christianity")&(religion_Count$religion!="Sikhism")&(religion_Count$religion!="Hindu")&(religion_Count$religion!="Islam")&(religion_Count$religion!="NoAnswer")],na.rm = TRUE)
Rel_wt$Sample_perc[6]<-religion_Count$perc[religion_Count$religion=="NoAnswer"]


calldetail$Rel_wt<-0  #Assigning everyone weights<-1

Rel_wt$weights<-round(Rel_wt$Pop_perc/Rel_wt$Sample_perc,2)

Rel_wt$weights[Rel_wt$weights>2]<- 2
Rel_wt$weights[Rel_wt$weights<0.5]<- 0.5


calldetail$Rel_wt[calldetail$religion=="Hindu"]<-Rel_wt$weights[1]
calldetail$Rel_wt[calldetail$religion=="Islam"]<-Rel_wt$weights[2]
calldetail$Rel_wt[calldetail$religion=="Sikhism"]<-Rel_wt$weights[3]
calldetail$Rel_wt[calldetail$religion=="Christianity"]<-Rel_wt$weights[4]
calldetail$Rel_wt[calldetail$religion=="Others"]<-Rel_wt$weights[5]
calldetail$Rel_wt[calldetail$Rel_wt=="0"]<-mean(calldetail$Rel_wt, na.rm = TRUE)




#Calculating Pop_perc of top 10 Castes in the AC
# Upload AC_Caste_data from Database folder

#for (i in 1:90) {
#  Y<-subset(AC_Caste_Data, AC_Caste_Data$`AC No.`==i)
#  Database$Cst1[i]<-Y[1,3]
#  Database$Cst1n[i]<-Y[1,5]
#  Database$Cst2[i]<-Y[2,3]
#  Database$Cst2n[i]<-Y[2,5]
#  Database$Cst3[i]<-Y[3,3]
#  Database$Cst3n[i]<-Y[3,5]
#  Database$Cst4[i]<-Y[4,3]
#  Database$Cst4n[i]<-Y[4,5]
#  Database$Cst5[i]<-Y[5,3]
#  Database$Cst5n[i]<-Y[5,5]
#  Database$Cst6[i]<-Y[6,3]
#  Database$Cst6n[i]<-Y[6,5]
#  Database$Cst7[i]<-Y[7,3]
#  Database$Cst7n[i]<-Y[7,5]
#  Database$Cst67[i]<-Y[67,3]
#  Database$Cst42n[i]<-Y[42,5]
#  Database$Cst9[i]<-Y[9,3]
#  Database$Cst9n[i]<-Y[9,5]
#  Database$Cst10[i]<-Y[10,3]
#  Database$Cst10n[i]<-Y[10,5]
#}
i<-2
# Calculating weights of top 10 Castes and rest # AC_Caste_data is required here
Caste_wt<-matrix(NA,nrow = 10,ncol = 5)
Caste_wt<-as.data.frame(Caste_wt)

X<-AC_Caste_data[(AC_Caste_data$`AC No.`==i),] #AC No to be given here
X$`Sub Caste`[X$`Sub Caste`=="Gond/Rajgond"]<-"Gond/Rajgond/Sidar"
X$`Sub Caste`[X$`Sub Caste`=="Dhobi(Washermen)"]<-"Dhobi(Washerman)"
X$`Sub Caste`[X$`Sub Caste`=="Kanwar/Rathia"]<-"Kanwar/Rathia/Paikra/Sai"

Caste_wt[,1]<-X$`Sub Caste`[1:10]
Caste_wt[11,1]<-"Rest"
colnames(Caste_wt)<-c("Caste","Pop_perc", "Sample_count", "Sample_perc", "wt")
Caste_wt$Pop_perc[1:10]<-X$Percentage[1:10]  
Caste_wt$Pop_perc[11]<-100-sum(Caste_wt$Pop_perc[!is.na(Caste_wt$Pop_perc)])

# Calculating freq
calldetail$caste[calldetail$caste=="Mughal (Khan)"]<-"Muslim"
calldetail$caste[calldetail$caste=="Other Upper caste(Muslim)"]<-"Muslim"
calldetail$caste[calldetail$caste=="Ashraf(Sayyad Shaikh)"]<-"Muslim"
calldetail$caste[calldetail$caste=="Kurmi"]<-"Kurmi/Gabhel"
calldetail$caste[calldetail$caste=="Gond,Rajgond"]<-"Gond/Rajgond"
calldetail$caste[calldetail$caste=="Ashraf (Sayyad Shaikh)"]<-"Muslim"
calldetail$caste[calldetail$caste=="Hindu no caste"]<-"Mahar"
calldetail$caste[calldetail$caste=="Namsudras, Mahar"]<-"Mahar"
calldetail$caste[calldetail$caste=="Kewat/Kenvat"]<-"Kewat/ Nishad (Fishermen)"
calldetail$caste[calldetail$caste=="Sahu/Teli"]<-"Teli/Sahu"
calldetail$caste[calldetail$caste=="Gond,Rajgond"]<-"Gond/Rajgond"
calldetail$caste[calldetail$caste=="Kurmi"]<-"Kurmi/Gabhel"
calldetail$caste[calldetail$caste=="Yadav/Raut"]<-"Yadav"
calldetail$caste[calldetail$caste=="Patel/Patidar"]<-"Patel"


Caste_cnt<-count(calldetail,"caste")
Caste_cnt<-as.data.frame(Caste_cnt)
Caste_cnt<-Caste_cnt[!is.na(Caste_cnt$caste),]
Caste_cnt$perc<-round(100*Caste_cnt$freq/sum(Caste_cnt$freq[!is.na(Caste_cnt$caste)]),2)

#X<-calldetail[(calldetail$catid=="SC")&(calldetail$caste=="Other"),]
#Caste_cnt$freq[Caste_cnt$caste=="Baniya/Agarwal/Marwari"]<-Caste_cnt$freq[Caste_cnt$caste=="Baniya/Agarwal/Marwari"]+0.5*dim(Z)[1]
Caste_cnt$caste[Caste_cnt$caste=="Teli(Oil)"]<-"Teli/Sahu"
Caste_cnt$caste[Caste_cnt$caste=="Sahu/Teli"]<-"Teli/Sahu"
#Caste_cnt$caste[Caste_cnt$caste=="Other SC"]<-"Satnami"
Caste_cnt$caste[Caste_cnt$caste=="Kurmi"]<-"Kurmi/Gabhel"
#Caste_cnt$caste[Caste_cnt$caste=="Lowest SC"]<-"Satnami"
#Caste_cnt$caste[Caste_cnt$caste=="Other Sts"]<-"Marar"

Caste_cnt<-Caste_cnt[order(-Caste_cnt$freq),]

#Giving Sample_perc of castes
for (i in 1:10) {
  Caste_wt$Sample_perc[i]<-sum(Caste_cnt$perc[Caste_cnt$caste==Caste_wt[i,1]])
}

#Caste_Sample perc for rest category
Caste_wt$Sample_perc[11]<-100-sum(Caste_wt$Sample_perc[!is.na(Caste_wt$Sample_perc)])

Caste_wt$Pop_perc[11]<-Caste_wt$Pop_perc[11]+ sum(Caste_wt$Pop_perc[(Caste_wt$Sample_perc==0)])
Caste_wt$wt<-round(Caste_wt$Pop_perc/Caste_wt$Sample_perc,2)

Caste_wt$wt[11]<-round(Caste_wt$Pop_perc[11]/Caste_wt$Sample_perc[11],2)
Caste_wt$wt[(Caste_wt$Sample_perc==0)]<-Caste_wt$wt[11]
#Caste_wt$wt[(Caste_wt$Sample_perc!=0)]<-round(Caste_wt$wt[(Caste_wt$Sample_perc!=0)]/Caste_wt$Sample_perc[11],2)

#calldetail$Caste_wt<-Caste_wt$wt[11]

for (i  in 1:10) {
  calldetail$Caste_wt[calldetail$caste==rownames(Caste_wt)[i]]<-Caste_wt$wt[i]
}



#This code will give weighs wrt catid to each caller in a new column named Weighs. calldetail is used as sample data. Database is used as 
#CHG_Database for population related reference. i is the constituency number which should be changed according to AC.
# input reuiqred: i ie AC No. Sampled Data as Raw_Data_7. CHG Data as Database. Column name for Raw Data should be Caste_Category
# Muslim have been taken as 

i<-2
#Wts for catid wise distribution
catid_wt<-matrix(data = NA, nrow = 6, ncol = 3)
dimnames(catid_wt) = list( c("gen_OBC", "SC", "ST", "Muslim","Christianity", "Missing"),c("Pop_perc", "Sample_perc", "weights"))
catid_wt<-as.data.frame(catid_wt)
calldetail$catid[calldetail$religion=="Islam"]<-"Islam"
calldetail$catid[calldetail$religion=="Christianity"]<-"Christianity"

#Rel_wt$Sample_perc<-100*Rel_wt$Sample_count/sum(Rel_wt$Sample_count)
#Rel_wt$weights<-Rel_wt$Pop_perc/Rel_wt$Sample_perc
catid_wt$Pop_perc<-c((Database$percent_gen_obc[i]-Database$percent_muslim[i]),Database$percent_sc[i], (Database$percent_st[i]-Database$percent_christian[i]), Database$percent_muslim[i] , Database$percent_christian[i],0)
catid_Count<-count(calldetail,"catid")
catid_Count$perc<-round(100*catid_Count$freq/sum(catid_Count$freq, na.rm = TRUE),2)
#Rel_Count$perc<-round(100*Rel_Count$freq/sum(Rel_Count$freq, na.rm = TRUE),2)

#Pasting Sample perc
catid_wt$Sample_perc[1]<-catid_Count$perc[catid_Count$catid=="General"]+catid_Count$perc[catid_Count$catid=="OBC"]
catid_wt$Sample_perc[2]<-catid_Count$perc[catid_Count$catid=="SC"]
catid_wt$Sample_perc[3]<-catid_Count$perc[catid_Count$catid=="ST"]
catid_wt$Sample_perc[4]<-catid_Count$perc[catid_Count$catid=="Islam"]
catid_wt$Sample_perc[5]<-catid_Count$perc[catid_Count$catid=="Christianity"]
catid_wt$Sample_perc[6]<-catid_Count$perc[catid_Count$catid=="Missing"]

calldetail$catid_wt<-0     #Assigning all weights equal to 1
catid_wt$weights<-(catid_wt$Pop_perc/catid_wt$Sample_perc)
catid_wt$weights[catid_wt$weights<0.5]<- 0.5
catid_wt$weights[catid_wt$weights>2]<- 2

calldetail$catid_wt[calldetail$catid=="General"]<-catid_wt$weights[1]
calldetail$catid_wt[calldetail$catid=="OBC"]<-catid_wt$weights[1]
calldetail$catid_wt[calldetail$catid=="SC"]<-catid_wt$weights[2]
calldetail$catid_wt[calldetail$catid=="ST"]<-catid_wt$weights[3]
calldetail$catid_wt[calldetail$catid=="Islam"]<-catid_wt$weights[4]
calldetail$catid_wt[calldetail$catid=="Christianity"]<-catid_wt$weights[5]
calldetail$catid_wt[calldetail$catid_wt=="0"]<-mean(calldetail$catid_wt,na.rm = TRUE)



#This code will give weighs wrt age to each caller in a new column named Weighs. calldetail is used as sample data. Database is used as 
#CHG_Database for population related reference. i is the constituency number which should be changed according to AC.


i<-2

#Age-grouping
calldetail$age[(calldetail$age>17)&(calldetail$age<25)]<-"18-24"
calldetail$age[(calldetail$age>24)&(calldetail$age<30)]<-"25-29"
calldetail$age[(calldetail$age>29)&(calldetail$age<40)]<-"30-39"
calldetail$age[(calldetail$age>39)&(calldetail$age<50)]<-"40-49"
calldetail$age[(calldetail$age>49)&(calldetail$age<60)]<-"50-59"
calldetail$age[calldetail$age>59]<-"60+"
calldetail$age[calldetail$age=="0"]<-"Missing"

#Wts for age wise distribution
Age_wt<-matrix(data = NA, nrow = 7, ncol = 3)
dimnames(Age_wt) = list( c("18-24", "25-29", "30-39", "40-49", "50-59", "60+", "Missing_age"),c("Pop_perc", "Sample_perc", "weights"))
Age_wt<-as.data.frame(Age_wt)
#Age_wt$Sample_perc<-100*Age_wt$Sample_count/sum(Age_wt$Sample_count)

#Age wise distribution in Sample space
Age_Count<-count(calldetail,"age")
Age_Count$perc<-round(100*Age_Count$freq/sum(Age_Count$freq, na.rm = TRUE),2)

#Age_Count<-Age_Count[-1,]
#Age_Count<-Age_Count[-7,]

Age_wt$Sample_perc[1]<-Age_Count$perc[Age_Count$age=="18-24"]
Age_wt$Sample_perc[2]<-Age_Count$perc[Age_Count$age=="25-29"]
Age_wt$Sample_perc[3]<-Age_Count$perc[Age_Count$age=="30-39"]
Age_wt$Sample_perc[4]<-Age_Count$perc[Age_Count$age=="40-49"]
Age_wt$Sample_perc[5]<-Age_Count$perc[Age_Count$age=="50-59"]
Age_wt$Sample_perc[6]<-Age_Count$perc[Age_Count$age=="60+"]
Age_wt$Sample_perc[7]<-Age_Count$perc[(Age_Count$age!="18-24")&(Age_Count$age!="25-29")&(Age_Count$age!="30-39")&(Age_Count$age!="40-49")&(Age_Count$age!="50-59")&(Age_Count$age!="60+")]
Age_wt$Pop_perc[1]<-Database$Teen[i]
Age_wt$Pop_perc[2]<-Database$Job[i]
Age_wt$Pop_perc[3]<-Database$Settled[i]
Age_wt$Pop_perc[4]<-Database$Family[i]
Age_wt$Pop_perc[5]<-Database$Old[i]
Age_wt$Pop_perc[6]<-Database$Retured[i]
Age_wt$Pop_perc[7]<-0
Age_wt$weights<-round(Age_wt$Pop_perc/Age_wt$Sample_perc,2) #Age weights

Age_wt$weights[Age_wt$weights>2]<-2
Age_wt$weights[Age_wt$weights<0.5]<-0.5

#Adding Age-wts to our response data

calldetail$Age_wts<-0

calldetail$Age_wts[(calldetail$age>18)&(calldetail$age<25)]<-Age_wt$weights[1]
calldetail$Age_wts[(calldetail$age>24)&(calldetail$age<29)]<-Age_wt$weights[2]
calldetail$Age_wts[(calldetail$age>29)&(calldetail$age<40)]<-Age_wt$weights[3]
calldetail$Age_wts[(calldetail$age>39)&(calldetail$age<50)]<-Age_wt$weights[4]
calldetail$Age_wts[(calldetail$age>49)&(calldetail$age<60)]<-Age_wt$weights[5]
calldetail$Age_wts[(calldetail$age>59)&(calldetail$age<160)]<-Age_wt$weights[6]
calldetail$Age_wts[calldetail$Age_wts=="0"]<-mean(calldetail$Age_wts, na.rm = TRUE)


#2013_Elections_Weights
#Wts for party2013 distribution
i<-2

party_wt<-matrix(data = NA, nrow = 5, ncol = 3)
dimnames(party_wt) = list( c("BJP", "Congress", "JCC+BSP", "GGP", "Other"),c("2013_perc", "2013_claimed", "weights"))
party_wt<-as.data.frame(party_wt)

party_wt$2013_perc[1]<-X2013_results[(X2013_results$AC_NO==i)&(X2013_results$`PARTY ABBREviation`=="BJP")]
party_wt$2013_perc[2]<-X2013_results[(X2013_results$AC_NO==i)&(X2013_results$`PARTY ABBREviation`=="Congress")]
party_wt$2013_perc[3]<-X2013_results[(X2013_results$AC_NO==i)&(X2013_results$`PARTY ABBREviation`=="BSP")] + X2013_results[(X2013_results$AC_NO==i)&(X2013_results$`PARTY ABBREviation`=="JCC")]
party_wt$2013_perc[4]<-D2D_Survey$`GGP Vote Share`[i]
party_wt$2013_perc[5]<-D2D_Survey$`Others Vote Share`[i]

#party_count
Party_count<-count(calldetail,"party2018")
Party_count$perc<- round(100*Party_count$freq/sum(Party_count$freq, na.rm = TRUE),2)

party_wt$2013_claimed[1]<- Party_count$perc[Party_count$party2018=="BJP"]
party_wt$2013_claimed[2]<- Party_count$perc[Party_count$party2018=="Congress"]
party_wt$2013_claimed[3]<- Party_count$perc[Party_count$party2018=="BSP+JCC"]
party_wt$2013_claimed[4]<- Party_count$perc[Party_count$party2018=="GGP"]
party_wt$2013_claimed[5]<- Party_count$perc[(Party_count$party2018=="Independent")|(Party_count$party2018=="NOTA")|(Party_count$party2018=="AAP")|(Party_count$party2018=="SP")]

party_wt$weights<-round(party_wt$2013_perc/party_wt$2013_claimed,2) #party weights

party_wt$weights[party_wt$weights>2]<-2
party_wt$weights[(party_wt$weights<0.5)&(party_wt$weights>0)]<-0.5

#Adding party-wts to our response data

calldetail$party_wts<-0

calldetail$party_wts[calldetail$party2018=="BJP"]<-party_wt$weights[1]
calldetail$party_wts[calldetail$party2018=="Congress"]<-party_wt$weights[2]
calldetail$party_wts[calldetail$party2018=="BSP+JCC"]<-party_wt$weights[3]
calldetail$party_wts[calldetail$party2018=="GGP"]<-party_wt$weights[4]
calldetail$party_wts[(calldetail$party2018=="AAP")|(calldetail$party2018=="NOTA")|(calldetail$party2018=="Independent")|(calldetail$party2018=="SP")]<-party_wt$weights[5]
calldetail$party_wts[calldetail$party_wts=="0"]<-mean(calldetail$party_wts, na.rm = TRUE)
