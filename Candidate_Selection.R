calldetail1<- AC_39_SARAIPALLI_CANDIDATE_SURVEY
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

#Assembly
calldetail1$q5[calldetail1$q5=="1"]<-"Yes"
calldetail1$q5[calldetail1$q5=="2"]<-"No"

#Party_preference
calldetail1$q7[calldetail1$q7=="0"]<-"Missing"
calldetail1$q7[calldetail1$q7=="1"]<-"Congress"
calldetail1$q7[calldetail1$q7=="2"]<-"BJP"
calldetail1$q7[calldetail1$q7=="3"]<-"JCC"
calldetail1$q7[calldetail1$q7=="4"]<-"BSP"
calldetail1$q7[calldetail1$q7=="5"]<-"SP"
calldetail1$q7[calldetail1$q7=="6"]<-"GGP"
calldetail1$q7[calldetail1$q7=="7"]<-"AAP"
calldetail1$q7[calldetail1$q7=="8"]<-"Independent"
calldetail1$q7[calldetail1$q7=="9"]<-"NOTA"
calldetail1$q7[calldetail1$q7=="10"]<-"Candidate"
calldetail1$q7[calldetail1$q7=="11"]<-"Undecided"
calldetail1$q7[calldetail1$q7=="12"]<-"NoAnswer"
calldetail1$q7[calldetail1$q7=="13"]<-"BSP+JCC"

#Candidate
calldetail1$q8[calldetail1$q8=="0"]<- "Missing"
calldetail1$q8[calldetail1$q8=="1"]<- "Don't_Know"
calldetail1$q8[calldetail1$q8=="2"]<- "NoAnswer"
calldetail1$q8[calldetail1$q8=="90"]<- "Other"
calldetail1$q8[calldetail1$q8=="34"]<- "Shyam_Tandi"
calldetail1$q8[calldetail1$q8=="35"]<- "Sarla_Kosariya"
calldetail1$q8[calldetail1$q8=="36"]<- "Ramlal_Chauhan"
calldetail1$q8[calldetail1$q8=="94"]<- "Deep_chatrjee"
calldetail1$q8[calldetail1$q8=="95"]<- "Jayprakash_Yadav"
calldetail1$q8[calldetail1$q8=="422"]<- "Rikesh_Sen"
calldetail1$q8[calldetail1$q8=="423"]<- "Prem_Prakash_Pande"
#calldetail1$q8[calldetail1$q8=="90"]<- "Other"

calldetail1$q9[calldetail1$q9=="0"]<- "Missing"
calldetail1$q9[calldetail1$q9=="1"]<- "Don't_Know"
calldetail1$q9[calldetail1$q9=="2"]<- "NoAnswer"
calldetail1$q9[calldetail1$q9=="37"]<- "Dolamani_Miri"
calldetail1$q9[calldetail1$q9=="38"]<- "Radhe_Shyam_Vibhar"
calldetail1$q9[calldetail1$q9=="39"]<- "ShivKumar_Dahariya"
calldetail1$q9[calldetail1$q9=="99"]<- "Bhajan_Singh_Nirankari"
#calldetail1$q9[calldetail1$q9=="87"]<- "Shri Abhishek Shukla"
calldetail1$q9[calldetail1$q9=="90"]<- "Other"

calldetail1$q10[calldetail1$q10=="0"]<- "Missing"
calldetail1$q10[calldetail1$q10=="1"]<- "Don't_Know"
calldetail1$q10[calldetail1$q10=="2"]<- "NoAnswer"
#calldetail1$q10[calldetail1$q10=="421"]<- "Anamika_Paul"
calldetail1$q10[calldetail1$q10=="90"]<- "Other"

calldetail1$q18[calldetail1$q18=="0"]<- "Missing"
calldetail1$q18[calldetail1$q18=="1"]<- "Don't_Know"
calldetail1$q18[calldetail1$q18=="2"]<- "NoAnswer"
calldetail1$q18[calldetail1$q18=="40"]<- "Chabilal_Ratre"
calldetail1$q18[calldetail1$q18=="90"]<- "Other"

#isfarmer
calldetail1$q11[calldetail1$q11=="1"]<-"Yes"
calldetail1$q11[calldetail1$q11=="2"]<-"No"
calldetail1$q11[calldetail1$q11=="3"]<-"Don't_Know"

#Rural_Urban
calldetail1$q12[calldetail1$q12=="1"]<-"Urban"
calldetail1$q12[calldetail1$q12=="2"]<-"Rural"

#religion
calldetail1$q13[calldetail1$q13=="1"]<-"Hindu"
calldetail1$q13[calldetail1$q13=="2"]<-"Islam"
calldetail1$q13[calldetail1$q13=="3"]<-"Sikh"
calldetail1$q13[calldetail1$q13=="4"]<-"Christian"
calldetail1$q13[calldetail1$q13=="5"]<-"Buddhist"
calldetail1$q13[calldetail1$q13=="6"]<-"Jain"
calldetail1$q13[calldetail1$q13=="7"]<-"NoAnswer"

#caste
for (i in 1:97) {
  calldetail1$q14[calldetail1$q14==Data_Values_Jashpur$Values[i]]<-Data_Values_Jashpur$Q17[i]
}
calldetail1$q14[calldetail1$q14=="0"]<-"Missing"
calldetail1$q14[calldetail1$q14=="999"]<-"Other"

#caste Category
calldetail1$q15[calldetail1$q15=="1"]<-"General"
calldetail1$q15[calldetail1$q15=="2"]<-"OBC"
calldetail1$q15[(calldetail1$q15=="3")]<-"SC"
calldetail1$q15[calldetail1$q15=="4"]<-"ST"
calldetail1$q15[(calldetail1$q15=="5")]<-"Missing"
calldetail1$q15[(calldetail1$q15=="90")]<-"Other"
calldetail1$q15[calldetail1$q13=="Islam"]<-"Islam"
calldetail1$q15[calldetail1$q13=="Christian"]<-"Christian"
calldetail1$q15[calldetail1$q15=="0"]<-"Missing"


colnames(calldetail1)<- c("id", "agent", "campaign", "campaign id", "process", "process id", "acno", "acname", "caller", "extension", "callstart", "callend", "duration", "issurvey", "gender", "age", "isassembly", "Party_Preference", "Candidate_BJP", "Candidate_BJP_Other", "Candidate_Congress", "Candidate_Congress_Other", "Candidate_Other", "Candidate_Other_Other", "isfarmer", "iscity", "religion", "religion_oter", "caste", "caste_other", "catid", "catid_other", "Candidate_No", "Candidate_No_Other", "disposition")
#weights

i<-39
#Wts for Region wise distribution
gender_wt<-matrix(data = NA, nrow = 3, ncol = 3)
dimnames(gender_wt) = list( c("Male","Female", "Missing_gender"),c("Pop_perc", "Sample_perc", "weights"))
gender_wt<-as.data.frame(gender_wt)
#Rel_wt$Sample_perc<-100*Rel_wt$Sample_count/sum(Rel_wt$Sample_count)
#Rel_wt$weights<-Rel_wt$Pop_perc/Rel_wt$Sample_perc
gender_wt$Pop_perc<-c(Database$Male_perc[i], Database$Female_perc[i],0)
gender_Count<-count(calldetail1,"gender")
gender_Count<-as.data.frame(gender_Count)
gender_Count$perc<-round(100*gender_Count$freq/sum(gender_Count$freq, na.rm = TRUE),2)

#Pasting Sample perc
gender_wt$Sample_perc[1]<-gender_Count$perc[gender_Count$gender=="Male"]
gender_wt$Sample_perc[2]<-gender_Count$perc[gender_Count$gender=="Female"]
gender_wt$Sample_perc[3]<-gender_Count$perc[is.na(gender_Count$gender)]


gender_wt$weights<-round(gender_wt$Pop_perc/gender_wt$Sample_perc,2)
gender_wt$weights[gender_wt$weights>2]<- 2
gender_wt$weights[gender_wt$weights<0.5]<- 0.5


calldetail1$gender_wt<-0      ## Assigining weights<-1 to everyone
calldetail1$gender_wt[calldetail1$gender=="Male"]<-gender_wt$weights[1]     #Assigning wts to Male
calldetail1$gender_wt[calldetail1$gender=="Female"]<-gender_wt$weights[2]   #Assigning wts to Female
calldetail1$gender_wt[calldetail1$gender_wt=="0"]<-mean(calldetail1$gender_wt, na.rm = TRUE)

