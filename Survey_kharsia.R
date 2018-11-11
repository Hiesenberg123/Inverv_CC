calldetail2<- Kharsia_OPC_Survey_Calling_Data_Final
colnames(calldetail2)<-c("id", "agent", "campaign", "campaign id", "process", "process id", "caller", "extension", "callstart", "callend", "duration", "issurvey", "isassembly", "Block", "Block_other", "Party", "BJP_Candidate", "BJP_Candidate_Other", "Know_OP", "OPvsUP", "OPvsUP_other", "WhyUP", "WhyUP_Other", "WhyOP", "WhyOP_Other", "WhyMLA", "WhyMLA_Other", "is_OP_connected", "HowtoConnect", "HowtoConnect_other","isfarmer", "age", "rural_urban", "religion", "religion_other","caste", "caste_other", "catid", "cat_other", "gender", "disposition")
calldetail2<-as.data.frame(calldetail2)

#Data_Cleaning
#Block
calldetail2$Block[calldetail2$Block=="1"]<-"Kharsia"
calldetail2$Block[calldetail2$Block=="2"]<-"Pusaur"
calldetail2$Block[calldetail2$Block=="3"]<-"Raigarh"

#Party
calldetail2$Party[calldetail2$Party=="0"]<-"Missing"
calldetail2$Party[calldetail2$Party=="1"]<-"Congress"
calldetail2$Party[calldetail2$Party=="2"]<-"BJP"
calldetail2$Party[calldetail2$Party=="3"]<-"JCC"
calldetail2$Party[calldetail2$Party=="4"]<-"BSP"
calldetail2$Party[calldetail2$Party=="5"]<-"SP"
calldetail2$Party[calldetail2$Party=="6"]<-"GGP"
calldetail2$Party[calldetail2$Party=="7"]<-"AAP"
calldetail2$Party[calldetail2$Party=="8"]<-"Independent"
calldetail2$Party[calldetail2$Party=="9"]<-"NOTA"
calldetail2$Party[calldetail2$Party=="10"]<-"Candidate"
calldetail2$Party[calldetail2$Party=="11"]<-"Undecided"
calldetail2$Party[calldetail2$Party=="12"]<-"NoAnswer"

#BJP_Candidate
calldetail2$BJP_Candidate[calldetail2$BJP_Candidate=="1"]<-"OP_Choudhary"
calldetail2$BJP_Candidate[calldetail2$BJP_Candidate=="2"]<-"Naresh_Patel"
calldetail2$BJP_Candidate[calldetail2$BJP_Candidate=="3"]<-"Kamal_Garg"
calldetail2$BJP_Candidate[calldetail2$BJP_Candidate=="4"]<-"Girdhar_Gupta"
calldetail2$BJP_Candidate[calldetail2$BJP_Candidate=="5"]<-"BhimShankar_Yadav"
calldetail2$BJP_Candidate[calldetail2$BJP_Candidate=="6"]<-"Rajesh_Sharma"
calldetail2$BJP_Candidate[calldetail2$BJP_Candidate=="7"]<-"Mahesh_Sahu"
calldetail2$BJP_Candidate[calldetail2$BJP_Candidate=="8"]<-"Manjul_Dixit"
calldetail2$BJP_Candidate[calldetail2$BJP_Candidate=="0"]<-"Missing"
calldetail2$BJP_Candidate[calldetail2$BJP_Candidate=="90"]<-"Other"

#Know_OP
calldetail2$Know_OP[calldetail2$Know_OP=="0"]<-"Missing"
calldetail2$Know_OP[calldetail2$Know_OP=="1"]<-"Yes"
calldetail2$Know_OP[calldetail2$Know_OP=="2"]<-"No"
calldetail2$Know_OP[calldetail2$Know_OP=="3"]<-"Don't_Know"

#OPvsUP
calldetail2$OPvsUP[calldetail2$OPvsUP=="0"]<-"Missing"
calldetail2$OPvsUP[calldetail2$OPvsUP=="1"]<-"UP"
calldetail2$OPvsUP[calldetail2$OPvsUP=="2"]<-"OP"
calldetail2$OPvsUP[calldetail2$OPvsUP=="90"]<-"Others"

#WhyUP
calldetail2$WhyUP[calldetail2$WhyUP=="0"]<-"Missing"
calldetail2$WhyUP[calldetail2$WhyUP=="1"]<-"Development"
calldetail2$WhyUP[calldetail2$WhyUP=="2"]<-"Listen_to_people"
calldetail2$WhyUP[calldetail2$WhyUP=="3"]<-"Connected_to_masses"
calldetail2$WhyUP[calldetail2$WhyUP=="4"]<-"Congressi"
calldetail2$WhyUP[calldetail2$WhyUP=="90"]<-"Other"

#WhyOP
calldetail2$WhyOP[calldetail2$WhyOP=="0"]<-"Missing"
calldetail2$WhyOP[calldetail2$WhyOP=="1"]<-"Young_face"
calldetail2$WhyOP[calldetail2$WhyOP=="2"]<-"Educated_and_administrative_experience"
calldetail2$WhyOP[calldetail2$WhyOP=="3"]<-"DevelopmentasIAS"
calldetail2$WhyOP[calldetail2$WhyOP=="4"]<-"Bhajpai"
calldetail2$WhyOP[calldetail2$WhyOP=="90"]<-"Other"

#WhyMLA
calldetail2$WhyMLA[calldetail2$WhyMLA=="0"]<-"Missing"
calldetail2$WhyMLA[calldetail2$WhyMLA=="1"]<-"BSP"
calldetail2$WhyMLA[calldetail2$WhyMLA=="2"]<-"Listens_to_people"
calldetail2$WhyMLA[calldetail2$WhyMLA=="3"]<-"Honest"
calldetail2$WhyMLA[calldetail2$WhyMLA=="4"]<-"Leader"
calldetail2$WhyMLA[calldetail2$WhyMLA=="90"]<-"Other"

#OPConnect
calldetail2$is_OP_connected[calldetail2$is_OP_connected=="0"]<-"Missing"
calldetail2$is_OP_connected[calldetail2$is_OP_connected=="1"]<-"Yes"
calldetail2$is_OP_connected[calldetail2$is_OP_connected=="2"]<-"No"
calldetail2$is_OP_connected[calldetail2$is_OP_connected=="3"]<-"Don't_Know"

#isfarmer
calldetail2$isfarmer[calldetail2$isfarmer=="0"]<-"Missing"
calldetail2$isfarmer[calldetail2$isfarmer=="1"]<-"Yes"
calldetail2$isfarmer[calldetail2$isfarmer=="2"]<-"No"
calldetail2$isfarmer[calldetail2$isfarmer=="3"]<-"Don't_Know"

#rural_urban
calldetail2$rural_urban[calldetail2$rural_urban=="0"]<-"Missing"
calldetail2$rural_urban[calldetail2$rural_urban=="1"]<-"Urban"
calldetail2$rural_urban[calldetail2$rural_urban=="2"]<-"Rural"

#Religion
calldetail2$religion[calldetail2$religion=="0"]<-"Missing"
calldetail2$religion[calldetail2$religion=="1"]<-"Hindu"
calldetail2$religion[calldetail2$religion=="2"]<-"Islam"
calldetail2$religion[calldetail2$religion=="3"]<-"Sikh"
calldetail2$religion[calldetail2$religion=="4"]<-"Christian"
calldetail2$religion[calldetail2$religion=="5"]<-"Buddhist"
calldetail2$religion[calldetail2$religion=="6"]<-"Jain"
calldetail2$religion[calldetail2$religion=="7"]<-"Don't_Know"
calldetail2$religion[calldetail2$religion=="90"]<-"Other"


#Caste
for (i in 1:97) {
  calldetail2$caste[calldetail2$caste==Data_Values_Jashpur$Values[i]]<-Data_Values_Jashpur$Q17[i]
}
calldetail2$caste[calldetail2$caste=="0"]<-"Missing"
calldetail2$caste[calldetail2$caste=="999"]<-"Other"

#Category
calldetail2$catid[calldetail2$catid=="0"]<-"Missing"
calldetail2$catid[calldetail2$catid=="1"]<-"General"
calldetail2$catid[calldetail2$catid=="2"]<-"OBC"
calldetail2$catid[calldetail2$catid=="3"]<-"SC"
calldetail2$catid[calldetail2$catid=="4"]<-"ST"
calldetail2$catid[calldetail2$catid=="5"]<-"NoAnswer"
calldetail2$catid[calldetail2$religion=="Islam"]<-"Islam"
calldetail2$catid[calldetail2$religion=="Christian"]<-"Christian"

#Gender
calldetail2$gender[calldetail2$gender=="1"]<-"Female"
calldetail2$gender[calldetail2$gender=="2"]<-"Male"

#Disposition
calldetail2$disposition[(calldetail2$disposition=="0")]<-"System_failure"
calldetail2$disposition[(calldetail2$disposition=="1")]<-"Call_complete"
calldetail2$disposition[(calldetail2$disposition=="2")]<-"Call_me_later"
calldetail2$disposition[(calldetail2$disposition=="3")]<-"Call_incomplete"
calldetail2$disposition[(calldetail2$disposition=="4")]<-"Call_avoided"
calldetail2$disposition[(calldetail2$disposition=="5")]<-"Call_disconnected"

#Report_1: OP's Popularity
Report1<- matrix(NA, nrow = 2, ncol = 6)
colnames(Report1)<- c("Overall", "BJP", "Non_BJP", "Kharsia", "Raigarh", "Pusor")
rownames(Report1)<- c("Yes", "No")
Report1<-as.data.frame(Report1)
Know_OP<-count(calldetail2, "Know_OP") 
Report1$Overall[1]<- Know_OP$freq[Know_OP$Know_OP=="Yes"]
Report1$Overall[2]<- Know_OP$freq[Know_OP$Know_OP=="No"]+Know_OP$freq[Know_OP$Know_OP=="Don't_Know"]

calldetailX<-calldetail2[(calldetail2$Party=="BJP"),]
Know_OP<-count(calldetailX, "Know_OP") 
Report1$BJP[1]<- Know_OP$freq[(Know_OP$Know_OP=="Yes")]
Report1$BJP[2]<- Know_OP$freq[(Know_OP$Know_OP=="No")]+Know_OP$freq[(Know_OP$Know_OP=="Don't_Know")]

calldetailX<-calldetail2[(calldetail2$Party!="BJP"),]
Know_OP<-count(calldetailX, "Know_OP") 
Report1$Non_BJP[1]<- Know_OP$freq[Know_OP$Know_OP=="Yes"]
Report1$Non_BJP[2]<- Know_OP$freq[Know_OP$Know_OP=="No"]+Know_OP$freq[Know_OP$Know_OP=="Don't_Know"]

calldetailX<-calldetail2[(calldetail2$Block=="Kharsia"),]
Know_OP<-count(calldetailX, "Know_OP") 
Report1$Kharsia[1]<- Know_OP$freq[Know_OP$Know_OP=="Yes"]
Report1$Kharsia[2]<- Know_OP$freq[Know_OP$Know_OP=="No"]+Know_OP$freq[Know_OP$Know_OP=="Don't_Know"]

calldetailX<-calldetail2[(calldetail2$Block=="Raigarh"),]
Know_OP<-count(calldetailX, "Know_OP") 
Report1$Raigarh[1]<- Know_OP$freq[Know_OP$Know_OP=="Yes"]
Report1$Raigarh[2]<- Know_OP$freq[Know_OP$Know_OP=="No"]+Know_OP$freq[Know_OP$Know_OP=="Don't_Know"]

calldetailX<-calldetail2[(calldetail2$Block=="Pusaur"),]
Know_OP<-count(calldetailX, "Know_OP") 
Report1$Pusor[1]<- Know_OP$freq[Know_OP$Know_OP=="Yes"]
Report1$Pusor[2]<- Know_OP$freq[Know_OP$Know_OP=="No"]+Know_OP$freq[Know_OP$Know_OP=="Don't_Know"]

calldetail2<-calldetail2[(calldetail2$disposition=="Call_complete"),]

