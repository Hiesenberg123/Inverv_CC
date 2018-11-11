calldetail1<- CC_Data_Rally_08_11_2018
calldetail1$disposition[calldetail1$disposition=="1"]<-"Complete"
calldetail1<- calldetail1[(calldetail1$disposition=="Complete"),]
calldetail1<-calldetail1[(calldetail1$acname=="Saraipali"),]

#Data_Cleaning 
#Survey_Yes
calldetail1$q1[calldetail1$q1=="1"]<-"Yes"
calldetail1$q1[calldetail1$q1=="2"]<-"No"

#Gender
calldetail1$q3[calldetail1$q3=="1"]<-"Female"
calldetail1$q3[calldetail1$q3=="2"]<-"Male"

#iscity
calldetail1$q5[calldetail1$q5=="1"]<-"Urban"
calldetail1$q5[calldetail1$q5=="2"]<-"Rural"
calldetail1$q5[calldetail1$q5=="3"]<-"Don't_Know"

#knowrally
calldetail1$q7[calldetail1$q7=="1"]<-"Yes"
calldetail1$q7[calldetail1$q7=="2"]<-"No"

#effective_ad_sources
calldetail1$q8[calldetail1$q8=="1"]<-"TV_News"
calldetail1$q8[calldetail1$q8=="2"]<-"Radio_News"
calldetail1$q8[calldetail1$q8=="3"]<-"Newspaper_ad"
calldetail1$q8[calldetail1$q8=="4"]<-"Party_banners"
calldetail1$q8[calldetail1$q8=="5"]<-"Party_volunteers"
calldetail1$q8[calldetail1$q8=="6"]<-"Party_vehicles"
calldetail1$q8[calldetail1$q8=="7"]<-"whatsapp"
calldetail1$q8[calldetail1$q8=="8"]<-"Fb/Twitter"
calldetail1$q8[calldetail1$q8=="9"]<-"SMS/IVRS"
calldetail1$q8[calldetail1$q8=="10"]<-"Newspaper_news"
calldetail1$q8[calldetail1$q8=="90"]<-"Other"

#Public_knowldege
calldetail1$q9[calldetail1$q9=="1"]<-"Very_few"
calldetail1$q9[calldetail1$q9=="2"]<-"half"
calldetail1$q9[calldetail1$q9=="3"]<-"almost_all"
calldetail1$q9[calldetail1$q9=="4"]<-"Don't_Know"

#Public_enthu
calldetail1$q10[calldetail1$q10=="1"]<-"not_at_all"
calldetail1$q10[calldetail1$q10=="2"]<-"little_bit"
calldetail1$q10[calldetail1$q10=="3"]<-"very_much"
calldetail1$q10[calldetail1$q10=="4"]<-"Don't_Know"

#thinkingofgoing
calldetail1$q11[calldetail1$q11=="1"]<-"Yes"
calldetail1$q11[calldetail1$q11=="2"]<-"No"

#ad_review
calldetail1$q12[calldetail1$q12=="1"]<-"Yes"
calldetail1$q12[calldetail1$q12=="2"]<-"No"

#ad_effective
calldetail1$q13[calldetail1$q13=="1"]<-"TV_News"
calldetail1$q13[calldetail1$q13=="2"]<-"Radio_News"
calldetail1$q13[calldetail1$q13=="3"]<-"Newspaper_ad"
calldetail1$q13[calldetail1$q13=="4"]<-"Party_banners"
calldetail1$q13[calldetail1$q13=="5"]<-"Party_volunteers"
calldetail1$q13[calldetail1$q13=="6"]<-"Party_vehicles"
calldetail1$q13[calldetail1$q13=="7"]<-"whatsapp"
calldetail1$q13[calldetail1$q13=="8"]<-"Fb/Twitter"
calldetail1$q13[calldetail1$q13=="9"]<-"SMS/IVRS"
calldetail1$q13[calldetail1$q13=="10"]<-"Newspaper_news"
calldetail1$q13[calldetail1$q13=="90"]<-"Other"

#Column_Names
colnames(calldetail1)<-c("id", "agent", "campaign", "campaign id", "process", "process id", "caller", "extension", "callstart", "callend", "duration", "disposition", "issurvey", "gender", "assembly", "iscity", "age", "rally_awareness", "source", "source_other", "awareness_perception", "enthu_perception", "isgoing", "isad_eefective", "effective_ad_source", "effective_ad_source_other")

calldetail1<- calldetail1[(calldetail1$disposition!="5"),]
calldetail1<- calldetail1[(calldetail1$iscity!="0"),]

#Age-grouping
calldetail1$age[(calldetail1$age<18)]<-"0-17"
calldetail1$age[(calldetail1$age>17)&(calldetail1$age<25)]<-"18-24"
calldetail1$age[(calldetail1$age>24)&(calldetail1$age<30)]<-"25-29"
calldetail1$age[(calldetail1$age>29)&(calldetail1$age<40)]<-"30-39"
calldetail1$age[(calldetail1$age>39)&(calldetail1$age<50)]<-"40-49"
calldetail1$age[(calldetail1$age>49)&(calldetail1$age<60)]<-"50-59"
calldetail1$age[(calldetail1$age>59)]<-"60+"