i<-39
#Wts for iscity wise distribution
iscity_wt<-matrix(data = NA, nrow = 3, ncol = 3)
dimnames(iscity_wt) = list( c("Urban","Rural","Missing_region"),c("Pop_perc", "Sample_perc", "weights"))
iscity_wt<-as.data.frame(iscity_wt)
#Rel_wt$Sample_perc<-100*Rel_wt$Sample_count/sum(Rel_wt$Sample_count)
#Rel_wt$weights<-Rel_wt$Pop_perc/Rel_wt$Sample_perc
iscity_wt$Pop_perc<-c(Database$percent_urban[i], Database$percent_rural[i],0)
iscity_Count<-count(calldetail1,"iscity")
iscity_Count<-as.data.frame(iscity_Count)
iscity_Count$perc<-round(100*iscity_Count$freq/sum(iscity_Count$freq, na.rm = TRUE),2)

#Pasting Sample perc
iscity_wt$Sample_perc[1]<-iscity_Count$perc[iscity_Count$iscity=="Urban"]
iscity_wt$Sample_perc[2]<-iscity_Count$perc[iscity_Count$iscity=="Rural"]
iscity_wt$Sample_perc[3]<-iscity_Count$perc[iscity_Count$iscity=="Missing"]


calldetail1$iscity_wt<-0  #Assigning all wts<-1 and putting respective weigths to each onward

iscity_wt$weights<-round(iscity_wt$Pop_perc/iscity_wt$Sample_perc,2)
iscity_wt$weights[iscity_wt$weights>2]<-2
iscity_wt$weights[iscity_wt$weights<0.5]<-0.5

calldetail1$iscity_wt[calldetail1$iscity=="Urban"]<-iscity_wt$weights[1]
calldetail1$iscity_wt[calldetail1$iscity=="Rural"]<-iscity_wt$weights[2]
calldetail1$iscity_wt[calldetail1$iscity_wt=="0"]<-mean(calldetail1$iscity_wt, na.rm = TRUE)


#Wts for catid wise distribution
#for (i in 1:dim(calldetail1)[1]) {
#  calldetail1$catid[calldetail1$caste==Caste_Based_Survey_Sheet$Caste[i]]<-Caste_Based_Survey_Sheet$Category[i]
#}
i<-39
catid_wt<-matrix(data = NA, nrow = 6, ncol = 3)
dimnames(catid_wt) = list( c("gen_OBC", "SC", "ST", "Muslim","Christian", "Missing"),c("Pop_perc", "Sample_perc", "weights"))
catid_wt<-as.data.frame(catid_wt)
calldetail1$catid[calldetail1$religion=="Islam"]<-"Islam"
calldetail1$catid[calldetail1$religion=="Christian"]<-"Christian"

#Rel_wt$Sample_perc<-100*Rel_wt$Sample_count/sum(Rel_wt$Sample_count)
#Rel_wt$weights<-Rel_wt$Pop_perc/Rel_wt$Sample_perc
catid_wt$Pop_perc<-c((Database$percent_gen_obc[i]-Database$percent_muslim[i]),Database$percent_sc[i], (Database$percent_st[i]-Database$percent_christian[i]), Database$percent_muslim[i] , Database$percent_christian[i],0)
catid_Count<-count(calldetail1,"catid")
catid_Count$perc<-round(100*catid_Count$freq/sum(catid_Count$freq, na.rm = TRUE),2)
#Rel_Count$perc<-round(100*Rel_Count$freq/sum(Rel_Count$freq, na.rm = TRUE),2)

#Pasting Sample perc
catid_wt$Sample_perc[1]<-catid_Count$perc[catid_Count$catid=="General"]+catid_Count$perc[catid_Count$catid=="OBC"]
catid_wt$Sample_perc[2]<-catid_Count$perc[catid_Count$catid=="SC"]
catid_wt$Sample_perc[3]<-catid_Count$perc[catid_Count$catid=="ST"]
catid_wt$Sample_perc[4]<-catid_Count$perc[catid_Count$catid=="Islam"]
catid_wt$Sample_perc[5]<-catid_Count$perc[catid_Count$catid=="Christian"]
catid_wt$Sample_perc[6]<-catid_Count$perc[catid_Count$catid=="Missing"]

calldetail1$catid_wt<-0     #Assigning all weights equal to 1
catid_wt$weights<-round(catid_wt$Pop_perc/catid_wt$Sample_perc,2)
catid_wt$weights[catid_wt$weights<0.5]<- 0.5
catid_wt$weights[catid_wt$weights>2]<- 2

calldetail1$catid_wt[calldetail1$catid=="General"]<-catid_wt$weights[1]
calldetail1$catid_wt[calldetail1$catid=="OBC"]<-catid_wt$weights[1]
calldetail1$catid_wt[calldetail1$catid=="SC"]<-catid_wt$weights[2]
calldetail1$catid_wt[calldetail1$catid=="ST"]<-catid_wt$weights[3]
calldetail1$catid_wt[calldetail1$catid=="Islam"]<-catid_wt$weights[4]
calldetail1$catid_wt[calldetail1$catid=="Christian"]<-catid_wt$weights[5]
calldetail1$catid_wt[calldetail1$catid_wt=="0"]<-mean(calldetail1$catid_wt,na.rm = TRUE)

i<-39

#age-grouping
calldetail1$age[(calldetail1$age>17)&(calldetail1$age<25)]<-"18-24"
calldetail1$age[(calldetail1$age>24)&(calldetail1$age<30)]<-"25-29"
calldetail1$age[(calldetail1$age>29)&(calldetail1$age<40)]<-"30-39"
calldetail1$age[(calldetail1$age>39)&(calldetail1$age<50)]<-"40-49"
calldetail1$age[(calldetail1$age>49)&(calldetail1$age<60)]<-"50-59"
calldetail1$age[calldetail1$age>59]<-"60+"
calldetail1$age[calldetail1$age=="0"]<-"Missing"

#Wts for age wise distribution
Age_wt<-matrix(data = NA, nrow = 7, ncol = 3)
dimnames(Age_wt) = list( c("18-24", "25-29", "30-39", "40-49", "50-59", "60+", "Missing_age"),c("Pop_perc", "Sample_perc", "weights"))
Age_wt<-as.data.frame(Age_wt)
#Age_wt$Sample_perc<-100*Age_wt$Sample_count/sum(Age_wt$Sample_count)

#Age wise distribution in Sample space
Age_Count<-count(calldetail1,"age")
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

calldetail1$Age_wts<-0

calldetail1$Age_wts[calldetail1$age=="18-24"]<-Age_wt$weights[1]
calldetail1$Age_wts[calldetail1$age=="25-29"]<-Age_wt$weights[2]
calldetail1$Age_wts[calldetail1$age=="30-39"]<-Age_wt$weights[3]
calldetail1$Age_wts[calldetail1$age=="40-49"]<-Age_wt$weights[4]
calldetail1$Age_wts[calldetail1$age=="50-59"]<-Age_wt$weights[5]
calldetail1$Age_wts[calldetail1$age=="60+"]<-Age_wt$weights[6]
calldetail1$Age_wts[calldetail1$Age_wts=="0"]<-mean(calldetail1$Age_wts, na.rm = TRUE)

#Total_weights
calldetail1$total_wts<-round(calldetail1$Age_wts*calldetail1$catid_wt*calldetail1$iscity_wt*calldetail1$gender_wt,2)

##Reports_Overall
#calldetail1_BJP<-calldetail1[(calldetail1$Party_Preference=="BJP"),]
Candidate_BJP<-unique(calldetail1$Candidate_BJP)
Report1<-matrix(NA, nrow = 5, ncol = 23)
Report1<-as.data.frame(Report1)
i<-39
colnames(Report1)<- c("Overall", "Gen_OBC", "SC", "ST", "Islam", "Christian", "Farmer", "NoFarmer", "Teen", "Job", "Adult","Family","Old", "Retired", "Male", "Female", "Rural", "Urban", Database$Cst1[i], Database$Cst2[i],Database$Cst3[i],Database$Cst4[i],Database$Cst5[i])
#rownames(Report1)[1]<- c("Base")
v<-which(Candidate_BJP %in% c("Other",NA ,"Missing", "Don't_Know","NoAnswer","<NA>" ))
Candidate_BJP<-Candidate_BJP[-v]
#rownames(Report1)[length(Candidate_BJP)+2]<-c("Other")