#Weights
#Gender_wt
i<-18
#Wts for Region wise distribution
gender_wt<-matrix(data = NA, nrow = 3, ncol = 3)
dimnames(gender_wt) = list( c("Male","Female", "Missing_gender"),c("Pop_perc", "Sample_perc", "weights"))
gender_wt<-as.data.frame(gender_wt)
#Rel_wt$Sample_perc<-100*Rel_wt$Sample_count/sum(Rel_wt$Sample_count)
#Rel_wt$weights<-Rel_wt$Pop_perc/Rel_wt$Sample_perc
gender_wt$Pop_perc<-c(Database$Male_perc[i], Database$Female_perc[i],0)
gender_Count<-count(calldetail2,"gender")
gender_Count<-as.data.frame(gender_Count)
gender_Count$perc<-round(100*gender_Count$freq/sum(gender_Count$freq, na.rm = TRUE),2)

#Pasting Sample perc
gender_wt$Sample_perc[1]<-gender_Count$perc[gender_Count$gender=="Male"]
gender_wt$Sample_perc[2]<-gender_Count$perc[gender_Count$gender=="Female"]
gender_wt$Sample_perc[3]<-gender_Count$perc[is.na(gender_Count$gender)]


gender_wt$weights<-round(gender_wt$Pop_perc/gender_wt$Sample_perc,2)
gender_wt$weights[gender_wt$weights>2]<- 2
gender_wt$weights[gender_wt$weights<0.5]<- 0.5


calldetail2$gender_wt<-0      ## Assigining weights<-1 to everyone
calldetail2$gender_wt[calldetail2$gender=="Male"]<-gender_wt$weights[1]     #Assigning wts to Male
calldetail2$gender_wt[calldetail2$gender=="Female"]<-gender_wt$weights[2]   #Assigning wts to Female
calldetail2$gender_wt[calldetail2$gender_wt=="0"]<-mean(calldetail2$gender_wt, na.rm = TRUE)


#CHG_Database for population related reference. i is the constituency number which should be changed according to AC.
# input reuiqred: i ie AC No. Sampled Data as calldetail. CHG Data as Database. Column name for Raw Data should be iscity


i<-18
#Wts for iscity wise distribution
iscity_wt<-matrix(data = NA, nrow = 3, ncol = 3)
dimnames(iscity_wt) = list( c("Urban","Rural","Missing_region"),c("Pop_perc", "Sample_perc", "weights"))
iscity_wt<-as.data.frame(iscity_wt)
#Rel_wt$Sample_perc<-100*Rel_wt$Sample_count/sum(Rel_wt$Sample_count)
#Rel_wt$weights<-Rel_wt$Pop_perc/Rel_wt$Sample_perc
iscity_wt$Pop_perc<-c(Database$percent_urban[i], Database$percent_rural[i],0)
iscity_Count<-count(calldetail2,"rural_urban")
iscity_Count<-as.data.frame(iscity_Count)
iscity_Count$perc<-round(100*iscity_Count$freq/sum(iscity_Count$freq, na.rm = TRUE),2)

#Pasting Sample perc
iscity_wt$Sample_perc[1]<-iscity_Count$perc[iscity_Count$rural_urban=="Urban"]
iscity_wt$Sample_perc[2]<-iscity_Count$perc[iscity_Count$rural_urban=="Rural"]
iscity_wt$Sample_perc[3]<-iscity_Count$perc[iscity_Count$rural_urban=="Missing"]


calldetail2$iscity_wt<-0  #Assigning all wts<-1 and putting respective weigths to each onward

iscity_wt$weights<-round(iscity_wt$Pop_perc/iscity_wt$Sample_perc,2)
iscity_wt$weights[iscity_wt$weights>2]<-2
iscity_wt$weights[iscity_wt$weights<0.5]<-0.5

calldetail2$iscity_wt[calldetail2$rural_urban=="Urban"]<-iscity_wt$weights[1]
calldetail2$iscity_wt[calldetail2$rural_urban=="Rural"]<-iscity_wt$weights[2]
calldetail2$iscity_wt[calldetail2$rural_urban=="0"]<-mean(calldetail2$iscity_wt, na.rm = TRUE)


#This code will give weighs wrt catid to each caller in a new column named Weighs. calldetail is used as sample data. Database is used as 
#CHG_Database for population related reference. i is the constituency number which should be changed according to AC.
# input reuiqred: i ie AC No. Sampled Data as Raw_Data_7. CHG Data as Database. Column name for Raw Data should be Caste_Category
# Muslim have been taken as 

i<-18
#Wts for catid wise distribution
catid_wt<-matrix(data = NA, nrow = 6, ncol = 3)
dimnames(catid_wt) = list( c("gen_OBC", "SC", "ST", "Muslim","Christian", "Missing"),c("Pop_perc", "Sample_perc", "weights"))
catid_wt<-as.data.frame(catid_wt)
calldetail2$catid[calldetail2$religion=="Islam"]<-"Islam"
calldetail2$catid[calldetail2$religion=="Christian"]<-"Christian"

#Rel_wt$Sample_perc<-100*Rel_wt$Sample_count/sum(Rel_wt$Sample_count)
#Rel_wt$weights<-Rel_wt$Pop_perc/Rel_wt$Sample_perc
catid_wt$Pop_perc<-c((Database$percent_gen_obc[i]-Database$percent_muslim[i]),Database$percent_sc[i], (Database$percent_st[i]-Database$percent_christian[i]), Database$percent_muslim[i] , Database$percent_christian[i],0)
catid_Count<-count(calldetail2,"catid")
catid_Count$perc<-round(100*catid_Count$freq/sum(catid_Count$freq, na.rm = TRUE),2)
#Rel_Count$perc<-round(100*Rel_Count$freq/sum(Rel_Count$freq, na.rm = TRUE),2)

#Pasting Sample perc
catid_wt$Sample_perc[1]<-catid_Count$perc[catid_Count$catid=="General"]+catid_Count$perc[catid_Count$catid=="OBC"]
catid_wt$Sample_perc[2]<-catid_Count$perc[catid_Count$catid=="SC"]
catid_wt$Sample_perc[3]<-catid_Count$perc[catid_Count$catid=="ST"]
catid_wt$Sample_perc[4]<-catid_Count$perc[catid_Count$catid=="Islam"]
catid_wt$Sample_perc[5]<-catid_Count$perc[catid_Count$catid=="Christian"]
catid_wt$Sample_perc[6]<-catid_Count$perc[catid_Count$catid=="Missing"]

calldetail2$catid_wt<-0     #Assigning all weights equal to 1
catid_wt$weights<-(catid_wt$Pop_perc/catid_wt$Sample_perc)
catid_wt$weights[catid_wt$weights<0.5]<- 0.5
catid_wt$weights[catid_wt$weights>2]<- 2

calldetail2$catid_wt[calldetail2$catid=="General"]<-catid_wt$weights[1]
calldetail2$catid_wt[calldetail2$catid=="OBC"]<-catid_wt$weights[1]
calldetail2$catid_wt[calldetail2$catid=="SC"]<-catid_wt$weights[2]
calldetail2$catid_wt[calldetail2$catid=="ST"]<-catid_wt$weights[3]
calldetail2$catid_wt[calldetail2$catid=="Islam"]<-catid_wt$weights[4]
calldetail2$catid_wt[calldetail2$catid=="Christian"]<-catid_wt$weights[5]
calldetail2$catid_wt[calldetail2$catid_wt=="0"]<-mean(calldetail2$catid_wt,na.rm = TRUE)



#This code will give weighs wrt age to each caller in a new column named Weighs. calldetail is used as sample data. Database is used as 
#CHG_Database for population related reference. i is the constituency number which should be changed according to AC.


i<-18

#Age-grouping
calldetail2$age[(calldetail2$age>17)&(calldetail2$age<25)]<-"18-24"
calldetail2$age[(calldetail2$age>24)&(calldetail2$age<30)]<-"25-29"
calldetail2$age[(calldetail2$age>29)&(calldetail2$age<40)]<-"30-39"
calldetail2$age[(calldetail2$age>39)&(calldetail2$age<50)]<-"40-49"
calldetail2$age[(calldetail2$age>49)&(calldetail2$age<60)]<-"50-59"
calldetail2$age[calldetail2$age>59]<-"60+"
calldetail2$age[calldetail2$age=="0"]<-"Missing"

#Wts for age wise distribution
Age_wt<-matrix(data = NA, nrow = 7, ncol = 3)
dimnames(Age_wt) = list( c("18-24", "25-29", "30-39", "40-49", "50-59", "60+", "Missing_age"),c("Pop_perc", "Sample_perc", "weights"))
Age_wt<-as.data.frame(Age_wt)
#Age_wt$Sample_perc<-100*Age_wt$Sample_count/sum(Age_wt$Sample_count)

#Age wise distribution in Sample space
Age_Count<-count(calldetail2,"age")
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

calldetail2$Age_wts<-0

calldetail2$Age_wts[(calldetail2$age>18)&(calldetail2$age<25)]<-Age_wt$weights[1]
calldetail2$Age_wts[(calldetail2$age>24)&(calldetail2$age<29)]<-Age_wt$weights[2]
calldetail2$Age_wts[(calldetail2$age>29)&(calldetail2$age<40)]<-Age_wt$weights[3]
calldetail2$Age_wts[(calldetail2$age>39)&(calldetail2$age<50)]<-Age_wt$weights[4]
calldetail2$Age_wts[(calldetail2$age>49)&(calldetail2$age<60)]<-Age_wt$weights[5]
calldetail2$Age_wts[(calldetail2$age>59)&(calldetail2$age<160)]<-Age_wt$weights[6]
calldetail2$Age_wts[calldetail2$Age_wts=="0"]<-mean(calldetail2$Age_wts, na.rm = TRUE)

calldetail2$total_wts<- round(calldetail2$Age_wts*calldetail2$catid_wt*calldetail2$iscity_wt*calldetail2$gender_wt,2)

#Tables
#Report2: BJP_Leaders
Report2<-matrix(NA, nrow = 9, ncol = 1)
rownames(Report2)<- c("Base", "OP_Choudhary", "Kamal_Garg", "Bhimashankar_Yadav", "Mahesh_Sahu", "Girdhar_Gupta", "Naresh_Patel", "Rajesh_Sharma", "Manjul_Dixit")
colnames(Report2)<- c("Count")

Report2<-as.data.frame(Report2)
Report2$Count[1]<- sum(calldetail2$total_wts[calldetail2$Party=="BJP"], na.rm = TRUE)
Report2$Count[2]<- sum(calldetail2$total_wts[calldetail2$BJP_Candidate=="OP_Choudhary"])
Report2$Count[3]<- sum(calldetail2$total_wts[calldetail2$BJP_Candidate=="Naresh_Patel"])
Report2$Count[4]<- sum(calldetail2$total_wts[calldetail2$BJP_Candidate=="Kamal_Garg"])
Report2$Count[5]<- sum(calldetail2$total_wts[calldetail2$BJP_Candidate=="Girdhar_Gupta"])
Report2$Count[6]<- sum(calldetail2$total_wts[calldetail2$BJP_Candidate=="BhimShankar_Yadav"])
Report2$Count[7]<- sum(calldetail2$total_wts[calldetail2$BJP_Candidate=="Rajesh_Sharma"])
Report2$Count[8]<- sum(calldetail2$total_wts[calldetail2$BJP_Candidate=="Mahesh_Sahu"])
Report2$Count[9]<- sum(calldetail2$total_wts[calldetail2$BJP_Candidate=="Manjul_Dixit"])

#Report3: MLA:OPvsUP
i<-18
Report3<-matrix(NA, nrow = 4, ncol = 18)
colnames(Report3)<- c("Overall", "Male", "Female", "Rural", "Urban", "Farmer", "Non_Farmer", "Teen", "Job","Adult","Family","Old","Retired", Database$Cst1[i], Database$Cst2[i], Database$Cst3[i], Database$Cst4[i], Database$Cst5[i])
rownames(Report3)<- c("Base" ,"OPC", "UP", "Other")

Report3<-as.data.frame(Report3)
Report3$Overall[1]<- sum(calldetail2$total_wts, na.rm = TRUE)
Report3$Overall[2]<- sum(calldetail2$total_wts[calldetail2$OPvsUP=="OP"], na.rm = TRUE)
Report3$Overall[3]<- sum(calldetail2$total_wts[calldetail2$OPvsUP=="UP"], na.rm = TRUE)
Report3$Overall[4]<- sum(calldetail2$total_wts[calldetail2$OPvsUP=="Others"], na.rm = TRUE)

