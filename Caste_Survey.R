calldetail1<- DB_Sarguja_Yadav_CasteWiseCalling

#Data_Cleaning 
#Survey_Yes
calldetail1$q1[calldetail1$q1=="1"]<-"Yes"
calldetail1$q1[calldetail1$q1=="2"]<-"No"

#Gender
calldetail1$q3[calldetail1$q3=="1"]<-"Female"
calldetail1$q3[calldetail1$q3=="2"]<-"Male"

#iscity
calldetail1$q15[calldetail1$q15=="1"]<-"Urban"
calldetail1$q15[calldetail1$q15=="2"]<-"Rural"
calldetail1$q15[calldetail1$q15=="3"]<-"Don't_Know"

#Representationtocaste
calldetail1$q9[calldetail1$q9=="1"]<-"Not_at_all"
calldetail1$q9[calldetail1$q9=="2"]<-"Little_bit"
calldetail1$q9[calldetail1$q9=="3"]<-"asrequired"
calldetail1$q9[calldetail1$q9=="4"]<-"morethanrequired"

#BestSchemes
calldetail1$q10[calldetail1$q10=="1"]<-"PDS"
calldetail1$q10[calldetail1$q10=="2"]<-"MSP"
calldetail1$q10[calldetail1$q10=="3"]<-"Charanpaduka"
calldetail1$q10[calldetail1$q10=="4"]<-"Loantofarmers"
calldetail1$q10[calldetail1$q10=="5"]<-"Education"
calldetail1$q10[calldetail1$q10=="6"]<-"SC/ST_Act"
calldetail1$q10[calldetail1$q10=="7"]<-"MNREGA"
calldetail1$q10[calldetail1$q10=="8"]<-"Electricityatlowrate"
calldetail1$q10[calldetail1$q10=="9"]<-"Tendupatta_Bonus"
calldetail1$q10[calldetail1$q10=="10"]<-"Smart_Card"
calldetail1$q10[calldetail1$q10=="11"]<-"Naxalwad"
calldetail1$q10[calldetail1$q10=="12"]<-"Developmental_activities"

#Important_issues
calldetail1$q11[calldetail1$q11=="0"]<-"Missing"
calldetail1$q11[calldetail1$q11=="78"]<-"Low_representation"
calldetail1$q11[calldetail1$q11=="79"]<-"low_MSP"
calldetail1$q11[calldetail1$q11=="80"]<-"Poor_crop_insurance_implementation"
calldetail1$q11[calldetail1$q11=="81"]<-"Draught"
calldetail1$q11[calldetail1$q11=="82"]<-"Poor_education_and_health"
calldetail1$q11[calldetail1$q11=="83"]<-"Unemployment"
calldetail1$q11[calldetail1$q11=="90"]<-"Other"

#Important_Face
calldetail1$q12[calldetail1$q12=="0"]<-"Missing"
calldetail1$q12[calldetail1$q12=="74"]<-"Madhusudan_Yadav"
calldetail1$q12[calldetail1$q12=="75"]<-"Devender_Yadav"
calldetail1$q12[calldetail1$q12=="76"]<-"Bhubaneshwar_Yadav"
calldetail1$q12[calldetail1$q12=="77"]<-"Rajkumar_Yadav"
calldetail1$q12[calldetail1$q12=="90"]<-"Other"

#CM_face
calldetail1$q13[calldetail1$q13=="0"]<-"Missing"
calldetail1$q13[calldetail1$q13=="1"]<-"Bhupesh_Baghel"
calldetail1$q13[calldetail1$q13=="2"]<-"Don't_Know"
calldetail1$q13[calldetail1$q13=="3"]<-"Ajit_Jogi"
calldetail1$q13[calldetail1$q13=="4"]<-"TS_Singhdeo"
calldetail1$q13[calldetail1$q13=="5"]<-"Dr_Raman_Singh"
calldetail1$q13[calldetail1$q13=="90"]<-"Other"