rownames(Report1)<-c("Base_BJP", Candidate_BJP, "Other")

Report1$Overall[1]<-sum(calldetail1$total_wts[calldetail1$Party_Preference=="BJP"], na.rm = TRUE)
for (i in 1:length(Candidate_BJP)) {
  Report1$Overall[rownames(Report1)==Candidate_BJP[i]]<-sum(calldetail1$total_wts[calldetail1$Candidate_BJP==Candidate_BJP[i]], na.rm = TRUE)
}
Report1$Overall[rownames(Report1)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP=="Other")&(calldetail1$Party_Preference=="BJP")], na.rm = TRUE)

#Report1_Gen_OBC
Report1$Gen_OBC[1]<-sum(calldetail1$total_wts[((calldetail1$catid=="General")|(calldetail1$catid=="OBC"))&(calldetail1$Party_Preference=="BJP")], na.rm = TRUE)
for (i in 1:length(Candidate_BJP)) {
  Report1$Gen_OBC[rownames(Report1)==Candidate_BJP[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP==Candidate_BJP[i])&((calldetail1$catid=="General")|(calldetail1$catid=="OBC"))], na.rm = TRUE)
}
Report1$Gen_OBC[rownames(Report1)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP=="Other")&(calldetail1$Party_Preference=="BJP")&((calldetail1$catid=="General")|(calldetail1$catid=="OBC"))], na.rm = TRUE)

#Report1_SC
Report1$SC[1]<-sum(calldetail1$total_wts[(calldetail1$catid=="SC")&(calldetail1$Party_Preference=="BJP")], na.rm = TRUE)
for (i in 1:length(Candidate_BJP)) {
  Report1$SC[rownames(Report1)==Candidate_BJP[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP==Candidate_BJP[i])&(calldetail1$catid=="SC")], na.rm = TRUE)
}
Report1$SC[rownames(Report1)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP=="Other")&(calldetail1$Party_Preference=="BJP")&(calldetail1$catid=="SC")], na.rm = TRUE)


#Report1_ST
Report1$ST[1]<-sum(calldetail1$total_wts[(calldetail1$catid=="ST")&(calldetail1$Party_Preference=="BJP")], na.rm = TRUE)
for (i in 1:length(Candidate_BJP)) {
  Report1$ST[rownames(Report1)==Candidate_BJP[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP==Candidate_BJP[i])&(calldetail1$catid=="ST")], na.rm = TRUE)
}
Report1$ST[rownames(Report1)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP=="Other")&(calldetail1$Party_Preference=="BJP")&(calldetail1$catid=="ST")], na.rm = TRUE)

#Report1_Islam
Report1$Islam[1]<-sum(calldetail1$total_wts[(calldetail1$catid=="Islam")&(calldetail1$Party_Preference=="BJP")], na.rm = TRUE)
for (i in 1:length(Candidate_BJP)) {
  Report1$Islam[rownames(Report1)==Candidate_BJP[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP==Candidate_BJP[i])&(calldetail1$catid=="Islam")], na.rm = TRUE)
}
Report1$Islam[rownames(Report1)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP=="Other")&(calldetail1$Party_Preference=="BJP")&(calldetail1$catid=="Islam")], na.rm = TRUE)


#Report1_Christian
Report1$Christian[1]<-sum(calldetail1$total_wts[(calldetail1$catid=="Christian")&(calldetail1$Party_Preference=="BJP")], na.rm = TRUE)
for (i in 1:length(Candidate_BJP)) {
  Report1$Christian[rownames(Report1)==Candidate_BJP[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP==Candidate_BJP[i])&(calldetail1$catid=="Christian")], na.rm = TRUE)
}
Report1$Christian[rownames(Report1)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP=="Other")&(calldetail1$Party_Preference=="BJP")&(calldetail1$catid=="Christian")], na.rm = TRUE)

#Report1_farmer
Report1$Farmer[1]<-sum(calldetail1$total_wts[(calldetail1$isfarmer=="Yes")&(calldetail1$Party_Preference=="BJP")], na.rm = TRUE)
for (i in 1:length(Candidate_BJP)) {
  Report1$Farmer[rownames(Report1)==Candidate_BJP[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP==Candidate_BJP[i])&(calldetail1$isfarmer=="Yes")], na.rm = TRUE)
}
Report1$Farmer[rownames(Report1)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP=="Other")&(calldetail1$Party_Preference=="BJP")&(calldetail1$isfarmer=="Yes")], na.rm = TRUE)

#Report1_non_farmer
Report1$NoFarmer[1]<-sum(calldetail1$total_wts[(calldetail1$isfarmer=="No")&(calldetail1$Party_Preference=="BJP")], na.rm = TRUE)
for (i in 1:length(Candidate_BJP)) {
  Report1$NoFarmer[rownames(Report1)==Candidate_BJP[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP==Candidate_BJP[i])&(calldetail1$isfarmer=="No")], na.rm = TRUE)
}
Report1$NoFarmer[rownames(Report1)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP=="Other")&(calldetail1$Party_Preference=="BJP")&(calldetail1$isfarmer=="No")], na.rm = TRUE)

#Report1_Teen
Report1$Teen[1]<-sum(calldetail1$total_wts[(calldetail1$age=="18-24")&(calldetail1$Party_Preference=="BJP")], na.rm = TRUE)
for (i in 1:length(Candidate_BJP)) {
  Report1$Teen[rownames(Report1)==Candidate_BJP[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP==Candidate_BJP[i])&(calldetail1$age=="18-24")], na.rm = TRUE)
}
Report1$Teen[rownames(Report1)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP=="Other")&(calldetail1$Party_Preference=="BJP")&(calldetail1$age=="18-24")], na.rm = TRUE)

#Report1_Job
Report1$Job[1]<-sum(calldetail1$total_wts[(calldetail1$age=="25-29")&(calldetail1$Party_Preference=="BJP")], na.rm = TRUE)
for (i in 1:length(Candidate_BJP)) {
  Report1$Job[rownames(Report1)==Candidate_BJP[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP==Candidate_BJP[i])&(calldetail1$age=="25-29")], na.rm = TRUE)
}
Report1$Job[rownames(Report1)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP=="Other")&(calldetail1$Party_Preference=="BJP")&(calldetail1$age=="25-29")], na.rm = TRUE)

#Report1_Adult
Report1$Adult[1]<-sum(calldetail1$total_wts[(calldetail1$age=="30-39")&(calldetail1$Party_Preference=="BJP")], na.rm = TRUE)
for (i in 1:length(Candidate_BJP)) {
  Report1$Adult[rownames(Report1)==Candidate_BJP[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP==Candidate_BJP[i])&(calldetail1$age=="30-39")], na.rm = TRUE)
}
Report1$Adult[rownames(Report1)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP=="Other")&(calldetail1$Party_Preference=="BJP")&(calldetail1$age=="30-39")], na.rm = TRUE)


#Report1_Family
Report1$Family[1]<-sum(calldetail1$total_wts[(calldetail1$age=="40-49")&(calldetail1$Party_Preference=="BJP")], na.rm = TRUE)
for (i in 1:length(Candidate_BJP)) {
  Report1$Family[rownames(Report1)==Candidate_BJP[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP==Candidate_BJP[i])&(calldetail1$age=="40-49")], na.rm = TRUE)
}
Report1$Family[rownames(Report1)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP=="Other")&(calldetail1$Party_Preference=="BJP")&(calldetail1$age=="40-49")], na.rm = TRUE)

#Report1_Old
Report1$Old[1]<-sum(calldetail1$total_wts[(calldetail1$age=="50-59")&(calldetail1$Party_Preference=="BJP")], na.rm = TRUE)
for (i in 1:length(Candidate_BJP)) {
  Report1$Old[rownames(Report1)==Candidate_BJP[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP==Candidate_BJP[i])&(calldetail1$age=="50-59")], na.rm = TRUE)
}
Report1$Old[rownames(Report1)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP=="Other")&(calldetail1$Party_Preference=="BJP")&(calldetail1$age=="50-59")], na.rm = TRUE)

#Report1_Retired
Report1$Retired[1]<-sum(calldetail1$total_wts[(calldetail1$age=="60+")&(calldetail1$Party_Preference=="BJP")], na.rm = TRUE)
for (i in 1:length(Candidate_BJP)) {
  Report1$Retired[rownames(Report1)==Candidate_BJP[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP==Candidate_BJP[i])&(calldetail1$age=="60+")], na.rm = TRUE)
}
Report1$Retired[rownames(Report1)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP=="Other")&(calldetail1$Party_Preference=="BJP")&(calldetail1$age=="60+")], na.rm = TRUE)