Report3$Male[1]<- sum(calldetail2$total_wts[(calldetail2$gender=="Male")], na.rm = TRUE)
Report3$Male[2]<- sum(calldetail2$total_wts[(calldetail2$gender=="Male")&(calldetail2$OPvsUP=="OP")], na.rm = TRUE)
Report3$Male[3]<- sum(calldetail2$total_wts[(calldetail2$gender=="Male")&(calldetail2$OPvsUP=="UP")], na.rm = TRUE)
Report3$Male[4]<- sum(calldetail2$total_wts[(calldetail2$gender=="Male")&(calldetail2$OPvsUP=="Others")], na.rm = TRUE)

Report3$Female[1]<- sum(calldetail2$total_wts[(calldetail2$gender=="Female")], na.rm = TRUE)
Report3$Female[2]<- sum(calldetail2$total_wts[(calldetail2$gender=="Female")&(calldetail2$OPvsUP=="OP")], na.rm = TRUE)
Report3$Female[3]<- sum(calldetail2$total_wts[(calldetail2$gender=="Female")&(calldetail2$OPvsUP=="UP")], na.rm = TRUE)
Report3$Female[4]<- sum(calldetail2$total_wts[(calldetail2$gender=="Female")&(calldetail2$OPvsUP=="Others")], na.rm = TRUE)

Report3$Rural[1]<- sum(calldetail2$total_wts[(calldetail2$rural_urban=="Rural")], na.rm = TRUE)
Report3$Rural[2]<- sum(calldetail2$total_wts[(calldetail2$rural_urban=="Rural")&(calldetail2$OPvsUP=="OP")], na.rm = TRUE)
Report3$Rural[3]<- sum(calldetail2$total_wts[(calldetail2$rural_urban=="Rural")&(calldetail2$OPvsUP=="UP")], na.rm = TRUE)
Report3$Rural[4]<- sum(calldetail2$total_wts[(calldetail2$rural_urban=="Rural")&(calldetail2$OPvsUP=="Others")], na.rm = TRUE)

Report3$Urban[1]<- sum(calldetail2$total_wts[(calldetail2$rural_urban=="Urban")], na.rm = TRUE)
Report3$Urban[2]<- sum(calldetail2$total_wts[(calldetail2$rural_urban=="Urban")&(calldetail2$OPvsUP=="OP")], na.rm = TRUE)
Report3$Urban[3]<- sum(calldetail2$total_wts[(calldetail2$rural_urban=="Urban")&(calldetail2$OPvsUP=="UP")], na.rm = TRUE)
Report3$Urban[4]<- sum(calldetail2$total_wts[(calldetail2$rural_urban=="Urban")&(calldetail2$OPvsUP=="Others")], na.rm = TRUE)

Report3$Farmer[1]<- sum(calldetail2$total_wts[(calldetail2$isfarmer=="Yes")], na.rm = TRUE)
Report3$Farmer[2]<- sum(calldetail2$total_wts[(calldetail2$isfarmer=="Yes")&(calldetail2$OPvsUP=="OP")], na.rm = TRUE)
Report3$Farmer[3]<- sum(calldetail2$total_wts[(calldetail2$isfarmer=="Yes")&(calldetail2$OPvsUP=="UP")], na.rm = TRUE)
Report3$Farmer[4]<- sum(calldetail2$total_wts[(calldetail2$isfarmer=="Yes")&(calldetail2$OPvsUP=="Others")], na.rm = TRUE)

Report3$Non_Farmer[1]<- sum(calldetail2$total_wts[(calldetail2$isfarmer=="No")], na.rm = TRUE)
Report3$Non_Farmer[2]<- sum(calldetail2$total_wts[(calldetail2$isfarmer=="No")&(calldetail2$OPvsUP=="OP")], na.rm = TRUE)
Report3$Non_Farmer[3]<- sum(calldetail2$total_wts[(calldetail2$isfarmer=="No")&(calldetail2$OPvsUP=="UP")], na.rm = TRUE)
Report3$Non_Farmer[4]<- sum(calldetail2$total_wts[(calldetail2$isfarmer=="No")&(calldetail2$OPvsUP=="Others")], na.rm = TRUE)

Report3$Teen[1]<- sum(calldetail2$total_wts[(calldetail2$age=="18-24")], na.rm = TRUE)
Report3$Teen[2]<- sum(calldetail2$total_wts[(calldetail2$age=="18-24")&(calldetail2$OPvsUP=="OP")], na.rm = TRUE)
Report3$Teen[3]<- sum(calldetail2$total_wts[(calldetail2$age=="18-24")&(calldetail2$OPvsUP=="UP")], na.rm = TRUE)
Report3$Teen[4]<- sum(calldetail2$total_wts[(calldetail2$age=="18-24")&(calldetail2$OPvsUP=="Others")], na.rm = TRUE)

Report3$Job[1]<- sum(calldetail2$total_wts[(calldetail2$age=="25-29")], na.rm = TRUE)
Report3$Job[2]<- sum(calldetail2$total_wts[(calldetail2$age=="25-29")&(calldetail2$OPvsUP=="OP")], na.rm = TRUE)
Report3$Job[3]<- sum(calldetail2$total_wts[(calldetail2$age=="25-29")&(calldetail2$OPvsUP=="UP")], na.rm = TRUE)
Report3$Job[4]<- sum(calldetail2$total_wts[(calldetail2$age=="25-29")&(calldetail2$OPvsUP=="Others")], na.rm = TRUE)

Report3$Adult[1]<- sum(calldetail2$total_wts[(calldetail2$age=="30-39")], na.rm = TRUE)
Report3$Adult[2]<- sum(calldetail2$total_wts[(calldetail2$age=="30-39")&(calldetail2$OPvsUP=="OP")], na.rm = TRUE)
Report3$Adult[3]<- sum(calldetail2$total_wts[(calldetail2$age=="30-39")&(calldetail2$OPvsUP=="UP")], na.rm = TRUE)
Report3$Adult[4]<- sum(calldetail2$total_wts[(calldetail2$age=="30-39")&(calldetail2$OPvsUP=="Others")], na.rm = TRUE)

Report3$Family[1]<- sum(calldetail2$total_wts[(calldetail2$age=="40-49")], na.rm = TRUE)
Report3$Family[2]<- sum(calldetail2$total_wts[(calldetail2$age=="40-49")&(calldetail2$OPvsUP=="OP")], na.rm = TRUE)
Report3$Family[3]<- sum(calldetail2$total_wts[(calldetail2$age=="40-49")&(calldetail2$OPvsUP=="UP")], na.rm = TRUE)
Report3$Family[4]<- sum(calldetail2$total_wts[(calldetail2$age=="40-49")&(calldetail2$OPvsUP=="Others")], na.rm = TRUE)

Report3$Old[1]<- sum(calldetail2$total_wts[(calldetail2$age=="50-59")], na.rm = TRUE)
Report3$Old[2]<- sum(calldetail2$total_wts[(calldetail2$age=="50-59")&(calldetail2$OPvsUP=="OP")], na.rm = TRUE)
Report3$Old[3]<- sum(calldetail2$total_wts[(calldetail2$age=="50-59")&(calldetail2$OPvsUP=="UP")], na.rm = TRUE)
Report3$Old[4]<- sum(calldetail2$total_wts[(calldetail2$age=="50-59")&(calldetail2$OPvsUP=="Others")], na.rm = TRUE)

Report3$Retired[1]<- sum(calldetail2$total_wts[(calldetail2$age=="60+")], na.rm = TRUE)
Report3$Retired[2]<- sum(calldetail2$total_wts[(calldetail2$age=="60+")&(calldetail2$OPvsUP=="OP")], na.rm = TRUE)
Report3$Retired[3]<- sum(calldetail2$total_wts[(calldetail2$age=="60+")&(calldetail2$OPvsUP=="UP")], na.rm = TRUE)
Report3$Retired[4]<- sum(calldetail2$total_wts[(calldetail2$age=="60+")&(calldetail2$OPvsUP=="Others")], na.rm = TRUE)

i<-18
Report3[1,14]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst1[i])], na.rm = TRUE)
Report3[2,14]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst1[i])&(calldetail2$OPvsUP=="OP")], na.rm = TRUE)
Report3[3,14]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst1[i])&(calldetail2$OPvsUP=="UP")], na.rm = TRUE)
Report3[4,14]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst1[i])&(calldetail2$OPvsUP=="Others")], na.rm = TRUE)

Report3[1,15]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst2[i])], na.rm = TRUE)
Report3[2,15]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst2[i])&(calldetail2$OPvsUP=="OP")], na.rm = TRUE)
Report3[3,15]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst2[i])&(calldetail2$OPvsUP=="UP")], na.rm = TRUE)
Report3[4,15]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst2[i])&(calldetail2$OPvsUP=="Others")], na.rm = TRUE)

Report3[1,16]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst3[i])], na.rm = TRUE)
Report3[2,16]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst3[i])&(calldetail2$OPvsUP=="OP")], na.rm = TRUE)
Report3[3,16]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst3[i])&(calldetail2$OPvsUP=="UP")], na.rm = TRUE)
Report3[4,16]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst3[i])&(calldetail2$OPvsUP=="Others")], na.rm = TRUE)

Report3[1,17]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst4[i])], na.rm = TRUE)
Report3[2,17]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst4[i])&(calldetail2$OPvsUP=="OP")], na.rm = TRUE)
Report3[3,17]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst4[i])&(calldetail2$OPvsUP=="UP")], na.rm = TRUE)
Report3[4,17]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst4[i])&(calldetail2$OPvsUP=="Others")], na.rm = TRUE)

Report3[1,18]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst5[i])], na.rm = TRUE)
Report3[2,18]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst5[i])&(calldetail2$OPvsUP=="OP")], na.rm = TRUE)
Report3[3,18]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst5[i])&(calldetail2$OPvsUP=="UP")], na.rm = TRUE)
Report3[4,18]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst5[i])&(calldetail2$OPvsUP=="Others")], na.rm = TRUE)

#Report4:OPC_Connectivity
i<-18
Report4<-matrix(NA, nrow = 4, ncol = 19)
Report4<-as.data.frame(Report4)
colnames(Report4)<- c("Overall", "Kharsia", "Raigarh", "Pusaur", "Male", "Female", "Rural", "Urban", "Farmer", "Non_Farmer", Database$Cst1[i], Database$Cst2[i], Database$Cst3[i], Database$Cst4[i], Database$Cst5[i], "General", "OBC", "SC", "ST")
rownames(Report4)<- c("Base" ,"Yes", "No", "Don't_Know")

Report4$Overall[1]<- sum(calldetail2$total_wts, na.rm = TRUE)
Report4$Overall[2]<- sum(calldetail2$total_wts[calldetail2$is_OP_connected=="Yes"], na.rm = TRUE)
Report4$Overall[3]<- sum(calldetail2$total_wts[calldetail2$is_OP_connected=="No"], na.rm = TRUE)
Report4$Overall[4]<- sum(calldetail2$total_wts[calldetail2$is_OP_connected=="Don't_Know"], na.rm = TRUE)

Report4$Kharsia[1]<- sum(calldetail2$total_wts[(calldetail2$Block=="Kharsia")], na.rm = TRUE)
Report4$Kharsia[2]<- sum(calldetail2$total_wts[(calldetail2$Block=="Kharsia")&(calldetail2$is_OP_connected=="Yes")], na.rm = TRUE)
Report4$Kharsia[3]<- sum(calldetail2$total_wts[(calldetail2$Block=="Kharsia")&(calldetail2$is_OP_connected=="No")], na.rm = TRUE)
Report4$Kharsia[4]<- sum(calldetail2$total_wts[(calldetail2$Block=="Kharsia")&(calldetail2$is_OP_connected=="Don't_Know")], na.rm = TRUE)