#Political_Party
calldetail1$q14[calldetail1$q14=="0"]<-"Missing"
calldetail1$q14[calldetail1$q14=="1"]<-"Congress"
calldetail1$q14[calldetail1$q14=="2"]<-"BJP"
calldetail1$q14[calldetail1$q14=="5"]<-"SP"
calldetail1$q14[calldetail1$q14=="6"]<-"GGP"
calldetail1$q14[calldetail1$q14=="7"]<-"AAP"
calldetail1$q14[calldetail1$q14=="8"]<-"Independent"
calldetail1$q14[calldetail1$q14=="9"]<-"NOTA"
calldetail1$q14[calldetail1$q14=="10"]<-"Candidate"
calldetail1$q14[calldetail1$q14=="11"]<-"Undecided"
calldetail1$q14[calldetail1$q14=="12"]<-"NoAnswer"
calldetail1$q14[calldetail1$q14=="13"]<-"BSP+JCC"
calldetail1$q14[calldetail1$q14=="90"]<-"Other"

#isfarmer
calldetail1$q16[calldetail1$q16=="1"]<-"Yes"
calldetail1$q16[calldetail1$q16=="2"]<-"No"
calldetail1$q16[calldetail1$q16=="3"]<-"Don't_Know"

colnames(calldetail1)<- c("id", "agent", "campaign", "campaign id", "process", "process id",  "caller",  "extension", "callstart", "callend", "duration", "Sambhag", "disposition", "issurvey", "gender", "age", "District", "Block", "caste", "representation", "schemes", "schemes_other", "issue", "issue_other", "leader", "leader_other", "cm", "cm_other", "party", "iscity", "isfarmer")

#Report1: Representation

Report1<-matrix(NA, nrow = 7, ncol = 22)
Report1<-as.data.frame(Report1)

colnames(Report1)<- c("Overall", "Balrampur","Jashpur", "Koriya", "Surajpur", "Surguja", "PATTHALGAON", "AMBIKAPUR", "RAMCHANDRAPUR", "BAGICHA", "Teen", "Job", "Adult","Family","Old", "Retired", "Male", "Female", "Rural", "Urban", "farmer", "Nofarmer")
rownames(Report1)<- c("Base", "Not_at_all", "Little_bit", "asrequired", "morethanrequired", "Other", "Missing")

Y<- count(calldetail1, "representation")
Report1[1,1]<- sum(Y$freq, na.rm = TRUE)

for (i in 1:6) {
  Report1[rownames(Report1)==Y$representation[i],1]<- Y$freq[i]
}
Report1[6,1]<- Y$freq[Y$representation=="999"]
Report1[7,1]<- Y$freq[Y$representation=="0"]

# District
for (i in 2:6) {
  calldetail2<- subset(calldetail1, District==colnames(Report1)[i])
  Y<- count(calldetail2, "representation")
  Report1[1,i]<- sum(Y$freq, na.rm = TRUE)
  
  for (j in 1:6) {
    Report1[rownames(Report1)==Y$representation[j], i]<- Y$freq[j]
  }
  Report1[6,i]<- Y$freq[Y$representation=="999"]
  Report1[7,i]<- Y$freq[Y$representation=="0"]
  
}

# Blocks
for (i in 7:10) {
  calldetail2<- subset(calldetail1, Block==colnames(Report1)[i])
  Y<- count(calldetail2, "representation")
  Report1[1,i]<- sum(Y$freq, na.rm = TRUE)
  
  for (j in 1:6) {
    Report1[rownames(Report1)==Y$representation[j], i]<- Y$freq[j]
  }
  Report1[6,i]<- Y$freq[Y$representation=="999"]
  Report1[7,i]<- Y$freq[Y$representation=="0"]
  
}

#Sample_Distribution
district_cnt<- count(calldetail1, "District")
district_cnt$perc<- round(100*district_cnt$freq/sum(district_cnt$freq, na.rm = FALSE),2)

age_cnt<- count(calldetail1, "age")
age_cnt$perc<- round(100*age_cnt$freq/sum(age_cnt$freq, na.rm = FALSE),2)

gender_cnt<- count(calldetail1, "gender")
gender_cnt$perc<- round(100*gender_cnt$freq/sum(gender_cnt$freq, na.rm = FALSE),2)

iscity_cnt<- count(calldetail1, "iscity")
iscity_cnt$perc<- round(100*iscity_cnt$freq/sum(iscity_cnt$freq, na.rm = FALSE),2)