#Report1_Male
Report1$Male[1]<-sum(calldetail1$total_wts[(calldetail1$gender=="Male")&(calldetail1$Party_Preference=="BJP")], na.rm = TRUE)
for (i in 1:length(Candidate_BJP)) {
  Report1$Male[rownames(Report1)==Candidate_BJP[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP==Candidate_BJP[i])&(calldetail1$gender=="Male")], na.rm = TRUE)
}
Report1$Male[rownames(Report1)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP=="Other")&(calldetail1$Party_Preference=="BJP")&(calldetail1$gender=="Male")], na.rm = TRUE)

#Report1_Female
Report1$Female[1]<-sum(calldetail1$total_wts[(calldetail1$gender=="Female")&(calldetail1$Party_Preference=="BJP")], na.rm = TRUE)
for (i in 1:length(Candidate_BJP)) {
  Report1$Female[rownames(Report1)==Candidate_BJP[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP==Candidate_BJP[i])&(calldetail1$gender=="Female")], na.rm = TRUE)
}
Report1$Female[rownames(Report1)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP=="Other")&(calldetail1$Party_Preference=="BJP")&(calldetail1$gender=="Female")], na.rm = TRUE)

#Report1_Rural
Report1$Rural[1]<-sum(calldetail1$total_wts[(calldetail1$iscity=="Rural")&(calldetail1$Party_Preference=="BJP")], na.rm = TRUE)
for (i in 1:length(Candidate_BJP)) {
  Report1$Rural[rownames(Report1)==Candidate_BJP[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP==Candidate_BJP[i])&(calldetail1$iscity=="Rural")], na.rm = TRUE)
}
Report1$Rural[rownames(Report1)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP=="Other")&(calldetail1$Party_Preference=="BJP")&(calldetail1$iscity=="Rural")], na.rm = TRUE)

#Report1_Urban
Report1$Urban[1]<-sum(calldetail1$total_wts[(calldetail1$iscity=="Urban")&(calldetail1$Party_Preference=="BJP")], na.rm = TRUE)
for (i in 1:length(Candidate_BJP)) {
  Report1$Urban[rownames(Report1)==Candidate_BJP[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP==Candidate_BJP[i])&(calldetail1$iscity=="Urban")], na.rm = TRUE)
}
Report1$Urban[rownames(Report1)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP=="Other")&(calldetail1$Party_Preference=="BJP")&(calldetail1$iscity=="Urban")], na.rm = TRUE)

#Report1_Caste1
Report1[1,19]<-sum(calldetail1$total_wts[(calldetail1$caste==colnames(Report1)[19])&(calldetail1$Party_Preference=="BJP")], na.rm = TRUE)
for (i in 1:length(Candidate_BJP)) {
  Report1[,19][rownames(Report1)==Candidate_BJP[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP==Candidate_BJP[i])&(calldetail1$caste==colnames(Report1)[19])], na.rm = TRUE)
}
Report1[,19][rownames(Report1)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP=="Other")&(calldetail1$Party_Preference=="BJP")&(calldetail1$caste==colnames(Report1)[19])], na.rm = TRUE)

#Report1_Caste2
Report1[1,20]<-sum(calldetail1$total_wts[(calldetail1$caste==colnames(Report1)[20])&(calldetail1$Party_Preference=="BJP")], na.rm = TRUE)
for (i in 1:length(Candidate_BJP)) {
  Report1[,20][rownames(Report1)==Candidate_BJP[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP==Candidate_BJP[i])&(calldetail1$caste==colnames(Report1)[20])], na.rm = TRUE)
}
Report1[,20][rownames(Report1)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP=="Other")&(calldetail1$Party_Preference=="BJP")&(calldetail1$caste==colnames(Report1)[20])], na.rm = TRUE)

#Report1_Caste3
Report1[1,21]<-sum(calldetail1$total_wts[(calldetail1$caste==colnames(Report1)[21])&(calldetail1$Party_Preference=="BJP")], na.rm = TRUE)
for (i in 1:length(Candidate_BJP)) {
  Report1[,21][rownames(Report1)==Candidate_BJP[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP==Candidate_BJP[i])&(calldetail1$caste==colnames(Report1)[21])], na.rm = TRUE)
}
Report1[,21][rownames(Report1)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP=="Other")&(calldetail1$Party_Preference=="BJP")&(calldetail1$caste==colnames(Report1)[21])], na.rm = TRUE)

#Report1_Caste4
Report1[1,22]<-sum(calldetail1$total_wts[(calldetail1$caste==colnames(Report1)[22])&(calldetail1$Party_Preference=="BJP")], na.rm = TRUE)
for (i in 1:length(Candidate_BJP)) {
  Report1[,22][rownames(Report1)==Candidate_BJP[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP==Candidate_BJP[i])&(calldetail1$caste==colnames(Report1)[22])], na.rm = TRUE)
}
Report1[,22][rownames(Report1)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP=="Other")&(calldetail1$Party_Preference=="BJP")&(calldetail1$caste==colnames(Report1)[22])], na.rm = TRUE)

#Report1_Caste5
Report1[1,23]<-sum(calldetail1$total_wts[(calldetail1$caste==colnames(Report1)[23])&(calldetail1$Party_Preference=="BJP")], na.rm = TRUE)
for (i in 1:length(Candidate_BJP)) {
  Report1[,23][rownames(Report1)==Candidate_BJP[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP==Candidate_BJP[i])&(calldetail1$caste==colnames(Report1)[23])], na.rm = TRUE)
}
Report1[,23][rownames(Report1)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_BJP=="Other")&(calldetail1$Party_Preference=="BJP")&(calldetail1$caste==colnames(Report1)[23])], na.rm = TRUE)


## Congress

##Reports_Overall
#calldetail1_Congress<-calldetail1[(calldetail1$Party_Preference=="Congress"),]
Candidate_Congress<-unique(calldetail1$Candidate_Congress)
Report2<-matrix(NA, nrow = 5, ncol = 23)
Report2<-as.data.frame(Report2)
i<-39
colnames(Report2)<- c("Overall", "Gen_OBC", "SC", "ST", "Islam", "Christian", "Farmer", "NoFarmer", "Teen", "Job", "Adult","Family","Old", "Retired", "Male", "Female", "Rural", "Urban", Database$Cst1[i], Database$Cst2[i],Database$Cst3[i],Database$Cst4[i],Database$Cst5[i])
v<-which(Candidate_Congress %in% c("Other", NA, "Don't_Know", "NoAnswer", "Missing"))
Candidate_Congress<-Candidate_Congress[-v]
rownames(Report2)<-c("Base", Candidate_Congress, "Other")

Report2$Overall[1]<-sum(calldetail1$total_wts[calldetail1$Party_Preference=="Congress"], na.rm = TRUE)
for (i in 1:length(Candidate_Congress)) {
  Report2$Overall[rownames(Report2)==Candidate_Congress[i]]<-sum(calldetail1$total_wts[calldetail1$Candidate_Congress==Candidate_Congress[i]], na.rm = TRUE)
}
Report2$Overall[rownames(Report2)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress=="Other")&(calldetail1$Party_Preference=="Congress")], na.rm = TRUE)


#Report2_Gen_OBC
Report2$Gen_OBC[1]<-sum(calldetail1$total_wts[((calldetail1$catid=="General")|(calldetail1$catid=="OBC"))&(calldetail1$Party_Preference=="Congress")], na.rm = TRUE)
for (i in 1:length(Candidate_Congress)) {
  Report2$Gen_OBC[rownames(Report2)==Candidate_Congress[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress==Candidate_Congress[i])&((calldetail1$catid=="General")|(calldetail1$catid=="OBC"))], na.rm = TRUE)
}
Report2$Gen_OBC[rownames(Report2)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress=="Other")&(calldetail1$Party_Preference=="Congress")&((calldetail1$catid=="General")|(calldetail1$catid=="OBC"))], na.rm = TRUE)