Report4$Raigarh[1]<- sum(calldetail2$total_wts[(calldetail2$Block=="Raigarh")], na.rm = TRUE)
Report4$Raigarh[2]<- sum(calldetail2$total_wts[(calldetail2$Block=="Raigarh")&(calldetail2$is_OP_connected=="Yes")], na.rm = TRUE)
Report4$Raigarh[3]<- sum(calldetail2$total_wts[(calldetail2$Block=="Raigarh")&(calldetail2$is_OP_connected=="No")], na.rm = TRUE)
Report4$Raigarh[4]<- sum(calldetail2$total_wts[(calldetail2$Block=="Raigarh")&(calldetail2$is_OP_connected=="Don't_Know")], na.rm = TRUE)

Report4$Pusaur[1]<- sum(calldetail2$total_wts[(calldetail2$Block=="Pusaur")], na.rm = TRUE)
Report4$Pusaur[2]<- sum(calldetail2$total_wts[(calldetail2$Block=="Pusaur")&(calldetail2$is_OP_connected=="Yes")], na.rm = TRUE)
Report4$Pusaur[3]<- sum(calldetail2$total_wts[(calldetail2$Block=="Pusaur")&(calldetail2$is_OP_connected=="No")], na.rm = TRUE)
Report4$Pusaur[4]<- sum(calldetail2$total_wts[(calldetail2$Block=="Pusaur")&(calldetail2$is_OP_connected=="Don't_Know")], na.rm = TRUE)

Report4$Male[1]<- sum(calldetail2$total_wts[(calldetail2$gender=="Male")], na.rm = TRUE)
Report4$Male[2]<- sum(calldetail2$total_wts[(calldetail2$gender=="Male")&(calldetail2$is_OP_connected=="Yes")], na.rm = TRUE)
Report4$Male[3]<- sum(calldetail2$total_wts[(calldetail2$gender=="Male")&(calldetail2$is_OP_connected=="No")], na.rm = TRUE)
Report4$Male[4]<- sum(calldetail2$total_wts[(calldetail2$gender=="Male")&(calldetail2$is_OP_connected=="Don't_Know")], na.rm = TRUE)

Report4$Female[1]<- sum(calldetail2$total_wts[(calldetail2$gender=="Female")], na.rm = TRUE)
Report4$Female[2]<- sum(calldetail2$total_wts[(calldetail2$gender=="Female")&(calldetail2$is_OP_connected=="Yes")], na.rm = TRUE)
Report4$Female[3]<- sum(calldetail2$total_wts[(calldetail2$gender=="Female")&(calldetail2$is_OP_connected=="No")], na.rm = TRUE)
Report4$Female[4]<- sum(calldetail2$total_wts[(calldetail2$gender=="Female")&(calldetail2$is_OP_connected=="Don't_Know")], na.rm = TRUE)

Report4$Rural[1]<- sum(calldetail2$total_wts[(calldetail2$rural_urban=="Rural")], na.rm = TRUE)
Report4$Rural[2]<- sum(calldetail2$total_wts[(calldetail2$rural_urban=="Rural")&(calldetail2$is_OP_connected=="Yes")], na.rm = TRUE)
Report4$Rural[3]<- sum(calldetail2$total_wts[(calldetail2$rural_urban=="Rural")&(calldetail2$is_OP_connected=="No")], na.rm = TRUE)
Report4$Rural[4]<- sum(calldetail2$total_wts[(calldetail2$rural_urban=="Rural")&(calldetail2$is_OP_connected=="Don't_Know")], na.rm = TRUE)

Report4$Urban[1]<- sum(calldetail2$total_wts[(calldetail2$rural_urban=="Urban")], na.rm = TRUE)
Report4$Urban[2]<- sum(calldetail2$total_wts[(calldetail2$rural_urban=="Urban")&(calldetail2$is_OP_connected=="Yes")], na.rm = TRUE)
Report4$Urban[3]<- sum(calldetail2$total_wts[(calldetail2$rural_urban=="Urban")&(calldetail2$is_OP_connected=="No")], na.rm = TRUE)
Report4$Urban[4]<- sum(calldetail2$total_wts[(calldetail2$rural_urban=="Urban")&(calldetail2$is_OP_connected=="Don't_Know")], na.rm = TRUE)

Report4$Farmer[1]<- sum(calldetail2$total_wts[(calldetail2$isfarmer=="Yes" )], na.rm = TRUE)
Report4$Farmer[2]<- sum(calldetail2$total_wts[(calldetail2$isfarmer=="Yes")&(calldetail2$is_OP_connected=="Yes")], na.rm = TRUE)
Report4$Farmer[3]<- sum(calldetail2$total_wts[(calldetail2$isfarmer=="Yes")&(calldetail2$is_OP_connected=="No")], na.rm = TRUE)
Report4$Farmer[4]<- sum(calldetail2$total_wts[(calldetail2$isfarmer=="Yes")&(calldetail2$is_OP_connected=="Don't_Know")], na.rm = TRUE)

Report4$Non_Farmer[1]<- sum(calldetail2$total_wts[(calldetail2$isfarmer=="No" )], na.rm = TRUE)
Report4$Non_Farmer[2]<- sum(calldetail2$total_wts[(calldetail2$isfarmer=="No")&(calldetail2$is_OP_connected=="Yes")], na.rm = TRUE)
Report4$Non_Farmer[3]<- sum(calldetail2$total_wts[(calldetail2$isfarmer=="No")&(calldetail2$is_OP_connected=="No")], na.rm = TRUE)
Report4$Non_Farmer[4]<- sum(calldetail2$total_wts[(calldetail2$isfarmer=="No")&(calldetail2$is_OP_connected=="Don't_Know")], na.rm = TRUE)

i<-18

Report4[1,11]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst2[i])], na.rm = TRUE)
Report4[2,11]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst2[i])&(calldetail2$is_OP_connected=="Yes")], na.rm = TRUE)
Report4[3,11]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst2[i])&(calldetail2$is_OP_connected=="No")], na.rm = TRUE)
Report4[4,11]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst2[i])&(calldetail2$is_OP_connected=="Don't_Know")], na.rm = TRUE)

Report4[1,12]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst3[i])], na.rm = TRUE)
Report4[2,12]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst3[i])&(calldetail2$is_OP_connected=="Yes")], na.rm = TRUE)
Report4[3,12]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst3[i])&(calldetail2$is_OP_connected=="No")], na.rm = TRUE)
Report4[4,12]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst3[i])&(calldetail2$is_OP_connected=="Don't_Know")], na.rm = TRUE)

Report4[1,13]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst4[i])], na.rm = TRUE)
Report4[2,13]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst4[i])&(calldetail2$is_OP_connected=="Yes")], na.rm = TRUE)
Report4[3,13]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst4[i])&(calldetail2$is_OP_connected=="No")], na.rm = TRUE)
Report4[4,13]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst4[i])&(calldetail2$is_OP_connected=="Don't_Know")], na.rm = TRUE)

Report4[1,14]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst5[i])], na.rm = TRUE)
Report4[2,14]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst5[i])&(calldetail2$is_OP_connected=="Yes")], na.rm = TRUE)
Report4[3,14]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst5[i])&(calldetail2$is_OP_connected=="No")], na.rm = TRUE)
Report4[4,14]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst5[i])&(calldetail2$is_OP_connected=="Don't_Know")], na.rm = TRUE)

Report4[1,15]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst1[i])], na.rm = TRUE)
Report4[2,15]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst1[i])&(calldetail2$is_OP_connected=="Yes")], na.rm = TRUE)
Report4[3,15]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst1[i])&(calldetail2$is_OP_connected=="No")], na.rm = TRUE)
Report4[4,15]<- sum(calldetail2$total_wts[(calldetail2$caste==Database$Cst1[i])&(calldetail2$is_OP_connected=="Don't_Know")], na.rm = TRUE)

Report4$General[1]<- sum(calldetail2$total_wts[(calldetail2$catid=="General")], na.rm = TRUE)
Report4$General[2]<- sum(calldetail2$total_wts[(calldetail2$catid=="General")&(calldetail2$is_OP_connected=="Yes")], na.rm = TRUE)
Report4$General[3]<- sum(calldetail2$total_wts[(calldetail2$catid=="General")&(calldetail2$is_OP_connected=="No")], na.rm = TRUE)
Report4$General[4]<- sum(calldetail2$total_wts[(calldetail2$catid=="General")&(calldetail2$is_OP_connected=="Don't_Know")], na.rm = TRUE)

Report4$OBC[1]<- sum(calldetail2$total_wts[(calldetail2$catid=="OBC")], na.rm = TRUE)
Report4$OBC[2]<- sum(calldetail2$total_wts[(calldetail2$catid=="OBC")&(calldetail2$is_OP_connected=="Yes")], na.rm = TRUE)
Report4$OBC[3]<- sum(calldetail2$total_wts[(calldetail2$catid=="OBC")&(calldetail2$is_OP_connected=="No")], na.rm = TRUE)
Report4$OBC[4]<- sum(calldetail2$total_wts[(calldetail2$catid=="OBC")&(calldetail2$is_OP_connected=="Don't_Know")], na.rm = TRUE)

Report4$SC[1]<- sum(calldetail2$total_wts[(calldetail2$catid=="SC")], na.rm = TRUE)
Report4$SC[2]<- sum(calldetail2$total_wts[(calldetail2$catid=="SC")&(calldetail2$is_OP_connected=="Yes")], na.rm = TRUE)
Report4$SC[3]<- sum(calldetail2$total_wts[(calldetail2$catid=="SC")&(calldetail2$is_OP_connected=="No")], na.rm = TRUE)
Report4$SC[4]<- sum(calldetail2$total_wts[(calldetail2$catid=="SC")&(calldetail2$is_OP_connected=="Don't_Know")], na.rm = TRUE)

Report4$ST[1]<- sum(calldetail2$total_wts[(calldetail2$catid=="ST")], na.rm = TRUE)
Report4$ST[2]<- sum(calldetail2$total_wts[(calldetail2$catid=="ST")&(calldetail2$is_OP_connected=="Yes")], na.rm = TRUE)
Report4$ST[3]<- sum(calldetail2$total_wts[(calldetail2$catid=="ST")&(calldetail2$is_OP_connected=="No")], na.rm = TRUE)
Report4$ST[4]<- sum(calldetail2$total_wts[(calldetail2$catid=="ST")&(calldetail2$is_OP_connected=="Don't_Know")], na.rm = TRUE)

#Table5: Why OPC?
Report5<-matrix(NA, nrow = 6, ncol = 13)
Report5<-as.data.frame(Report5)
colnames(Report5)<- c("Overall", "Male", "Female", "Rural", "Urban", "Farmer", "Non_Farmer", "Teen", "Job","Adult","Family","Old","Retired")
rownames(Report5)<- c("Base" ,"Young_face", "Educated_and_administrative_experience", "DevelopmentasIAS", "Bhajpai", "Other")

Report5$Overall[1]<-sum(calldetail2$total_wts[(calldetail2$WhyOP!="Missing")], na.rm = TRUE)
Report5$Overall[2]<-sum(calldetail2$total_wts[(calldetail2$WhyOP==rownames(Report5)[2])], na.rm = TRUE)
Report5$Overall[3]<-sum(calldetail2$total_wts[(calldetail2$WhyOP==rownames(Report5)[3])], na.rm = TRUE)
Report5$Overall[4]<-sum(calldetail2$total_wts[(calldetail2$WhyOP==rownames(Report5)[4])], na.rm = TRUE)
Report5$Overall[5]<-sum(calldetail2$total_wts[(calldetail2$WhyOP==rownames(Report5)[5])], na.rm = TRUE)
Report5$Overall[6]<-sum(calldetail2$total_wts[(calldetail2$WhyOP==rownames(Report5)[6])], na.rm = TRUE)

Report5$Male[1]<-sum(calldetail2$total_wts[(calldetail2$gender=="Male")&(calldetail2$WhyOP!="Missing")], na.rm = TRUE)
Report5$Male[2]<-sum(calldetail2$total_wts[(calldetail2$gender=="Male")&(calldetail2$WhyOP==rownames(Report5)[2])], na.rm = TRUE)
Report5$Male[3]<-sum(calldetail2$total_wts[(calldetail2$gender=="Male")&(calldetail2$WhyOP==rownames(Report5)[3])], na.rm = TRUE)
Report5$Male[4]<-sum(calldetail2$total_wts[(calldetail2$gender=="Male")&(calldetail2$WhyOP==rownames(Report5)[4])], na.rm = TRUE)
Report5$Male[5]<-sum(calldetail2$total_wts[(calldetail2$gender=="Male")&(calldetail2$WhyOP==rownames(Report5)[5])], na.rm = TRUE)
Report5$Male[6]<-sum(calldetail2$total_wts[(calldetail2$gender=="Male")&(calldetail2$WhyOP==rownames(Report5)[6])], na.rm = TRUE)

