calldetail<- CC_Data_Jashpur_Final

i<-68

#Removing test calls
if(which(calldetail$caller=="7503838327")>0){calldetail<-calldetail[-c(which(calldetail$caller=="7503838327")),]}
if(which(calldetail$caller=="9044999886")>0){calldetail<-calldetail[-c(which(calldetail$caller=="9044999886")),]}
if(which(calldetail$caller=="7999711538")>0){calldetail<-calldetail[-c(which(calldetail$caller=="7999711538")),]}
if(which(calldetail$caller=="9827074841")>0){calldetail<-calldetail[-c(which(calldetail$caller=="9827074841")),]}
if(which(calldetail$caller=="9966793005")>0){calldetail<-calldetail[-c(which(calldetail$caller=="9966793005")),]}
if(which(calldetail$caller=="9760372368")>0){calldetail<-calldetail[-c(which(calldetail$caller=="9760372368")),]}
if(which(calldetail$caller=="9910028591")>0){calldetail<-calldetail[-c(which(calldetail$caller=="9910028591")),]}
if(which(calldetail$caller=="9278303409")>0){calldetail<-calldetail[-c(which(calldetail$caller=="9278303409")),]}
if(which(calldetail$caller=="7578868669")>0){calldetail<-calldetail[-c(which(calldetail$caller=="7578868669")),]}
if(which(calldetail$caller=="8708621530")>0){calldetail<-calldetail[-c(which(calldetail$caller=="8708621530")),]}
if(which(calldetail$caller=="9794363282")>0){calldetail<-calldetail[-c(which(calldetail$caller=="9794363282")),]}

write.csv(calldetail, file = "Saja.csv")
#Is In Survey
#calldetail<- calldetail[((calldetail$disposition=="2")|(calldetail$disposition=="3")|(calldetail$disposition=="4")|(calldetail$disposition=="5")),]
#calldetail<-calldetail[-(calldetail$isinsurvey!="Yes")]
calldetail<-calldetail[(calldetail$disposition=="1"),]
#calldetail<-calldetail[(calldetail$assembly=="Saja"),]

#District
calldetail<- calldetail[(calldetail$q3=="1"),]

#District
calldetail$q3[calldetail$q3=="1"]<- "Jashpur"

#Gender details
calldetail$q19[calldetail$q19=="1"]<-"Female"
calldetail$q19[calldetail$q19=="2"]<-"Male"
calldetail$q19[calldetail$q19=="0"]<-"Missing"


#Block_Name
calldetail$q5[calldetail$q5=="1"]<-"Bagicha"
calldetail$q5[calldetail$q5=="2"]<-"Duldula"
calldetail$q5[calldetail$q5=="3"]<-"Jashpur"
calldetail$q5[calldetail$q5=="4"]<-"Kansabel"
calldetail$q5[calldetail$q5=="5"]<-"Kunkuri"
calldetail$q5[calldetail$q5=="6"]<-"Manora"
calldetail$q5[calldetail$q5=="7"]<-"Pathalgaon"
calldetail$q5[calldetail$q5=="8"]<-"Parsabahar"

#DSJ_highness
calldetail$q6[calldetail$q6=="1"]<-"Yes"
calldetail$q6[calldetail$q6=="2"]<-"No"
calldetail$q6[calldetail$q6=="3"]<-"Don't_Know"
calldetail$q6[calldetail$q6=="0"]<-"Missing"

#Effect
calldetail$q7[calldetail$q7=="1"]<-"Jashpur_lowered_in_CG_Politics"
calldetail$q7[calldetail$q7=="2"]<-"Vanvasi_Kalyan_Ashram_down"
calldetail$q7[calldetail$q7=="3"]<-"Missionaries_and_conversion_fasten"
calldetail$q7[calldetail$q7=="4"]<-"Royal_family_down"
calldetail$q7[calldetail$q7=="90"]<-"Other"
calldetail$q7[calldetail$q7=="0"]<-"Missing"

#PPS
calldetail$q8[calldetail$q8=="1"]<-"nominal"
calldetail$q8[calldetail$q8=="2"]<-"little_bit"
calldetail$q8[calldetail$q8=="3"]<-"good_enough"
calldetail$q8[calldetail$q8=="4"]<-"Better_than_him"
calldetail$q8[calldetail$q8=="0"]<-"Missing"

#Other_Leaders_fail
calldetail$q9[calldetail$q9=="1"]<-"Yes"
calldetail$q9[calldetail$q9=="2"]<-"No"
calldetail$q9[calldetail$q9=="3"]<-"Don't_Know"
calldetail$q9[calldetail$q9=="0"]<-"Missing"

#Successor
calldetail$q11[calldetail$q11=="1"]<-"Ranvijay_Singh"
calldetail$q11[calldetail$q11=="2"]<-"Prabal_Pratap_Singh"
calldetail$q11[calldetail$q11=="3"]<-"Yudhvir_Singh_Judev"
calldetail$q11[calldetail$q11=="4"]<-"Priyamvada_Singh"
calldetail$q11[calldetail$q11=="90"]<-"Other"
calldetail$q11[calldetail$q11=="0"]<-"Missing"

#Party_preference
calldetail$q12[calldetail$q12=="0"]<-"Missing"
calldetail$q12[calldetail$q12=="1"]<-"Congress"
calldetail$q12[calldetail$q12=="2"]<-"BJP"
calldetail$q12[calldetail$q12=="3"]<-"BSP"
calldetail$q12[calldetail$q12=="4"]<-"JCC"
calldetail$q12[calldetail$q12=="5"]<-"AAP"
calldetail$q12[calldetail$q12=="6"]<-"GGP"
calldetail$q12[calldetail$q12=="7"]<-"SP"
calldetail$q12[calldetail$q12=="8"]<-"NOTA"
calldetail$q12[calldetail$q12=="9"]<-"Independent"
calldetail$q12[calldetail$q12=="10"]<-"Candidate"
calldetail$q12[calldetail$q12=="11"]<-"Undecided"
calldetail$q12[calldetail$q12=="12"]<-"NoAnswer"

#isfarmer
calldetail$q13[calldetail$q13=="1"]<-"Yes"
calldetail$q13[calldetail$q13=="2"]<-"No"
calldetail$q13[calldetail$q13=="3"]<-"Don't_Know"
calldetail$q13[calldetail$q13=="0"]<-"Missing"

#BJP_Leader
calldetail$q10[calldetail$q10=="0"]<-"Missing"
calldetail$q10[calldetail$q10=="1"]<-"Vishnu Dev Sai"
calldetail$q10[calldetail$q10=="2"]<-"Nand Kumar Sai"
calldetail$q10[calldetail$q10=="3"]<-"Krishna Roy"
calldetail$q10[calldetail$q10=="4"]<-"Yudhhvir Singh"
calldetail$q10[calldetail$q10=="5"]<-"PP Singh"
calldetail$q10[calldetail$q10=="6"]<-"Ranvijay Singh"
calldetail$q10[calldetail$q10=="7"]<-"Rampukar SIngh"
calldetail$q10[calldetail$q10=="8"]<-"Govind Ram Bhagat"
calldetail$q10[calldetail$q10=="9"]<-"Nikunj Ram"
calldetail$q10[calldetail$q10=="10"]<-"Ramsaran Bhagat"
calldetail$q10[calldetail$q10=="11"]<-"Rampukar Singh"
calldetail$q10[calldetail$q10=="90"]<-"Rampukar Singh"

#Region
calldetail$q15[calldetail$q15=="1"]<-"Urban"
calldetail$q15[calldetail$q15=="2"]<-"Rural"
calldetail$q15[(calldetail$q15=="0")]<-"Missing"



#religion category
calldetail$q16[calldetail$q16=="1"]<-"Hindu"
calldetail$q16[calldetail$q16=="2"]<-"Islam"
calldetail$q16[(calldetail$q16=="3")]<-"Sikhism"
calldetail$q16[calldetail$q16=="4"]<-"Christianity"
calldetail$q16[calldetail$q16=="5"]<-"Buddhism"
calldetail$q16[calldetail$q16=="6"]<-"Jain"
calldetail$q16[calldetail$q16=="7"]<-"NoAnswer"
calldetail$q16[calldetail$q16=="90"]<-"Other"
calldetail$q16[calldetail$q16=="0"]<-"Missing"

#caste Category
calldetail$q18[calldetail$q18=="1"]<-"General"
calldetail$q18[calldetail$q18=="2"]<-"OBC"
calldetail$q18[(calldetail$q18=="3")]<-"SC"
calldetail$q18[calldetail$q18=="4"]<-"ST"
calldetail$q18[(calldetail$q18=="5")]<-"Missing"
calldetail$q18[(calldetail$q18=="90")]<-"Other"
calldetail$q18[calldetail$q16=="Islam"]<-"Islam"
calldetail$q18[calldetail$q16=="Christianity"]<-"Christianity"
calldetail$q18[calldetail$q18=="0"]<-"Missing"

#Biggest_leader
calldetail$q21[calldetail$q21=="1"]<-"Yes"
calldetail$q21[calldetail$q21=="2"]<-"No"
calldetail$q21[(calldetail$q21=="3")]<-"Don't_Know"
calldetail$q21[calldetail$q21=="0"]<-"Missing"

#caste
for (i in 1:97) {
  calldetail$q17[calldetail$q17==Data_Values_Jashpur$Values[i]]<-Data_Values_Jashpur$Q17[i]
}
calldetail$q17[calldetail$q17=="0"]<-"Missing"
calldetail$q17[calldetail$q17=="999"]<-"Other"


colnames(calldetail)<- c("id"   ,       "agent"   ,    "campaign" ,   "campaign id", "process"  ,   "process id" , "caller"   ,   "extension"  ,"callstart",   "callend" ,    "duration" ,"Survey","District", "block", "Royal_influence_decreased", "Judev_death_effect", "Judev_death_effect_Other", "PPS_performance", "Other_BJP_leader", "Jashpur_Leader", "Jashpur_Leader_Other", "Successor", "Successor_Other", "Party", "isfarmer","age", "iscity", "religion", "religion_other", "caste", "caste_other", "catid", "catid_other", "gender","q21", "disposition" )

#Weights
#Wts for iscity wise distribution
iscity_wt<-matrix(data = NA, nrow = 3, ncol = 3)
dimnames(iscity_wt) = list( c("Urban","Rural","Missing_region"),c("Pop_perc", "Sample_perc", "weights"))
iscity_wt<-as.data.frame(iscity_wt)
#Rel_wt$Sample_perc<-100*Rel_wt$Sample_count/sum(Rel_wt$Sample_count)
#Rel_wt$weights<-Rel_wt$Pop_perc/Rel_wt$Sample_perc
iscity_wt$Pop_perc<-c(8.92, 91.08, 0)
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


#Category_weight
catid_wt<-matrix(data = NA, nrow = 6, ncol = 3)
dimnames(catid_wt) = list( c("gen_OBC", "SC", "ST", "Muslim","Christianity", "Missing"),c("Pop_perc", "Sample_perc", "weights"))
catid_wt<-as.data.frame(catid_wt)
calldetail$catid[calldetail$religion=="Islam"]<-"Islam"
calldetail$catid[calldetail$religion=="Christianity"]<-"Christianity"

#Rel_wt$Sample_perc<-100*Rel_wt$Sample_count/sum(Rel_wt$Sample_count)
#Rel_wt$weights<-Rel_wt$Pop_perc/Rel_wt$Sample_perc
catid_wt$Pop_perc<-c(28.11,5.8, 40, 1.8,22.26,0)
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
catid_wt$weights<-round((catid_wt$Pop_perc/catid_wt$Sample_perc),2)
catid_wt$weights[catid_wt$weights<0.5]<- 0.5
catid_wt$weights[catid_wt$weights>2]<- 2

calldetail$catid_wt[calldetail$catid=="General"]<-catid_wt$weights[1]
calldetail$catid_wt[calldetail$catid=="OBC"]<-catid_wt$weights[1]
calldetail$catid_wt[calldetail$catid=="SC"]<-catid_wt$weights[2]
calldetail$catid_wt[calldetail$catid=="ST"]<-catid_wt$weights[3]
calldetail$catid_wt[calldetail$catid=="Islam"]<-catid_wt$weights[4]
calldetail$catid_wt[calldetail$catid=="Christianity"]<-catid_wt$weights[5]
calldetail$catid_wt[calldetail$catid_wt=="0"]<-mean(calldetail$catid_wt,na.rm = TRUE)

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
Age_wt$Pop_perc[1]<-11.5
Age_wt$Pop_perc[2]<-20
Age_wt$Pop_perc[3]<-25.75
Age_wt$Pop_perc[4]<-18.40
Age_wt$Pop_perc[5]<-12.90
Age_wt$Pop_perc[6]<-11.45
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

#Block_Level_Data
#calldetail

#Total_weights
calldetail$total_wts<-round(calldetail$Age_wts*calldetail$catid_wt*calldetail$iscity_wt,2)

#Caste_maaping
for (i in 1:100) {
  calldetail$caste[calldetail$caste==Data_Values_Jashpur$Values[i]]<-Data_Values_Jashpur$Q17[i]
}

# Table_Generation
#Table1: Royal_Family_Influence
Table1<-matrix(NA, nrow = 4, ncol = 11)
colnames(Table1)<- c("Overall", "BJP_Supporter", "Non_BJP_Supporter", "Bagicha", "Jashpur", "Duldula", "Kansabel", "Kunkuri", "Manora", "Pathalgaon", "Parsabahar")
rownames(Table1)<- c("Base", "Yes", "No", "Don't_Know")
Table1<-as.data.frame(Table1)