#Report2_SC
Report2$SC[1]<-sum(calldetail1$total_wts[(calldetail1$catid=="SC")&(calldetail1$Party_Preference=="Congress")], na.rm = TRUE)
for (i in 1:length(Candidate_Congress)) {
  Report2$SC[rownames(Report2)==Candidate_Congress[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress==Candidate_Congress[i])&(calldetail1$catid=="SC")], na.rm = TRUE)
}
Report2$SC[rownames(Report2)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress=="Other")&(calldetail1$Party_Preference=="Congress")&(calldetail1$catid=="SC")], na.rm = TRUE)


#Report2_ST
Report2$ST[1]<-sum(calldetail1$total_wts[(calldetail1$catid=="ST")&(calldetail1$Party_Preference=="Congress")], na.rm = TRUE)
for (i in 1:length(Candidate_Congress)) {
  Report2$ST[rownames(Report2)==Candidate_Congress[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress==Candidate_Congress[i])&(calldetail1$catid=="ST")], na.rm = TRUE)
}
Report2$ST[rownames(Report2)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress=="Other")&(calldetail1$Party_Preference=="Congress")&(calldetail1$catid=="ST")], na.rm = TRUE)

#Report2_Islam
Report2$Islam[1]<-sum(calldetail1$total_wts[(calldetail1$catid=="Islam")&(calldetail1$Party_Preference=="Congress")], na.rm = TRUE)
for (i in 1:length(Candidate_Congress)) {
  Report2$Islam[rownames(Report2)==Candidate_Congress[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress==Candidate_Congress[i])&(calldetail1$catid=="Islam")], na.rm = TRUE)
}
Report2$Islam[rownames(Report2)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress=="Other")&(calldetail1$Party_Preference=="Congress")&(calldetail1$catid=="Islam")], na.rm = TRUE)


#Report2_Christian
Report2$Christian[1]<-sum(calldetail1$total_wts[(calldetail1$catid=="Christian")&(calldetail1$Party_Preference=="Congress")], na.rm = TRUE)
for (i in 1:length(Candidate_Congress)) {
  Report2$Christian[rownames(Report2)==Candidate_Congress[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress==Candidate_Congress[i])&(calldetail1$catid=="Christian")], na.rm = TRUE)
}
Report2$Christian[rownames(Report2)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress=="Other")&(calldetail1$Party_Preference=="Congress")&(calldetail1$catid=="Christian")], na.rm = TRUE)

#Report2_farmer
Report2$Farmer[1]<-sum(calldetail1$total_wts[(calldetail1$isfarmer=="Yes")&(calldetail1$Party_Preference=="Congress")], na.rm = TRUE)
for (i in 1:length(Candidate_Congress)) {
  Report2$Farmer[rownames(Report2)==Candidate_Congress[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress==Candidate_Congress[i])&(calldetail1$isfarmer=="Yes")], na.rm = TRUE)
}
Report2$Farmer[rownames(Report2)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress=="Other")&(calldetail1$Party_Preference=="Congress")&(calldetail1$isfarmer=="Yes")], na.rm = TRUE)

#Report2_non_farmer
Report2$NoFarmer[1]<-sum(calldetail1$total_wts[(calldetail1$isfarmer=="No")&(calldetail1$Party_Preference=="Congress")], na.rm = TRUE)
for (i in 1:length(Candidate_Congress)) {
  Report2$NoFarmer[rownames(Report2)==Candidate_Congress[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress==Candidate_Congress[i])&(calldetail1$isfarmer=="No")], na.rm = TRUE)
}
Report2$NoFarmer[rownames(Report2)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress=="Other")&(calldetail1$Party_Preference=="Congress")&(calldetail1$isfarmer=="No")], na.rm = TRUE)

#Report2_Teen
Report2$Teen[1]<-sum(calldetail1$total_wts[(calldetail1$age=="18-24")&(calldetail1$Party_Preference=="Congress")], na.rm = TRUE)
for (i in 1:length(Candidate_Congress)) {
  Report2$Teen[rownames(Report2)==Candidate_Congress[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress==Candidate_Congress[i])&(calldetail1$age=="18-24")], na.rm = TRUE)
}
Report2$Teen[rownames(Report2)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress=="Other")&(calldetail1$Party_Preference=="Congress")&(calldetail1$age=="18-24")], na.rm = TRUE)

#Report2_Job
Report2$Job[1]<-sum(calldetail1$total_wts[(calldetail1$age=="25-29")&(calldetail1$Party_Preference=="Congress")], na.rm = TRUE)
for (i in 1:length(Candidate_Congress)) {
  Report2$Job[rownames(Report2)==Candidate_Congress[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress==Candidate_Congress[i])&(calldetail1$age=="25-29")], na.rm = TRUE)
}
Report2$Job[rownames(Report2)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress=="Other")&(calldetail1$Party_Preference=="Congress")&(calldetail1$age=="25-29")], na.rm = TRUE)

#Report2_Adult
Report2$Adult[1]<-sum(calldetail1$total_wts[(calldetail1$age=="30-39")&(calldetail1$Party_Preference=="Congress")], na.rm = TRUE)
for (i in 1:length(Candidate_Congress)) {
  Report2$Adult[rownames(Report2)==Candidate_Congress[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress==Candidate_Congress[i])&(calldetail1$age=="30-39")], na.rm = TRUE)
}
Report2$Adult[rownames(Report2)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress=="Other")&(calldetail1$Party_Preference=="Congress")&(calldetail1$age=="30-39")], na.rm = TRUE)


#Report2_Family
Report2$Family[1]<-sum(calldetail1$total_wts[(calldetail1$age=="40-49")&(calldetail1$Party_Preference=="Congress")], na.rm = TRUE)
for (i in 1:length(Candidate_Congress)) {
  Report2$Family[rownames(Report2)==Candidate_Congress[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress==Candidate_Congress[i])&(calldetail1$age=="40-49")], na.rm = TRUE)
}
Report2$Family[rownames(Report2)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress=="Other")&(calldetail1$Party_Preference=="Congress")&(calldetail1$age=="40-49")], na.rm = TRUE)

#Report2_Old
Report2$Old[1]<-sum(calldetail1$total_wts[(calldetail1$age=="50-59")&(calldetail1$Party_Preference=="Congress")], na.rm = TRUE)
for (i in 1:length(Candidate_Congress)) {
  Report2$Old[rownames(Report2)==Candidate_Congress[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress==Candidate_Congress[i])&(calldetail1$age=="50-59")], na.rm = TRUE)
}
Report2$Old[rownames(Report2)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress=="Other")&(calldetail1$Party_Preference=="Congress")&(calldetail1$age=="50-59")], na.rm = TRUE)

#Report2_Retired
Report2$Retired[1]<-sum(calldetail1$total_wts[(calldetail1$age=="60+")&(calldetail1$Party_Preference=="Congress")], na.rm = TRUE)
for (i in 1:length(Candidate_Congress)) {
  Report2$Retired[rownames(Report2)==Candidate_Congress[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress==Candidate_Congress[i])&(calldetail1$age=="60+")], na.rm = TRUE)
}
Report2$Retired[rownames(Report2)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress=="Other")&(calldetail1$Party_Preference=="Congress")&(calldetail1$age=="60+")], na.rm = TRUE)

#Report2_Male
Report2$Male[1]<-sum(calldetail1$total_wts[(calldetail1$gender=="Male")&(calldetail1$Party_Preference=="Congress")], na.rm = TRUE)
for (i in 1:length(Candidate_Congress)) {
  Report2$Male[rownames(Report2)==Candidate_Congress[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress==Candidate_Congress[i])&(calldetail1$gender=="Male")], na.rm = TRUE)
}
Report2$Male[rownames(Report2)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress=="Other")&(calldetail1$Party_Preference=="Congress")&(calldetail1$gender=="Male")], na.rm = TRUE)

#Report2_Female
Report2$Female[1]<-sum(calldetail1$total_wts[(calldetail1$gender=="Female")&(calldetail1$Party_Preference=="Congress")], na.rm = TRUE)
for (i in 1:length(Candidate_Congress)) {
  Report2$Female[rownames(Report2)==Candidate_Congress[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress==Candidate_Congress[i])&(calldetail1$gender=="Female")], na.rm = TRUE)
}
Report2$Female[rownames(Report2)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress=="Other")&(calldetail1$Party_Preference=="Congress")&(calldetail1$gender=="Female")], na.rm = TRUE)