Report5$Female[1]<-sum(calldetail2$total_wts[(calldetail2$gender=="Female")&(calldetail2$WhyOP!="Missing")], na.rm = TRUE)
Report5$Female[2]<-sum(calldetail2$total_wts[(calldetail2$gender=="Female")&(calldetail2$WhyOP==rownames(Report5)[2])], na.rm = TRUE)
Report5$Female[3]<-sum(calldetail2$total_wts[(calldetail2$gender=="Female")&(calldetail2$WhyOP==rownames(Report5)[3])], na.rm = TRUE)
Report5$Female[4]<-sum(calldetail2$total_wts[(calldetail2$gender=="Female")&(calldetail2$WhyOP==rownames(Report5)[4])], na.rm = TRUE)
Report5$Female[5]<-sum(calldetail2$total_wts[(calldetail2$gender=="Female")&(calldetail2$WhyOP==rownames(Report5)[5])], na.rm = TRUE)
Report5$Female[6]<-sum(calldetail2$total_wts[(calldetail2$gender=="Female")&(calldetail2$WhyOP==rownames(Report5)[6])], na.rm = TRUE)

Report5$Rural[1]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Rural")&(calldetail2$WhyOP!="Missing")], na.rm = TRUE)
Report5$Rural[2]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Rural")&(calldetail2$WhyOP==rownames(Report5)[2])], na.rm = TRUE)
Report5$Rural[3]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Rural")&(calldetail2$WhyOP==rownames(Report5)[3])], na.rm = TRUE)
Report5$Rural[4]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Rural")&(calldetail2$WhyOP==rownames(Report5)[4])], na.rm = TRUE)
Report5$Rural[5]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Rural")&(calldetail2$WhyOP==rownames(Report5)[5])], na.rm = TRUE)
Report5$Rural[6]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Rural")&(calldetail2$WhyOP==rownames(Report5)[6])], na.rm = TRUE)

Report5$Urban[1]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Urban")&(calldetail2$WhyOP!="Missing")], na.rm = TRUE)
Report5$Urban[2]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Urban")&(calldetail2$WhyOP==rownames(Report5)[2])], na.rm = TRUE)
Report5$Urban[3]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Urban")&(calldetail2$WhyOP==rownames(Report5)[3])], na.rm = TRUE)
Report5$Urban[4]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Urban")&(calldetail2$WhyOP==rownames(Report5)[4])], na.rm = TRUE)
Report5$Urban[5]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Urban")&(calldetail2$WhyOP==rownames(Report5)[5])], na.rm = TRUE)
Report5$Urban[6]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Urban")&(calldetail2$WhyOP==rownames(Report5)[6])], na.rm = TRUE)

Report5$Farmer[1]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="Yes")&(calldetail2$WhyOP!="Missing")], na.rm = TRUE)
Report5$Farmer[2]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="Yes")&(calldetail2$WhyOP==rownames(Report5)[2])], na.rm = TRUE)
Report5$Farmer[3]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="Yes")&(calldetail2$WhyOP==rownames(Report5)[3])], na.rm = TRUE)
Report5$Farmer[4]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="Yes")&(calldetail2$WhyOP==rownames(Report5)[4])], na.rm = TRUE)
Report5$Farmer[5]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="Yes")&(calldetail2$WhyOP==rownames(Report5)[5])], na.rm = TRUE)
Report5$Farmer[6]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="Yes")&(calldetail2$WhyOP==rownames(Report5)[6])], na.rm = TRUE)

Report5$Non_Farmer[1]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="No")&(calldetail2$WhyOP!="Missing")], na.rm = TRUE)
Report5$Non_Farmer[2]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="No")&(calldetail2$WhyOP==rownames(Report5)[2])], na.rm = TRUE)
Report5$Non_Farmer[3]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="No")&(calldetail2$WhyOP==rownames(Report5)[3])], na.rm = TRUE)
Report5$Non_Farmer[4]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="No")&(calldetail2$WhyOP==rownames(Report5)[4])], na.rm = TRUE)
Report5$Non_Farmer[5]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="No")&(calldetail2$WhyOP==rownames(Report5)[5])], na.rm = TRUE)
Report5$Non_Farmer[6]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="No")&(calldetail2$WhyOP==rownames(Report5)[6])], na.rm = TRUE)

Report5$Teen[1]<-sum(calldetail2$total_wts[(calldetail2$age=="18-24")&(calldetail2$WhyOP!="Missing")], na.rm = TRUE)
Report5$Teen[2]<-sum(calldetail2$total_wts[(calldetail2$age=="18-24")&(calldetail2$WhyOP==rownames(Report5)[2])], na.rm = TRUE)
Report5$Teen[3]<-sum(calldetail2$total_wts[(calldetail2$age=="18-24")&(calldetail2$WhyOP==rownames(Report5)[3])], na.rm = TRUE)
Report5$Teen[4]<-sum(calldetail2$total_wts[(calldetail2$age=="18-24")&(calldetail2$WhyOP==rownames(Report5)[4])], na.rm = TRUE)
Report5$Teen[5]<-sum(calldetail2$total_wts[(calldetail2$age=="18-24")&(calldetail2$WhyOP==rownames(Report5)[5])], na.rm = TRUE)
Report5$Teen[6]<-sum(calldetail2$total_wts[(calldetail2$age=="18-24")&(calldetail2$WhyOP==rownames(Report5)[6])], na.rm = TRUE)

Report5$Job[1]<-sum(calldetail2$total_wts[(calldetail2$age=="25-29")&(calldetail2$WhyOP!="Missing")], na.rm = TRUE)
Report5$Job[2]<-sum(calldetail2$total_wts[(calldetail2$age=="25-29")&(calldetail2$WhyOP==rownames(Report5)[2])], na.rm = TRUE)
Report5$Job[3]<-sum(calldetail2$total_wts[(calldetail2$age=="25-29")&(calldetail2$WhyOP==rownames(Report5)[3])], na.rm = TRUE)
Report5$Job[4]<-sum(calldetail2$total_wts[(calldetail2$age=="25-29")&(calldetail2$WhyOP==rownames(Report5)[4])], na.rm = TRUE)
Report5$Job[5]<-sum(calldetail2$total_wts[(calldetail2$age=="25-29")&(calldetail2$WhyOP==rownames(Report5)[5])], na.rm = TRUE)
Report5$Job[6]<-sum(calldetail2$total_wts[(calldetail2$age=="25-29")&(calldetail2$WhyOP==rownames(Report5)[6])], na.rm = TRUE)

Report5$Adult[1]<-sum(calldetail2$total_wts[(calldetail2$age=="30-39")&(calldetail2$WhyOP!="Missing")], na.rm = TRUE)
Report5$Adult[2]<-sum(calldetail2$total_wts[(calldetail2$age=="30-39")&(calldetail2$WhyOP==rownames(Report5)[2])], na.rm = TRUE)
Report5$Adult[3]<-sum(calldetail2$total_wts[(calldetail2$age=="30-39")&(calldetail2$WhyOP==rownames(Report5)[3])], na.rm = TRUE)
Report5$Adult[4]<-sum(calldetail2$total_wts[(calldetail2$age=="30-39")&(calldetail2$WhyOP==rownames(Report5)[4])], na.rm = TRUE)
Report5$Adult[5]<-sum(calldetail2$total_wts[(calldetail2$age=="30-39")&(calldetail2$WhyOP==rownames(Report5)[5])], na.rm = TRUE)
Report5$Adult[6]<-sum(calldetail2$total_wts[(calldetail2$age=="30-39")&(calldetail2$WhyOP==rownames(Report5)[6])], na.rm = TRUE)

Report5$Family[1]<-sum(calldetail2$total_wts[(calldetail2$age=="40-49")&(calldetail2$WhyOP!="Missing")], na.rm = TRUE)
Report5$Family[2]<-sum(calldetail2$total_wts[(calldetail2$age=="40-49")&(calldetail2$WhyOP==rownames(Report5)[2])], na.rm = TRUE)
Report5$Family[3]<-sum(calldetail2$total_wts[(calldetail2$age=="40-49")&(calldetail2$WhyOP==rownames(Report5)[3])], na.rm = TRUE)
Report5$Family[4]<-sum(calldetail2$total_wts[(calldetail2$age=="40-49")&(calldetail2$WhyOP==rownames(Report5)[4])], na.rm = TRUE)
Report5$Family[5]<-sum(calldetail2$total_wts[(calldetail2$age=="40-49")&(calldetail2$WhyOP==rownames(Report5)[5])], na.rm = TRUE)
Report5$Family[6]<-sum(calldetail2$total_wts[(calldetail2$age=="40-49")&(calldetail2$WhyOP==rownames(Report5)[6])], na.rm = TRUE)

Report5$Old[1]<-sum(calldetail2$total_wts[(calldetail2$age=="50-59")&(calldetail2$WhyOP!="Missing")], na.rm = TRUE)
Report5$Old[2]<-sum(calldetail2$total_wts[(calldetail2$age=="50-59")&(calldetail2$WhyOP==rownames(Report5)[2])], na.rm = TRUE)
Report5$Old[3]<-sum(calldetail2$total_wts[(calldetail2$age=="50-59")&(calldetail2$WhyOP==rownames(Report5)[3])], na.rm = TRUE)
Report5$Old[4]<-sum(calldetail2$total_wts[(calldetail2$age=="50-59")&(calldetail2$WhyOP==rownames(Report5)[4])], na.rm = TRUE)
Report5$Old[5]<-sum(calldetail2$total_wts[(calldetail2$age=="50-59")&(calldetail2$WhyOP==rownames(Report5)[5])], na.rm = TRUE)
Report5$Old[6]<-sum(calldetail2$total_wts[(calldetail2$age=="50-59")&(calldetail2$WhyOP==rownames(Report5)[6])], na.rm = TRUE)

Report5$Retired[1]<-sum(calldetail2$total_wts[(calldetail2$age=="60+")&(calldetail2$WhyOP!="Missing")], na.rm = TRUE)
Report5$Retired[2]<-sum(calldetail2$total_wts[(calldetail2$age=="60+")&(calldetail2$WhyOP==rownames(Report5)[2])], na.rm = TRUE)
Report5$Retired[3]<-sum(calldetail2$total_wts[(calldetail2$age=="60+")&(calldetail2$WhyOP==rownames(Report5)[3])], na.rm = TRUE)
Report5$Retired[4]<-sum(calldetail2$total_wts[(calldetail2$age=="60+")&(calldetail2$WhyOP==rownames(Report5)[4])], na.rm = TRUE)
Report5$Retired[5]<-sum(calldetail2$total_wts[(calldetail2$age=="60+")&(calldetail2$WhyOP==rownames(Report5)[5])], na.rm = TRUE)
Report5$Retired[6]<-sum(calldetail2$total_wts[(calldetail2$age=="60+")&(calldetail2$WhyOP==rownames(Report5)[6])], na.rm = TRUE)


#Table6: Why UP?
Report6<-matrix(NA, nrow = 6, ncol = 13)
Report6<-as.data.frame(Report6)
colnames(Report6)<- c("Overall", "Male", "Female", "Rural", "Urban", "Farmer", "Non_Farmer", "Teen", "Job","Adult","Family","Old","Retired")
rownames(Report6)<- c("Base" ,"Development", "Listen_to_people", "Connected_to_masses", "Congressi", "Other")