#Overall
Table1$Overall[1]<- sum(calldetail$total_wts, na.rm = TRUE)
Table1$Overall[2]<- sum(calldetail$total_wts[calldetail$Royal_influence_decreased=="Yes"], na.rm = TRUE)
Table1$Overall[3]<- sum(calldetail$total_wts[calldetail$Royal_influence_decreased=="No"], na.rm = TRUE)
Table1$Overall[4]<- sum(calldetail$total_wts[calldetail$Royal_influence_decreased=="Don't_Know"], na.rm = TRUE)

#BJP_supporter
Table1$BJP_Supporter[1]<- sum(calldetail$total_wts[calldetail$Party=="BJP"], na.rm = TRUE)
Table1$BJP_Supporter[2]<- sum(calldetail$total_wts[(calldetail$Party=="BJP")&(calldetail$Royal_influence_decreased=="Yes")], na.rm = TRUE)
Table1$BJP_Supporter[3]<- sum(calldetail$total_wts[(calldetail$Party=="BJP")&(calldetail$Royal_influence_decreased=="No")], na.rm = TRUE)
Table1$BJP_Supporter[4]<- sum(calldetail$total_wts[(calldetail$Party=="BJP")&(calldetail$Royal_influence_decreased=="Don't_Know")], na.rm = TRUE)

#Non-BJP_supporter
Table1$Non_BJP_Supporter[1]<- sum(calldetail$total_wts[calldetail$Party!="BJP"], na.rm = TRUE)
Table1$Non_BJP_Supporter[2]<- sum(calldetail$total_wts[(calldetail$Party!="BJP")&(calldetail$Royal_influence_decreased=="Yes")], na.rm = TRUE)
Table1$Non_BJP_Supporter[3]<- sum(calldetail$total_wts[(calldetail$Party!="BJP")&(calldetail$Royal_influence_decreased=="No")], na.rm = TRUE)
Table1$Non_BJP_Supporter[4]<- sum(calldetail$total_wts[(calldetail$Party!="BJP")&(calldetail$Royal_influence_decreased=="Don't_Know")], na.rm = TRUE)

#Bagicha
Table1$Bagicha[1]<- sum(calldetail$total_wts[calldetail$block=="Bagicha"], na.rm = TRUE)
Table1$Bagicha[2]<- sum(calldetail$total_wts[(calldetail$block=="Bagicha")&(calldetail$Royal_influence_decreased=="Yes")], na.rm = TRUE)
Table1$Bagicha[3]<- sum(calldetail$total_wts[(calldetail$block=="Bagicha")&(calldetail$Royal_influence_decreased=="No")], na.rm = TRUE)
Table1$Bagicha[4]<- sum(calldetail$total_wts[(calldetail$block=="Bagicha")&(calldetail$Royal_influence_decreased=="Don't_Know")], na.rm = TRUE)

#Jashpur
Table1$Jashpur[1]<- sum(calldetail$total_wts[calldetail$block=="Jashpur"], na.rm = TRUE)
Table1$Jashpur[2]<- sum(calldetail$total_wts[(calldetail$block=="Jashpur")&(calldetail$Royal_influence_decreased=="Yes")], na.rm = TRUE)
Table1$Jashpur[3]<- sum(calldetail$total_wts[(calldetail$block=="Jashpur")&(calldetail$Royal_influence_decreased=="No")], na.rm = TRUE)
Table1$Jashpur[4]<- sum(calldetail$total_wts[(calldetail$block=="Jashpur")&(calldetail$Royal_influence_decreased=="Don't_Know")], na.rm = TRUE)

#Duldula
Table1$Duldula[1]<- sum(calldetail$total_wts[calldetail$block=="Duldula"], na.rm = TRUE)
Table1$Duldula[2]<- sum(calldetail$total_wts[(calldetail$block=="Duldula")&(calldetail$Royal_influence_decreased=="Yes")], na.rm = TRUE)
Table1$Duldula[3]<- sum(calldetail$total_wts[(calldetail$block=="Duldula")&(calldetail$Royal_influence_decreased=="No")], na.rm = TRUE)
Table1$Duldula[4]<- sum(calldetail$total_wts[(calldetail$block=="Duldula")&(calldetail$Royal_influence_decreased=="Don't_Know")], na.rm = TRUE)

#Kansabel
Table1$Kansabel[1]<- sum(calldetail$total_wts[calldetail$block=="Kansabel"], na.rm = TRUE)
Table1$Kansabel[2]<- sum(calldetail$total_wts[(calldetail$block=="Kansabel")&(calldetail$Royal_influence_decreased=="Yes")], na.rm = TRUE)
Table1$Kansabel[3]<- sum(calldetail$total_wts[(calldetail$block=="Kansabel")&(calldetail$Royal_influence_decreased=="No")], na.rm = TRUE)
Table1$Kansabel[4]<- sum(calldetail$total_wts[(calldetail$block=="Kansabel")&(calldetail$Royal_influence_decreased=="Don't_Know")], na.rm = TRUE)

#Kunkuri
Table1$Kunkuri[1]<- sum(calldetail$total_wts[calldetail$block=="Kunkuri"], na.rm = TRUE)
Table1$Kunkuri[2]<- sum(calldetail$total_wts[(calldetail$block=="Kunkuri")&(calldetail$Royal_influence_decreased=="Yes")], na.rm = TRUE)
Table1$Kunkuri[3]<- sum(calldetail$total_wts[(calldetail$block=="Kunkuri")&(calldetail$Royal_influence_decreased=="No")], na.rm = TRUE)
Table1$Kunkuri[4]<- sum(calldetail$total_wts[(calldetail$block=="Kunkuri")&(calldetail$Royal_influence_decreased=="Don't_Know")], na.rm = TRUE)

#Manora
Table1$Manora[1]<- sum(calldetail$total_wts[calldetail$block=="Manora"], na.rm = TRUE)
Table1$Manora[2]<- sum(calldetail$total_wts[(calldetail$block=="Manora")&(calldetail$Royal_influence_decreased=="Yes")], na.rm = TRUE)
Table1$Manora[3]<- sum(calldetail$total_wts[(calldetail$block=="Manora")&(calldetail$Royal_influence_decreased=="No")], na.rm = TRUE)
Table1$Manora[4]<- sum(calldetail$total_wts[(calldetail$block=="Manora")&(calldetail$Royal_influence_decreased=="Don't_Know")], na.rm = TRUE)

#Pathalgaon
Table1$Pathalgaon[1]<- sum(calldetail$total_wts[calldetail$block=="Pathalgaon"], na.rm = TRUE)
Table1$Pathalgaon[2]<- sum(calldetail$total_wts[(calldetail$block=="Pathalgaon")&(calldetail$Royal_influence_decreased=="Yes")], na.rm = TRUE)
Table1$Pathalgaon[3]<- sum(calldetail$total_wts[(calldetail$block=="Pathalgaon")&(calldetail$Royal_influence_decreased=="No")], na.rm = TRUE)
Table1$Pathalgaon[4]<- sum(calldetail$total_wts[(calldetail$block=="Pathalgaon")&(calldetail$Royal_influence_decreased=="Don't_Know")], na.rm = TRUE)

#Parsabahar
Table1$Parsabahar[1]<- sum(calldetail$total_wts[calldetail$block=="Parsabahar"], na.rm = TRUE)
Table1$Parsabahar[2]<- sum(calldetail$total_wts[(calldetail$block=="Parsabahar")&(calldetail$Royal_influence_decreased=="Yes")], na.rm = TRUE)
Table1$Parsabahar[3]<- sum(calldetail$total_wts[(calldetail$block=="Parsabahar")&(calldetail$Royal_influence_decreased=="No")], na.rm = TRUE)
Table1$Parsabahar[4]<- sum(calldetail$total_wts[(calldetail$block=="Parsabahar")&(calldetail$Royal_influence_decreased=="Don't_Know")], na.rm = TRUE)


#Table2: Judev_Death_Effect
Table2<-matrix(NA, nrow = 7, ncol = 11)
colnames(Table2)<- c("Overall", "ST", "Christian", "Bagicha", "Jashpur", "Duldula", "Kansabel", "Kunkuri", "Manora", "Pathalgaon", "Parsabahar")
rownames(Table2)<- c("Base", "Jashpur_voice_lowered", "Missionaries_grown_and_reconversion_down", "Royal_family_down", "Vanvasi_Kalyan_Ashram_down", "Other", "Missing")
Table2<-as.data.frame(Table2)

#Overall
Table2$Overall[1]<- sum(calldetail$total_wts, na.rm = TRUE)
Table2$Overall[2]<- sum(calldetail$total_wts[calldetail$Judev_death_effect=="Jashpur_lowered_in_CG_Politics"], na.rm = TRUE)
Table2$Overall[3]<- sum(calldetail$total_wts[calldetail$Judev_death_effect=="Missionaries_and_conversion_fasten"], na.rm = TRUE)
Table2$Overall[4]<- sum(calldetail$total_wts[calldetail$Judev_death_effect=="Royal_family_down"], na.rm = TRUE)
Table2$Overall[5]<- sum(calldetail$total_wts[calldetail$Judev_death_effect=="Vanvasi_Kalyan_Ashram_down"], na.rm = TRUE)
Table2$Overall[6]<- sum(calldetail$total_wts[calldetail$Judev_death_effect=="Other"], na.rm = TRUE)
Table2$Overall[7]<- sum(calldetail$total_wts[calldetail$Judev_death_effect=="Missing"], na.rm = TRUE)

#ST
Table2$ST[1]<- sum(calldetail$total_wts[calldetail$catid=="ST"], na.rm = TRUE)
Table2$ST[2]<- sum(calldetail$total_wts[(calldetail$catid=="ST")&(calldetail$Judev_death_effect=="Jashpur_lowered_in_CG_Politics")], na.rm = TRUE)
Table2$ST[3]<- sum(calldetail$total_wts[(calldetail$catid=="ST")&(calldetail$Judev_death_effect=="Missionaries_and_conversion_fasten")], na.rm = TRUE)
Table2$ST[4]<- sum(calldetail$total_wts[(calldetail$catid=="ST")&(calldetail$Judev_death_effect=="Royal_family_down")], na.rm = TRUE)
Table2$ST[5]<- sum(calldetail$total_wts[(calldetail$catid=="ST")&(calldetail$Judev_death_effect=="Vanvasi_Kalyan_Ashram_down")], na.rm = TRUE)
Table2$ST[6]<- sum(calldetail$total_wts[(calldetail$catid=="ST")&(calldetail$Judev_death_effect=="Other")], na.rm = TRUE)
Table2$ST[7]<- sum(calldetail$total_wts[(calldetail$catid=="ST")&(calldetail$Judev_death_effect=="Missing")], na.rm = TRUE)

#Christianity
Table2$Christian[1]<- sum(calldetail$total_wts[calldetail$catid=="Christianity"], na.rm = TRUE)
Table2$Christian[2]<- sum(calldetail$total_wts[(calldetail$catid=="Christianity")&(calldetail$Judev_death_effect=="Jashpur_lowered_in_CG_Politics")], na.rm = TRUE)
Table2$Christian[3]<- sum(calldetail$total_wts[(calldetail$catid=="Christianity")&(calldetail$Judev_death_effect=="Missionaries_and_conversion_fasten")], na.rm = TRUE)
Table2$Christian[4]<- sum(calldetail$total_wts[(calldetail$catid=="Christianity")&(calldetail$Judev_death_effect=="Royal_family_down")], na.rm = TRUE)
Table2$Christian[5]<- sum(calldetail$total_wts[(calldetail$catid=="Christianity")&(calldetail$Judev_death_effect=="Vanvasi_Kalyan_Ashram_down")], na.rm = TRUE)
Table2$Christian[6]<- sum(calldetail$total_wts[(calldetail$catid=="Christianity")&(calldetail$Judev_death_effect=="Other")], na.rm = TRUE)
Table2$Christian[7]<- sum(calldetail$total_wts[(calldetail$catid=="Christianity")&(calldetail$Judev_death_effect=="Missing")], na.rm = TRUE)

#Bagicha
Table2$Bagicha[1]<- sum(calldetail$total_wts[calldetail$block=="Bagicha"], na.rm = TRUE)
Table2$Bagicha[2]<- sum(calldetail$total_wts[(calldetail$block=="Bagicha")&(calldetail$Judev_death_effect=="Jashpur_lowered_in_CG_Politics")], na.rm = TRUE)
Table2$Bagicha[3]<- sum(calldetail$total_wts[(calldetail$block=="Bagicha")&(calldetail$Judev_death_effect=="Missionaries_and_conversion_fasten")], na.rm = TRUE)
Table2$Bagicha[4]<- sum(calldetail$total_wts[(calldetail$block=="Bagicha")&(calldetail$Judev_death_effect=="Royal_family_down")], na.rm = TRUE)
Table2$Bagicha[5]<- sum(calldetail$total_wts[(calldetail$block=="Bagicha")&(calldetail$Judev_death_effect=="Vanvasi_Kalyan_Ashram_down")], na.rm = TRUE)
Table2$Bagicha[6]<- sum(calldetail$total_wts[(calldetail$block=="Bagicha")&(calldetail$Judev_death_effect=="Other")], na.rm = TRUE)
Table2$Bagicha[7]<- sum(calldetail$total_wts[(calldetail$block=="Bagicha")&(calldetail$Judev_death_effect=="Missing")], na.rm = TRUE)