#Report2_Rural
Report2$Rural[1]<-sum(calldetail1$total_wts[(calldetail1$iscity=="Rural")&(calldetail1$Party_Preference=="Congress")], na.rm = TRUE)
for (i in 1:length(Candidate_Congress)) {
  Report2$Rural[rownames(Report2)==Candidate_Congress[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress==Candidate_Congress[i])&(calldetail1$iscity=="Rural")], na.rm = TRUE)
}
Report2$Rural[rownames(Report2)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress=="Other")&(calldetail1$Party_Preference=="Congress")&(calldetail1$iscity=="Rural")], na.rm = TRUE)

#Report2_Urban
Report2$Urban[1]<-sum(calldetail1$total_wts[(calldetail1$iscity=="Urban")&(calldetail1$Party_Preference=="Congress")], na.rm = TRUE)
for (i in 1:length(Candidate_Congress)) {
  Report2$Urban[rownames(Report2)==Candidate_Congress[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress==Candidate_Congress[i])&(calldetail1$iscity=="Urban")], na.rm = TRUE)
}
Report2$Urban[rownames(Report2)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress=="Other")&(calldetail1$Party_Preference=="Congress")&(calldetail1$iscity=="Urban")], na.rm = TRUE)

#Report2_Caste1
Report2[1,19]<-sum(calldetail1$total_wts[(calldetail1$caste==colnames(Report2)[19])&(calldetail1$Party_Preference=="Congress")], na.rm = TRUE)
for (i in 1:length(Candidate_Congress)) {
  Report2[,19][rownames(Report2)==Candidate_Congress[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress==Candidate_Congress[i])&(calldetail1$caste==colnames(Report2)[19])], na.rm = TRUE)
}
Report2[,19][rownames(Report2)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress=="Other")&(calldetail1$Party_Preference=="Congress")&(calldetail1$caste==colnames(Report2)[19])], na.rm = TRUE)

#Report2_Caste2
Report2[1,20]<-sum(calldetail1$total_wts[(calldetail1$caste==colnames(Report2)[20])&(calldetail1$Party_Preference=="Congress")], na.rm = TRUE)
for (i in 1:length(Candidate_Congress)) {
  Report2[,20][rownames(Report2)==Candidate_Congress[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress==Candidate_Congress[i])&(calldetail1$caste==colnames(Report2)[20])], na.rm = TRUE)
}
Report2[,20][rownames(Report2)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress=="Other")&(calldetail1$Party_Preference=="Congress")&(calldetail1$caste==colnames(Report2)[20])], na.rm = TRUE)

#Report2_Caste3
Report2[1,21]<-sum(calldetail1$total_wts[(calldetail1$caste==colnames(Report2)[21])&(calldetail1$Party_Preference=="Congress")], na.rm = TRUE)
for (i in 1:length(Candidate_Congress)) {
  Report2[,21][rownames(Report2)==Candidate_Congress[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress==Candidate_Congress[i])&(calldetail1$caste==colnames(Report2)[21])], na.rm = TRUE)
}
Report2[,21][rownames(Report2)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress=="Other")&(calldetail1$Party_Preference=="Congress")&(calldetail1$caste==colnames(Report2)[21])], na.rm = TRUE)

#Report2_Caste4
Report2[1,22]<-sum(calldetail1$total_wts[(calldetail1$caste==colnames(Report2)[22])&(calldetail1$Party_Preference=="Congress")], na.rm = TRUE)
for (i in 1:length(Candidate_Congress)) {
  Report2[,22][rownames(Report2)==Candidate_Congress[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress==Candidate_Congress[i])&(calldetail1$caste==colnames(Report2)[22])], na.rm = TRUE)
}
Report2[,22][rownames(Report2)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress=="Other")&(calldetail1$Party_Preference=="Congress")&(calldetail1$caste==colnames(Report2)[22])], na.rm = TRUE)

#Report2_Caste5
Report2[1,23]<-sum(calldetail1$total_wts[(calldetail1$caste==colnames(Report2)[23])&(calldetail1$Party_Preference=="Congress")], na.rm = TRUE)
for (i in 1:length(Candidate_Congress)) {
  Report2[,23][rownames(Report2)==Candidate_Congress[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress==Candidate_Congress[i])&(calldetail1$caste==colnames(Report2)[23])], na.rm = TRUE)
}
Report2[,23][rownames(Report2)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_Congress=="Other")&(calldetail1$Party_Preference=="Congress")&(calldetail1$caste==colnames(Report2)[23])], na.rm = TRUE)


## BSP+JCC

##Reports_Overall
Candidate_JogiBaspa<-unique(calldetail1$Candidate_No)
Report3<-matrix(NA, nrow = 3, ncol = 23)
Report3<-as.data.frame(Report3)

i<-39
colnames(Report3)<- c("Overall", "Gen_OBC", "SC", "ST", "Islam", "Christian", "Farmer", "NoFarmer", "Teen", "Job", "Adult","Family","Old", "Retired", "Male", "Female", "Rural", "Urban", Database$Cst1[i], Database$Cst2[i],Database$Cst3[i],Database$Cst4[i],Database$Cst5[i])
v<-which(Candidate_JogiBaspa %in% c("Other", "NoAnswer", "Don't_Know", "Missing"))
Candidate_JogiBaspa<-Candidate_JogiBaspa[-v]
rownames(Report3)<-c("Base", Candidate_JogiBaspa, "Other")

Report3$Overall[1]<-sum(calldetail1$total_wts[calldetail1$Party_Preference=="BSP+JCC"], na.rm = TRUE)
for (i in 1:length(Candidate_JogiBaspa)) {
  Report3$Overall[rownames(Report3)==Candidate_JogiBaspa[i]]<-sum(calldetail1$total_wts[calldetail1$Candidate_No==Candidate_JogiBaspa[i]], na.rm = TRUE)
}
Report3$Overall[rownames(Report3)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No=="Other")&(calldetail1$Party_Preference=="BSP+JCC")], na.rm = TRUE)


#Report3_Gen_OBC
Report3$Gen_OBC[1]<-sum(calldetail1$total_wts[((calldetail1$catid=="General")|(calldetail1$catid=="OBC"))&(calldetail1$Party_Preference=="BSP+JCC")], na.rm = TRUE)
for (i in 1:length(Candidate_JogiBaspa)) {
  Report3$Gen_OBC[rownames(Report3)==Candidate_JogiBaspa[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No==Candidate_JogiBaspa[i])&((calldetail1$catid=="General")|(calldetail1$catid=="OBC"))], na.rm = TRUE)
}
Report3$Gen_OBC[rownames(Report3)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No=="Other")&(calldetail1$Party_Preference=="BSP+JCC")&((calldetail1$catid=="General")|(calldetail1$catid=="OBC"))], na.rm = TRUE)

#Report3_SC
Report3$SC[1]<-sum(calldetail1$total_wts[(calldetail1$catid=="SC")&(calldetail1$Party_Preference=="BSP+JCC")], na.rm = TRUE)
for (i in 1:length(Candidate_JogiBaspa)) {
  Report3$SC[rownames(Report3)==Candidate_JogiBaspa[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No==Candidate_JogiBaspa[i])&(calldetail1$catid=="SC")], na.rm = TRUE)
}
Report3$SC[rownames(Report3)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No=="Other")&(calldetail1$Party_Preference=="BSP+JCC")&(calldetail1$catid=="SC")], na.rm = TRUE)


#Report3_ST
Report3$ST[1]<-sum(calldetail1$total_wts[(calldetail1$catid=="ST")&(calldetail1$Party_Preference=="BSP+JCC")], na.rm = TRUE)
for (i in 1:length(Candidate_JogiBaspa)) {
  Report3$ST[rownames(Report3)==Candidate_JogiBaspa[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No==Candidate_JogiBaspa[i])&(calldetail1$catid=="ST")], na.rm = TRUE)
}
Report3$ST[rownames(Report3)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No=="Other")&(calldetail1$Party_Preference=="BSP+JCC")&(calldetail1$catid=="ST")], na.rm = TRUE)

#Report3_Islam
Report3$Islam[1]<-sum(calldetail1$total_wts[(calldetail1$catid=="Islam")&(calldetail1$Party_Preference=="BSP+JCC")], na.rm = TRUE)
for (i in 1:length(Candidate_JogiBaspa)) {
  Report3$Islam[rownames(Report3)==Candidate_JogiBaspa[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No==Candidate_JogiBaspa[i])&(calldetail1$catid=="Islam")], na.rm = TRUE)
}
Report3$Islam[rownames(Report3)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No=="Other")&(calldetail1$Party_Preference=="BSP+JCC")&(calldetail1$catid=="Islam")], na.rm = TRUE)