Report6$Overall[1]<-sum(calldetail2$total_wts[(calldetail2$WhyUP!="Missing")], na.rm = TRUE)
Report6$Overall[2]<-sum(calldetail2$total_wts[(calldetail2$WhyUP==rownames(Report6)[2])], na.rm = TRUE)
Report6$Overall[3]<-sum(calldetail2$total_wts[(calldetail2$WhyUP==rownames(Report6)[3])], na.rm = TRUE)
Report6$Overall[4]<-sum(calldetail2$total_wts[(calldetail2$WhyUP==rownames(Report6)[4])], na.rm = TRUE)
Report6$Overall[5]<-sum(calldetail2$total_wts[(calldetail2$WhyUP==rownames(Report6)[5])], na.rm = TRUE)
Report6$Overall[6]<-sum(calldetail2$total_wts[(calldetail2$WhyUP==rownames(Report6)[6])], na.rm = TRUE)

Report6$Male[1]<-sum(calldetail2$total_wts[(calldetail2$gender=="Male")&(calldetail2$WhyUP!="Missing")], na.rm = TRUE)
Report6$Male[2]<-sum(calldetail2$total_wts[(calldetail2$gender=="Male")&(calldetail2$WhyUP==rownames(Report6)[2])], na.rm = TRUE)
Report6$Male[3]<-sum(calldetail2$total_wts[(calldetail2$gender=="Male")&(calldetail2$WhyUP==rownames(Report6)[3])], na.rm = TRUE)
Report6$Male[4]<-sum(calldetail2$total_wts[(calldetail2$gender=="Male")&(calldetail2$WhyUP==rownames(Report6)[4])], na.rm = TRUE)
Report6$Male[5]<-sum(calldetail2$total_wts[(calldetail2$gender=="Male")&(calldetail2$WhyUP==rownames(Report6)[5])], na.rm = TRUE)
Report6$Male[6]<-sum(calldetail2$total_wts[(calldetail2$gender=="Male")&(calldetail2$WhyUP==rownames(Report6)[6])], na.rm = TRUE)

Report6$Female[1]<-sum(calldetail2$total_wts[(calldetail2$gender=="Female")&(calldetail2$WhyUP!="Missing")], na.rm = TRUE)
Report6$Female[2]<-sum(calldetail2$total_wts[(calldetail2$gender=="Female")&(calldetail2$WhyUP==rownames(Report6)[2])], na.rm = TRUE)
Report6$Female[3]<-sum(calldetail2$total_wts[(calldetail2$gender=="Female")&(calldetail2$WhyUP==rownames(Report6)[3])], na.rm = TRUE)
Report6$Female[4]<-sum(calldetail2$total_wts[(calldetail2$gender=="Female")&(calldetail2$WhyUP==rownames(Report6)[4])], na.rm = TRUE)
Report6$Female[5]<-sum(calldetail2$total_wts[(calldetail2$gender=="Female")&(calldetail2$WhyUP==rownames(Report6)[5])], na.rm = TRUE)
Report6$Female[6]<-sum(calldetail2$total_wts[(calldetail2$gender=="Female")&(calldetail2$WhyUP==rownames(Report6)[6])], na.rm = TRUE)

Report6$Rural[1]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Rural")&(calldetail2$WhyUP!="Missing")], na.rm = TRUE)
Report6$Rural[2]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Rural")&(calldetail2$WhyUP==rownames(Report6)[2])], na.rm = TRUE)
Report6$Rural[3]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Rural")&(calldetail2$WhyUP==rownames(Report6)[3])], na.rm = TRUE)
Report6$Rural[4]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Rural")&(calldetail2$WhyUP==rownames(Report6)[4])], na.rm = TRUE)
Report6$Rural[5]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Rural")&(calldetail2$WhyUP==rownames(Report6)[5])], na.rm = TRUE)
Report6$Rural[6]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Rural")&(calldetail2$WhyUP==rownames(Report6)[6])], na.rm = TRUE)

Report6$Urban[1]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Urban")&(calldetail2$WhyUP!="Missing")], na.rm = TRUE)
Report6$Urban[2]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Urban")&(calldetail2$WhyUP==rownames(Report6)[2])], na.rm = TRUE)
Report6$Urban[3]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Urban")&(calldetail2$WhyUP==rownames(Report6)[3])], na.rm = TRUE)
Report6$Urban[4]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Urban")&(calldetail2$WhyUP==rownames(Report6)[4])], na.rm = TRUE)
Report6$Urban[5]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Urban")&(calldetail2$WhyUP==rownames(Report6)[5])], na.rm = TRUE)
Report6$Urban[6]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Urban")&(calldetail2$WhyUP==rownames(Report6)[6])], na.rm = TRUE)

Report6$Farmer[1]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="Yes")&(calldetail2$WhyUP!="Missing")], na.rm = TRUE)
Report6$Farmer[2]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="Yes")&(calldetail2$WhyUP==rownames(Report6)[2])], na.rm = TRUE)
Report6$Farmer[3]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="Yes")&(calldetail2$WhyUP==rownames(Report6)[3])], na.rm = TRUE)
Report6$Farmer[4]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="Yes")&(calldetail2$WhyUP==rownames(Report6)[4])], na.rm = TRUE)
Report6$Farmer[5]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="Yes")&(calldetail2$WhyUP==rownames(Report6)[5])], na.rm = TRUE)
Report6$Farmer[6]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="Yes")&(calldetail2$WhyUP==rownames(Report6)[6])], na.rm = TRUE)

Report6$Non_Farmer[1]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="No")&(calldetail2$WhyUP!="Missing")], na.rm = TRUE)
Report6$Non_Farmer[2]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="No")&(calldetail2$WhyUP==rownames(Report6)[2])], na.rm = TRUE)
Report6$Non_Farmer[3]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="No")&(calldetail2$WhyUP==rownames(Report6)[3])], na.rm = TRUE)
Report6$Non_Farmer[4]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="No")&(calldetail2$WhyUP==rownames(Report6)[4])], na.rm = TRUE)
Report6$Non_Farmer[5]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="No")&(calldetail2$WhyUP==rownames(Report6)[5])], na.rm = TRUE)
Report6$Non_Farmer[6]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="No")&(calldetail2$WhyUP==rownames(Report6)[6])], na.rm = TRUE)

Report6$Teen[1]<-sum(calldetail2$total_wts[(calldetail2$age=="18-24")&(calldetail2$WhyUP!="Missing")], na.rm = TRUE)
Report6$Teen[2]<-sum(calldetail2$total_wts[(calldetail2$age=="18-24")&(calldetail2$WhyUP==rownames(Report6)[2])], na.rm = TRUE)
Report6$Teen[3]<-sum(calldetail2$total_wts[(calldetail2$age=="18-24")&(calldetail2$WhyUP==rownames(Report6)[3])], na.rm = TRUE)
Report6$Teen[4]<-sum(calldetail2$total_wts[(calldetail2$age=="18-24")&(calldetail2$WhyUP==rownames(Report6)[4])], na.rm = TRUE)
Report6$Teen[5]<-sum(calldetail2$total_wts[(calldetail2$age=="18-24")&(calldetail2$WhyUP==rownames(Report6)[5])], na.rm = TRUE)
Report6$Teen[6]<-sum(calldetail2$total_wts[(calldetail2$age=="18-24")&(calldetail2$WhyUP==rownames(Report6)[6])], na.rm = TRUE)

Report6$Job[1]<-sum(calldetail2$total_wts[(calldetail2$age=="25-29")&(calldetail2$WhyUP!="Missing")], na.rm = TRUE)
Report6$Job[2]<-sum(calldetail2$total_wts[(calldetail2$age=="25-29")&(calldetail2$WhyUP==rownames(Report6)[2])], na.rm = TRUE)
Report6$Job[3]<-sum(calldetail2$total_wts[(calldetail2$age=="25-29")&(calldetail2$WhyUP==rownames(Report6)[3])], na.rm = TRUE)
Report6$Job[4]<-sum(calldetail2$total_wts[(calldetail2$age=="25-29")&(calldetail2$WhyUP==rownames(Report6)[4])], na.rm = TRUE)
Report6$Job[5]<-sum(calldetail2$total_wts[(calldetail2$age=="25-29")&(calldetail2$WhyUP==rownames(Report6)[5])], na.rm = TRUE)
Report6$Job[6]<-sum(calldetail2$total_wts[(calldetail2$age=="25-29")&(calldetail2$WhyUP==rownames(Report6)[6])], na.rm = TRUE)

Report6$Adult[1]<-sum(calldetail2$total_wts[(calldetail2$age=="30-39")&(calldetail2$WhyUP!="Missing")], na.rm = TRUE)
Report6$Adult[2]<-sum(calldetail2$total_wts[(calldetail2$age=="30-39")&(calldetail2$WhyUP==rownames(Report6)[2])], na.rm = TRUE)
Report6$Adult[3]<-sum(calldetail2$total_wts[(calldetail2$age=="30-39")&(calldetail2$WhyUP==rownames(Report6)[3])], na.rm = TRUE)
Report6$Adult[4]<-sum(calldetail2$total_wts[(calldetail2$age=="30-39")&(calldetail2$WhyUP==rownames(Report6)[4])], na.rm = TRUE)
Report6$Adult[5]<-sum(calldetail2$total_wts[(calldetail2$age=="30-39")&(calldetail2$WhyUP==rownames(Report6)[5])], na.rm = TRUE)
Report6$Adult[6]<-sum(calldetail2$total_wts[(calldetail2$age=="30-39")&(calldetail2$WhyUP==rownames(Report6)[6])], na.rm = TRUE)

Report6$Family[1]<-sum(calldetail2$total_wts[(calldetail2$age=="40-49")&(calldetail2$WhyUP!="Missing")], na.rm = TRUE)
Report6$Family[2]<-sum(calldetail2$total_wts[(calldetail2$age=="40-49")&(calldetail2$WhyUP==rownames(Report6)[2])], na.rm = TRUE)
Report6$Family[3]<-sum(calldetail2$total_wts[(calldetail2$age=="40-49")&(calldetail2$WhyUP==rownames(Report6)[3])], na.rm = TRUE)
Report6$Family[4]<-sum(calldetail2$total_wts[(calldetail2$age=="40-49")&(calldetail2$WhyUP==rownames(Report6)[4])], na.rm = TRUE)
Report6$Family[5]<-sum(calldetail2$total_wts[(calldetail2$age=="40-49")&(calldetail2$WhyUP==rownames(Report6)[5])], na.rm = TRUE)
Report6$Family[6]<-sum(calldetail2$total_wts[(calldetail2$age=="40-49")&(calldetail2$WhyUP==rownames(Report6)[6])], na.rm = TRUE)

Report6$Old[1]<-sum(calldetail2$total_wts[(calldetail2$age=="50-59")&(calldetail2$WhyUP!="Missing")], na.rm = TRUE)
Report6$Old[2]<-sum(calldetail2$total_wts[(calldetail2$age=="50-59")&(calldetail2$WhyUP==rownames(Report6)[2])], na.rm = TRUE)
Report6$Old[3]<-sum(calldetail2$total_wts[(calldetail2$age=="50-59")&(calldetail2$WhyUP==rownames(Report6)[3])], na.rm = TRUE)
Report6$Old[4]<-sum(calldetail2$total_wts[(calldetail2$age=="50-59")&(calldetail2$WhyUP==rownames(Report6)[4])], na.rm = TRUE)
Report6$Old[5]<-sum(calldetail2$total_wts[(calldetail2$age=="50-59")&(calldetail2$WhyUP==rownames(Report6)[5])], na.rm = TRUE)
Report6$Old[6]<-sum(calldetail2$total_wts[(calldetail2$age=="50-59")&(calldetail2$WhyUP==rownames(Report6)[6])], na.rm = TRUE)

Report6$Retired[1]<-sum(calldetail2$total_wts[(calldetail2$age=="60+")&(calldetail2$WhyUP!="Missing")], na.rm = TRUE)
Report6$Retired[2]<-sum(calldetail2$total_wts[(calldetail2$age=="60+")&(calldetail2$WhyUP==rownames(Report6)[2])], na.rm = TRUE)
Report6$Retired[3]<-sum(calldetail2$total_wts[(calldetail2$age=="60+")&(calldetail2$WhyUP==rownames(Report6)[3])], na.rm = TRUE)
Report6$Retired[4]<-sum(calldetail2$total_wts[(calldetail2$age=="60+")&(calldetail2$WhyUP==rownames(Report6)[4])], na.rm = TRUE)
Report6$Retired[5]<-sum(calldetail2$total_wts[(calldetail2$age=="60+")&(calldetail2$WhyUP==rownames(Report6)[5])], na.rm = TRUE)
Report6$Retired[6]<-sum(calldetail2$total_wts[(calldetail2$age=="60+")&(calldetail2$WhyUP==rownames(Report6)[6])], na.rm = TRUE)