write.csv(district_cnt, "district.csv")
write.csv(gender_cnt, "gender.csv")
write.csv(iscity_cnt, "iscity.csv")
write.csv(age_cnt, "age.csv")

#Age
calldetail1$age[(calldetail1$age>17)&(calldetail1$age<25)]<-"Teen"
calldetail1$age[(calldetail1$age>24)&(calldetail1$age<30)]<-"Job"
calldetail1$age[(calldetail1$age>29)&(calldetail1$age<40)]<-"Adult"
calldetail1$age[(calldetail1$age>39)&(calldetail1$age<50)]<-"Family"
calldetail1$age[(calldetail1$age>49)&(calldetail1$age<60)]<-"Old"
calldetail1$age[(calldetail1$age!="Teen")&(calldetail1$age!="Job")&(calldetail1$age!="Adult")&(calldetail1$age!="Family")&(calldetail1$age!="Old")]<-"Retired"
calldetail1$age[calldetail1$age=="0"]<-"Missing"

for (i in 11:16) {
  calldetail2<- subset(calldetail1, age==colnames(Report1)[i])
  Y<- count(calldetail2, "representation")
  Report1[1,i]<- sum(Y$freq, na.rm = TRUE)
  
  for (j in 1:6) {
    Report1[rownames(Report1)==Y$representation[j], i]<- Y$freq[j]
  }
  Report1[6,i]<- Y$freq[Y$representation=="999"]
  Report1[7,i]<- Y$freq[Y$representation=="0"]
  
}

#Male
calldetail2<- subset(calldetail1, gender=="Male")
Y<- count(calldetail2, "representation")
Report1[1,17]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:6) {
  Report1[rownames(Report1)==Y$representation[j], 17]<- Y$freq[j]
}
Report1[6,17]<- Y$freq[Y$representation=="999"]
Report1[7,17]<- Y$freq[Y$representation=="0"]

#Female
calldetail2<- subset(calldetail1, gender=="Female")
Y<- count(calldetail2, "representation")
Report1[1,18]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:6) {
  Report1[rownames(Report1)==Y$representation[j], 18]<- Y$freq[j]
}
Report1[6,18]<- Y$freq[Y$representation=="999"]
Report1[7,18]<- Y$freq[Y$representation=="0"]

#Rural
calldetail2<- subset(calldetail1, iscity=="Rural")
Y<- count(calldetail2, "representation")
Report1[1,19]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:6) {
  Report1[rownames(Report1)==Y$representation[j], 19]<- Y$freq[j]
}
Report1[6,19]<- Y$freq[Y$representation=="999"]
Report1[7,19]<- Y$freq[Y$representation=="0"]

#Urban
calldetail2<- subset(calldetail1, iscity=="Urban")
Y<- count(calldetail2, "representation")
Report1[1,20]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:6) {
  Report1[rownames(Report1)==Y$representation[j], 20]<- Y$freq[j]
}
Report1[6,20]<- Y$freq[Y$representation=="999"]
Report1[7,20]<- Y$freq[Y$representation=="0"]

#farmer
calldetail2<- subset(calldetail1, isfarmer=="Yes")
Y<- count(calldetail2, "representation")
Report1[1,21]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:dim(Y)[1]) {
  Report1[rownames(Report1)==Y$representation[j], 21]<- Y$freq[j]
}
Report1[6,21]<- Y$freq[Y$representation=="999"]
Report1[7,21]<- Y$freq[Y$representation=="0"]

#Nofarmer
calldetail2<- subset(calldetail1, isfarmer=="No")
Y<- count(calldetail2, "representation")
Report1[1,22]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:dim(Y)[1]) {
  Report1[rownames(Report1)==Y$representation[j], 22]<- Y$freq[j]
}
Report1[6,22]<- Y$freq[Y$representation=="999"]
Report1[7,22]<- Y$freq[Y$representation=="0"]


#Report2: Schemes

Report2<-matrix(NA, nrow = 15, ncol = 22)
Report2<-as.data.frame(Report2)