#Report3_Christian
Report3$Christian[1]<-sum(calldetail1$total_wts[(calldetail1$catid=="Christian")&(calldetail1$Party_Preference=="BSP+JCC")], na.rm = TRUE)
for (i in 1:length(Candidate_JogiBaspa)) {
  Report3$Christian[rownames(Report3)==Candidate_JogiBaspa[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No==Candidate_JogiBaspa[i])&(calldetail1$catid=="Christian")], na.rm = TRUE)
}
Report3$Christian[rownames(Report3)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No=="Other")&(calldetail1$Party_Preference=="BSP+JCC")&(calldetail1$catid=="Christian")], na.rm = TRUE)

#Report3_farmer
Report3$Farmer[1]<-sum(calldetail1$total_wts[(calldetail1$isfarmer=="Yes")&(calldetail1$Party_Preference=="BSP+JCC")], na.rm = TRUE)
for (i in 1:length(Candidate_JogiBaspa)) {
  Report3$Farmer[rownames(Report3)==Candidate_JogiBaspa[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No==Candidate_JogiBaspa[i])&(calldetail1$isfarmer=="Yes")], na.rm = TRUE)
}
Report3$Farmer[rownames(Report3)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No=="Other")&(calldetail1$Party_Preference=="BSP+JCC")&(calldetail1$isfarmer=="Yes")], na.rm = TRUE)

#Report3_non_farmer
Report3$NoFarmer[1]<-sum(calldetail1$total_wts[(calldetail1$isfarmer=="No")&(calldetail1$Party_Preference=="BSP+JCC")], na.rm = TRUE)
for (i in 1:length(Candidate_JogiBaspa)) {
  Report3$NoFarmer[rownames(Report3)==Candidate_JogiBaspa[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No==Candidate_JogiBaspa[i])&(calldetail1$isfarmer=="No")], na.rm = TRUE)
}
Report3$NoFarmer[rownames(Report3)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No=="Other")&(calldetail1$Party_Preference=="BSP+JCC")&(calldetail1$isfarmer=="No")], na.rm = TRUE)

#Report3_Teen
Report3$Teen[1]<-sum(calldetail1$total_wts[(calldetail1$age=="18-24")&(calldetail1$Party_Preference=="BSP+JCC")], na.rm = TRUE)
for (i in 1:length(Candidate_JogiBaspa)) {
  Report3$Teen[rownames(Report3)==Candidate_JogiBaspa[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No==Candidate_JogiBaspa[i])&(calldetail1$age=="18-24")], na.rm = TRUE)
}
Report3$Teen[rownames(Report3)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No=="Other")&(calldetail1$Party_Preference=="BSP+JCC")&(calldetail1$age=="18-24")], na.rm = TRUE)

#Report3_Job
Report3$Job[1]<-sum(calldetail1$total_wts[(calldetail1$age=="25-29")&(calldetail1$Party_Preference=="BSP+JCC")], na.rm = TRUE)
for (i in 1:length(Candidate_JogiBaspa)) {
  Report3$Job[rownames(Report3)==Candidate_JogiBaspa[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No==Candidate_JogiBaspa[i])&(calldetail1$age=="25-29")], na.rm = TRUE)
}
Report3$Job[rownames(Report3)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No=="Other")&(calldetail1$Party_Preference=="BSP+JCC")&(calldetail1$age=="25-29")], na.rm = TRUE)

#Report3_Adult
Report3$Adult[1]<-sum(calldetail1$total_wts[(calldetail1$age=="30-39")&(calldetail1$Party_Preference=="BSP+JCC")], na.rm = TRUE)
for (i in 1:length(Candidate_JogiBaspa)) {
  Report3$Adult[rownames(Report3)==Candidate_JogiBaspa[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No==Candidate_JogiBaspa[i])&(calldetail1$age=="30-39")], na.rm = TRUE)
}
Report3$Adult[rownames(Report3)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No=="Other")&(calldetail1$Party_Preference=="BSP+JCC")&(calldetail1$age=="30-39")], na.rm = TRUE)


#Report3_Family
Report3$Family[1]<-sum(calldetail1$total_wts[(calldetail1$age=="40-49")&(calldetail1$Party_Preference=="BSP+JCC")], na.rm = TRUE)
for (i in 1:length(Candidate_JogiBaspa)) {
  Report3$Family[rownames(Report3)==Candidate_JogiBaspa[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No==Candidate_JogiBaspa[i])&(calldetail1$age=="40-49")], na.rm = TRUE)
}
Report3$Family[rownames(Report3)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No=="Other")&(calldetail1$Party_Preference=="BSP+JCC")&(calldetail1$age=="40-49")], na.rm = TRUE)

#Report3_Old
Report3$Old[1]<-sum(calldetail1$total_wts[(calldetail1$age=="50-59")&(calldetail1$Party_Preference=="BSP+JCC")], na.rm = TRUE)
for (i in 1:length(Candidate_JogiBaspa)) {
  Report3$Old[rownames(Report3)==Candidate_JogiBaspa[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No==Candidate_JogiBaspa[i])&(calldetail1$age=="50-59")], na.rm = TRUE)
}
Report3$Old[rownames(Report3)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No=="Other")&(calldetail1$Party_Preference=="BSP+JCC")&(calldetail1$age=="50-59")], na.rm = TRUE)

#Report3_Retired
Report3$Retired[1]<-sum(calldetail1$total_wts[(calldetail1$age=="60+")&(calldetail1$Party_Preference=="BSP+JCC")], na.rm = TRUE)
for (i in 1:length(Candidate_JogiBaspa)) {
  Report3$Retired[rownames(Report3)==Candidate_JogiBaspa[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No==Candidate_JogiBaspa[i])&(calldetail1$age=="60+")], na.rm = TRUE)
}
Report3$Retired[rownames(Report3)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No=="Other")&(calldetail1$Party_Preference=="BSP+JCC")&(calldetail1$age=="60+")], na.rm = TRUE)

#Report3_Male
Report3$Male[1]<-sum(calldetail1$total_wts[(calldetail1$gender=="Male")&(calldetail1$Party_Preference=="BSP+JCC")], na.rm = TRUE)
for (i in 1:length(Candidate_JogiBaspa)) {
  Report3$Male[rownames(Report3)==Candidate_JogiBaspa[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No==Candidate_JogiBaspa[i])&(calldetail1$gender=="Male")], na.rm = TRUE)
}
Report3$Male[rownames(Report3)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No=="Other")&(calldetail1$Party_Preference=="BSP+JCC")&(calldetail1$gender=="Male")], na.rm = TRUE)

#Report3_Female
Report3$Female[1]<-sum(calldetail1$total_wts[(calldetail1$gender=="Female")&(calldetail1$Party_Preference=="BSP+JCC")], na.rm = TRUE)
for (i in 1:length(Candidate_JogiBaspa)) {
  Report3$Female[rownames(Report3)==Candidate_JogiBaspa[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No==Candidate_JogiBaspa[i])&(calldetail1$gender=="Female")], na.rm = TRUE)
}
Report3$Female[rownames(Report3)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No=="Other")&(calldetail1$Party_Preference=="BSP+JCC")&(calldetail1$gender=="Female")], na.rm = TRUE)

#Report3_Rural
Report3$Rural[1]<-sum(calldetail1$total_wts[(calldetail1$iscity=="Rural")&(calldetail1$Party_Preference=="BSP+JCC")], na.rm = TRUE)
for (i in 1:length(Candidate_JogiBaspa)) {
  Report3$Rural[rownames(Report3)==Candidate_JogiBaspa[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No==Candidate_JogiBaspa[i])&(calldetail1$iscity=="Rural")], na.rm = TRUE)
}
Report3$Rural[rownames(Report3)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No=="Other")&(calldetail1$Party_Preference=="BSP+JCC")&(calldetail1$iscity=="Rural")], na.rm = TRUE)

#Report3_Urban
Report3$Urban[1]<-sum(calldetail1$total_wts[(calldetail1$iscity=="Urban")&(calldetail1$Party_Preference=="BSP+JCC")], na.rm = TRUE)
for (i in 1:length(Candidate_JogiBaspa)) {
  Report3$Urban[rownames(Report3)==Candidate_JogiBaspa[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No==Candidate_JogiBaspa[i])&(calldetail1$iscity=="Urban")], na.rm = TRUE)
}
Report3$Urban[rownames(Report3)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No=="Other")&(calldetail1$Party_Preference=="BSP+JCC")&(calldetail1$iscity=="Urban")], na.rm = TRUE)