#Table7: Why MLA?
Report7<-matrix(NA, nrow = 6, ncol = 13)
Report7<-as.data.frame(Report7)
colnames(Report7)<- c("Overall", "Male", "Female", "Rural", "Urban", "Farmer", "Non_Farmer", "Teen", "Job","Adult","Family","Old","Retired")
rownames(Report7)<- c("Base" ,"BSP", "Listens_to_people", "Honest", "Leader", "Other")

Report7$Overall[1]<-sum(calldetail2$total_wts[(calldetail2$WhyMLA!="Missing")], na.rm = TRUE)
Report7$Overall[2]<-sum(calldetail2$total_wts[(calldetail2$WhyMLA==rownames(Report7)[2])], na.rm = TRUE)
Report7$Overall[3]<-sum(calldetail2$total_wts[(calldetail2$WhyMLA==rownames(Report7)[3])], na.rm = TRUE)
Report7$Overall[4]<-sum(calldetail2$total_wts[(calldetail2$WhyMLA==rownames(Report7)[4])], na.rm = TRUE)
Report7$Overall[5]<-sum(calldetail2$total_wts[(calldetail2$WhyMLA==rownames(Report7)[5])], na.rm = TRUE)
Report7$Overall[6]<-sum(calldetail2$total_wts[(calldetail2$WhyMLA==rownames(Report7)[6])], na.rm = TRUE)

Report7$Male[1]<-sum(calldetail2$total_wts[(calldetail2$gender=="Male")&(calldetail2$WhyMLA!="Missing")], na.rm = TRUE)
Report7$Male[2]<-sum(calldetail2$total_wts[(calldetail2$gender=="Male")&(calldetail2$WhyMLA==rownames(Report7)[2])], na.rm = TRUE)
Report7$Male[3]<-sum(calldetail2$total_wts[(calldetail2$gender=="Male")&(calldetail2$WhyMLA==rownames(Report7)[3])], na.rm = TRUE)
Report7$Male[4]<-sum(calldetail2$total_wts[(calldetail2$gender=="Male")&(calldetail2$WhyMLA==rownames(Report7)[4])], na.rm = TRUE)
Report7$Male[5]<-sum(calldetail2$total_wts[(calldetail2$gender=="Male")&(calldetail2$WhyMLA==rownames(Report7)[5])], na.rm = TRUE)
Report7$Male[6]<-sum(calldetail2$total_wts[(calldetail2$gender=="Male")&(calldetail2$WhyMLA==rownames(Report7)[6])], na.rm = TRUE)

Report7$Female[1]<-sum(calldetail2$total_wts[(calldetail2$gender=="Female")&(calldetail2$WhyMLA!="Missing")], na.rm = TRUE)
Report7$Female[2]<-sum(calldetail2$total_wts[(calldetail2$gender=="Female")&(calldetail2$WhyMLA==rownames(Report7)[2])], na.rm = TRUE)
Report7$Female[3]<-sum(calldetail2$total_wts[(calldetail2$gender=="Female")&(calldetail2$WhyMLA==rownames(Report7)[3])], na.rm = TRUE)
Report7$Female[4]<-sum(calldetail2$total_wts[(calldetail2$gender=="Female")&(calldetail2$WhyMLA==rownames(Report7)[4])], na.rm = TRUE)
Report7$Female[5]<-sum(calldetail2$total_wts[(calldetail2$gender=="Female")&(calldetail2$WhyMLA==rownames(Report7)[5])], na.rm = TRUE)
Report7$Female[6]<-sum(calldetail2$total_wts[(calldetail2$gender=="Female")&(calldetail2$WhyMLA==rownames(Report7)[6])], na.rm = TRUE)

Report7$Rural[1]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Rural")&(calldetail2$WhyMLA!="Missing")], na.rm = TRUE)
Report7$Rural[2]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Rural")&(calldetail2$WhyMLA==rownames(Report7)[2])], na.rm = TRUE)
Report7$Rural[3]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Rural")&(calldetail2$WhyMLA==rownames(Report7)[3])], na.rm = TRUE)
Report7$Rural[4]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Rural")&(calldetail2$WhyMLA==rownames(Report7)[4])], na.rm = TRUE)
Report7$Rural[5]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Rural")&(calldetail2$WhyMLA==rownames(Report7)[5])], na.rm = TRUE)
Report7$Rural[6]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Rural")&(calldetail2$WhyMLA==rownames(Report7)[6])], na.rm = TRUE)

Report7$Urban[1]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Urban")&(calldetail2$WhyMLA!="Missing")], na.rm = TRUE)
Report7$Urban[2]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Urban")&(calldetail2$WhyMLA==rownames(Report7)[2])], na.rm = TRUE)
Report7$Urban[3]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Urban")&(calldetail2$WhyMLA==rownames(Report7)[3])], na.rm = TRUE)
Report7$Urban[4]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Urban")&(calldetail2$WhyMLA==rownames(Report7)[4])], na.rm = TRUE)
Report7$Urban[5]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Urban")&(calldetail2$WhyMLA==rownames(Report7)[5])], na.rm = TRUE)
Report7$Urban[6]<-sum(calldetail2$total_wts[(calldetail2$rural_urban=="Urban")&(calldetail2$WhyMLA==rownames(Report7)[6])], na.rm = TRUE)

Report7$Farmer[1]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="Yes")&(calldetail2$WhyMLA!="Missing")], na.rm = TRUE)
Report7$Farmer[2]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="Yes")&(calldetail2$WhyMLA==rownames(Report7)[2])], na.rm = TRUE)
Report7$Farmer[3]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="Yes")&(calldetail2$WhyMLA==rownames(Report7)[3])], na.rm = TRUE)
Report7$Farmer[4]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="Yes")&(calldetail2$WhyMLA==rownames(Report7)[4])], na.rm = TRUE)
Report7$Farmer[5]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="Yes")&(calldetail2$WhyMLA==rownames(Report7)[5])], na.rm = TRUE)
Report7$Farmer[6]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="Yes")&(calldetail2$WhyMLA==rownames(Report7)[6])], na.rm = TRUE)

Report7$Non_Farmer[1]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="No")&(calldetail2$WhyMLA!="Missing")], na.rm = TRUE)
Report7$Non_Farmer[2]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="No")&(calldetail2$WhyMLA==rownames(Report7)[2])], na.rm = TRUE)
Report7$Non_Farmer[3]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="No")&(calldetail2$WhyMLA==rownames(Report7)[3])], na.rm = TRUE)
Report7$Non_Farmer[4]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="No")&(calldetail2$WhyMLA==rownames(Report7)[4])], na.rm = TRUE)
Report7$Non_Farmer[5]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="No")&(calldetail2$WhyMLA==rownames(Report7)[5])], na.rm = TRUE)
Report7$Non_Farmer[6]<-sum(calldetail2$total_wts[(calldetail2$isfarmer=="No")&(calldetail2$WhyMLA==rownames(Report7)[6])], na.rm = TRUE)

Report7$Teen[1]<-sum(calldetail2$total_wts[(calldetail2$age=="18-24")&(calldetail2$WhyMLA!="Missing")], na.rm = TRUE)
Report7$Teen[2]<-sum(calldetail2$total_wts[(calldetail2$age=="18-24")&(calldetail2$WhyMLA==rownames(Report7)[2])], na.rm = TRUE)
Report7$Teen[3]<-sum(calldetail2$total_wts[(calldetail2$age=="18-24")&(calldetail2$WhyMLA==rownames(Report7)[3])], na.rm = TRUE)
Report7$Teen[4]<-sum(calldetail2$total_wts[(calldetail2$age=="18-24")&(calldetail2$WhyMLA==rownames(Report7)[4])], na.rm = TRUE)
Report7$Teen[5]<-sum(calldetail2$total_wts[(calldetail2$age=="18-24")&(calldetail2$WhyMLA==rownames(Report7)[5])], na.rm = TRUE)
Report7$Teen[6]<-sum(calldetail2$total_wts[(calldetail2$age=="18-24")&(calldetail2$WhyMLA==rownames(Report7)[6])], na.rm = TRUE)

Report7$Job[1]<-sum(calldetail2$total_wts[(calldetail2$age=="25-29")&(calldetail2$WhyMLA!="Missing")], na.rm = TRUE)
Report7$Job[2]<-sum(calldetail2$total_wts[(calldetail2$age=="25-29")&(calldetail2$WhyMLA==rownames(Report7)[2])], na.rm = TRUE)
Report7$Job[3]<-sum(calldetail2$total_wts[(calldetail2$age=="25-29")&(calldetail2$WhyMLA==rownames(Report7)[3])], na.rm = TRUE)
Report7$Job[4]<-sum(calldetail2$total_wts[(calldetail2$age=="25-29")&(calldetail2$WhyMLA==rownames(Report7)[4])], na.rm = TRUE)
Report7$Job[5]<-sum(calldetail2$total_wts[(calldetail2$age=="25-29")&(calldetail2$WhyMLA==rownames(Report7)[5])], na.rm = TRUE)
Report7$Job[6]<-sum(calldetail2$total_wts[(calldetail2$age=="25-29")&(calldetail2$WhyMLA==rownames(Report7)[6])], na.rm = TRUE)

Report7$Adult[1]<-sum(calldetail2$total_wts[(calldetail2$age=="30-39")&(calldetail2$WhyMLA!="Missing")], na.rm = TRUE)
Report7$Adult[2]<-sum(calldetail2$total_wts[(calldetail2$age=="30-39")&(calldetail2$WhyMLA==rownames(Report7)[2])], na.rm = TRUE)
Report7$Adult[3]<-sum(calldetail2$total_wts[(calldetail2$age=="30-39")&(calldetail2$WhyMLA==rownames(Report7)[3])], na.rm = TRUE)
Report7$Adult[4]<-sum(calldetail2$total_wts[(calldetail2$age=="30-39")&(calldetail2$WhyMLA==rownames(Report7)[4])], na.rm = TRUE)
Report7$Adult[5]<-sum(calldetail2$total_wts[(calldetail2$age=="30-39")&(calldetail2$WhyMLA==rownames(Report7)[5])], na.rm = TRUE)
Report7$Adult[6]<-sum(calldetail2$total_wts[(calldetail2$age=="30-39")&(calldetail2$WhyMLA==rownames(Report7)[6])], na.rm = TRUE)

Report7$Family[1]<-sum(calldetail2$total_wts[(calldetail2$age=="40-49")&(calldetail2$WhyMLA!="Missing")], na.rm = TRUE)
Report7$Family[2]<-sum(calldetail2$total_wts[(calldetail2$age=="40-49")&(calldetail2$WhyMLA==rownames(Report7)[2])], na.rm = TRUE)
Report7$Family[3]<-sum(calldetail2$total_wts[(calldetail2$age=="40-49")&(calldetail2$WhyMLA==rownames(Report7)[3])], na.rm = TRUE)
Report7$Family[4]<-sum(calldetail2$total_wts[(calldetail2$age=="40-49")&(calldetail2$WhyMLA==rownames(Report7)[4])], na.rm = TRUE)
Report7$Family[5]<-sum(calldetail2$total_wts[(calldetail2$age=="40-49")&(calldetail2$WhyMLA==rownames(Report7)[5])], na.rm = TRUE)
Report7$Family[6]<-sum(calldetail2$total_wts[(calldetail2$age=="40-49")&(calldetail2$WhyMLA==rownames(Report7)[6])], na.rm = TRUE)