colnames(Report2)<- c("Overall", "Balrampur","Jashpur", "Koriya", "Surajpur", "Surguja", "PATTHALGAON", "AMBIKAPUR", "RAMCHANDRAPUR", "BAGICHA", "Teen", "Job", "Adult","Family","Old", "Retired", "Male", "Female", "Rural", "Urban", "farmer", "Nofarmer")
rownames(Report2)<- c("Base", "PDS", "Smart_Card", "Tendupatta_Bonus", "Education", "MNREGA","Loantofarmers","Electricityatlowrate","Developmental_activities", "MSP", "Charanpaduka", "SC/ST_Act", "Naxalwad", "Other", "Missing")

Y<- count(calldetail1, "schemes")
Report2[1,1]<- sum(Y$freq, na.rm = TRUE)

for (i in 1:14) {
  Report2[rownames(Report2)==Y$schemes[i],1]<- Y$freq[i]
}
Report2[14,1]<- Y$freq[Y$schemes=="90"]
Report2[15,1]<- Y$freq[Y$schemes=="0"]

# District
for (i in 2:6) {
  calldetail2<- subset(calldetail1, District==colnames(Report1)[i])
  Y<- count(calldetail2, "schemes")
  Report2[1,i]<- sum(Y$freq, na.rm = TRUE)
  
  for (j in 1:dim(Y)[1]) {
    Report2[rownames(Report2)==Y$schemes[j], i]<- Y$freq[j]
  }
  Report2[14,i]<- Y$freq[Y$schemes=="90"]
  Report2[15,i]<- Y$freq[Y$schemes=="0"]
  
}

# Blocks
for (i in 7:10) {
  calldetail2<- subset(calldetail1, Block==colnames(Report2)[i])
  Y<- count(calldetail2, "schemes")
  Report2[1,i]<- sum(Y$freq, na.rm = TRUE)
  
  for (j in 1:dim(Y)[1]) {
    Report2[rownames(Report2)==Y$schemes[j], i]<- Y$freq[j]
  }
  Report2[14,i]<- Y$freq[Y$schemes=="90"]
  Report2[15,i]<- Y$freq[Y$schemes=="0"]
  
}

#Age
for (i in 11:16) {
  calldetail2<- subset(calldetail1, age==colnames(Report2)[i])
  Y<- count(calldetail2, "schemes")
  Report2[1,i]<- sum(Y$freq, na.rm = TRUE)
  
  for (j in 1:dim(Y)[1]) {
    Report2[rownames(Report2)==Y$schemes[j], i]<- Y$freq[j]
  }
  Report2[14,i]<- Y$freq[Y$schemes=="90"]
  Report2[15,i]<- Y$freq[Y$schemes=="0"]
  
}

#Male
calldetail2<- subset(calldetail1, gender=="Male")
Y<- count(calldetail2, "schemes")
Report2[1,17]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:dim(Y)[1]) {
  Report2[rownames(Report2)==Y$schemes[j], 17]<- Y$freq[j]
}
Report2[14,17]<- Y$freq[Y$schemes=="90"]
Report2[15,17]<- Y$freq[Y$schemes=="0"]

#Female
calldetail2<- subset(calldetail1, gender=="Female")
Y<- count(calldetail2, "schemes")
Report2[1,18]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:dim(Y)[1]) {
  Report2[rownames(Report2)==Y$schemes[j], 18]<- Y$freq[j]
}
Report2[14,18]<- Y$freq[Y$schemes=="90"]
Report2[15,18]<- Y$freq[Y$schemes=="0"]

#Rural
calldetail2<- subset(calldetail1, iscity=="Rural")
Y<- count(calldetail2, "schemes")
Report2[1,19]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:dim(Y)[1]) {
  Report2[rownames(Report2)==Y$schemes[j], 19]<- Y$freq[j]
}
Report2[14,19]<- Y$freq[Y$schemes=="90"]
Report2[15,19]<- Y$freq[Y$schemes=="0"]

#Urban
calldetail2<- subset(calldetail1, iscity=="Urban")
Y<- count(calldetail2, "schemes")
Report2[1,20]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:dim(Y)[1]) {
  Report2[rownames(Report2)==Y$schemes[j], 20]<- Y$freq[j]
}
Report2[14,20]<- Y$freq[Y$schemes=="90"]
Report2[15,20]<- Y$freq[Y$schemes=="0"]