#Jashpur
Table2$Jashpur[1]<- sum(calldetail$total_wts[calldetail$block=="Jashpur"], na.rm = TRUE)
Table2$Jashpur[2]<- sum(calldetail$total_wts[(calldetail$block=="Jashpur")&(calldetail$Judev_death_effect=="Jashpur_lowered_in_CG_Politics")], na.rm = TRUE)
Table2$Jashpur[3]<- sum(calldetail$total_wts[(calldetail$block=="Jashpur")&(calldetail$Judev_death_effect=="Missionaries_and_conversion_fasten")], na.rm = TRUE)
Table2$Jashpur[4]<- sum(calldetail$total_wts[(calldetail$block=="Jashpur")&(calldetail$Judev_death_effect=="Royal_family_down")], na.rm = TRUE)
Table2$Jashpur[5]<- sum(calldetail$total_wts[(calldetail$block=="Jashpur")&(calldetail$Judev_death_effect=="Vanvasi_Kalyan_Ashram_down")], na.rm = TRUE)
Table2$Jashpur[6]<- sum(calldetail$total_wts[(calldetail$block=="Jashpur")&(calldetail$Judev_death_effect=="Other")], na.rm = TRUE)
Table2$Jashpur[7]<- sum(calldetail$total_wts[(calldetail$block=="Jashpur")&(calldetail$Judev_death_effect=="Missing")], na.rm = TRUE)

#Duldula
Table2$Duldula[1]<- sum(calldetail$total_wts[calldetail$block=="Duldula"], na.rm = TRUE)
Table2$Duldula[2]<- sum(calldetail$total_wts[(calldetail$block=="Duldula")&(calldetail$Judev_death_effect=="Jashpur_lowered_in_CG_Politics")], na.rm = TRUE)
Table2$Duldula[3]<- sum(calldetail$total_wts[(calldetail$block=="Duldula")&(calldetail$Judev_death_effect=="Missionaries_and_conversion_fasten")], na.rm = TRUE)
Table2$Duldula[4]<- sum(calldetail$total_wts[(calldetail$block=="Duldula")&(calldetail$Judev_death_effect=="Royal_family_down")], na.rm = TRUE)
Table2$Duldula[5]<- sum(calldetail$total_wts[(calldetail$block=="Duldula")&(calldetail$Judev_death_effect=="Vanvasi_Kalyan_Ashram_down")], na.rm = TRUE)
Table2$Duldula[6]<- sum(calldetail$total_wts[(calldetail$block=="Duldula")&(calldetail$Judev_death_effect=="Other")], na.rm = TRUE)
Table2$Duldula[7]<- sum(calldetail$total_wts[(calldetail$block=="Duldula")&(calldetail$Judev_death_effect=="Missing")], na.rm = TRUE)

#Kansabel
Table2$Kansabel[1]<- sum(calldetail$total_wts[calldetail$block=="Kansabel"], na.rm = TRUE)
Table2$Kansabel[2]<- sum(calldetail$total_wts[(calldetail$block=="Kansabel")&(calldetail$Judev_death_effect=="Jashpur_lowered_in_CG_Politics")], na.rm = TRUE)
Table2$Kansabel[3]<- sum(calldetail$total_wts[(calldetail$block=="Kansabel")&(calldetail$Judev_death_effect=="Missionaries_and_conversion_fasten")], na.rm = TRUE)
Table2$Kansabel[4]<- sum(calldetail$total_wts[(calldetail$block=="Kansabel")&(calldetail$Judev_death_effect=="Royal_family_down")], na.rm = TRUE)
Table2$Kansabel[5]<- sum(calldetail$total_wts[(calldetail$block=="Kansabel")&(calldetail$Judev_death_effect=="Vanvasi_Kalyan_Ashram_down")], na.rm = TRUE)
Table2$Kansabel[6]<- sum(calldetail$total_wts[(calldetail$block=="Kansabel")&(calldetail$Judev_death_effect=="Other")], na.rm = TRUE)
Table2$Kansabel[7]<- sum(calldetail$total_wts[(calldetail$block=="Kansabel")&(calldetail$Judev_death_effect=="Missing")], na.rm = TRUE)

#Kunkuri
Table2$Kunkuri[1]<- sum(calldetail$total_wts[calldetail$block=="Kunkuri"], na.rm = TRUE)
Table2$Kunkuri[2]<- sum(calldetail$total_wts[(calldetail$block=="Kunkuri")&(calldetail$Judev_death_effect=="Jashpur_lowered_in_CG_Politics")], na.rm = TRUE)
Table2$Kunkuri[3]<- sum(calldetail$total_wts[(calldetail$block=="Kunkuri")&(calldetail$Judev_death_effect=="Missionaries_and_conversion_fasten")], na.rm = TRUE)
Table2$Kunkuri[4]<- sum(calldetail$total_wts[(calldetail$block=="Kunkuri")&(calldetail$Judev_death_effect=="Royal_family_down")], na.rm = TRUE)
Table2$Kunkuri[5]<- sum(calldetail$total_wts[(calldetail$block=="Kunkuri")&(calldetail$Judev_death_effect=="Vanvasi_Kalyan_Ashram_down")], na.rm = TRUE)
Table2$Kunkuri[6]<- sum(calldetail$total_wts[(calldetail$block=="Kunkuri")&(calldetail$Judev_death_effect=="Other")], na.rm = TRUE)
Table2$Kunkuri[7]<- sum(calldetail$total_wts[(calldetail$block=="Kunkuri")&(calldetail$Judev_death_effect=="Missing")], na.rm = TRUE)

#Manora
Table2$Manora[1]<- sum(calldetail$total_wts[calldetail$block=="Manora"], na.rm = TRUE)
Table2$Manora[2]<- sum(calldetail$total_wts[(calldetail$block=="Manora")&(calldetail$Judev_death_effect=="Jashpur_lowered_in_CG_Politics")], na.rm = TRUE)
Table2$Manora[3]<- sum(calldetail$total_wts[(calldetail$block=="Manora")&(calldetail$Judev_death_effect=="Missionaries_and_conversion_fasten")], na.rm = TRUE)
Table2$Manora[4]<- sum(calldetail$total_wts[(calldetail$block=="Manora")&(calldetail$Judev_death_effect=="Royal_family_down")], na.rm = TRUE)
Table2$Manora[5]<- sum(calldetail$total_wts[(calldetail$block=="Manora")&(calldetail$Judev_death_effect=="Vanvasi_Kalyan_Ashram_down")], na.rm = TRUE)
Table2$Manora[6]<- sum(calldetail$total_wts[(calldetail$block=="Manora")&(calldetail$Judev_death_effect=="Other")], na.rm = TRUE)
Table2$Manora[7]<- sum(calldetail$total_wts[(calldetail$block=="Manora")&(calldetail$Judev_death_effect=="Missing")], na.rm = TRUE)

#Pathalgaon
Table2$Pathalgaon[1]<- sum(calldetail$total_wts[calldetail$block=="Pathalgaon"], na.rm = TRUE)
Table2$Pathalgaon[2]<- sum(calldetail$total_wts[(calldetail$block=="Pathalgaon")&(calldetail$Judev_death_effect=="Jashpur_lowered_in_CG_Politics")], na.rm = TRUE)
Table2$Pathalgaon[3]<- sum(calldetail$total_wts[(calldetail$block=="Pathalgaon")&(calldetail$Judev_death_effect=="Missionaries_and_conversion_fasten")], na.rm = TRUE)
Table2$Pathalgaon[4]<- sum(calldetail$total_wts[(calldetail$block=="Pathalgaon")&(calldetail$Judev_death_effect=="Royal_family_down")], na.rm = TRUE)
Table2$Pathalgaon[5]<- sum(calldetail$total_wts[(calldetail$block=="Pathalgaon")&(calldetail$Judev_death_effect=="Vanvasi_Kalyan_Ashram_down")], na.rm = TRUE)
Table2$Pathalgaon[6]<- sum(calldetail$total_wts[(calldetail$block=="Pathalgaon")&(calldetail$Judev_death_effect=="Other")], na.rm = TRUE)
Table2$Pathalgaon[7]<- sum(calldetail$total_wts[(calldetail$block=="Pathalgaon")&(calldetail$Judev_death_effect=="Missing")], na.rm = TRUE)

#Parsabahar
Table2$Parsabahar[1]<- sum(calldetail$total_wts[calldetail$block=="Parsabahar"], na.rm = TRUE)
Table2$Parsabahar[2]<- sum(calldetail$total_wts[(calldetail$block=="Parsabahar")&(calldetail$Judev_death_effect=="Jashpur_lowered_in_CG_Politics")], na.rm = TRUE)
Table2$Parsabahar[3]<- sum(calldetail$total_wts[(calldetail$block=="Parsabahar")&(calldetail$Judev_death_effect=="Missionaries_and_conversion_fasten")], na.rm = TRUE)
Table2$Parsabahar[4]<- sum(calldetail$total_wts[(calldetail$block=="Parsabahar")&(calldetail$Judev_death_effect=="Royal_family_down")], na.rm = TRUE)
Table2$Parsabahar[5]<- sum(calldetail$total_wts[(calldetail$block=="Parsabahar")&(calldetail$Judev_death_effect=="Vanvasi_Kalyan_Ashram_down")], na.rm = TRUE)
Table2$Parsabahar[6]<- sum(calldetail$total_wts[(calldetail$block=="Parsabahar")&(calldetail$Judev_death_effect=="Other")], na.rm = TRUE)
Table2$Parsabahar[7]<- sum(calldetail$total_wts[(calldetail$block=="Parsabahar")&(calldetail$Judev_death_effect=="Missing")], na.rm = TRUE)


#Table 3: Successor
Table3<-matrix(NA, nrow = 7, ncol = 11)
colnames(Table3)<- c("Overall", "ST", "Christian", "Bagicha", "Jashpur", "Duldula", "Kansabel", "Kunkuri", "Manora", "Pathalgaon", "Parsabahar")
rownames(Table3)<- c("Base", "Ranvijay_Singh", "Prabal_Pratap_Singh", "Yudhvir_Singh_Judev", "Priyamvada_Singh", "Other", "Missing")
Table3<-as.data.frame(Table3)

#Overall
Table3$Overall[1]<- sum(calldetail$total_wts, na.rm = TRUE)
Table3$Overall[2]<- sum(calldetail$total_wts[calldetail$Successor=="Ranvijay_Singh"], na.rm = TRUE)
Table3$Overall[3]<- sum(calldetail$total_wts[calldetail$Successor=="Prabal_Pratap_Singh"], na.rm = TRUE)
Table3$Overall[4]<- sum(calldetail$total_wts[calldetail$Successor=="Yudhvir_Singh_Judev"], na.rm = TRUE)
Table3$Overall[5]<- sum(calldetail$total_wts[calldetail$Successor=="Priyamvada_Singh"], na.rm = TRUE)
Table3$Overall[6]<- sum(calldetail$total_wts[calldetail$Successor=="Other"], na.rm = TRUE)
Table3$Overall[7]<- sum(calldetail$total_wts[calldetail$Successor=="Missing"], na.rm = TRUE)

#ST
Table3$ST[1]<- sum(calldetail$total_wts[(calldetail$catid=="ST")], na.rm = TRUE)
Table3$ST[2]<- sum(calldetail$total_wts[(calldetail$catid=="ST")&(calldetail$Successor=="Ranvijay_Singh")], na.rm = TRUE)
Table3$ST[3]<- sum(calldetail$total_wts[(calldetail$catid=="ST")&(calldetail$Successor=="Prabal_Pratap_Singh")], na.rm = TRUE)
Table3$ST[4]<- sum(calldetail$total_wts[(calldetail$catid=="ST")&(calldetail$Successor=="Yudhvir_Singh_Judev")], na.rm = TRUE)
Table3$ST[5]<- sum(calldetail$total_wts[(calldetail$catid=="ST")&(calldetail$Successor=="Priyamvada_Singh")], na.rm = TRUE)
Table3$ST[6]<- sum(calldetail$total_wts[(calldetail$catid=="ST")&(calldetail$Successor=="Other")], na.rm = TRUE)
Table3$ST[7]<- sum(calldetail$total_wts[(calldetail$catid=="ST")&(calldetail$Successor=="Missing")], na.rm = TRUE)

#Christian
Table3$Christian[1]<- sum(calldetail$total_wts[(calldetail$catid=="Christianity")], na.rm = TRUE)
Table3$Christian[2]<- sum(calldetail$total_wts[(calldetail$catid=="Christianity")&(calldetail$Successor=="Ranvijay_Singh")], na.rm = TRUE)
Table3$Christian[3]<- sum(calldetail$total_wts[(calldetail$catid=="Christianity")&(calldetail$Successor=="Prabal_Pratap_Singh")], na.rm = TRUE)
Table3$Christian[4]<- sum(calldetail$total_wts[(calldetail$catid=="Christianity")&(calldetail$Successor=="Yudhvir_Singh_Judev")], na.rm = TRUE)
Table3$Christian[5]<- sum(calldetail$total_wts[(calldetail$catid=="Christianity")&(calldetail$Successor=="Priyamvada_Singh")], na.rm = TRUE)
Table3$Christian[6]<- sum(calldetail$total_wts[(calldetail$catid=="Christianity")&(calldetail$Successor=="Other")], na.rm = TRUE)
Table3$Christian[7]<- sum(calldetail$total_wts[(calldetail$catid=="Christianity")&(calldetail$Successor=="Missing")], na.rm = TRUE)