Report7$Old[1]<-sum(calldetail2$total_wts[(calldetail2$age=="50-59")&(calldetail2$WhyMLA!="Missing")], na.rm = TRUE)
Report7$Old[2]<-sum(calldetail2$total_wts[(calldetail2$age=="50-59")&(calldetail2$WhyMLA==rownames(Report7)[2])], na.rm = TRUE)
Report7$Old[3]<-sum(calldetail2$total_wts[(calldetail2$age=="50-59")&(calldetail2$WhyMLA==rownames(Report7)[3])], na.rm = TRUE)
Report7$Old[4]<-sum(calldetail2$total_wts[(calldetail2$age=="50-59")&(calldetail2$WhyMLA==rownames(Report7)[4])], na.rm = TRUE)
Report7$Old[5]<-sum(calldetail2$total_wts[(calldetail2$age=="50-59")&(calldetail2$WhyMLA==rownames(Report7)[5])], na.rm = TRUE)
Report7$Old[6]<-sum(calldetail2$total_wts[(calldetail2$age=="50-59")&(calldetail2$WhyMLA==rownames(Report7)[6])], na.rm = TRUE)

Report7$Retired[1]<-sum(calldetail2$total_wts[(calldetail2$age=="60+")&(calldetail2$WhyMLA!="Missing")], na.rm = TRUE)
Report7$Retired[2]<-sum(calldetail2$total_wts[(calldetail2$age=="60+")&(calldetail2$WhyMLA==rownames(Report7)[2])], na.rm = TRUE)
Report7$Retired[3]<-sum(calldetail2$total_wts[(calldetail2$age=="60+")&(calldetail2$WhyMLA==rownames(Report7)[3])], na.rm = TRUE)
Report7$Retired[4]<-sum(calldetail2$total_wts[(calldetail2$age=="60+")&(calldetail2$WhyMLA==rownames(Report7)[4])], na.rm = TRUE)
Report7$Retired[5]<-sum(calldetail2$total_wts[(calldetail2$age=="60+")&(calldetail2$WhyMLA==rownames(Report7)[5])], na.rm = TRUE)
Report7$Retired[6]<-sum(calldetail2$total_wts[(calldetail2$age=="60+")&(calldetail2$WhyMLA==rownames(Report7)[6])], na.rm = TRUE)

#Report8:Party_Support
Report8<-matrix(NA, nrow = 6, ncol = 4)
rownames(Report8)<- c("Base", "BJP", "Congress", "BSP+JCC", "GGP", "Other")
colnames(Report8)<- c("Overall", "Kharsia", "Pusaur", "Raigarh")
Report8<- as.data.frame(Report8)

Report8$Overall[1]<-sum(calldetail2$total_wts[(calldetail2$Party!="Missing")&(calldetail2$Party!="NoAnswer")], na.rm = TRUE)
Report8$Overall[2]<-sum(calldetail2$total_wts[(calldetail2$Party=="BJP")], na.rm = TRUE)
Report8$Overall[3]<-sum(calldetail2$total_wts[(calldetail2$Party=="Congress")], na.rm = TRUE)
Report8$Overall[4]<-sum(calldetail2$total_wts[(calldetail2$Party=="BSP")|(calldetail2$Party=="JCC")], na.rm = TRUE)
Report8$Overall[5]<-sum(calldetail2$total_wts[(calldetail2$Party=="GGP")], na.rm = TRUE)
Report8$Overall[6]<-sum(calldetail2$total_wts[(calldetail2$Party!="BJP")&(calldetail2$Party!="Congress")&(calldetail2$Party!="BSP")&(calldetail2$Party!="JCC")&(calldetail2$Party!="GGP")&(calldetail2$Party!="Missing")&(calldetail2$Party!="NoAnswer")], na.rm = TRUE)

Report8$Kharsia[1]<-sum(calldetail2$total_wts[(calldetail2$Party!="Missing")&(calldetail2$Party!="NoAnswer")&(calldetail2$Block=="Kharsia")], na.rm = TRUE)
Report8$Kharsia[2]<-sum(calldetail2$total_wts[(calldetail2$Party=="BJP")&(calldetail2$Block=="Kharsia")], na.rm = TRUE)
Report8$Kharsia[3]<-sum(calldetail2$total_wts[(calldetail2$Party=="Congress")&(calldetail2$Block=="Kharsia")], na.rm = TRUE)
Report8$Kharsia[4]<-sum(calldetail2$total_wts[((calldetail2$Party=="BSP")|(calldetail2$Party=="JCC"))&(calldetail2$Block=="Kharsia")], na.rm = TRUE)
Report8$Kharsia[5]<-sum(calldetail2$total_wts[(calldetail2$Party=="GGP")&(calldetail2$Block=="Kharsia")], na.rm = TRUE)
Report8$Kharsia[6]<-sum(calldetail2$total_wts[((calldetail2$Party!="BJP")&(calldetail2$Party!="Congress")&(calldetail2$Party!="BSP")&(calldetail2$Party!="JCC")&(calldetail2$Party!="GGP")&(calldetail2$Party!="Missing")&(calldetail2$Party!="NoAnswer"))&(calldetail2$Block=="Kharsia")], na.rm = TRUE)

Report8$Pusaur[1]<-sum(calldetail2$total_wts[(calldetail2$Party!="Missing")&(calldetail2$Party!="NoAnswer")&(calldetail2$Block=="Pusaur")], na.rm = TRUE)
Report8$Pusaur[2]<-sum(calldetail2$total_wts[(calldetail2$Party=="BJP")&(calldetail2$Block=="Pusaur")], na.rm = TRUE)
Report8$Pusaur[3]<-sum(calldetail2$total_wts[(calldetail2$Party=="Congress")&(calldetail2$Block=="Pusaur")], na.rm = TRUE)
Report8$Pusaur[4]<-sum(calldetail2$total_wts[((calldetail2$Party=="BSP")|(calldetail2$Party=="JCC"))&(calldetail2$Block=="Pusaur")], na.rm = TRUE)
Report8$Pusaur[5]<-sum(calldetail2$total_wts[(calldetail2$Party=="GGP")&(calldetail2$Block=="Pusaur")], na.rm = TRUE)
Report8$Pusaur[6]<-sum(calldetail2$total_wts[((calldetail2$Party!="BJP")&(calldetail2$Party!="Congress")&(calldetail2$Party!="BSP")&(calldetail2$Party!="JCC")&(calldetail2$Party!="GGP")&(calldetail2$Party!="Missing")&(calldetail2$Party!="NoAnswer"))&(calldetail2$Block=="Pusaur")], na.rm = TRUE)

Report8$Raigarh[1]<-sum(calldetail2$total_wts[(calldetail2$Party!="Missing")&(calldetail2$Party!="NoAnswer")&(calldetail2$Block=="Raigarh")], na.rm = TRUE)
Report8$Raigarh[2]<-sum(calldetail2$total_wts[(calldetail2$Party=="BJP")&(calldetail2$Block=="Raigarh")], na.rm = TRUE)
Report8$Raigarh[3]<-sum(calldetail2$total_wts[(calldetail2$Party=="Congress")&(calldetail2$Block=="Raigarh")], na.rm = TRUE)
Report8$Raigarh[4]<-sum(calldetail2$total_wts[((calldetail2$Party=="BSP")|(calldetail2$Party=="JCC"))&(calldetail2$Block=="Raigarh")], na.rm = TRUE)
Report8$Raigarh[5]<-sum(calldetail2$total_wts[(calldetail2$Party=="GGP")&(calldetail2$Block=="Raigarh")], na.rm = TRUE)
Report8$Raigarh[6]<-sum(calldetail2$total_wts[((calldetail2$Party!="BJP")&(calldetail2$Party!="Congress")&(calldetail2$Party!="BSP")&(calldetail2$Party!="JCC")&(calldetail2$Party!="GGP")&(calldetail2$Party!="Missing")&(calldetail2$Party!="NoAnswer"))&(calldetail2$Block=="Raigarh")], na.rm = TRUE)

#Weighted Base
#Age
Age_wt$weighted_sample[1]<-round(100*sum(calldetail2$total_wts[calldetail2$age=="18-24"], na.rm = TRUE)/sum(calldetail2$total_wts, na.rm = TRUE),2)
Age_wt$weighted_sample[2]<-round(100*sum(calldetail2$total_wts[calldetail2$age=="25-29"], na.rm = TRUE)/sum(calldetail2$total_wts, na.rm = TRUE),2)
Age_wt$weighted_sample[3]<-round(100*sum(calldetail2$total_wts[calldetail2$age=="30-39"], na.rm = TRUE)/sum(calldetail2$total_wts, na.rm = TRUE),2)
Age_wt$weighted_sample[4]<-round(100*sum(calldetail2$total_wts[calldetail2$age=="40-49"], na.rm = TRUE)/sum(calldetail2$total_wts, na.rm = TRUE),2)
Age_wt$weighted_sample[5]<-round(100*sum(calldetail2$total_wts[calldetail2$age=="50-59"], na.rm = TRUE)/sum(calldetail2$total_wts, na.rm = TRUE),2)
Age_wt$weighted_sample[6]<-round(100*sum(calldetail2$total_wts[calldetail2$age=="60+"], na.rm = TRUE)/sum(calldetail2$total_wts, na.rm = TRUE),2)

#Gender
gender_wt$weighted_sample[1]<-round(100*sum(calldetail2$total_wts[calldetail2$gender=="Male"], na.rm = TRUE)/sum(calldetail2$total_wts, na.rm = TRUE),2)
gender_wt$weighted_sample[2]<-round(100*sum(calldetail2$total_wts[calldetail2$gender=="Female"], na.rm = TRUE)/sum(calldetail2$total_wts, na.rm = TRUE),2)
gender_wt$weighted_sample[3]<-100-sum(gender_wt$weighted_sample[1:2], na.rm = TRUE)

#Rural/Urban
iscity_wt$weighted_sample[1]<-round(100*sum(calldetail2$total_wts[calldetail2$rural_urban=="Urban"], na.rm = TRUE)/sum(calldetail2$total_wts, na.rm = TRUE),2)
iscity_wt$weighted_sample[2]<-round(100*sum(calldetail2$total_wts[calldetail2$rural_urban=="Rural"], na.rm = TRUE)/sum(calldetail2$total_wts, na.rm = TRUE),2)
iscity_wt$weighted_sample[3]<-100-sum(iscity_wt$weighted_sample[1:2], na.rm = TRUE)

#Catid
catid_wt$weighted_sample[1]<-round(100*sum(calldetail2$total_wts[(calldetail2$catid=="General")|(calldetail2$catid=="OBC")], na.rm = TRUE)/sum(calldetail2$total_wts, na.rm = TRUE),2)
catid_wt$weighted_sample[2]<-round(100*sum(calldetail2$total_wts[(calldetail2$catid=="SC")], na.rm = TRUE)/sum(calldetail2$total_wts, na.rm = TRUE),2)
catid_wt$weighted_sample[3]<-round(100*sum(calldetail2$total_wts[(calldetail2$catid=="ST")], na.rm = TRUE)/sum(calldetail2$total_wts, na.rm = TRUE),2)
catid_wt$weighted_sample[4]<-round(100*sum(calldetail2$total_wts[(calldetail2$catid=="Islam")], na.rm = TRUE)/sum(calldetail2$total_wts, na.rm = TRUE),2)
catid_wt$weighted_sample[5]<-round(100*sum(calldetail2$total_wts[(calldetail2$catid=="Christian")], na.rm = TRUE)/sum(calldetail2$total_wts, na.rm = TRUE),2)
catid_wt$weighted_sample[6]<-100-sum(catid_wt$weighted_sample[1:5], na.rm = TRUE)

#Download
Sample<-rbind(Age_wt, catid_wt, iscity_wt, gender_wt)
write.csv(Sample, "Sample.csv")
write.csv(Report1, "Knows_OP_Unweighted.csv")
write.csv(Report2, "BJP_Candidate.csv")
write.csv(Report3, "OPvsUP.csv")
write.csv(Report4, "is_OP_connected.csv")
write.csv(Report5, "WhyOP.csv")
write.csv(Report6, "WhyUP.csv")
write.csv(Report7, "WhyMLA.csv")
write.csv(Report8, "Party_performance.csv")

Database$Cst1[Database$Cst1=="Patel"]<-"Marar/ Patel"
Database$Cst2[Database$Cst2=="Patel"]<-"Marar/ Patel"
Database$Cst3[Database$Cst3=="Patel"]<-"Marar/ Patel"
Database$Cst4[Database$Cst4=="Patel"]<-"Marar/ Patel"
Database$Cst5[Database$Cst5=="Patel"]<-"Marar/ Patel"