#farmer
calldetail2<- subset(calldetail1, isfarmer=="Yes")
Y<- count(calldetail2, "schemes")
Report2[1,21]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:dim(Y)[1]) {
  Report2[rownames(Report2)==Y$schemes[j], 21]<- Y$freq[j]
}
Report2[14,21]<- Y$freq[Y$schemes=="90"]
Report2[15,21]<- Y$freq[Y$schemes=="0"]

#Nofarmer
calldetail2<- subset(calldetail1, isfarmer=="No")
Y<- count(calldetail2, "schemes")
Report2[1,22]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:dim(Y)[1]) {
  Report2[rownames(Report2)==Y$schemes[j], 22]<- Y$freq[j]
}
Report2[14,22]<- Y$freq[Y$schemes=="90"]
Report2[15,22]<- Y$freq[Y$schemes=="0"]

#Report3: issue
Report3<-matrix(NA, nrow = 9, ncol = 22)
Report3<-as.data.frame(Report3)

colnames(Report3)<- c("Overall", "Balrampur","Jashpur", "Koriya", "Surajpur", "Surguja", "PATTHALGAON", "AMBIKAPUR", "RAMCHANDRAPUR", "BAGICHA", "Teen", "Job", "Adult","Family","Old", "Retired", "Male", "Female", "Rural", "Urban", "farmer", "Nofarmer")
rownames(Report3)<- c("Base", "Draught", "Low_representation", "Poor_crop_insurance_implementation", "Poor_education_and_health", "Unemployment","low_MSP","Other", "Missing")

Y<- count(calldetail1, "issue")
Report3[1,1]<- sum(Y$freq, na.rm = TRUE)

for (i in 1:dim(Y)[1]) {
  Report3[rownames(Report3)==Y$issue[i],1]<- Y$freq[i]
}

# District
for (i in 2:6) {
  calldetail2<- subset(calldetail1, District==colnames(Report3)[i])
  Y<- count(calldetail2, "issue")
  Report3[1,i]<- sum(Y$freq, na.rm = TRUE)
  
  for (j in 1:dim(Y)[1]) {
    Report3[rownames(Report3)==Y$issue[j], i]<- Y$freq[j]
  }
}

# Blocks
for (i in 7:10) {
  calldetail2<- subset(calldetail1, Block==colnames(Report3)[i])
  Y<- count(calldetail2, "issue")
  Report3[1,i]<- sum(Y$freq, na.rm = TRUE)
  
  for (j in 1:dim(Y)[1]) {
    Report3[rownames(Report3)==Y$issue[j], i]<- Y$freq[j]
  }
}

#Age
for (i in 11:16) {
  calldetail2<- subset(calldetail1, age==colnames(Report3)[i])
  Y<- count(calldetail2, "issue")
  Report3[1,i]<- sum(Y$freq, na.rm = TRUE)
  
  for (j in 1:dim(Y)[1]) {
    Report3[rownames(Report3)==Y$issue[j], i]<- Y$freq[j]
  }
}

#Male
calldetail2<- subset(calldetail1, gender=="Male")
Y<- count(calldetail2, "issue")
Report3[1,17]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:dim(Y)[1]) {
  Report3[rownames(Report3)==Y$issue[j], 17]<- Y$freq[j]
}

#Female
calldetail2<- subset(calldetail1, gender=="Female")
Y<- count(calldetail2, "issue")
Report3[1,18]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:dim(Y)[1]) {
  Report3[rownames(Report3)==Y$issue[j], 18]<- Y$freq[j]
}

#Rural
calldetail2<- subset(calldetail1, iscity=="Rural")
Y<- count(calldetail2, "issue")
Report3[1,19]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:dim(Y)[1]) {
  Report3[rownames(Report3)==Y$issue[j], 19]<- Y$freq[j]
}

#Urban
calldetail2<- subset(calldetail1, iscity=="Urban")
Y<- count(calldetail2, "issue")
Report3[1,20]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:dim(Y)[1]) {
  Report3[rownames(Report3)==Y$issue[j], 20]<- Y$freq[j]
}