#Bagicha
Table3$Bagicha[1]<- sum(calldetail$total_wts[calldetail$block=="Bagicha"], na.rm = TRUE)
Table3$Bagicha[2]<- sum(calldetail$total_wts[(calldetail$block=="Bagicha")&(calldetail$Successor=="Ranvijay_Singh")], na.rm = TRUE)
Table3$Bagicha[3]<- sum(calldetail$total_wts[(calldetail$block=="Bagicha")&(calldetail$Successor=="Prabal_Pratap_Singh")], na.rm = TRUE)
Table3$Bagicha[4]<- sum(calldetail$total_wts[(calldetail$block=="Bagicha")&(calldetail$Successor=="Yudhvir_Singh_Judev")], na.rm = TRUE)
Table3$Bagicha[5]<- sum(calldetail$total_wts[(calldetail$block=="Bagicha")&calldetail$Successor=="Priyamvada_Singh"], na.rm = TRUE)
Table3$Bagicha[6]<- sum(calldetail$total_wts[(calldetail$block=="Bagicha")&(calldetail$Successor=="Other")], na.rm = TRUE)
Table3$Bagicha[7]<- sum(calldetail$total_wts[(calldetail$block=="Bagicha")&(calldetail$Successor=="Missing")], na.rm = TRUE)

#Jashpur
Table3$Jashpur[1]<- sum(calldetail$total_wts[calldetail$block=="Jashpur"], na.rm = TRUE)
Table3$Jashpur[2]<- sum(calldetail$total_wts[(calldetail$block=="Jashpur")&(calldetail$Successor=="Ranvijay_Singh")], na.rm = TRUE)
Table3$Jashpur[3]<- sum(calldetail$total_wts[(calldetail$block=="Jashpur")&(calldetail$Successor=="Prabal_Pratap_Singh")], na.rm = TRUE)
Table3$Jashpur[4]<- sum(calldetail$total_wts[(calldetail$block=="Jashpur")&(calldetail$Successor=="Yudhvir_Singh_Judev")], na.rm = TRUE)
Table3$Jashpur[5]<- sum(calldetail$total_wts[(calldetail$block=="Jashpur")&calldetail$Successor=="Priyamvada_Singh"], na.rm = TRUE)
Table3$Jashpur[6]<- sum(calldetail$total_wts[(calldetail$block=="Jashpur")&(calldetail$Successor=="Other")], na.rm = TRUE)
Table3$Jashpur[7]<- sum(calldetail$total_wts[(calldetail$block=="Jashpur")&(calldetail$Successor=="Missing")], na.rm = TRUE)

#Duldula
Table3$Duldula[1]<- sum(calldetail$total_wts[calldetail$block=="Duldula"], na.rm = TRUE)
Table3$Duldula[2]<- sum(calldetail$total_wts[(calldetail$block=="Duldula")&(calldetail$Successor=="Ranvijay_Singh")], na.rm = TRUE)
Table3$Duldula[3]<- sum(calldetail$total_wts[(calldetail$block=="Duldula")&(calldetail$Successor=="Prabal_Pratap_Singh")], na.rm = TRUE)
Table3$Duldula[4]<- sum(calldetail$total_wts[(calldetail$block=="Duldula")&(calldetail$Successor=="Yudhvir_Singh_Judev")], na.rm = TRUE)
Table3$Duldula[5]<- sum(calldetail$total_wts[(calldetail$block=="Duldula")&calldetail$Successor=="Priyamvada_Singh"], na.rm = TRUE)
Table3$Duldula[6]<- sum(calldetail$total_wts[(calldetail$block=="Duldula")&(calldetail$Successor=="Other")], na.rm = TRUE)
Table3$Duldula[7]<- sum(calldetail$total_wts[(calldetail$block=="Duldula")&(calldetail$Successor=="Missing")], na.rm = TRUE)

#Kansabel
Table3$Kansabel[1]<- sum(calldetail$total_wts[calldetail$block=="Kansabel"], na.rm = TRUE)
Table3$Kansabel[2]<- sum(calldetail$total_wts[(calldetail$block=="Kansabel")&(calldetail$Successor=="Ranvijay_Singh")], na.rm = TRUE)
Table3$Kansabel[3]<- sum(calldetail$total_wts[(calldetail$block=="Kansabel")&(calldetail$Successor=="Prabal_Pratap_Singh")], na.rm = TRUE)
Table3$Kansabel[4]<- sum(calldetail$total_wts[(calldetail$block=="Kansabel")&(calldetail$Successor=="Yudhvir_Singh_Judev")], na.rm = TRUE)
Table3$Kansabel[5]<- sum(calldetail$total_wts[(calldetail$block=="Kansabel")&calldetail$Successor=="Priyamvada_Singh"], na.rm = TRUE)
Table3$Kansabel[6]<- sum(calldetail$total_wts[(calldetail$block=="Kansabel")&(calldetail$Successor=="Other")], na.rm = TRUE)
Table3$Kansabel[7]<- sum(calldetail$total_wts[(calldetail$block=="Kansabel")&(calldetail$Successor=="Missing")], na.rm = TRUE)

#Kunkuri
Table3$Kunkuri[1]<- sum(calldetail$total_wts[calldetail$block=="Kunkuri"], na.rm = TRUE)
Table3$Kunkuri[2]<- sum(calldetail$total_wts[(calldetail$block=="Kunkuri")&(calldetail$Successor=="Ranvijay_Singh")], na.rm = TRUE)
Table3$Kunkuri[3]<- sum(calldetail$total_wts[(calldetail$block=="Kunkuri")&(calldetail$Successor=="Prabal_Pratap_Singh")], na.rm = TRUE)
Table3$Kunkuri[4]<- sum(calldetail$total_wts[(calldetail$block=="Kunkuri")&(calldetail$Successor=="Yudhvir_Singh_Judev")], na.rm = TRUE)
Table3$Kunkuri[5]<- sum(calldetail$total_wts[(calldetail$block=="Kunkuri")&calldetail$Successor=="Priyamvada_Singh"], na.rm = TRUE)
Table3$Kunkuri[6]<- sum(calldetail$total_wts[(calldetail$block=="Kunkuri")&(calldetail$Successor=="Other")], na.rm = TRUE)
Table3$Kunkuri[7]<- sum(calldetail$total_wts[(calldetail$block=="Kunkuri")&(calldetail$Successor=="Missing")], na.rm = TRUE)

#Manora
Table3$Manora[1]<- sum(calldetail$total_wts[calldetail$block=="Manora"], na.rm = TRUE)
Table3$Manora[2]<- sum(calldetail$total_wts[(calldetail$block=="Manora")&(calldetail$Successor=="Ranvijay_Singh")], na.rm = TRUE)
Table3$Manora[3]<- sum(calldetail$total_wts[(calldetail$block=="Manora")&(calldetail$Successor=="Prabal_Pratap_Singh")], na.rm = TRUE)
Table3$Manora[4]<- sum(calldetail$total_wts[(calldetail$block=="Manora")&(calldetail$Successor=="Yudhvir_Singh_Judev")], na.rm = TRUE)
Table3$Manora[5]<- sum(calldetail$total_wts[(calldetail$block=="Manora")&calldetail$Successor=="Priyamvada_Singh"], na.rm = TRUE)
Table3$Manora[6]<- sum(calldetail$total_wts[(calldetail$block=="Manora")&(calldetail$Successor=="Other")], na.rm = TRUE)
Table3$Manora[7]<- sum(calldetail$total_wts[(calldetail$block=="Manora")&(calldetail$Successor=="Missing")], na.rm = TRUE)

#Pathalgaon
Table3$Pathalgaon[1]<- sum(calldetail$total_wts[calldetail$block=="Pathalgaon"], na.rm = TRUE)
Table3$Pathalgaon[2]<- sum(calldetail$total_wts[(calldetail$block=="Pathalgaon")&(calldetail$Successor=="Ranvijay_Singh")], na.rm = TRUE)
Table3$Pathalgaon[3]<- sum(calldetail$total_wts[(calldetail$block=="Pathalgaon")&(calldetail$Successor=="Prabal_Pratap_Singh")], na.rm = TRUE)
Table3$Pathalgaon[4]<- sum(calldetail$total_wts[(calldetail$block=="Pathalgaon")&(calldetail$Successor=="Yudhvir_Singh_Judev")], na.rm = TRUE)
Table3$Pathalgaon[5]<- sum(calldetail$total_wts[(calldetail$block=="Pathalgaon")&calldetail$Successor=="Priyamvada_Singh"], na.rm = TRUE)
Table3$Pathalgaon[6]<- sum(calldetail$total_wts[(calldetail$block=="Pathalgaon")&(calldetail$Successor=="Other")], na.rm = TRUE)
Table3$Pathalgaon[7]<- sum(calldetail$total_wts[(calldetail$block=="Pathalgaon")&(calldetail$Successor=="Missing")], na.rm = TRUE)

#Parsabahar
Table3$Parsabahar[1]<- sum(calldetail$total_wts[calldetail$block=="Parsabahar"], na.rm = TRUE)
Table3$Parsabahar[2]<- sum(calldetail$total_wts[(calldetail$block=="Parsabahar")&(calldetail$Successor=="Ranvijay_Singh")], na.rm = TRUE)
Table3$Parsabahar[3]<- sum(calldetail$total_wts[(calldetail$block=="Parsabahar")&(calldetail$Successor=="Prabal_Pratap_Singh")], na.rm = TRUE)
Table3$Parsabahar[4]<- sum(calldetail$total_wts[(calldetail$block=="Parsabahar")&(calldetail$Successor=="Yudhvir_Singh_Judev")], na.rm = TRUE)
Table3$Parsabahar[5]<- sum(calldetail$total_wts[(calldetail$block=="Parsabahar")&calldetail$Successor=="Priyamvada_Singh"], na.rm = TRUE)
Table3$Parsabahar[6]<- sum(calldetail$total_wts[(calldetail$block=="Parsabahar")&(calldetail$Successor=="Other")], na.rm = TRUE)
Table3$Parsabahar[7]<- sum(calldetail$total_wts[(calldetail$block=="Parsabahar")&(calldetail$Successor=="Missing")], na.rm = TRUE)

#Table4:PPS_Performance
Table4<-matrix(NA, nrow = 5, ncol = 3)
colnames(Table4)<- c("Overall", "ST", "Christian")
rownames(Table4)<- c("Base", "Better_than_him", "good_enough", "little_bit", "nominal")
Table4<-as.data.frame(Table4)

#Overall
Table4$Overall[1]<- sum(calldetail$total_wts[(calldetail$Successor=="Prabal_Pratap_Singh")], na.rm = TRUE)
Table4$Overall[2]<- sum(calldetail$total_wts[(calldetail$PPS_performance=="Better_than_him")&(calldetail$Successor=="Prabal_Pratap_Singh")], na.rm = TRUE)
Table4$Overall[3]<- sum(calldetail$total_wts[(calldetail$PPS_performance=="good_enough")&(calldetail$Successor=="Prabal_Pratap_Singh")], na.rm = TRUE)
Table4$Overall[4]<- sum(calldetail$total_wts[(calldetail$PPS_performance=="little_bit")&(calldetail$Successor=="Prabal_Pratap_Singh")], na.rm = TRUE)
Table4$Overall[5]<- sum(calldetail$total_wts[(calldetail$PPS_performance=="nominal")&(calldetail$Successor=="Prabal_Pratap_Singh")], na.rm = TRUE)

#ST
Table4$ST[1]<- sum(calldetail$total_wts[(calldetail$Successor=="Prabal_Pratap_Singh")&(calldetail$catid=="ST")], na.rm = TRUE)
Table4$ST[2]<- sum(calldetail$total_wts[(calldetail$PPS_performance=="Better_than_him")&(calldetail$Successor=="Prabal_Pratap_Singh")&(calldetail$catid=="ST")], na.rm = TRUE)
Table4$ST[3]<- sum(calldetail$total_wts[(calldetail$PPS_performance=="good_enough")&(calldetail$Successor=="Prabal_Pratap_Singh")&(calldetail$catid=="ST")], na.rm = TRUE)
Table4$ST[4]<- sum(calldetail$total_wts[(calldetail$PPS_performance=="little_bit")&(calldetail$Successor=="Prabal_Pratap_Singh")&(calldetail$catid=="ST")], na.rm = TRUE)
Table4$ST[5]<- sum(calldetail$total_wts[(calldetail$PPS_performance=="nominal")&(calldetail$Successor=="Prabal_Pratap_Singh")&(calldetail$catid=="ST")], na.rm = TRUE)

#Christian
Table4$Christian[1]<- sum(calldetail$total_wts[(calldetail$Successor=="Prabal_Pratap_Singh")&(calldetail$catid=="Christianity")], na.rm = TRUE)
Table4$Christian[2]<- sum(calldetail$total_wts[(calldetail$PPS_performance=="Better_than_him")&(calldetail$Successor=="Prabal_Pratap_Singh")&(calldetail$catid=="Christianity")], na.rm = TRUE)
Table4$Christian[3]<- sum(calldetail$total_wts[(calldetail$PPS_performance=="good_enough")&(calldetail$Successor=="Prabal_Pratap_Singh")&(calldetail$catid=="Christianity")], na.rm = TRUE)
Table4$Christian[4]<- sum(calldetail$total_wts[(calldetail$PPS_performance=="little_bit")&(calldetail$Successor=="Prabal_Pratap_Singh")&(calldetail$catid=="Christianity")], na.rm = TRUE)
Table4$Christian[5]<- sum(calldetail$total_wts[(calldetail$PPS_performance=="nominal")&(calldetail$Successor=="Prabal_Pratap_Singh")&(calldetail$catid=="Christianity")], na.rm = TRUE)