#Khujji
calldetail1_khujji<-calldetail1[((calldetail1$assembly=="Khujji")|(calldetail1$assembly=="Dongargaon")|(calldetail1$assembly=="Mohla Manpur")),]
calldetail1_khairagarh<-calldetail1[((calldetail1$assembly=="Khairagarh")|(calldetail1$assembly=="Dongargarh")|(calldetail1$assembly=="Rajnandgaon")|(calldetail1$assembly=="Kawardha")),]
calldetail1_kondagaon<-calldetail1[((calldetail1$assembly=="Kondagaon")|(calldetail1$assembly=="Keshkal")|(calldetail1$assembly=="Narayanpur")|(calldetail1$assembly=="Bastar")|(calldetail1$assembly=="Jagdalpur")),]

#Weights
#gender_wts
calldetail<-calldetail1
#Wts for Region wise distribution
gender_wt<-matrix(data = NA, nrow = 3, ncol = 3)
dimnames(gender_wt) = list( c("Male","Female", "Missing_gender"),c("Pop_perc", "Sample_perc", "weights"))
gender_wt<-as.data.frame(gender_wt)
#Rel_wt$Sample_perc<-100*Rel_wt$Sample_count/sum(Rel_wt$Sample_count)
#Rel_wt$weights<-Rel_wt$Pop_perc/Rel_wt$Sample_perc
gender_wt$Pop_perc<-c(mean(Database$Male_perc[84:88],2), mean(Database$Female_perc[84:88],2),0)
gender_Count<-count(calldetail,"gender")
gender_Count<-as.data.frame(gender_Count)
gender_Count$perc<-round(100*gender_Count$freq/sum(gender_Count$freq, na.rm = TRUE),2)

#Pasting Sample perc
gender_wt$Sample_perc[1]<-gender_Count$perc[gender_Count$gender=="Male"]
gender_wt$Sample_perc[2]<-gender_Count$perc[gender_Count$gender=="Female"]
gender_wt$Sample_perc[3]<-gender_Count$perc[is.na(gender_Count$gender)]

#Weighted sum
gender_wt$weighted_perc[1]<-round(100*sum(calldetail$total_wts[calldetail$gender=="Male"], na.rm = TRUE)/ sum(calldetail$total_wts, na.rm = TRUE),2)
gender_wt$weighted_perc[2]<-round(100*sum(calldetail$total_wts[calldetail$gender=="Female"], na.rm = TRUE)/ sum(calldetail$total_wts, na.rm = TRUE),2)
gender_wt$weighted_perc[2]<-0

gender_wt$weights<-round(gender_wt$Pop_perc/gender_wt$Sample_perc,2)
gender_wt$weights[gender_wt$weights>2]<- 2
gender_wt$weights[gender_wt$weights<0.5]<- 0.5


calldetail$gender_wt<-0      ## Assigining weights<-1 to everyone
calldetail$gender_wt[calldetail$gender=="Male"]<-gender_wt$weights[1]     #Assigning wts to Male
calldetail$gender_wt[calldetail$gender=="Female"]<-gender_wt$weights[2]   #Assigning wts to Female
calldetail$gender_wt[calldetail$gender_wt=="0"]<-mean(calldetail$gender_wt, na.rm = TRUE)


#CHG_Database for population related reference. i is the constituency number which should be changed according to AC.
# input reuiqred: i ie AC No. Sampled Data as calldetail. CHG Data as Database. Column name for Raw Data should be iscity


#iscity_wts

#Wts for iscity wise distribution
iscity_wt<-matrix(data = NA, nrow = 3, ncol = 3)
dimnames(iscity_wt) = list( c("Urban","Rural","Missing_region"),c("Pop_perc", "Sample_perc", "weights"))
iscity_wt<-as.data.frame(iscity_wt)
#Rel_wt$Sample_perc<-100*Rel_wt$Sample_count/sum(Rel_wt$Sample_count)
#Rel_wt$weights<-Rel_wt$Pop_perc/Rel_wt$Sample_perc
iscity_wt$Pop_perc<-c(mean(Database$percent_urban[84:88],2), mean(Database$percent_rural[84:88],2),0)
iscity_Count<-count(calldetail,"iscity")
iscity_Count<-as.data.frame(iscity_Count)
iscity_Count$perc<-round(100*iscity_Count$freq/sum(iscity_Count$freq, na.rm = TRUE),2)

#Pasting Sample perc
iscity_wt$Sample_perc[1]<-iscity_Count$perc[iscity_Count$iscity=="Urban"]
iscity_wt$Sample_perc[2]<-iscity_Count$perc[iscity_Count$iscity=="Rural"]
iscity_wt$Sample_perc[3]<-iscity_Count$perc[iscity_Count$iscity=="Missing"]

#weighted base
iscity_wt$weighted_perc[1]<-round(100*sum(calldetail$total_wts[calldetail$iscity=="Urban"], na.rm = TRUE)/ sum(calldetail$total_wts, na.rm = TRUE),2)
iscity_wt$weighted_perc[2]<-round(100*sum(calldetail$total_wts[calldetail$iscity=="Rural"], na.rm = TRUE)/ sum(calldetail$total_wts, na.rm = TRUE),2)
iscity_wt$weighted_perc[3]<-100-sum(iscity_wt$weighted_perc[1:2])


calldetail$iscity_wt<-0  #Assigning all wts<-1 and putting respective weigths to each onward

iscity_wt$weights<-round(iscity_wt$Pop_perc/iscity_wt$Sample_perc,2)
iscity_wt$weights[iscity_wt$weights>2]<-2
iscity_wt$weights[iscity_wt$weights<0.5]<-0.5

calldetail$iscity_wt[calldetail$iscity=="Urban"]<-iscity_wt$weights[1]
calldetail$iscity_wt[calldetail$iscity=="Rural"]<-iscity_wt$weights[2]
calldetail$iscity_wt[calldetail$iscity_wt=="0"]<-mean(calldetail$iscity_wt, na.rm = TRUE)