#farmer
calldetail2<- subset(calldetail1, isfarmer=="Yes")
Y<- count(calldetail2, "issue")
Report3[1,21]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:dim(Y)[1]) {
  Report3[rownames(Report3)==Y$issue[j], 21]<- Y$freq[j]
}

#Nofarmer
calldetail2<- subset(calldetail1, isfarmer=="No")
Y<- count(calldetail2, "issue")
Report3[1,22]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:dim(Y)[1]) {
  Report3[rownames(Report3)==Y$issue[j], 22]<- Y$freq[j]
}

#Report4: leader
Report4<-matrix(NA, nrow = 7, ncol = 22)
Report4<-as.data.frame(Report4)

colnames(Report4)<- c("Overall", "Balrampur","Jashpur", "Koriya", "Surajpur", "Surguja", "PATTHALGAON", "AMBIKAPUR", "RAMCHANDRAPUR", "BAGICHA", "Teen", "Job", "Adult","Family","Old", "Retired", "Male", "Female", "Rural", "Urban", "farmer", "Nofarmer")
rownames(Report4)<- c("Base", "Bhubaneshwar_Yadav", "Devender_Yadav", "Madhusudan_Yadav", "Rajkumar_Yadav", "Other", "Missing")

Y<- count(calldetail1, "leader")
Report4[1,1]<- sum(Y$freq, na.rm = TRUE)

for (i in 1:dim(Y)[1]) {
  Report4[rownames(Report4)==Y$leader[i],1]<- Y$freq[i]
}

# District
for (i in 2:6) {
  calldetail2<- subset(calldetail1, District==colnames(Report4)[i])
  Y<- count(calldetail2, "leader")
  Report4[1,i]<- sum(Y$freq, na.rm = TRUE)
  
  for (j in 1:dim(Y)[1]) {
    Report4[rownames(Report4)==Y$leader[j], i]<- Y$freq[j]
  }
}

# Blocks
for (i in 7:10) {
  calldetail2<- subset(calldetail1, Block==colnames(Report4)[i])
  Y<- count(calldetail2, "leader")
  Report4[1,i]<- sum(Y$freq, na.rm = TRUE)
  
  for (j in 1:dim(Y)[1]) {
    Report4[rownames(Report4)==Y$leader[j], i]<- Y$freq[j]
  }
}

#Age
for (i in 11:16) {
  calldetail2<- subset(calldetail1, age==colnames(Report4)[i])
  Y<- count(calldetail2, "leader")
  Report4[1,i]<- sum(Y$freq, na.rm = TRUE)
  
  for (j in 1:dim(Y)[1]) {
    Report4[rownames(Report4)==Y$leader[j], i]<- Y$freq[j]
  }
}

#Male
calldetail2<- subset(calldetail1, gender=="Male")
Y<- count(calldetail2, "leader")
Report4[1,17]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:dim(Y)[1]) {
  Report4[rownames(Report4)==Y$leader[j], 17]<- Y$freq[j]
}

#Female
calldetail2<- subset(calldetail1, gender=="Female")
Y<- count(calldetail2, "leader")
Report4[1,18]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:dim(Y)[1]) {
  Report4[rownames(Report4)==Y$leader[j], 18]<- Y$freq[j]
}

#Rural
calldetail2<- subset(calldetail1, iscity=="Rural")
Y<- count(calldetail2, "leader")
Report4[1,19]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:dim(Y)[1]) {
  Report4[rownames(Report4)==Y$leader[j], 19]<- Y$freq[j]
}

#Urban
calldetail2<- subset(calldetail1, iscity=="Urban")
Y<- count(calldetail2, "leader")
Report4[1,20]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:dim(Y)[1]) {
  Report4[rownames(Report4)==Y$leader[j], 20]<- Y$freq[j]
}

#farmer
calldetail2<- subset(calldetail1, isfarmer=="Yes")
Y<- count(calldetail2, "leader")
Report4[1,21]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:dim(Y)[1]) {
  Report4[rownames(Report4)==Y$leader[j], 21]<- Y$freq[j]
}