#Report3_Caste1
Report3[1,19]<-sum(calldetail1$total_wts[(calldetail1$caste==colnames(Report3)[19])&(calldetail1$Party_Preference=="BSP+JCC")], na.rm = TRUE)
for (i in 1:length(Candidate_JogiBaspa)) {
  Report3[,19][rownames(Report3)==Candidate_JogiBaspa[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No==Candidate_JogiBaspa[i])&(calldetail1$caste==colnames(Report3)[19])], na.rm = TRUE)
}
Report3[,19][rownames(Report3)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No=="Other")&(calldetail1$Party_Preference=="BSP+JCC")&(calldetail1$caste==colnames(Report3)[19])], na.rm = TRUE)

#Report3_Caste2
Report3[1,20]<-sum(calldetail1$total_wts[(calldetail1$caste==colnames(Report3)[20])&(calldetail1$Party_Preference=="BSP+JCC")], na.rm = TRUE)
for (i in 1:length(Candidate_JogiBaspa)) {
  Report3[,20][rownames(Report3)==Candidate_JogiBaspa[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No==Candidate_JogiBaspa[i])&(calldetail1$caste==colnames(Report3)[20])], na.rm = TRUE)
}
Report3[,20][rownames(Report3)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No=="Other")&(calldetail1$Party_Preference=="BSP+JCC")&(calldetail1$caste==colnames(Report3)[20])], na.rm = TRUE)

#Report3_Caste3
Report3[1,21]<-sum(calldetail1$total_wts[(calldetail1$caste==colnames(Report3)[21])&(calldetail1$Party_Preference=="BSP+JCC")], na.rm = TRUE)
for (i in 1:length(Candidate_JogiBaspa)) {
  Report3[,21][rownames(Report3)==Candidate_JogiBaspa[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No==Candidate_JogiBaspa[i])&(calldetail1$caste==colnames(Report3)[21])], na.rm = TRUE)
}
Report3[,21][rownames(Report3)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No=="Other")&(calldetail1$Party_Preference=="BSP+JCC")&(calldetail1$caste==colnames(Report3)[21])], na.rm = TRUE)

#Report3_Caste4
Report3[1,22]<-sum(calldetail1$total_wts[(calldetail1$caste==colnames(Report3)[22])&(calldetail1$Party_Preference=="BSP+JCC")], na.rm = TRUE)
for (i in 1:length(Candidate_JogiBaspa)) {
  Report3[,22][rownames(Report3)==Candidate_JogiBaspa[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No==Candidate_JogiBaspa[i])&(calldetail1$caste==colnames(Report3)[22])], na.rm = TRUE)
}
Report3[,22][rownames(Report3)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No=="Other")&(calldetail1$Party_Preference=="BSP+JCC")&(calldetail1$caste==colnames(Report3)[22])], na.rm = TRUE)

#Report3_Caste5
Report3[1,23]<-sum(calldetail1$total_wts[(calldetail1$caste==colnames(Report3)[23])&(calldetail1$Party_Preference=="BSP+JCC")], na.rm = TRUE)
for (i in 1:length(Candidate_JogiBaspa)) {
  Report3[,23][rownames(Report3)==Candidate_JogiBaspa[i]]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No==Candidate_JogiBaspa[i])&(calldetail1$caste==colnames(Report3)[23])], na.rm = TRUE)
}
Report3[,23][rownames(Report3)=="Other"]<-sum(calldetail1$total_wts[(calldetail1$Candidate_No=="Other")&(calldetail1$Party_Preference=="BSP+JCC")&(calldetail1$caste==colnames(Report3)[23])], na.rm = TRUE)

#Weighted Base
#Age
Age_wt$weighted_sample[1]<-round(100*sum(calldetail1$total_wts[calldetail1$age=="18-24"], na.rm = TRUE)/sum(calldetail1$total_wts, na.rm = TRUE),2)
Age_wt$weighted_sample[2]<-round(100*sum(calldetail1$total_wts[calldetail1$age=="25-29"], na.rm = TRUE)/sum(calldetail1$total_wts, na.rm = TRUE),2)
Age_wt$weighted_sample[3]<-round(100*sum(calldetail1$total_wts[calldetail1$age=="30-39"], na.rm = TRUE)/sum(calldetail1$total_wts, na.rm = TRUE),2)
Age_wt$weighted_sample[4]<-round(100*sum(calldetail1$total_wts[calldetail1$age=="40-49"], na.rm = TRUE)/sum(calldetail1$total_wts, na.rm = TRUE),2)
Age_wt$weighted_sample[5]<-round(100*sum(calldetail1$total_wts[calldetail1$age=="50-59"], na.rm = TRUE)/sum(calldetail1$total_wts, na.rm = TRUE),2)
Age_wt$weighted_sample[6]<-round(100*sum(calldetail1$total_wts[calldetail1$age=="60+"], na.rm = TRUE)/sum(calldetail1$total_wts, na.rm = TRUE),2)

#Gender
gender_wt$weighted_sample[1]<-round(100*sum(calldetail1$total_wts[calldetail1$gender=="Male"], na.rm = TRUE)/sum(calldetail1$total_wts, na.rm = TRUE),2)
gender_wt$weighted_sample[2]<-round(100*sum(calldetail1$total_wts[calldetail1$gender=="Female"], na.rm = TRUE)/sum(calldetail1$total_wts, na.rm = TRUE),2)
gender_wt$weighted_sample[3]<-100-sum(gender_wt$weighted_sample[1:2], na.rm = TRUE)

#Rural/Urban
iscity_wt$weighted_sample[1]<-round(100*sum(calldetail1$total_wts[calldetail1$iscity=="Urban"], na.rm = TRUE)/sum(calldetail1$total_wts, na.rm = TRUE),2)
iscity_wt$weighted_sample[2]<-round(100*sum(calldetail1$total_wts[calldetail1$iscity=="Rural"], na.rm = TRUE)/sum(calldetail1$total_wts, na.rm = TRUE),2)
iscity_wt$weighted_sample[3]<-100-sum(iscity_wt$weighted_sample[1:2], na.rm = TRUE)

#Catid
catid_wt$weighted_sample[1]<-round(100*sum(calldetail1$total_wts[(calldetail1$catid=="General")|(calldetail1$catid=="OBC")], na.rm = TRUE)/sum(calldetail1$total_wts, na.rm = TRUE),2)
catid_wt$weighted_sample[2]<-round(100*sum(calldetail1$total_wts[(calldetail1$catid=="SC")], na.rm = TRUE)/sum(calldetail1$total_wts, na.rm = TRUE),2)
catid_wt$weighted_sample[3]<-round(100*sum(calldetail1$total_wts[(calldetail1$catid=="ST")], na.rm = TRUE)/sum(calldetail1$total_wts, na.rm = TRUE),2)
catid_wt$weighted_sample[4]<-round(100*sum(calldetail1$total_wts[(calldetail1$catid=="Islam")], na.rm = TRUE)/sum(calldetail1$total_wts, na.rm = TRUE),2)
catid_wt$weighted_sample[5]<-round(100*sum(calldetail1$total_wts[(calldetail1$catid=="Christian")], na.rm = TRUE)/sum(calldetail1$total_wts, na.rm = TRUE),2)
catid_wt$weighted_sample[6]<-100-sum(catid_wt$weighted_sample[1:5], na.rm = TRUE)

Sample1<- rbind(Age_wt,gender_wt, catid_wt,iscity_wt)
Final_report1<-rbind(Report1,Report2, Report3)

write.csv(Sample1, "Sample2.csv")
write.csv(Final_report1, "Final2.csv")

Database$Cst1[Database$Cst1=="Aghariya"]<-"Aghariya/ Nayak/Patel"
Database$Cst2[Database$Cst2=="Aghariya"]<-"Aghariya/ Nayak/Patel"
Database$Cst3[Database$Cst3=="Aghariya"]<-"Aghariya/ Nayak/Patel"
Database$Cst4[Database$Cst4=="Aghariya"]<-"Aghariya/ Nayak/Patel"
Database$Cst5[Database$Cst5=="Aghariya"]<-"Aghariya/ Nayak/Patel"