#Age-weights


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
Age_wt$Pop_perc[1]<-mean(Database$Teen[84:88],2)
Age_wt$Pop_perc[2]<-mean(Database$Job[84:88],2)
Age_wt$Pop_perc[3]<-mean(Database$Settled[84:88],2)
Age_wt$Pop_perc[4]<-mean(Database$Family[84:88],2)
Age_wt$Pop_perc[5]<-mean(Database$Old[84:88],2)
Age_wt$Pop_perc[6]<-mean(Database$Retured[84:88],2)
Age_wt$Pop_perc[7]<-100- sum(Age_wt$Pop_perc[1:6])
Age_wt$weights<-round(Age_wt$Pop_perc/Age_wt$Sample_perc,2) #Age weights

Age_wt$weights[Age_wt$weights>2]<-2
Age_wt$weights[Age_wt$weights<0.5]<-0.5


#Weighted Base
Age_wt$weighted_perc[1]<-round(100*sum(calldetail$total_wts[calldetail$age=="18-24"], na.rm = TRUE)/sum(calldetail$total_wts, na.rm = TRUE),2)
Age_wt$weighted_perc[2]<-round(100*sum(calldetail$total_wts[calldetail$age=="25-29"], na.rm = TRUE)/sum(calldetail$total_wts, na.rm = TRUE),2)
Age_wt$weighted_perc[3]<-round(100*sum(calldetail$total_wts[calldetail$age=="30-39"], na.rm = TRUE)/sum(calldetail$total_wts, na.rm = TRUE),2)
Age_wt$weighted_perc[4]<-round(100*sum(calldetail$total_wts[calldetail$age=="40-49"], na.rm = TRUE)/sum(calldetail$total_wts, na.rm = TRUE),2)
Age_wt$weighted_perc[5]<-round(100*sum(calldetail$total_wts[calldetail$age=="50-59"], na.rm = TRUE)/sum(calldetail$total_wts, na.rm = TRUE),2)
Age_wt$weighted_perc[6]<-round(100*sum(calldetail$total_wts[calldetail$age=="60+"], na.rm = TRUE)/sum(calldetail$total_wts, na.rm = TRUE),2)


#Adding Age-wts to our response data

calldetail$Age_wts<-0

calldetail$Age_wts[(calldetail$age=="18-24")]<-Age_wt$weights[1]
calldetail$Age_wts[(calldetail$age=="25-29")]<-Age_wt$weights[2]
calldetail$Age_wts[(calldetail$age=="30-39")]<-Age_wt$weights[3]
calldetail$Age_wts[(calldetail$age=="40-49")]<-Age_wt$weights[4]
calldetail$Age_wts[(calldetail$age=="50-59")]<-Age_wt$weights[5]
calldetail$Age_wts[(calldetail$age=="60+")]<-Age_wt$weights[6]
calldetail$Age_wts[calldetail$Age_wts=="0"]<-mean(calldetail$Age_wts, na.rm = TRUE)

calldetail1_kondagaon<-calldetail

#Tables
calldetail<-calldetail1
calldetail$total_wts<- round(calldetail$Age_wts*calldetail$gender_wt*calldetail$iscity_wt,2)

#Report1
Report1<-matrix(NA, nrow = 3, ncol = 11)
Report1<-as.data.frame(Report1)

colnames(Report1)<- c("Overall", "Teen", "Job", "Adult","Family","Old", "Retired", "Male", "Female", "Rural", "Urban")
rownames(Report1)<- c("Base", "Awared", "Not_Awared")

Report1$Overall[1]<- sum(calldetail$total_wts, na.rm = TRUE)
Report1$Overall[2]<- sum(calldetail$total_wts[calldetail$rally_awareness=="Yes"], na.rm = TRUE)
Report1$Overall[3]<- sum(calldetail$total_wts[calldetail$rally_awareness=="No"], na.rm = TRUE)

Report1$Khairagarh[1]<- sum(calldetail$total_wts[calldetail$assembly=="Khairagarh"], na.rm = TRUE)
Report1$Khairagarh[2]<- sum(calldetail$total_wts[(calldetail$assembly=="Khairagarh")&(calldetail$rally_awareness=="Yes")], na.rm = TRUE)
Report1$Khairagarh[3]<- sum(calldetail$total_wts[(calldetail$assembly=="Khairagarh")&(calldetail$rally_awareness=="No")], na.rm = TRUE)

Report1$Dongargarh[1]<- sum(calldetail$total_wts[calldetail$assembly=="Dongargarh"], na.rm = TRUE)
Report1$Dongargarh[2]<- sum(calldetail$total_wts[(calldetail$assembly=="Dongargarh")&(calldetail$rally_awareness=="Yes")], na.rm = TRUE)
Report1$Dongargarh[3]<- sum(calldetail$total_wts[(calldetail$assembly=="Dongargarh")&(calldetail$rally_awareness=="No")], na.rm = TRUE)

Report1$Rajnandgaon[1]<- sum(calldetail$total_wts[calldetail$assembly=="Rajnandgaon"], na.rm = TRUE)
Report1$Rajnandgaon[2]<- sum(calldetail$total_wts[(calldetail$assembly=="Rajnandgaon")&(calldetail$rally_awareness=="Yes")], na.rm = TRUE)
Report1$Rajnandgaon[3]<- sum(calldetail$total_wts[(calldetail$assembly=="Rajnandgaon")&(calldetail$rally_awareness=="No")], na.rm = TRUE)