#Nofarmer
calldetail2<- subset(calldetail1, isfarmer=="No")
Y<- count(calldetail2, "leader")
Report4[1,22]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:dim(Y)[1]) {
  Report4[rownames(Report4)==Y$leader[j], 22]<- Y$freq[j]
}

#Report5: party
Report5<-matrix(NA, nrow = 12, ncol = 22)
Report5<-as.data.frame(Report5)

colnames(Report5)<- c("Overall", "Balrampur","Jashpur", "Koriya", "Surajpur", "Surguja", "PATTHALGAON", "AMBIKAPUR", "RAMCHANDRAPUR", "BAGICHA", "Teen", "Job", "Adult","Family","Old", "Retired", "Male", "Female", "Rural", "Urban", "farmer", "Nofarmer")
rownames(Report5)<- c("Base", "AAP", "BJP", "BSP+JCC", "Candidate", "Congress", "GGP", "Independent","NOTA", "NoAnswer", "SP", "Missing")

Y<- count(calldetail1, "party")
Report5[1,1]<- sum(Y$freq, na.rm = TRUE)

for (i in 1:dim(Y)[1]) {
  Report5[rownames(Report5)==Y$party[i],1]<- Y$freq[i]
}

# District
for (i in 2:6) {
  calldetail2<- subset(calldetail1, District==colnames(Report5)[i])
  Y<- count(calldetail2, "party")
  Report5[1,i]<- sum(Y$freq, na.rm = TRUE)
  
  for (j in 1:dim(Y)[1]) {
    Report5[rownames(Report5)==Y$party[j], i]<- Y$freq[j]
  }
}

# Blocks
for (i in 7:10) {
  calldetail2<- subset(calldetail1, Block==colnames(Report5)[i])
  Y<- count(calldetail2, "party")
  Report5[1,i]<- sum(Y$freq, na.rm = TRUE)
  
  for (j in 1:dim(Y)[1]) {
    Report5[rownames(Report5)==Y$party[j], i]<- Y$freq[j]
  }
}

#Age
for (i in 11:16) {
  calldetail2<- subset(calldetail1, age==colnames(Report5)[i])
  Y<- count(calldetail2, "party")
  Report5[1,i]<- sum(Y$freq, na.rm = TRUE)
  
  for (j in 1:dim(Y)[1]) {
    Report5[rownames(Report5)==Y$party[j], i]<- Y$freq[j]
  }
}

#Male
calldetail2<- subset(calldetail1, gender=="Male")
Y<- count(calldetail2, "party")
Report5[1,17]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:dim(Y)[1]) {
  Report5[rownames(Report5)==Y$party[j], 17]<- Y$freq[j]
}

#Female
calldetail2<- subset(calldetail1, gender=="Female")
Y<- count(calldetail2, "party")
Report5[1,18]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:dim(Y)[1]) {
  Report5[rownames(Report5)==Y$party[j], 18]<- Y$freq[j]
}

#Rural
calldetail2<- subset(calldetail1, iscity=="Rural")
Y<- count(calldetail2, "party")
Report5[1,19]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:dim(Y)[1]) {
  Report5[rownames(Report5)==Y$party[j], 19]<- Y$freq[j]
}

#Urban
calldetail2<- subset(calldetail1, iscity=="Urban")
Y<- count(calldetail2, "party")
Report5[1,20]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:dim(Y)[1]) {
  Report5[rownames(Report5)==Y$party[j], 20]<- Y$freq[j]
}

#farmer
calldetail2<- subset(calldetail1, isfarmer=="Yes")
Y<- count(calldetail2, "party")
Report5[1,21]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:dim(Y)[1]) {
  Report5[rownames(Report5)==Y$party[j], 21]<- Y$freq[j]
}

#Nofarmer
calldetail2<- subset(calldetail1, isfarmer=="No")
Y<- count(calldetail2, "party")
Report5[1,22]<- sum(Y$freq, na.rm = TRUE)

for (j in 1:dim(Y)[1]) {
  Report5[rownames(Report5)==Y$party[j], 22]<- Y$freq[j]
}

Final<- rbind(Report1, Report2, Report3, Report4, Report5)
write.csv(Final, "Final.csv")