#Table5:Leader
Table5<-matrix(NA, nrow = 11, ncol = 31)
colnames(Table5)<- c("Overall", "BJP", "Non_BJP", "Bagicha", "Jashpur", "Duldula", "Kansabel", "Kunkuri", "Manora", "Pathalgaon", "Parsabahar", "Gen_OBC", "SC", "ST", "Islam", "Christianity", "Farmer", "Non_Farmer", "Rural","Urban", "Teen", "Job", "Adult", "Family", "Old", "Retired", "Oraon", "Yadav", "Kanwar", "Gond", "Nagvanshi")
rownames(Table5)<- c("Base", "Govind Ram Bhagat", "Krishna Roy", "Nand Kumar Sai", "Nikunj Ram", "PP Singh", "Rampukar Singh", "Ramsaran Bhagat", "Ranvijay Singh", "Vishnu Dev Sai", "Yudhhvir Singh")
Table5<-as.data.frame(Table5)

#Overall
Table5$Overall[1]<- sum(calldetail$total_wts, na.rm = TRUE)
Table5$Overall[2]<- sum(calldetail$total_wts[(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Overall[3]<- sum(calldetail$total_wts[calldetail$Jashpur_Leader=="Krishna Roy"], na.rm = TRUE)
Table5$Overall[4]<- sum(calldetail$total_wts[calldetail$Jashpur_Leader=="Nand Kumar Sai"], na.rm = TRUE)
Table5$Overall[5]<- sum(calldetail$total_wts[calldetail$Jashpur_Leader=="Nikunj Ram"], na.rm = TRUE)
Table5$Overall[6]<- sum(calldetail$total_wts[(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Overall[7]<- sum(calldetail$total_wts[calldetail$Jashpur_Leader=="Rampukar Singh"], na.rm = TRUE)
Table5$Overall[8]<- sum(calldetail$total_wts[calldetail$Jashpur_Leader=="Ramsaran Bhagat"], na.rm = TRUE)
Table5$Overall[9]<- sum(calldetail$total_wts[calldetail$Jashpur_Leader=="Ranvijay Singh"], na.rm = TRUE)
Table5$Overall[10]<- sum(calldetail$total_wts[calldetail$Jashpur_Leader=="Vishnu Dev Sai"], na.rm = TRUE)
Table5$Overall[11]<- sum(calldetail$total_wts[calldetail$Jashpur_Leader=="Yudhhvir Singh"], na.rm = TRUE)

#BJP_Supporters
Table5$BJP[1]<- sum(calldetail$total_wts[calldetail$Party=="BJP"], na.rm = TRUE)
Table5$BJP[2]<- sum(calldetail$total_wts[(calldetail$Party=="BJP")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$BJP[3]<- sum(calldetail$total_wts[(calldetail$Party=="BJP")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$BJP[4]<- sum(calldetail$total_wts[(calldetail$Party=="BJP")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$BJP[5]<- sum(calldetail$total_wts[(calldetail$Party=="BJP")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$BJP[6]<- sum(calldetail$total_wts[(calldetail$Party=="BJP")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$BJP[7]<- sum(calldetail$total_wts[(calldetail$Party=="BJP")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$BJP[8]<- sum(calldetail$total_wts[(calldetail$Party=="BJP")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$BJP[9]<- sum(calldetail$total_wts[(calldetail$Party=="BJP")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$BJP[10]<- sum(calldetail$total_wts[(calldetail$Party=="BJP")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$BJP[11]<- sum(calldetail$total_wts[(calldetail$Party=="BJP")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#Non_BJP_Supporters
Table5$Non_BJP[1]<- sum(calldetail$total_wts[calldetail$Party!="BJP"], na.rm = TRUE)
Table5$Non_BJP[2]<- sum(calldetail$total_wts[(calldetail$Party!="BJP")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Non_BJP[3]<- sum(calldetail$total_wts[(calldetail$Party!="BJP")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Non_BJP[4]<- sum(calldetail$total_wts[(calldetail$Party!="BJP")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Non_BJP[5]<- sum(calldetail$total_wts[(calldetail$Party!="BJP")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Non_BJP[6]<- sum(calldetail$total_wts[(calldetail$Party!="BJP")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Non_BJP[7]<- sum(calldetail$total_wts[(calldetail$Party!="BJP")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Non_BJP[8]<- sum(calldetail$total_wts[(calldetail$Party!="BJP")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Non_BJP[9]<- sum(calldetail$total_wts[(calldetail$Party!="BJP")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Non_BJP[10]<- sum(calldetail$total_wts[(calldetail$Party!="BJP")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Non_BJP[11]<- sum(calldetail$total_wts[(calldetail$Party!="BJP")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#Bagicha
Table5$Bagicha[1]<- sum(calldetail$total_wts[calldetail$block =="Bagicha"], na.rm = TRUE)
Table5$Bagicha[2]<- sum(calldetail$total_wts[(calldetail$block =="Bagicha")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Bagicha[3]<- sum(calldetail$total_wts[(calldetail$block =="Bagicha")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Bagicha[4]<- sum(calldetail$total_wts[(calldetail$block =="Bagicha")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Bagicha[5]<- sum(calldetail$total_wts[(calldetail$block =="Bagicha")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Bagicha[6]<- sum(calldetail$total_wts[(calldetail$block =="Bagicha")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Bagicha[7]<- sum(calldetail$total_wts[(calldetail$block =="Bagicha")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Bagicha[8]<- sum(calldetail$total_wts[(calldetail$block =="Bagicha")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Bagicha[9]<- sum(calldetail$total_wts[(calldetail$block =="Bagicha")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Bagicha[10]<- sum(calldetail$total_wts[(calldetail$block =="Bagicha")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Bagicha[11]<- sum(calldetail$total_wts[(calldetail$block =="Bagicha")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#Jashpur
Table5$Jashpur[1]<- sum(calldetail$total_wts[calldetail$block =="Jashpur"], na.rm = TRUE)
Table5$Jashpur[2]<- sum(calldetail$total_wts[(calldetail$block =="Jashpur")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Jashpur[3]<- sum(calldetail$total_wts[(calldetail$block =="Jashpur")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Jashpur[4]<- sum(calldetail$total_wts[(calldetail$block =="Jashpur")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Jashpur[5]<- sum(calldetail$total_wts[(calldetail$block =="Jashpur")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Jashpur[6]<- sum(calldetail$total_wts[(calldetail$block =="Jashpur")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Jashpur[7]<- sum(calldetail$total_wts[(calldetail$block =="Jashpur")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Jashpur[8]<- sum(calldetail$total_wts[(calldetail$block =="Jashpur")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Jashpur[9]<- sum(calldetail$total_wts[(calldetail$block =="Jashpur")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Jashpur[10]<- sum(calldetail$total_wts[(calldetail$block =="Jashpur")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Jashpur[11]<- sum(calldetail$total_wts[(calldetail$block =="Jashpur")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#Duldula
Table5$Duldula[1]<- sum(calldetail$total_wts[calldetail$block =="Duldula"], na.rm = TRUE)
Table5$Duldula[2]<- sum(calldetail$total_wts[(calldetail$block =="Duldula")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Duldula[3]<- sum(calldetail$total_wts[(calldetail$block =="Duldula")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Duldula[4]<- sum(calldetail$total_wts[(calldetail$block =="Duldula")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Duldula[5]<- sum(calldetail$total_wts[(calldetail$block =="Duldula")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Duldula[6]<- sum(calldetail$total_wts[(calldetail$block =="Duldula")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Duldula[7]<- sum(calldetail$total_wts[(calldetail$block =="Duldula")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Duldula[8]<- sum(calldetail$total_wts[(calldetail$block =="Duldula")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Duldula[9]<- sum(calldetail$total_wts[(calldetail$block =="Duldula")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Duldula[10]<- sum(calldetail$total_wts[(calldetail$block =="Duldula")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Duldula[11]<- sum(calldetail$total_wts[(calldetail$block =="Duldula")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#Kansabel
Table5$Kansabel[1]<- sum(calldetail$total_wts[calldetail$block =="Kansabel"], na.rm = TRUE)
Table5$Kansabel[2]<- sum(calldetail$total_wts[(calldetail$block =="Kansabel")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Kansabel[3]<- sum(calldetail$total_wts[(calldetail$block =="Kansabel")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Kansabel[4]<- sum(calldetail$total_wts[(calldetail$block =="Kansabel")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Kansabel[5]<- sum(calldetail$total_wts[(calldetail$block =="Kansabel")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Kansabel[6]<- sum(calldetail$total_wts[(calldetail$block =="Kansabel")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Kansabel[7]<- sum(calldetail$total_wts[(calldetail$block =="Kansabel")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Kansabel[8]<- sum(calldetail$total_wts[(calldetail$block =="Kansabel")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Kansabel[9]<- sum(calldetail$total_wts[(calldetail$block =="Kansabel")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Kansabel[10]<- sum(calldetail$total_wts[(calldetail$block =="Kansabel")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Kansabel[11]<- sum(calldetail$total_wts[(calldetail$block =="Kansabel")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#Kunkuri
Table5$Kunkuri[1]<- sum(calldetail$total_wts[calldetail$block =="Kunkuri"], na.rm = TRUE)
Table5$Kunkuri[2]<- sum(calldetail$total_wts[(calldetail$block =="Kunkuri")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Kunkuri[3]<- sum(calldetail$total_wts[(calldetail$block =="Kunkuri")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Kunkuri[4]<- sum(calldetail$total_wts[(calldetail$block =="Kunkuri")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Kunkuri[5]<- sum(calldetail$total_wts[(calldetail$block =="Kunkuri")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Kunkuri[6]<- sum(calldetail$total_wts[(calldetail$block =="Kunkuri")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Kunkuri[7]<- sum(calldetail$total_wts[(calldetail$block =="Kunkuri")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Kunkuri[8]<- sum(calldetail$total_wts[(calldetail$block =="Kunkuri")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Kunkuri[9]<- sum(calldetail$total_wts[(calldetail$block =="Kunkuri")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Kunkuri[10]<- sum(calldetail$total_wts[(calldetail$block =="Kunkuri")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Kunkuri[11]<- sum(calldetail$total_wts[(calldetail$block =="Kunkuri")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#Manora
Table5$Manora[1]<- sum(calldetail$total_wts[calldetail$block =="Manora"], na.rm = TRUE)
Table5$Manora[2]<- sum(calldetail$total_wts[(calldetail$block =="Manora")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Manora[3]<- sum(calldetail$total_wts[(calldetail$block =="Manora")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Manora[4]<- sum(calldetail$total_wts[(calldetail$block =="Manora")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Manora[5]<- sum(calldetail$total_wts[(calldetail$block =="Manora")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Manora[6]<- sum(calldetail$total_wts[(calldetail$block =="Manora")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Manora[7]<- sum(calldetail$total_wts[(calldetail$block =="Manora")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Manora[8]<- sum(calldetail$total_wts[(calldetail$block =="Manora")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Manora[9]<- sum(calldetail$total_wts[(calldetail$block =="Manora")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Manora[10]<- sum(calldetail$total_wts[(calldetail$block =="Manora")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Manora[11]<- sum(calldetail$total_wts[(calldetail$block =="Manora")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#Pathalgaon
Table5$Pathalgaon[1]<- sum(calldetail$total_wts[calldetail$block =="Pathalgaon"], na.rm = TRUE)
Table5$Pathalgaon[2]<- sum(calldetail$total_wts[(calldetail$block =="Pathalgaon")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Pathalgaon[3]<- sum(calldetail$total_wts[(calldetail$block =="Pathalgaon")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Pathalgaon[4]<- sum(calldetail$total_wts[(calldetail$block =="Pathalgaon")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Pathalgaon[5]<- sum(calldetail$total_wts[(calldetail$block =="Pathalgaon")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Pathalgaon[6]<- sum(calldetail$total_wts[(calldetail$block =="Pathalgaon")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Pathalgaon[7]<- sum(calldetail$total_wts[(calldetail$block =="Pathalgaon")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Pathalgaon[8]<- sum(calldetail$total_wts[(calldetail$block =="Pathalgaon")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Pathalgaon[9]<- sum(calldetail$total_wts[(calldetail$block =="Pathalgaon")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Pathalgaon[10]<- sum(calldetail$total_wts[(calldetail$block =="Pathalgaon")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Pathalgaon[11]<- sum(calldetail$total_wts[(calldetail$block =="Pathalgaon")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#Parsabahar
Table5$Parsabahar[1]<- sum(calldetail$total_wts[calldetail$block =="Parsabahar"], na.rm = TRUE)
Table5$Parsabahar[2]<- sum(calldetail$total_wts[(calldetail$block =="Parsabahar")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Parsabahar[3]<- sum(calldetail$total_wts[(calldetail$block =="Parsabahar")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Parsabahar[4]<- sum(calldetail$total_wts[(calldetail$block =="Parsabahar")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Parsabahar[5]<- sum(calldetail$total_wts[(calldetail$block =="Parsabahar")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Parsabahar[6]<- sum(calldetail$total_wts[(calldetail$block =="Parsabahar")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Parsabahar[7]<- sum(calldetail$total_wts[(calldetail$block =="Parsabahar")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Parsabahar[8]<- sum(calldetail$total_wts[(calldetail$block =="Parsabahar")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Parsabahar[9]<- sum(calldetail$total_wts[(calldetail$block =="Parsabahar")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Parsabahar[10]<- sum(calldetail$total_wts[(calldetail$block =="Parsabahar")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Parsabahar[11]<- sum(calldetail$total_wts[(calldetail$block =="Parsabahar")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#Gen_OBC
Table5$Gen_OBC[1]<- sum(calldetail$total_wts[(calldetail$catid=="General")|(calldetail$catid=="OBC")], na.rm = TRUE)
Table5$Gen_OBC[2]<- sum(calldetail$total_wts[((calldetail$catid=="General")|(calldetail$catid=="OBC"))&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Gen_OBC[3]<- sum(calldetail$total_wts[((calldetail$catid=="General")|(calldetail$catid=="OBC"))&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Gen_OBC[4]<- sum(calldetail$total_wts[((calldetail$catid=="General")|(calldetail$catid=="OBC"))&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Gen_OBC[5]<- sum(calldetail$total_wts[((calldetail$catid=="General")|(calldetail$catid=="OBC"))&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Gen_OBC[6]<- sum(calldetail$total_wts[((calldetail$catid=="General")|(calldetail$catid=="OBC"))&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Gen_OBC[7]<- sum(calldetail$total_wts[((calldetail$catid=="General")|(calldetail$catid=="OBC"))&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Gen_OBC[8]<- sum(calldetail$total_wts[((calldetail$catid=="General")|(calldetail$catid=="OBC"))&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Gen_OBC[9]<- sum(calldetail$total_wts[((calldetail$catid=="General")|(calldetail$catid=="OBC"))&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Gen_OBC[10]<- sum(calldetail$total_wts[((calldetail$catid=="General")|(calldetail$catid=="OBC"))&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Gen_OBC[11]<- sum(calldetail$total_wts[((calldetail$catid=="General")|(calldetail$catid=="OBC"))&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#SC
Table5$SC[1]<- sum(calldetail$total_wts[calldetail$catid=="SC"], na.rm = TRUE)
Table5$SC[2]<- sum(calldetail$total_wts[(calldetail$catid=="SC")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$SC[3]<- sum(calldetail$total_wts[(calldetail$catid=="SC")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$SC[4]<- sum(calldetail$total_wts[(calldetail$catid=="SC")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$SC[5]<- sum(calldetail$total_wts[(calldetail$catid=="SC")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$SC[6]<- sum(calldetail$total_wts[(calldetail$catid=="SC")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$SC[7]<- sum(calldetail$total_wts[(calldetail$catid=="SC")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$SC[8]<- sum(calldetail$total_wts[(calldetail$catid=="SC")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$SC[9]<- sum(calldetail$total_wts[(calldetail$catid=="SC")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$SC[10]<- sum(calldetail$total_wts[(calldetail$catid=="SC")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$SC[11]<- sum(calldetail$total_wts[(calldetail$catid=="SC")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#ST
Table5$ST[1]<- sum(calldetail$total_wts[calldetail$catid=="ST"], na.rm = TRUE)
Table5$ST[2]<- sum(calldetail$total_wts[(calldetail$catid=="ST")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$ST[3]<- sum(calldetail$total_wts[(calldetail$catid=="ST")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$ST[4]<- sum(calldetail$total_wts[(calldetail$catid=="ST")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$ST[5]<- sum(calldetail$total_wts[(calldetail$catid=="ST")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$ST[6]<- sum(calldetail$total_wts[(calldetail$catid=="ST")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$ST[7]<- sum(calldetail$total_wts[(calldetail$catid=="ST")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$ST[8]<- sum(calldetail$total_wts[(calldetail$catid=="ST")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$ST[9]<- sum(calldetail$total_wts[(calldetail$catid=="ST")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$ST[10]<- sum(calldetail$total_wts[(calldetail$catid=="ST")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$ST[11]<- sum(calldetail$total_wts[(calldetail$catid=="ST")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#Islam
Table5$Islam[1]<- sum(calldetail$total_wts[calldetail$catid=="Islam"], na.rm = TRUE)
Table5$Islam[2]<- sum(calldetail$total_wts[(calldetail$catid=="Islam")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Islam[3]<- sum(calldetail$total_wts[(calldetail$catid=="Islam")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Islam[4]<- sum(calldetail$total_wts[(calldetail$catid=="Islam")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Islam[5]<- sum(calldetail$total_wts[(calldetail$catid=="Islam")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Islam[6]<- sum(calldetail$total_wts[(calldetail$catid=="Islam")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Islam[7]<- sum(calldetail$total_wts[(calldetail$catid=="Islam")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Islam[8]<- sum(calldetail$total_wts[(calldetail$catid=="Islam")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Islam[9]<- sum(calldetail$total_wts[(calldetail$catid=="Islam")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Islam[10]<- sum(calldetail$total_wts[(calldetail$catid=="Islam")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Islam[11]<- sum(calldetail$total_wts[(calldetail$catid=="Islam")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#Christianity
Table5$Christianity[1]<- sum(calldetail$total_wts[calldetail$catid=="Christianity"], na.rm = TRUE)
Table5$Christianity[2]<- sum(calldetail$total_wts[(calldetail$catid=="Christianity")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Christianity[3]<- sum(calldetail$total_wts[(calldetail$catid=="Christianity")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Christianity[4]<- sum(calldetail$total_wts[(calldetail$catid=="Christianity")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Christianity[5]<- sum(calldetail$total_wts[(calldetail$catid=="Christianity")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Christianity[6]<- sum(calldetail$total_wts[(calldetail$catid=="Christianity")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Christianity[7]<- sum(calldetail$total_wts[(calldetail$catid=="Christianity")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Christianity[8]<- sum(calldetail$total_wts[(calldetail$catid=="Christianity")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Christianity[9]<- sum(calldetail$total_wts[(calldetail$catid=="Christianity")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Christianity[10]<- sum(calldetail$total_wts[(calldetail$catid=="Christianity")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Christianity[11]<- sum(calldetail$total_wts[(calldetail$catid=="Christianity")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#Farmer
Table5$Farmer[1]<- sum(calldetail$total_wts[calldetail$isfarmer=="Yes"], na.rm = TRUE)
Table5$Farmer[2]<- sum(calldetail$total_wts[(calldetail$isfarmer=="Yes")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Farmer[3]<- sum(calldetail$total_wts[(calldetail$isfarmer=="Yes")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Farmer[4]<- sum(calldetail$total_wts[(calldetail$isfarmer=="Yes")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Farmer[5]<- sum(calldetail$total_wts[(calldetail$isfarmer=="Yes")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Farmer[6]<- sum(calldetail$total_wts[(calldetail$isfarmer=="Yes")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Farmer[7]<- sum(calldetail$total_wts[(calldetail$isfarmer=="Yes")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Farmer[8]<- sum(calldetail$total_wts[(calldetail$isfarmer=="Yes")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Farmer[9]<- sum(calldetail$total_wts[(calldetail$isfarmer=="Yes")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Farmer[10]<- sum(calldetail$total_wts[(calldetail$isfarmer=="Yes")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Farmer[11]<- sum(calldetail$total_wts[(calldetail$isfarmer=="Yes")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#Non_Farmer
Table5$Non_Farmer[1]<- sum(calldetail$total_wts[calldetail$isfarmer=="No"], na.rm = TRUE)
Table5$Non_Farmer[2]<- sum(calldetail$total_wts[(calldetail$isfarmer=="No")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Non_Farmer[3]<- sum(calldetail$total_wts[(calldetail$isfarmer=="No")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Non_Farmer[4]<- sum(calldetail$total_wts[(calldetail$isfarmer=="No")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Non_Farmer[5]<- sum(calldetail$total_wts[(calldetail$isfarmer=="No")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Non_Farmer[6]<- sum(calldetail$total_wts[(calldetail$isfarmer=="No")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Non_Farmer[7]<- sum(calldetail$total_wts[(calldetail$isfarmer=="No")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Non_Farmer[8]<- sum(calldetail$total_wts[(calldetail$isfarmer=="No")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Non_Farmer[9]<- sum(calldetail$total_wts[(calldetail$isfarmer=="No")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Non_Farmer[10]<- sum(calldetail$total_wts[(calldetail$isfarmer=="No")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Non_Farmer[11]<- sum(calldetail$total_wts[(calldetail$isfarmer=="No")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#Rural
Table5$Rural[1]<- sum(calldetail$total_wts[calldetail$iscity=="Rural"], na.rm = TRUE)
Table5$Rural[2]<- sum(calldetail$total_wts[(calldetail$iscity=="Rural")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Rural[3]<- sum(calldetail$total_wts[(calldetail$iscity=="Rural")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Rural[4]<- sum(calldetail$total_wts[(calldetail$iscity=="Rural")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Rural[5]<- sum(calldetail$total_wts[(calldetail$iscity=="Rural")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Rural[6]<- sum(calldetail$total_wts[(calldetail$iscity=="Rural")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Rural[7]<- sum(calldetail$total_wts[(calldetail$iscity=="Rural")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Rural[8]<- sum(calldetail$total_wts[(calldetail$iscity=="Rural")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Rural[9]<- sum(calldetail$total_wts[(calldetail$iscity=="Rural")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Rural[10]<- sum(calldetail$total_wts[(calldetail$iscity=="Rural")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Rural[11]<- sum(calldetail$total_wts[(calldetail$iscity=="Rural")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#Urban
Table5$Urban[1]<- sum(calldetail$total_wts[calldetail$iscity=="Urban"], na.rm = TRUE)
Table5$Urban[2]<- sum(calldetail$total_wts[(calldetail$iscity=="Urban")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Urban[3]<- sum(calldetail$total_wts[(calldetail$iscity=="Urban")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Urban[4]<- sum(calldetail$total_wts[(calldetail$iscity=="Urban")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Urban[5]<- sum(calldetail$total_wts[(calldetail$iscity=="Urban")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Urban[6]<- sum(calldetail$total_wts[(calldetail$iscity=="Urban")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Urban[7]<- sum(calldetail$total_wts[(calldetail$iscity=="Urban")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Urban[8]<- sum(calldetail$total_wts[(calldetail$iscity=="Urban")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Urban[9]<- sum(calldetail$total_wts[(calldetail$iscity=="Urban")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Urban[10]<- sum(calldetail$total_wts[(calldetail$iscity=="Urban")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Urban[11]<- sum(calldetail$total_wts[(calldetail$iscity=="Urban")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#18-24
Table5$Teen[1]<- sum(calldetail$total_wts[calldetail$age=="18-24"], na.rm = TRUE)
Table5$Teen[2]<- sum(calldetail$total_wts[(calldetail$age=="18-24")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Teen[3]<- sum(calldetail$total_wts[(calldetail$age=="18-24")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Teen[4]<- sum(calldetail$total_wts[(calldetail$age=="18-24")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Teen[5]<- sum(calldetail$total_wts[(calldetail$age=="18-24")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Teen[6]<- sum(calldetail$total_wts[(calldetail$age=="18-24")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Teen[7]<- sum(calldetail$total_wts[(calldetail$age=="18-24")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Teen[8]<- sum(calldetail$total_wts[(calldetail$age=="18-24")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Teen[9]<- sum(calldetail$total_wts[(calldetail$age=="18-24")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Teen[10]<- sum(calldetail$total_wts[(calldetail$age=="18-24")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Teen[11]<- sum(calldetail$total_wts[(calldetail$age=="18-24")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#Job
Table5$Job[1]<- sum(calldetail$total_wts[calldetail$age=="25-29"], na.rm = TRUE)
Table5$Job[2]<- sum(calldetail$total_wts[(calldetail$age=="25-29")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Job[3]<- sum(calldetail$total_wts[(calldetail$age=="25-29")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Job[4]<- sum(calldetail$total_wts[(calldetail$age=="25-29")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Job[5]<- sum(calldetail$total_wts[(calldetail$age=="25-29")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Job[6]<- sum(calldetail$total_wts[(calldetail$age=="25-29")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Job[7]<- sum(calldetail$total_wts[(calldetail$age=="25-29")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Job[8]<- sum(calldetail$total_wts[(calldetail$age=="25-29")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Job[9]<- sum(calldetail$total_wts[(calldetail$age=="25-29")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Job[10]<- sum(calldetail$total_wts[(calldetail$age=="25-29")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Job[11]<- sum(calldetail$total_wts[(calldetail$age=="25-29")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#Adult
Table5$Adult[1]<- sum(calldetail$total_wts[calldetail$age=="30-39"], na.rm = TRUE)
Table5$Adult[2]<- sum(calldetail$total_wts[(calldetail$age=="30-39")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Adult[3]<- sum(calldetail$total_wts[(calldetail$age=="30-39")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Adult[4]<- sum(calldetail$total_wts[(calldetail$age=="30-39")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Adult[5]<- sum(calldetail$total_wts[(calldetail$age=="30-39")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Adult[6]<- sum(calldetail$total_wts[(calldetail$age=="30-39")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Adult[7]<- sum(calldetail$total_wts[(calldetail$age=="30-39")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Adult[8]<- sum(calldetail$total_wts[(calldetail$age=="30-39")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Adult[9]<- sum(calldetail$total_wts[(calldetail$age=="30-39")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Adult[10]<- sum(calldetail$total_wts[(calldetail$age=="30-39")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Adult[11]<- sum(calldetail$total_wts[(calldetail$age=="30-39")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#Family
Table5$Family[1]<- sum(calldetail$total_wts[calldetail$age=="40-49"], na.rm = TRUE)
Table5$Family[2]<- sum(calldetail$total_wts[(calldetail$age=="40-49")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Family[3]<- sum(calldetail$total_wts[(calldetail$age=="40-49")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Family[4]<- sum(calldetail$total_wts[(calldetail$age=="40-49")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Family[5]<- sum(calldetail$total_wts[(calldetail$age=="40-49")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Family[6]<- sum(calldetail$total_wts[(calldetail$age=="40-49")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Family[7]<- sum(calldetail$total_wts[(calldetail$age=="40-49")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Family[8]<- sum(calldetail$total_wts[(calldetail$age=="40-49")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Family[9]<- sum(calldetail$total_wts[(calldetail$age=="40-49")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Family[10]<- sum(calldetail$total_wts[(calldetail$age=="40-49")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Family[11]<- sum(calldetail$total_wts[(calldetail$age=="40-49")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#Old
Table5$Old[1]<- sum(calldetail$total_wts[calldetail$age=="50-59"], na.rm = TRUE)
Table5$Old[2]<- sum(calldetail$total_wts[(calldetail$age=="50-59")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Old[3]<- sum(calldetail$total_wts[(calldetail$age=="50-59")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Old[4]<- sum(calldetail$total_wts[(calldetail$age=="50-59")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Old[5]<- sum(calldetail$total_wts[(calldetail$age=="50-59")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Old[6]<- sum(calldetail$total_wts[(calldetail$age=="50-59")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Old[7]<- sum(calldetail$total_wts[(calldetail$age=="50-59")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Old[8]<- sum(calldetail$total_wts[(calldetail$age=="50-59")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Old[9]<- sum(calldetail$total_wts[(calldetail$age=="50-59")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Old[10]<- sum(calldetail$total_wts[(calldetail$age=="50-59")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Old[11]<- sum(calldetail$total_wts[(calldetail$age=="50-59")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#Retired
Table5$Retired[1]<- sum(calldetail$total_wts[calldetail$age=="60+"], na.rm = TRUE)
Table5$Retired[2]<- sum(calldetail$total_wts[(calldetail$age=="60+")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Retired[3]<- sum(calldetail$total_wts[(calldetail$age=="60+")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Retired[4]<- sum(calldetail$total_wts[(calldetail$age=="60+")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Retired[5]<- sum(calldetail$total_wts[(calldetail$age=="60+")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Retired[6]<- sum(calldetail$total_wts[(calldetail$age=="60+")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Retired[7]<- sum(calldetail$total_wts[(calldetail$age=="60+")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Retired[8]<- sum(calldetail$total_wts[(calldetail$age=="60+")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Retired[9]<- sum(calldetail$total_wts[(calldetail$age=="60+")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Retired[10]<- sum(calldetail$total_wts[(calldetail$age=="60+")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Retired[11]<- sum(calldetail$total_wts[(calldetail$age=="60+")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#Oraon
Table5$Oraon[1]<- sum(calldetail$total_wts[calldetail$caste=="Oraon/Uraon/Uraanv"], na.rm = TRUE)
Table5$Oraon[2]<- sum(calldetail$total_wts[(calldetail$caste=="Oraon/Uraon/Uraanv")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Oraon[3]<- sum(calldetail$total_wts[(calldetail$caste=="Oraon/Uraon/Uraanv")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Oraon[4]<- sum(calldetail$total_wts[(calldetail$caste=="Oraon/Uraon/Uraanv")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Oraon[5]<- sum(calldetail$total_wts[(calldetail$caste=="Oraon/Uraon/Uraanv")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Oraon[6]<- sum(calldetail$total_wts[(calldetail$caste=="Oraon/Uraon/Uraanv")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Oraon[7]<- sum(calldetail$total_wts[(calldetail$caste=="Oraon/Uraon/Uraanv")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Oraon[8]<- sum(calldetail$total_wts[(calldetail$caste=="Oraon/Uraon/Uraanv")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Oraon[9]<- sum(calldetail$total_wts[(calldetail$caste=="Oraon/Uraon/Uraanv")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Oraon[10]<- sum(calldetail$total_wts[(calldetail$caste=="Oraon/Uraon/Uraanv")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Oraon[11]<- sum(calldetail$total_wts[(calldetail$caste=="Oraon/Uraon/Uraanv")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#Yadav
Table5$Yadav[1]<- sum(calldetail$total_wts[calldetail$caste=="Yadav/Raut/ Rawat/ Yadu"], na.rm = TRUE)
Table5$Yadav[2]<- sum(calldetail$total_wts[(calldetail$caste=="Yadav/Raut/ Rawat/ Yadu")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Yadav[3]<- sum(calldetail$total_wts[(calldetail$caste=="Yadav/Raut/ Rawat/ Yadu")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Yadav[4]<- sum(calldetail$total_wts[(calldetail$caste=="Yadav/Raut/ Rawat/ Yadu")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Yadav[5]<- sum(calldetail$total_wts[(calldetail$caste=="Yadav/Raut/ Rawat/ Yadu")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Yadav[6]<- sum(calldetail$total_wts[(calldetail$caste=="Yadav/Raut/ Rawat/ Yadu")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Yadav[7]<- sum(calldetail$total_wts[(calldetail$caste=="Yadav/Raut/ Rawat/ Yadu")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Yadav[8]<- sum(calldetail$total_wts[(calldetail$caste=="Yadav/Raut/ Rawat/ Yadu")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Yadav[9]<- sum(calldetail$total_wts[(calldetail$caste=="Yadav/Raut/ Rawat/ Yadu")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Yadav[10]<- sum(calldetail$total_wts[(calldetail$caste=="Yadav/Raut/ Rawat/ Yadu")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Yadav[11]<- sum(calldetail$total_wts[(calldetail$caste=="Yadav/Raut/ Rawat/ Yadu")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#Kanwar
Table5$Kanwar[1]<- sum(calldetail$total_wts[calldetail$caste=="Kanwar/Rathia/ Paikra/ Sai"], na.rm = TRUE)
Table5$Kanwar[2]<- sum(calldetail$total_wts[(calldetail$caste=="Kanwar/Rathia/ Paikra/ Sai")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Kanwar[3]<- sum(calldetail$total_wts[(calldetail$caste=="Kanwar/Rathia/ Paikra/ Sai")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Kanwar[4]<- sum(calldetail$total_wts[(calldetail$caste=="Kanwar/Rathia/ Paikra/ Sai")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Kanwar[5]<- sum(calldetail$total_wts[(calldetail$caste=="Kanwar/Rathia/ Paikra/ Sai")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Kanwar[6]<- sum(calldetail$total_wts[(calldetail$caste=="Kanwar/Rathia/ Paikra/ Sai")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Kanwar[7]<- sum(calldetail$total_wts[(calldetail$caste=="Kanwar/Rathia/ Paikra/ Sai")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Kanwar[8]<- sum(calldetail$total_wts[(calldetail$caste=="Kanwar/Rathia/ Paikra/ Sai")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Kanwar[9]<- sum(calldetail$total_wts[(calldetail$caste=="Kanwar/Rathia/ Paikra/ Sai")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Kanwar[10]<- sum(calldetail$total_wts[(calldetail$caste=="Kanwar/Rathia/ Paikra/ Sai")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Kanwar[11]<- sum(calldetail$total_wts[(calldetail$caste=="Kanwar/Rathia/ Paikra/ Sai")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#Gond
Table5$Gond[1]<- sum(calldetail$total_wts[calldetail$caste=="Gond/Rajgond/Sidar"], na.rm = TRUE)
Table5$Gond[2]<- sum(calldetail$total_wts[(calldetail$caste=="Gond/Rajgond/Sidar")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Gond[3]<- sum(calldetail$total_wts[(calldetail$caste=="Gond/Rajgond/Sidar")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Gond[4]<- sum(calldetail$total_wts[(calldetail$caste=="Gond/Rajgond/Sidar")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Gond[5]<- sum(calldetail$total_wts[(calldetail$caste=="Gond/Rajgond/Sidar")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Gond[6]<- sum(calldetail$total_wts[(calldetail$caste=="Gond/Rajgond/Sidar")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Gond[7]<- sum(calldetail$total_wts[(calldetail$caste=="Gond/Rajgond/Sidar")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Gond[8]<- sum(calldetail$total_wts[(calldetail$caste=="Gond/Rajgond/Sidar")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Gond[9]<- sum(calldetail$total_wts[(calldetail$caste=="Gond/Rajgond/Sidar")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Gond[10]<- sum(calldetail$total_wts[(calldetail$caste=="Gond/Rajgond/Sidar")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Gond[11]<- sum(calldetail$total_wts[(calldetail$caste=="Gond/Rajgond/Sidar")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)

#Nagvanshi
Table5$Nagvanshi[1]<- sum(calldetail$total_wts[calldetail$caste=="Nagvanshi"], na.rm = TRUE)
Table5$Nagvanshi[2]<- sum(calldetail$total_wts[(calldetail$caste=="Nagvanshi")&(calldetail$Jashpur_Leader=="Govind Ram Bhagat")], na.rm = TRUE)
Table5$Nagvanshi[3]<- sum(calldetail$total_wts[(calldetail$caste=="Nagvanshi")&(calldetail$Jashpur_Leader=="Krishna Roy")], na.rm = TRUE)
Table5$Nagvanshi[4]<- sum(calldetail$total_wts[(calldetail$caste=="Nagvanshi")&(calldetail$Jashpur_Leader=="Nand Kumar Sai")], na.rm = TRUE)
Table5$Nagvanshi[5]<- sum(calldetail$total_wts[(calldetail$caste=="Nagvanshi")&(calldetail$Jashpur_Leader=="Nikunj Ram")], na.rm = TRUE)
Table5$Nagvanshi[6]<- sum(calldetail$total_wts[(calldetail$caste=="Nagvanshi")&(calldetail$Jashpur_Leader=="PP Singh")], na.rm = TRUE)
Table5$Nagvanshi[7]<- sum(calldetail$total_wts[(calldetail$caste=="Nagvanshi")&(calldetail$Jashpur_Leader=="Rampukar Singh")], na.rm = TRUE)
Table5$Nagvanshi[8]<- sum(calldetail$total_wts[(calldetail$caste=="Nagvanshi")&(calldetail$Jashpur_Leader=="Ramsaran Bhagat")], na.rm = TRUE)
Table5$Nagvanshi[9]<- sum(calldetail$total_wts[(calldetail$caste=="Nagvanshi")&(calldetail$Jashpur_Leader=="Ranvijay Singh")], na.rm = TRUE)
Table5$Nagvanshi[10]<- sum(calldetail$total_wts[(calldetail$caste=="Nagvanshi")&(calldetail$Jashpur_Leader=="Vishnu Dev Sai")], na.rm = TRUE)
Table5$Nagvanshi[11]<- sum(calldetail$total_wts[(calldetail$caste=="Nagvanshi")&(calldetail$Jashpur_Leader=="Yudhhvir Singh")], na.rm = TRUE)


#Final_distribution
#Rural-Urban
iscity_wt$final[1]<- round(sum(100*calldetail$total_wts[calldetail$iscity=="Urban"], na.rm = TRUE)/(sum(calldetail$total_wts, na.rm = TRUE)),2)
iscity_wt$final[2]<- round(sum(100*calldetail$total_wts[calldetail$iscity=="Rural"], na.rm = TRUE)/(sum(calldetail$total_wts, na.rm = TRUE)),2)
iscity_wt$final[3]<- round(sum(100*calldetail$total_wts[(calldetail$iscity!="Rural")&(calldetail$iscity!="Urban")], na.rm = TRUE)/(sum(calldetail$total_wts, na.rm = TRUE)),2)

#catid
catid_wt$final[1]<- round(sum(100*calldetail$total_wts[(calldetail$catid=="General")|(calldetail$catid=="OBC")], na.rm = TRUE)/(sum(calldetail$total_wts, na.rm = TRUE)),2)
catid_wt$final[2]<- round(sum(100*calldetail$total_wts[(calldetail$catid=="SC")], na.rm = TRUE)/(sum(calldetail$total_wts, na.rm = TRUE)),2)
catid_wt$final[3]<- round(sum(100*calldetail$total_wts[(calldetail$catid=="ST")], na.rm = TRUE)/(sum(calldetail$total_wts, na.rm = TRUE)),2)
catid_wt$final[4]<- round(sum(100*calldetail$total_wts[(calldetail$catid=="Islam")], na.rm = TRUE)/(sum(calldetail$total_wts, na.rm = TRUE)),2)
catid_wt$final[5]<- round(sum(100*calldetail$total_wts[(calldetail$catid=="Christianity")], na.rm = TRUE)/(sum(calldetail$total_wts, na.rm = TRUE)),2)

#Age_wt
Age_wt$final[1]<-round(sum(100*calldetail$total_wts[calldetail$age=="18-24"], na.rm = TRUE)/sum(calldetail$total_wts, na.rm = TRUE),2)
Age_wt$final[2]<-round(sum(100*calldetail$total_wts[calldetail$age=="25-29"], na.rm = TRUE)/sum(calldetail$total_wts, na.rm = TRUE),2)
Age_wt$final[3]<-round(sum(100*calldetail$total_wts[calldetail$age=="30-39"], na.rm = TRUE)/sum(calldetail$total_wts, na.rm = TRUE),2)
Age_wt$final[4]<-round(sum(100*calldetail$total_wts[calldetail$age=="40-49"], na.rm = TRUE)/sum(calldetail$total_wts, na.rm = TRUE),2)
Age_wt$final[5]<-round(sum(100*calldetail$total_wts[calldetail$age=="50-59"], na.rm = TRUE)/sum(calldetail$total_wts, na.rm = TRUE),2)
Age_wt$final[6]<-round(sum(100*calldetail$total_wts[calldetail$age=="60+"], na.rm = TRUE)/sum(calldetail$total_wts, na.rm = TRUE),2)
Age_wt$final[7]<-100-sum(Age_wt$final[1:6], na.rm = TRUE)

#Table6: Party_wise_affiliation
Table6<- matrix(NA, nrow = 5, ncol = 10)
rownames(Table6)<- c("Base", "BJP", "Congress", "BSP+JCC", "Other")
colnames(Table6)<- c("Count", "Percent", "Bagicha", "Bagicha", "Jashpur", "Duldula", "Kansabel", "Kunkuri", "Manora", "Pathalgaon", "Parsabahar")
Table6<- as.data.frame(Table6)

#Party_Count
Table6$Count[1]<- sum(calldetail$total_wts[(calldetail$Party!="NoAnswer")|(calldetail$Party!="Undecided")], na.rm = TRUE)
Table6$Count[2]<- sum(calldetail$total_wts[(calldetail$Party=="BJP")], na.rm = TRUE)
Table6$Count[3]<- sum(calldetail$total_wts[(calldetail$Party=="Congress")], na.rm = TRUE)
Table6$Count[4]<- sum(calldetail$total_wts[(calldetail$Party=="BSP")|(calldetail$Party=="JCC")], na.rm = TRUE)
Table6$Count[5]<- sum(calldetail$total_wts[(calldetail$Party!="BJP")&(calldetail$Party!="Congress")&(calldetail$Party!="JCC")&(calldetail$Party!="BSP")&(calldetail$Party!="NoAnswer")&(calldetail$Party!="Undecided")], na.rm = TRUE)

#Party_percent
Table6$Percent[1]<- 100
Table6$Percent[2]<- round(100*Table6$Count[2]/Table6$Count[1],2)
Table6$Percent[3]<- round(100*Table6$Count[3]/Table6$Count[1],2)
Table6$Percent[4]<- round(100*Table6$Count[4]/Table6$Count[1],2)
Table6$Percent[5]<- round(100*Table6$Count[5]/Table6$Count[1],2)

#Party_Count_Bagicha
Table6$Bagicha[1]<- sum(calldetail$total_wts[((calldetail$Party!="NoAnswer")|(calldetail$Party!="Undecided"))&(calldetail$block=="Bagicha")], na.rm = TRUE)
Table6$Bagicha[2]<- sum(calldetail$total_wts[(calldetail$Party=="BJP")&(calldetail$block=="Bagicha")], na.rm = TRUE)
Table6$Bagicha[3]<- sum(calldetail$total_wts[(calldetail$Party=="Congress")&(calldetail$block=="Bagicha")], na.rm = TRUE)
Table6$Bagicha[4]<- sum(calldetail$total_wts[((calldetail$Party=="BSP")|(calldetail$Party=="JCC"))&(calldetail$block=="Bagicha")], na.rm = TRUE)
Table6$Bagicha[5]<- sum(calldetail$total_wts[(calldetail$Party!="BJP")&(calldetail$Party!="Congress")&(calldetail$Party!="JCC")&(calldetail$Party!="BSP")&(calldetail$Party!="NoAnswer")&(calldetail$Party!="Undecided")&(calldetail$block=="Bagicha")], na.rm = TRUE)

#Party_Count_Jashpur
Table6$Jashpur[1]<- sum(calldetail$total_wts[((calldetail$Party!="NoAnswer")|(calldetail$Party!="Undecided"))&(calldetail$block=="Jashpur")], na.rm = TRUE)
Table6$Jashpur[2]<- sum(calldetail$total_wts[(calldetail$Party=="BJP")&(calldetail$block=="Jashpur")], na.rm = TRUE)
Table6$Jashpur[3]<- sum(calldetail$total_wts[(calldetail$Party=="Congress")&(calldetail$block=="Jashpur")], na.rm = TRUE)
Table6$Jashpur[4]<- sum(calldetail$total_wts[((calldetail$Party=="BSP")|(calldetail$Party=="JCC"))&(calldetail$block=="Jashpur")], na.rm = TRUE)
Table6$Jashpur[5]<- sum(calldetail$total_wts[(calldetail$Party!="BJP")&(calldetail$Party!="Congress")&(calldetail$Party!="JCC")&(calldetail$Party!="BSP")&(calldetail$Party!="NoAnswer")&(calldetail$Party!="Undecided")&(calldetail$block=="Jashpur")], na.rm = TRUE)

#Party_Count_Duldula
Table6$Duldula[1]<- sum(calldetail$total_wts[((calldetail$Party!="NoAnswer")|(calldetail$Party!="Undecided"))&(calldetail$block=="Duldula")], na.rm = TRUE)
Table6$Duldula[2]<- sum(calldetail$total_wts[(calldetail$Party=="BJP")&(calldetail$block=="Duldula")], na.rm = TRUE)
Table6$Duldula[3]<- sum(calldetail$total_wts[(calldetail$Party=="Congress")&(calldetail$block=="Duldula")], na.rm = TRUE)
Table6$Duldula[4]<- sum(calldetail$total_wts[((calldetail$Party=="BSP")|(calldetail$Party=="JCC"))&(calldetail$block=="Duldula")], na.rm = TRUE)
Table6$Duldula[5]<- sum(calldetail$total_wts[(calldetail$Party!="BJP")&(calldetail$Party!="Congress")&(calldetail$Party!="JCC")&(calldetail$Party!="BSP")&(calldetail$Party!="NoAnswer")&(calldetail$Party!="Undecided")&(calldetail$block=="Duldula")], na.rm = TRUE)

#Party_Count_Kansabel
Table6$Kansabel[1]<- sum(calldetail$total_wts[((calldetail$Party!="NoAnswer")|(calldetail$Party!="Undecided"))&(calldetail$block=="Kansabel")], na.rm = TRUE)
Table6$Kansabel[2]<- sum(calldetail$total_wts[(calldetail$Party=="BJP")&(calldetail$block=="Kansabel")], na.rm = TRUE)
Table6$Kansabel[3]<- sum(calldetail$total_wts[(calldetail$Party=="Congress")&(calldetail$block=="Kansabel")], na.rm = TRUE)
Table6$Kansabel[4]<- sum(calldetail$total_wts[((calldetail$Party=="BSP")|(calldetail$Party=="JCC"))&(calldetail$block=="Kansabel")], na.rm = TRUE)
Table6$Kansabel[5]<- sum(calldetail$total_wts[(calldetail$Party!="BJP")&(calldetail$Party!="Congress")&(calldetail$Party!="JCC")&(calldetail$Party!="BSP")&(calldetail$Party!="NoAnswer")&(calldetail$Party!="Undecided")&(calldetail$block=="Kansabel")], na.rm = TRUE)

#Party_Count_Kunkuri
Table6$Kunkuri[1]<- sum(calldetail$total_wts[((calldetail$Party!="NoAnswer")|(calldetail$Party!="Undecided"))&(calldetail$block=="Kunkuri")], na.rm = TRUE)
Table6$Kunkuri[2]<- sum(calldetail$total_wts[(calldetail$Party=="BJP")&(calldetail$block=="Kunkuri")], na.rm = TRUE)
Table6$Kunkuri[3]<- sum(calldetail$total_wts[(calldetail$Party=="Congress")&(calldetail$block=="Kunkuri")], na.rm = TRUE)
Table6$Kunkuri[4]<- sum(calldetail$total_wts[((calldetail$Party=="BSP")|(calldetail$Party=="JCC"))&(calldetail$block=="Kunkuri")], na.rm = TRUE)
Table6$Kunkuri[5]<- sum(calldetail$total_wts[(calldetail$Party!="BJP")&(calldetail$Party!="Congress")&(calldetail$Party!="JCC")&(calldetail$Party!="BSP")&(calldetail$Party!="NoAnswer")&(calldetail$Party!="Undecided")&(calldetail$block=="Kunkuri")], na.rm = TRUE)

#Party_Count_Manora
Table6$Manora[1]<- sum(calldetail$total_wts[((calldetail$Party!="NoAnswer")|(calldetail$Party!="Undecided"))&(calldetail$block=="Manora")], na.rm = TRUE)
Table6$Manora[2]<- sum(calldetail$total_wts[(calldetail$Party=="BJP")&(calldetail$block=="Manora")], na.rm = TRUE)
Table6$Manora[3]<- sum(calldetail$total_wts[(calldetail$Party=="Congress")&(calldetail$block=="Manora")], na.rm = TRUE)
Table6$Manora[4]<- sum(calldetail$total_wts[((calldetail$Party=="BSP")|(calldetail$Party=="JCC"))&(calldetail$block=="Manora")], na.rm = TRUE)
Table6$Manora[5]<- sum(calldetail$total_wts[(calldetail$Party!="BJP")&(calldetail$Party!="Congress")&(calldetail$Party!="JCC")&(calldetail$Party!="BSP")&(calldetail$Party!="NoAnswer")&(calldetail$Party!="Undecided")&(calldetail$block=="Manora")], na.rm = TRUE)

#Party_Count_Pathalgaon
Table6$Pathalgaon[1]<- sum(calldetail$total_wts[((calldetail$Party!="NoAnswer")|(calldetail$Party!="Undecided"))&(calldetail$block=="Pathalgaon")], na.rm = TRUE)
Table6$Pathalgaon[2]<- sum(calldetail$total_wts[(calldetail$Party=="BJP")&(calldetail$block=="Pathalgaon")], na.rm = TRUE)
Table6$Pathalgaon[3]<- sum(calldetail$total_wts[(calldetail$Party=="Congress")&(calldetail$block=="Pathalgaon")], na.rm = TRUE)
Table6$Pathalgaon[4]<- sum(calldetail$total_wts[((calldetail$Party=="BSP")|(calldetail$Party=="JCC"))&(calldetail$block=="Pathalgaon")], na.rm = TRUE)
Table6$Pathalgaon[5]<- sum(calldetail$total_wts[(calldetail$Party!="BJP")&(calldetail$Party!="Congress")&(calldetail$Party!="JCC")&(calldetail$Party!="BSP")&(calldetail$Party!="NoAnswer")&(calldetail$Party!="Undecided")&(calldetail$block=="Pathalgaon")], na.rm = TRUE)

#Party_Count_Parsabahar
Table6$Parsabahar[1]<- sum(calldetail$total_wts[((calldetail$Party!="NoAnswer")|(calldetail$Party!="Undecided"))&(calldetail$block=="Parsabahar")], na.rm = TRUE)
Table6$Parsabahar[2]<- sum(calldetail$total_wts[(calldetail$Party=="BJP")&(calldetail$block=="Parsabahar")], na.rm = TRUE)
Table6$Parsabahar[3]<- sum(calldetail$total_wts[(calldetail$Party=="Congress")&(calldetail$block=="Parsabahar")], na.rm = TRUE)
Table6$Parsabahar[4]<- sum(calldetail$total_wts[((calldetail$Party=="BSP")|(calldetail$Party=="JCC"))&(calldetail$block=="Parsabahar")], na.rm = TRUE)
Table6$Parsabahar[5]<- sum(calldetail$total_wts[(calldetail$Party!="BJP")&(calldetail$Party!="Congress")&(calldetail$Party!="JCC")&(calldetail$Party!="BSP")&(calldetail$Party!="NoAnswer")&(calldetail$Party!="Undecided")&(calldetail$block=="Parsabahar")], na.rm = TRUE)


#Table7:Judev_biggest_leader
Table7<- matrix(NA, nrow = 4, ncol = 2)
rownames(Table7)<- c("Base", "Yes", "No", "Don't_Know")
colnames(Table7)<- c("Count", "Percent")
Table7<- as.data.frame(Table7)

Table7$Count[1]<- sum(calldetail$total_wts[calldetail$q21!="Missing"], na.rm = TRUE) 
Table7$Count[2]<- sum(calldetail$total_wts[calldetail$q21=="Yes"], na.rm = TRUE) 
Table7$Count[3]<- sum(calldetail$total_wts[calldetail$q21=="No"], na.rm = TRUE) 
Table7$Count[4]<- sum(calldetail$total_wts[calldetail$q21=="Don't_Know"], na.rm = TRUE) 

Table7$Percent[1]<- 100
Table7$Percent[2]<- round(100*Table7$Count[2]/Table7$Count[1],2) 
Table7$Percent[3]<- round(100*Table7$Count[3]/Table7$Count[1],2) 
Table7$Percent[4]<- round(100*Table7$Count[4]/Table7$Count[1],2) 



Sample<- rbind(Age_wt, catid_wt, iscity_wt)
write.csv(Sample, "Sample_distribution.csv")
write.csv(Table1, "Jashpur_royal_family_down.csv")
write.csv(Table2, "Judev_death.csv")
write.csv(Table3, "Successor.csv")
write.csv(Table4, "PPS_performance.csv")
write.csv(Table5, "Jashpur_leader.csv")
write.csv(Table6, "Party_Affiliation.csv")
write.csv(Table7, "Judev_leader.csv")