Report1$Kawardha[1]<- sum(calldetail$total_wts[calldetail$assembly=="Kawardha"], na.rm = TRUE)
Report1$Kawardha[2]<- sum(calldetail$total_wts[(calldetail$assembly=="Kawardha")&(calldetail$rally_awareness=="Yes")], na.rm = TRUE)
Report1$Kawardha[3]<- sum(calldetail$total_wts[(calldetail$assembly=="Kawardha")&(calldetail$rally_awareness=="No")], na.rm = TRUE)

Report1$Teen[1]<- sum(calldetail$total_wts[calldetail$age=="18-24"], na.rm = TRUE)
Report1$Teen[2]<- sum(calldetail$total_wts[(calldetail$age=="18-24")&(calldetail$rally_awareness=="Yes")], na.rm = TRUE)
Report1$Teen[3]<- sum(calldetail$total_wts[(calldetail$age=="18-24")&(calldetail$rally_awareness=="No")], na.rm = TRUE)

Report1$Job[1]<- sum(calldetail$total_wts[calldetail$age=="25-29"], na.rm = TRUE)
Report1$Job[2]<- sum(calldetail$total_wts[(calldetail$age=="25-29")&(calldetail$rally_awareness=="Yes")], na.rm = TRUE)
Report1$Job[3]<- sum(calldetail$total_wts[(calldetail$age=="25-29")&(calldetail$rally_awareness=="No")], na.rm = TRUE)

Report1$Adult[1]<- sum(calldetail$total_wts[calldetail$age=="30-39"], na.rm = TRUE)
Report1$Adult[2]<- sum(calldetail$total_wts[(calldetail$age=="30-39")&(calldetail$rally_awareness=="Yes")], na.rm = TRUE)
Report1$Adult[3]<- sum(calldetail$total_wts[(calldetail$age=="30-39")&(calldetail$rally_awareness=="No")], na.rm = TRUE)

Report1$Family[1]<- sum(calldetail$total_wts[calldetail$age=="40-49"], na.rm = TRUE)
Report1$Family[2]<- sum(calldetail$total_wts[(calldetail$age=="40-49")&(calldetail$rally_awareness=="Yes")], na.rm = TRUE)
Report1$Family[3]<- sum(calldetail$total_wts[(calldetail$age=="40-49")&(calldetail$rally_awareness=="No")], na.rm = TRUE)

Report1$Old[1]<- sum(calldetail$total_wts[calldetail$age=="50-59"], na.rm = TRUE)
Report1$Old[2]<- sum(calldetail$total_wts[(calldetail$age=="50-59")&(calldetail$rally_awareness=="Yes")], na.rm = TRUE)
Report1$Old[3]<- sum(calldetail$total_wts[(calldetail$age=="50-59")&(calldetail$rally_awareness=="No")], na.rm = TRUE)

Report1$Retired[1]<- sum(calldetail$total_wts[calldetail$age=="60+"], na.rm = TRUE)
Report1$Retired[2]<- sum(calldetail$total_wts[(calldetail$age=="60+")&(calldetail$rally_awareness=="Yes")], na.rm = TRUE)
Report1$Retired[3]<- sum(calldetail$total_wts[(calldetail$age=="60+")&(calldetail$rally_awareness=="No")], na.rm = TRUE)

Report1$Male[1]<- sum(calldetail$total_wts[calldetail$gender=="Male"], na.rm = TRUE)
Report1$Male[2]<- sum(calldetail$total_wts[(calldetail$gender=="Male")&(calldetail$rally_awareness=="Yes")], na.rm = TRUE)
Report1$Male[3]<- sum(calldetail$total_wts[(calldetail$gender=="Male")&(calldetail$rally_awareness=="No")], na.rm = TRUE)

Report1$Female[1]<- sum(calldetail$total_wts[calldetail$gender=="Female"], na.rm = TRUE)
Report1$Female[2]<- sum(calldetail$total_wts[(calldetail$gender=="Female")&(calldetail$rally_awareness=="Yes")], na.rm = TRUE)
Report1$Female[3]<- sum(calldetail$total_wts[(calldetail$gender=="Female")&(calldetail$rally_awareness=="No")], na.rm = TRUE)

Report1$Rural[1]<- sum(calldetail$total_wts[calldetail$iscity=="Rural"], na.rm = TRUE)
Report1$Rural[2]<- sum(calldetail$total_wts[(calldetail$iscity=="Rural")&(calldetail$rally_awareness=="Yes")], na.rm = TRUE)
Report1$Rural[3]<- sum(calldetail$total_wts[(calldetail$iscity=="Rural")&(calldetail$rally_awareness=="No")], na.rm = TRUE)

Report1$Urban[1]<- sum(calldetail$total_wts[calldetail$iscity=="Urban"], na.rm = TRUE)
Report1$Urban[2]<- sum(calldetail$total_wts[(calldetail$iscity=="Urban")&(calldetail$rally_awareness=="Yes")], na.rm = TRUE)
Report1$Urban[3]<- sum(calldetail$total_wts[(calldetail$iscity=="Urban")&(calldetail$rally_awareness=="No")], na.rm = TRUE)

#Report 2: Source
calldetail<-rbind(calldetail1_khairagarh, calldetail1_khujji, calldetail1_kondagaon)
calldetail$total_wts<- round(calldetail$Age_wts*calldetail$gender_wt*calldetail$iscity_wt,2)
Report2<-matrix(NA, nrow = 12, ncol = 11)
Report2<-as.data.frame(Report2)

v<-which(row %in% c("Other","0" ,"11"))
row<-row[-v]

colnames(Report2)<- c("Overall", "Teen", "Job", "Adult","Family","Old", "Retired", "Male", "Female", "Rural", "Urban")
rownames(Report2)<- c("Base", row, "Other")

Report2$Overall[1]<-sum(calldetail$total_wts[(calldetail$source!="0")&(calldetail$source!="11")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report2$Overall[rownames(Report2)==row[i]]<-sum(calldetail$total_wts[calldetail$source==row[i]], na.rm = TRUE)
}
Report2$Overall[rownames(Report2)=="Other"]<-sum(calldetail$total_wts[(calldetail$source=="Other")], na.rm = TRUE)

Report2$Khairagarh[1]<-sum(calldetail$total_wts[(calldetail$source!="0")&(calldetail$source!="11")&(calldetail$assembly=="Khairagarh")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report2$Khairagarh[rownames(Report2)==row[i]]<-sum(calldetail$total_wts[(calldetail$source==row[i])&(calldetail$assembly=="Khairagarh")], na.rm = TRUE)
}
Report2$Khairagarh[rownames(Report2)=="Other"]<-sum(calldetail$total_wts[(calldetail$source=="Other")&(calldetail$assembly=="Khairagarh")], na.rm = TRUE)

Report2$Khujji[1]<-sum(calldetail$total_wts[(calldetail$source!="0")&(calldetail$source!="11")&(calldetail$assembly=="Khujji")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report2$Khujji[rownames(Report2)==row[i]]<-sum(calldetail$total_wts[(calldetail$source==row[i])&(calldetail$assembly=="Khujji")], na.rm = TRUE)
}
Report2$Khujji[rownames(Report2)=="Other"]<-sum(calldetail$total_wts[(calldetail$source=="Other")&(calldetail$assembly=="Khujji")], na.rm = TRUE)

Report2$Kondagaon[1]<-sum(calldetail$total_wts[(calldetail$source!="0")&(calldetail$source!="11")&(calldetail$assembly=="Kondagaon")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report2$Kondagaon[rownames(Report2)==row[i]]<-sum(calldetail$total_wts[(calldetail$source==row[i])&(calldetail$assembly=="Kondagaon")], na.rm = TRUE)
}
Report2$Kondagaon[rownames(Report2)=="Other"]<-sum(calldetail$total_wts[(calldetail$source=="Other")&(calldetail$assembly=="Kondagaon")], na.rm = TRUE)

Report2$Teen[1]<-sum(calldetail$total_wts[(calldetail$source!="0")&(calldetail$source!="11")&(calldetail$age=="18-24")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report2$Teen[rownames(Report2)==row[i]]<-sum(calldetail$total_wts[(calldetail$source==row[i])&(calldetail$age=="18-24")], na.rm = TRUE)
}
Report2$Teen[rownames(Report2)=="Other"]<-sum(calldetail$total_wts[(calldetail$source=="Other")&(calldetail$age=="18-24")], na.rm = TRUE)

Report2$Job[1]<-sum(calldetail$total_wts[(calldetail$source!="0")&(calldetail$source!="11")&(calldetail$age=="25-29")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report2$Job[rownames(Report2)==row[i]]<-sum(calldetail$total_wts[(calldetail$source==row[i])&(calldetail$age=="25-29")], na.rm = TRUE)
}
Report2$Job[rownames(Report2)=="Other"]<-sum(calldetail$total_wts[(calldetail$source=="Other")&(calldetail$age=="25-29")], na.rm = TRUE)

Report2$Adult[1]<-sum(calldetail$total_wts[(calldetail$source!="0")&(calldetail$source!="11")&(calldetail$age=="30-39")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report2$Adult[rownames(Report2)==row[i]]<-sum(calldetail$total_wts[(calldetail$source==row[i])&(calldetail$age=="30-39")], na.rm = TRUE)
}
Report2$Adult[rownames(Report2)=="Other"]<-sum(calldetail$total_wts[(calldetail$source=="Other")&(calldetail$age=="30-39")], na.rm = TRUE)

Report2$Family[1]<-sum(calldetail$total_wts[(calldetail$source!="0")&(calldetail$source!="11")&(calldetail$age=="40-49")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report2$Family[rownames(Report2)==row[i]]<-sum(calldetail$total_wts[(calldetail$source==row[i])&(calldetail$age=="40-49")], na.rm = TRUE)
}
Report2$Family[rownames(Report2)=="Other"]<-sum(calldetail$total_wts[(calldetail$source=="Other")&(calldetail$age=="40-49")], na.rm = TRUE)

Report2$Old[1]<-sum(calldetail$total_wts[(calldetail$source!="0")&(calldetail$source!="11")&(calldetail$age=="50-59")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report2$Old[rownames(Report2)==row[i]]<-sum(calldetail$total_wts[(calldetail$source==row[i])&(calldetail$age=="50-59")], na.rm = TRUE)
}
Report2$Old[rownames(Report2)=="Other"]<-sum(calldetail$total_wts[(calldetail$source=="Other")&(calldetail$age=="50-59")], na.rm = TRUE)

Report2$Retired[1]<-sum(calldetail$total_wts[(calldetail$source!="0")&(calldetail$source!="11")&(calldetail$age=="60+")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report2$Retired[rownames(Report2)==row[i]]<-sum(calldetail$total_wts[(calldetail$source==row[i])&(calldetail$age=="60+")], na.rm = TRUE)
}
Report2$Retired[rownames(Report2)=="Other"]<-sum(calldetail$total_wts[(calldetail$source=="Other")&(calldetail$age=="60+")], na.rm = TRUE)

Report2$Male[1]<-sum(calldetail$total_wts[(calldetail$source!="0")&(calldetail$source!="11")&(calldetail$gender=="Male")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report2$Male[rownames(Report2)==row[i]]<-sum(calldetail$total_wts[(calldetail$source==row[i])&(calldetail$gender=="Male")], na.rm = TRUE)
}
Report2$Male[rownames(Report2)=="Other"]<-sum(calldetail$total_wts[(calldetail$source=="Other")&(calldetail$gender=="Male")], na.rm = TRUE)

Report2$Female[1]<-sum(calldetail$total_wts[(calldetail$source!="0")&(calldetail$source!="11")&(calldetail$gender=="Female")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report2$Female[rownames(Report2)==row[i]]<-sum(calldetail$total_wts[(calldetail$source==row[i])&(calldetail$gender=="Female")], na.rm = TRUE)
}
Report2$Female[rownames(Report2)=="Other"]<-sum(calldetail$total_wts[(calldetail$source=="Other")&(calldetail$gender=="Female")], na.rm = TRUE)

Report2$Rural[1]<-sum(calldetail$total_wts[(calldetail$source!="0")&(calldetail$source!="11")&(calldetail$iscity=="Rural")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report2$Rural[rownames(Report2)==row[i]]<-sum(calldetail$total_wts[(calldetail$source==row[i])&(calldetail$iscity=="Rural")], na.rm = TRUE)
}
Report2$Rural[rownames(Report2)=="Other"]<-sum(calldetail$total_wts[(calldetail$source=="Other")&(calldetail$iscity=="Rural")], na.rm = TRUE)

Report2$Urban[1]<-sum(calldetail$total_wts[(calldetail$source!="0")&(calldetail$source!="11")&(calldetail$iscity=="Urban")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report2$Urban[rownames(Report2)==row[i]]<-sum(calldetail$total_wts[(calldetail$source==row[i])&(calldetail$iscity=="Urban")], na.rm = TRUE)
}
Report2$Urban[rownames(Report2)=="Other"]<-sum(calldetail$total_wts[(calldetail$source=="Other")&(calldetail$iscity=="Urban")], na.rm = TRUE)

#Report 3
Report3<-matrix(NA, nrow = 3, ncol = 11)
Report3<-as.data.frame(Report3)

colnames(Report3)<- c("Overall", "Teen", "Job", "Adult","Family","Old", "Retired", "Male", "Female", "Rural", "Urban")
rownames(Report3)<- c("Base", "Yes", "No")

Report3$Overall[1]<- sum(calldetail$total_wts[calldetail$isad_eefective!="0"])
Report3$Overall[2]<- sum(calldetail$total_wts[calldetail$isad_eefective=="Yes"])
Report3$Overall[3]<- sum(calldetail$total_wts[calldetail$isad_eefective=="No"])

Report3$Teen[1]<- sum(calldetail$total_wts[(calldetail$isad_eefective!="0")&(calldetail$age=="18-24")])
Report3$Teen[2]<- sum(calldetail$total_wts[(calldetail$isad_eefective=="Yes")&(calldetail$age=="18-24")])
Report3$Teen[3]<- sum(calldetail$total_wts[(calldetail$isad_eefective=="No")&(calldetail$age=="18-24")])

Report3$Job[1]<- sum(calldetail$total_wts[(calldetail$isad_eefective!="0")&(calldetail$age=="25-29")])
Report3$Job[2]<- sum(calldetail$total_wts[(calldetail$isad_eefective=="Yes")&(calldetail$age=="25-29")])
Report3$Job[3]<- sum(calldetail$total_wts[(calldetail$isad_eefective=="No")&(calldetail$age=="25-29")])

Report3$Adult[1]<- sum(calldetail$total_wts[(calldetail$isad_eefective!="0")&(calldetail$age=="30-39")])
Report3$Adult[2]<- sum(calldetail$total_wts[(calldetail$isad_eefective=="Yes")&(calldetail$age=="30-39")])
Report3$Adult[3]<- sum(calldetail$total_wts[(calldetail$isad_eefective=="No")&(calldetail$age=="30-39")])

Report3$Family[1]<- sum(calldetail$total_wts[(calldetail$isad_eefective!="0")&(calldetail$age=="40-49")])
Report3$Family[2]<- sum(calldetail$total_wts[(calldetail$isad_eefective=="Yes")&(calldetail$age=="40-49")])
Report3$Family[3]<- sum(calldetail$total_wts[(calldetail$isad_eefective=="No")&(calldetail$age=="40-49")])

Report3$Old[1]<- sum(calldetail$total_wts[(calldetail$isad_eefective!="0")&(calldetail$age=="50-59")])
Report3$Old[2]<- sum(calldetail$total_wts[(calldetail$isad_eefective=="Yes")&(calldetail$age=="50-59")])
Report3$Old[3]<- sum(calldetail$total_wts[(calldetail$isad_eefective=="No")&(calldetail$age=="50-59")])

Report3$Retired[1]<- sum(calldetail$total_wts[(calldetail$isad_eefective!="0")&(calldetail$age=="60+")])
Report3$Retired[2]<- sum(calldetail$total_wts[(calldetail$isad_eefective=="Yes")&(calldetail$age=="60+")])
Report3$Retired[3]<- sum(calldetail$total_wts[(calldetail$isad_eefective=="No")&(calldetail$age=="60+")])

Report3$Male[1]<- sum(calldetail$total_wts[(calldetail$isad_eefective!="0")&(calldetail$gender=="Male")])
Report3$Male[2]<- sum(calldetail$total_wts[(calldetail$isad_eefective=="Yes")&(calldetail$gender=="Male")])
Report3$Male[3]<- sum(calldetail$total_wts[(calldetail$isad_eefective=="No")&(calldetail$gender=="Male")])

Report3$Female[1]<- sum(calldetail$total_wts[(calldetail$isad_eefective!="0")&(calldetail$gender=="Female")])
Report3$Female[2]<- sum(calldetail$total_wts[(calldetail$isad_eefective=="Yes")&(calldetail$gender=="Female")])
Report3$Female[3]<- sum(calldetail$total_wts[(calldetail$isad_eefective=="No")&(calldetail$gender=="Male")])

Report3$Rural[1]<- sum(calldetail$total_wts[(calldetail$isad_eefective!="0")&(calldetail$iscity=="Rural")])
Report3$Rural[2]<- sum(calldetail$total_wts[(calldetail$isad_eefective=="Yes")&(calldetail$iscity=="Rural")])
Report3$Rural[3]<- sum(calldetail$total_wts[(calldetail$isad_eefective=="No")&(calldetail$iscity=="Rural")])

Report3$Urban[1]<- sum(calldetail$total_wts[(calldetail$isad_eefective!="0")&(calldetail$iscity=="Urban")])
Report3$Urban[2]<- sum(calldetail$total_wts[(calldetail$isad_eefective=="Yes")&(calldetail$iscity=="Urban")])
Report3$Urban[3]<- sum(calldetail$total_wts[(calldetail$isad_eefective=="No")&(calldetail$iscity=="Urban")])

#Effective_Ad_Methhod
calldetail<-rbind(calldetail1_khairagarh, calldetail1_khujji, calldetail1_kondagaon)
calldetail$total_wts<- round(calldetail$Age_wts*calldetail$gender_wt*calldetail$iscity_wt,2)
Report4<-matrix(NA, nrow = 12, ncol = 14)
Report4<-as.data.frame(Report4)

v<-which(row %in% c("Other","0" ,"11"))
row<-row[-v]

colnames(Report4)<- c("Overall", "Khairagarh", "Khujji", "Kondagaon", "Teen", "Job", "Adult","Family","Old", "Retired", "Male", "Female", "Rural", "Urban")
rownames(Report4)<- c("Base", row, "Other")

Report4$Overall[1]<-sum(calldetail$total_wts[(calldetail$effective_ad_source!="0")&(calldetail$effective_ad_source!="11")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report4$Overall[rownames(Report4)==row[i]]<-sum(calldetail$total_wts[calldetail$effective_ad_source==row[i]], na.rm = TRUE)
}
Report4$Overall[rownames(Report4)=="Other"]<-sum(calldetail$total_wts[(calldetail$effective_ad_source=="Other")], na.rm = TRUE)

Report4$Khairagarh[1]<-sum(calldetail$total_wts[(calldetail$effective_ad_source!="0")&(calldetail$effective_ad_source!="11")&(calldetail$assembly=="Khairagarh")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report4$Khairagarh[rownames(Report4)==row[i]]<-sum(calldetail$total_wts[(calldetail$effective_ad_source==row[i])&(calldetail$assembly=="Khairagarh")], na.rm = TRUE)
}
Report4$Khairagarh[rownames(Report4)=="Other"]<-sum(calldetail$total_wts[(calldetail$effective_ad_source=="Other")&(calldetail$assembly=="Khairagarh")], na.rm = TRUE)

Report4$Khujji[1]<-sum(calldetail$total_wts[(calldetail$effective_ad_source!="0")&(calldetail$effective_ad_source!="11")&(calldetail$assembly=="Khujji")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report4$Khujji[rownames(Report4)==row[i]]<-sum(calldetail$total_wts[(calldetail$effective_ad_source==row[i])&(calldetail$assembly=="Khujji")], na.rm = TRUE)
}
Report4$Khujji[rownames(Report4)=="Other"]<-sum(calldetail$total_wts[(calldetail$effective_ad_source=="Other")&(calldetail$assembly=="Khujji")], na.rm = TRUE)

Report4$Kondagaon[1]<-sum(calldetail$total_wts[(calldetail$effective_ad_source!="0")&(calldetail$effective_ad_source!="11")&(calldetail$assembly=="Kondagaon")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report4$Kondagaon[rownames(Report4)==row[i]]<-sum(calldetail$total_wts[(calldetail$effective_ad_source==row[i])&(calldetail$assembly=="Kondagaon")], na.rm = TRUE)
}
Report4$Kondagaon[rownames(Report4)=="Other"]<-sum(calldetail$total_wts[(calldetail$effective_ad_source=="Other")&(calldetail$assembly=="Kondagaon")], na.rm = TRUE)

Report4$Teen[1]<-sum(calldetail$total_wts[(calldetail$effective_ad_source!="0")&(calldetail$effective_ad_source!="11")&(calldetail$age=="18-24")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report4$Teen[rownames(Report4)==row[i]]<-sum(calldetail$total_wts[(calldetail$effective_ad_source==row[i])&(calldetail$age=="18-24")], na.rm = TRUE)
}
Report4$Teen[rownames(Report4)=="Other"]<-sum(calldetail$total_wts[(calldetail$effective_ad_source=="Other")&(calldetail$age=="18-24")], na.rm = TRUE)

Report4$Job[1]<-sum(calldetail$total_wts[(calldetail$effective_ad_source!="0")&(calldetail$effective_ad_source!="11")&(calldetail$age=="25-29")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report4$Job[rownames(Report4)==row[i]]<-sum(calldetail$total_wts[(calldetail$effective_ad_source==row[i])&(calldetail$age=="25-29")], na.rm = TRUE)
}
Report4$Job[rownames(Report4)=="Other"]<-sum(calldetail$total_wts[(calldetail$effective_ad_source=="Other")&(calldetail$age=="25-29")], na.rm = TRUE)

Report4$Adult[1]<-sum(calldetail$total_wts[(calldetail$effective_ad_source!="0")&(calldetail$effective_ad_source!="11")&(calldetail$age=="30-39")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report4$Adult[rownames(Report4)==row[i]]<-sum(calldetail$total_wts[(calldetail$effective_ad_source==row[i])&(calldetail$age=="30-39")], na.rm = TRUE)
}
Report4$Adult[rownames(Report4)=="Other"]<-sum(calldetail$total_wts[(calldetail$effective_ad_source=="Other")&(calldetail$age=="30-39")], na.rm = TRUE)

Report4$Family[1]<-sum(calldetail$total_wts[(calldetail$effective_ad_source!="0")&(calldetail$effective_ad_source!="11")&(calldetail$age=="40-49")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report4$Family[rownames(Report4)==row[i]]<-sum(calldetail$total_wts[(calldetail$effective_ad_source==row[i])&(calldetail$age=="40-49")], na.rm = TRUE)
}
Report4$Family[rownames(Report4)=="Other"]<-sum(calldetail$total_wts[(calldetail$effective_ad_source=="Other")&(calldetail$age=="40-49")], na.rm = TRUE)

Report4$Old[1]<-sum(calldetail$total_wts[(calldetail$effective_ad_source!="0")&(calldetail$effective_ad_source!="11")&(calldetail$age=="50-59")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report4$Old[rownames(Report4)==row[i]]<-sum(calldetail$total_wts[(calldetail$effective_ad_source==row[i])&(calldetail$age=="50-59")], na.rm = TRUE)
}
Report4$Old[rownames(Report4)=="Other"]<-sum(calldetail$total_wts[(calldetail$effective_ad_source=="Other")&(calldetail$age=="50-59")], na.rm = TRUE)

Report4$Retired[1]<-sum(calldetail$total_wts[(calldetail$effective_ad_source!="0")&(calldetail$effective_ad_source!="11")&(calldetail$age=="60+")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report4$Retired[rownames(Report4)==row[i]]<-sum(calldetail$total_wts[(calldetail$effective_ad_source==row[i])&(calldetail$age=="60+")], na.rm = TRUE)
}
Report4$Retired[rownames(Report4)=="Other"]<-sum(calldetail$total_wts[(calldetail$effective_ad_source=="Other")&(calldetail$age=="60+")], na.rm = TRUE)

Report4$Male[1]<-sum(calldetail$total_wts[(calldetail$effective_ad_source!="0")&(calldetail$effective_ad_source!="11")&(calldetail$gender=="Male")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report4$Male[rownames(Report4)==row[i]]<-sum(calldetail$total_wts[(calldetail$effective_ad_source==row[i])&(calldetail$gender=="Male")], na.rm = TRUE)
}
Report4$Male[rownames(Report4)=="Other"]<-sum(calldetail$total_wts[(calldetail$effective_ad_source=="Other")&(calldetail$gender=="Male")], na.rm = TRUE)

Report4$Female[1]<-sum(calldetail$total_wts[(calldetail$effective_ad_source!="0")&(calldetail$effective_ad_source!="11")&(calldetail$gender=="Female")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report4$Female[rownames(Report4)==row[i]]<-sum(calldetail$total_wts[(calldetail$effective_ad_source==row[i])&(calldetail$gender=="Female")], na.rm = TRUE)
}
Report4$Female[rownames(Report4)=="Other"]<-sum(calldetail$total_wts[(calldetail$effective_ad_source=="Other")&(calldetail$gender=="Female")], na.rm = TRUE)

Report4$Rural[1]<-sum(calldetail$total_wts[(calldetail$effective_ad_source!="0")&(calldetail$effective_ad_source!="11")&(calldetail$iscity=="Rural")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report4$Rural[rownames(Report4)==row[i]]<-sum(calldetail$total_wts[(calldetail$effective_ad_source==row[i])&(calldetail$iscity=="Rural")], na.rm = TRUE)
}
Report4$Rural[rownames(Report4)=="Other"]<-sum(calldetail$total_wts[(calldetail$effective_ad_source=="Other")&(calldetail$iscity=="Rural")], na.rm = TRUE)

Report4$Urban[1]<-sum(calldetail$total_wts[(calldetail$effective_ad_source!="0")&(calldetail$effective_ad_source!="11")&(calldetail$iscity=="Urban")], na.rm = TRUE)
for (i in 1:length(row)) {
  Report4$Urban[rownames(Report4)==row[i]]<-sum(calldetail$total_wts[(calldetail$effective_ad_source==row[i])&(calldetail$iscity=="Urban")], na.rm = TRUE)
}
Report4$Urban[rownames(Report4)=="Other"]<-sum(calldetail$total_wts[(calldetail$effective_ad_source=="Other")&(calldetail$iscity=="Urban")], na.rm = TRUE)


Sample<- rbind(Age_wt, iscity_wt, gender_wt)

