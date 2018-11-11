
CD_case$Division[i]<-

#Samples
#Gender
Gender_cnt<- count(CD_case, "gender")
Gender_cnt$perc<-round( Gender_cnt$freq/sum(Gender_cnt$freq, na.rm = TRUE) ,4)

#Rural-Urban
Iscity_cnt<- count(CD_case, "iscity")
Iscity_cnt$perc<-round( Iscity_cnt$freq/sum(Iscity_cnt$freq, na.rm = TRUE) ,4)

#Caste
Caste_cnt<- count(CD_case, "caste")

#Sambhag
Sambhag_cnt<- count(CD_case, "Division")

#Age-grouping
CD_case$age[(CD_case$age>17)&(CD_case$age<25)]<-"18-24"
CD_case$age[(CD_case$age>24)&(CD_case$age<30)]<-"25-29"
CD_case$age[(CD_case$age>29)&(CD_case$age<40)]<-"30-39"
CD_case$age[(CD_case$age>39)&(CD_case$age<50)]<-"40-49"
CD_case$age[(CD_case$age>49)&(CD_case$age<60)]<-"50-59"
CD_case$age[CD_case$age>59]<-"60+"
CD_case$age[CD_case$age=="0"]<-"Missing"

Age_wt<-matrix(data = NA, nrow = 7, ncol = 3)
dimnames(Age_wt) = list( c("18-24", "25-29", "30-39", "40-49", "50-59", "60+", "Missing_age"),c("Pop_perc", "Sample_perc", "weights"))
#Age_wt<-as.data.frame(Age_wt)
#Age_wt$Sample_perc<- Age_wt$Sample_count/sum(Age_wt$Sample_count)

#Age wise distribution in Sample space
Age_Count<-count(CD_case,"age")
Age_Count$perc<-round( Age_Count$freq/sum(Age_Count$freq, na.rm = TRUE) ,4)

catid_wt<-matrix(data = NA, nrow = 6, ncol = 3)
dimnames(catid_wt) = list( c("gen_OBC", "SC", "ST", "Muslim","Christianity", "Missing"),c("Pop_perc", "Sample_perc", "weights"))
catid_wt<-as.data.frame(catid_wt)
CD_case$catid[CD_case$religion=="Islam"]<-"Islam"
CD_case$catid[CD_case$religion=="Christianity"]<-"Christianity"

#Rel_wt$Sample_perc<- Rel_wt$Sample_count/sum(Rel_wt$Sample_count)
#Rel_wt$weights<-Rel_wt$Pop_perc/Rel_wt$Sample_perc
catid_Count<-count(CD_case,"catid")
catid_Count$perc<-round( catid_Count$freq/sum(catid_Count$freq, na.rm = TRUE) ,4)
#Rel_Count$perc<-round( Rel_Count$freq/sum(Rel_Count$freq, na.rm = TRUE) ,4)


#Result_1: truePerson
Result_1<-matrix(NA, nrow = 5, ncol = 10)
colnames(Result_1)<-c("Overall", "Rural", "Urban", "Political_high","Political_middle", "Political_low","No_Politics","Congress","BJP","Other")
rownames(Result_1)<-c("Bhupesh", "Moonat", "Dont_Know","Court_Decision", "Other")

#Overall
Result_1<-as.data.frame(Result_1)
X<- count(CD_case,"truePerson")
Result_1$Overall[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_1$Overall[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_1$Overall[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_1$Overall[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_1$Overall[5]<-X$freq[X$truePerson=="Other"]

#Rural
Y<- CD_case[(CD_case$iscity=="Rural"),]
X<- count(Y,"truePerson")
Result_1$Rural[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_1$Rural[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_1$Rural[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_1$Rural[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_1$Rural[5]<-X$freq[X$truePerson=="Other"]

#Urban
Y<- CD_case[(CD_case$iscity=="Urban"),]
X<- count(Y,"truePerson")
Result_1$Urban[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_1$Urban[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_1$Urban[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_1$Urban[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_1$Urban[5]<-X$freq[X$truePerson=="Other"]

#Politically_High
Y<- CD_case[(CD_case$interestP=="Quite_often"),]
X<- count(Y,"truePerson")
Result_1$Political_high[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_1$Political_high[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_1$Political_high[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_1$Political_high[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_1$Political_high[5]<-X$freq[X$truePerson=="Other"]

#Politically_middle
Y<- CD_case[(CD_case$interestP=="Little_bit"),]
X<- count(Y,"truePerson")
Result_1$Political_middle[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_1$Political_middle[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_1$Political_middle[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_1$Political_middle[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_1$Political_middle[5]<-X$freq[X$truePerson=="Other"]

#Politically_low
Y<- CD_case[(CD_case$interestP=="Sometime"),]
X<- count(Y,"truePerson")
Result_1$Political_low[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_1$Political_low[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_1$Political_low[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_1$Political_low[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_1$Political_low[5]<-X$freq[X$truePerson=="Other"]

#Politically_low
Y<- CD_case[(CD_case$interestP=="Never"),]
X<- count(Y,"truePerson")
Result_1$No_Politics[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_1$No_Politics[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_1$No_Politics[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_1$No_Politics[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_1$No_Politics[5]<-X$freq[X$truePerson=="Other"]

#Congress
Y<- CD_case[(CD_case$party=="Congress"),]
X<- count(Y,"truePerson")
Result_1$Congress[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_1$Congress[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_1$Congress[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_1$Congress[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_1$Congress[5]<-X$freq[X$truePerson=="Other"]

#BJP
Y<- CD_case[(CD_case$party=="BJP"),]
X<- count(Y,"truePerson")
Result_1$BJP[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_1$BJP[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_1$BJP[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_1$BJP[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_1$BJP[5]<-X$freq[X$truePerson=="Other"]

#Other
Y<- CD_case[((CD_case$party!="BJP")&(CD_case$party!="Congress")),]
X<- count(Y,"truePerson")
Result_1$Other[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_1$Other[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_1$Other[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_1$Other[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_1$Other[5]<-X$freq[X$truePerson=="Other"]


#%Result_1
Result_1_perc<-matrix(NA, nrow = 5, ncol = 10)
colnames(Result_1_perc)<-c("Overall", "Rural", "Urban", "Political_high","Political_middle", "Political_low","No_Politics","Congress","BJP","Other")
rownames(Result_1_perc)<-c("Bhupesh", "Moonat", "Dont_Know","Court_Decision", "Other")
Result_1_perc<- as.data.frame(Result_1_perc)

Result_1_perc$Overall<-round( Result_1$Overall/sum(Result_1$Overall, na.rm = TRUE) ,4)
Result_1_perc$Rural<-round( Result_1$Rural/sum(Result_1$Rural, na.rm = TRUE) ,4)
Result_1_perc$Urban<-round( Result_1$Urban/sum(Result_1$Urban, na.rm = TRUE) ,4)
Result_1_perc$Political_high<-round( Result_1$Political_high/sum(Result_1$Political_high, na.rm = TRUE) ,4)
Result_1_perc$Political_middle<-round( Result_1$Political_middle/sum(Result_1$Political_middle, na.rm = TRUE) ,4)
Result_1_perc$Political_low<-round( Result_1$Political_low/sum(Result_1$Political_low, na.rm = TRUE) ,4)
Result_1_perc$No_Politics<-round( Result_1$No_Politics/sum(Result_1$No_Politics, na.rm = TRUE) ,4)
Result_1_perc$Congress<-round( Result_1$Congress/sum(Result_1$Congress, na.rm = TRUE) ,4)
Result_1_perc$BJP<-round( Result_1$BJP/sum(Result_1$BJP, na.rm = TRUE) ,4)
Result_1_perc$Other<-round( Result_1$Other/sum(Result_1$Other, na.rm = TRUE) ,4)

#Result_2: Image
Result_2<-matrix(NA, nrow = 6, ncol = 10)
colnames(Result_2)<-c("Overall", "Rural", "Urban", "Political_high","Political_middle", "Political_low","No_Politics","Congress","BJP","Other")
rownames(Result_2)<-c("CM_Candidate", "Chg_congress_tallest_leader", "Krantikari_Neta","Worsen_his_image", "Other","Dont_know")

#Overall
Result_2<-as.data.frame(Result_2)
X<- count(CD_case,"impactOnImg")
Result_2$Overall[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_2$Overall[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_2$Overall[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_2$Overall[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_2$Overall[5]<-X$freq[X$impactOnImg=="Other"]
Result_2$Overall[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Rural
Y<- CD_case[(CD_case$iscity=="Rural"),]
X<- count(Y,"impactOnImg")
Result_2$Rural[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_2$Rural[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_2$Rural[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_2$Rural[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_2$Rural[5]<-X$freq[X$impactOnImg=="Other"]
Result_2$Rural[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Urban
Y<- CD_case[(CD_case$iscity=="Urban"),]
X<- count(Y,"impactOnImg")
Result_2$Urban[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_2$Urban[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_2$Urban[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_2$Urban[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_2$Urban[5]<-X$freq[X$impactOnImg=="Other"]
Result_2$Urban[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Politically_High
Y<- CD_case[(CD_case$interestP=="Quite_often"),]
X<- count(Y,"impactOnImg")
Result_2$Political_high[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_2$Political_high[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_2$Political_high[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_2$Political_high[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_2$Political_high[5]<-X$freq[X$impactOnImg=="Other"]
Result_2$Political_high[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Politically_middle
Y<- CD_case[(CD_case$interestP=="Little_bit"),]
X<- count(Y,"impactOnImg")
Result_2$Political_middle[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_2$Political_middle[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_2$Political_middle[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_2$Political_middle[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_2$Political_middle[5]<-X$freq[X$impactOnImg=="Other"]
Result_2$Political_middle[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Politically_low
Y<- CD_case[(CD_case$interestP=="Sometime"),]
X<- count(Y,"impactOnImg")
Result_2$Political_low[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_2$Political_low[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_2$Political_low[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_2$Political_low[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_2$Political_low[5]<-X$freq[X$impactOnImg=="Other"]
Result_2$Political_low[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Politically_low
Y<- CD_case[(CD_case$interestP=="Never"),]
X<- count(Y,"impactOnImg")
Result_2$No_Politics[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_2$No_Politics[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_2$No_Politics[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_2$No_Politics[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_2$No_Politics[5]<-X$freq[X$impactOnImg=="Other"]
Result_2$No_Politics[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Congress
Y<- CD_case[(CD_case$party=="Congress"),]
X<- count(Y,"impactOnImg")
Result_2$Congress[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_2$Congress[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_2$Congress[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_2$Congress[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_2$Congress[5]<-X$freq[X$impactOnImg=="Other"]
Result_2$Congress[6]<-X$freq[X$impactOnImg=="Dont_know"]

#BJP
Y<- CD_case[(CD_case$party=="BJP"),]
X<- count(Y,"impactOnImg")
Result_2$BJP[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_2$BJP[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_2$BJP[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_2$BJP[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_2$BJP[5]<-X$freq[X$impactOnImg=="Other"]
Result_2$BJP[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Other
Y<- CD_case[((CD_case$party!="BJP")&(CD_case$party!="Congress")),]
X<- count(Y,"impactOnImg")
Result_2$Other[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_2$Other[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_2$Other[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_2$Other[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_2$Other[5]<-X$freq[X$impactOnImg=="Other"]
Result_2$Other[6]<-X$freq[X$impactOnImg=="Dont_know"]


#%Result_2
Result_2_perc<-matrix(NA, nrow = 6, ncol = 10)
colnames(Result_2_perc)<-c("Overall", "Rural", "Urban", "Political_high","Political_middle", "Political_low","No_Politics","Congress","BJP","Other")
rownames(Result_2_perc)<-c("CM_Candidate", "Chg_congress_tallest_leader", "Krantikari_Neta","Worsen_his_image", "Other","Dont_know")
Result_2_perc<- as.data.frame(Result_2_perc)

Result_2_perc$Overall<-round( Result_2$Overall/sum(Result_2$Overall, na.rm = TRUE) ,4)
Result_2_perc$Rural<-round( Result_2$Rural/sum(Result_2$Rural, na.rm = TRUE) ,4)
Result_2_perc$Urban<-round( Result_2$Urban/sum(Result_2$Urban, na.rm = TRUE) ,4)
Result_2_perc$Political_high<-round( Result_2$Political_high/sum(Result_2$Political_high, na.rm = TRUE) ,4)
Result_2_perc$Political_middle<-round( Result_2$Political_middle/sum(Result_2$Political_middle, na.rm = TRUE) ,4)
Result_2_perc$Political_low<-round( Result_2$Political_low/sum(Result_2$Political_low, na.rm = TRUE) ,4)
Result_2_perc$No_Politics<-round( Result_2$No_Politics/sum(Result_2$No_Politics, na.rm = TRUE) ,4)
Result_2_perc$Congress<-round( Result_2$Congress/sum(Result_2$Congress, na.rm = TRUE) ,4)
Result_2_perc$BJP<-round( Result_2$BJP/sum(Result_2$BJP, na.rm = TRUE) ,4)
Result_2_perc$Other<-round( Result_2$Other/sum(Result_2$Other, na.rm = TRUE) ,4)

# Sambhag_wise_results
for (i in 1:dim(CD_case)[1]) {
  CD_case$Division[i]<-Dis_Div$Division[Dis_Div$District==CD_case$district[i]]
}

#Raipur_Sambhag
#Result_11: truePerson
Result_11<-matrix(NA, nrow = 5, ncol = 10)
colnames(Result_11)<-c("Overall", "Rural", "Urban", "Political_high","Political_middle", "Political_low","No_Politics","Congress","BJP","Other")
rownames(Result_11)<-c("Bhupesh", "Moonat", "Dont_Know","Court_Decision", "Other")
CD_case_Raipur<- CD_case[(CD_case$Division=="Raipur"),]

#Overall
Result_11<-as.data.frame(Result_11)
X<- count(CD_case_Raipur,"truePerson")
Result_11$Overall[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_11$Overall[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_11$Overall[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_11$Overall[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_11$Overall[5]<-X$freq[X$truePerson=="Other"]

#Rural
Y<- CD_case_Raipur[(CD_case_Raipur$iscity=="Rural"),]
X<- count(Y,"truePerson")
Result_11$Rural[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_11$Rural[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_11$Rural[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_11$Rural[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_11$Rural[5]<-X$freq[X$truePerson=="Other"]

#Urban
Y<- CD_case_Raipur[(CD_case_Raipur$iscity=="Urban"),]
X<- count(Y,"truePerson")
Result_11$Urban[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_11$Urban[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_11$Urban[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_11$Urban[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_11$Urban[5]<-X$freq[X$truePerson=="Other"]

#Politically_High
Y<- CD_case_Raipur[(CD_case_Raipur$interestP=="Quite_often"),]
X<- count(Y,"truePerson")
Result_11$Political_high[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_11$Political_high[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_11$Political_high[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_11$Political_high[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_11$Political_high[5]<-X$freq[X$truePerson=="Other"]

#Politically_middle
Y<- CD_case_Raipur[(CD_case_Raipur$interestP=="Little_bit"),]
X<- count(Y,"truePerson")
Result_11$Political_middle[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_11$Political_middle[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_11$Political_middle[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_11$Political_middle[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_11$Political_middle[5]<-X$freq[X$truePerson=="Other"]

#Politically_low
Y<- CD_case_Raipur[(CD_case_Raipur$interestP=="Sometime"),]
X<- count(Y,"truePerson")
Result_11$Political_low[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_11$Political_low[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_11$Political_low[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_11$Political_low[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_11$Political_low[5]<-X$freq[X$truePerson=="Other"]

#Politically_low
Y<- CD_case_Raipur[(CD_case_Raipur$interestP=="Never"),]
X<- count(Y,"truePerson")
Result_11$No_Politics[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_11$No_Politics[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_11$No_Politics[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_11$No_Politics[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_11$No_Politics[5]<-X$freq[X$truePerson=="Other"]

#Congress
Y<- CD_case_Raipur[(CD_case_Raipur$party=="Congress"),]
X<- count(Y,"truePerson")
Result_11$Congress[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_11$Congress[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_11$Congress[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_11$Congress[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_11$Congress[5]<-X$freq[X$truePerson=="Other"]

#BJP
Y<- CD_case_Raipur[(CD_case_Raipur$party=="BJP"),]
X<- count(Y,"truePerson")
Result_11$BJP[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_11$BJP[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_11$BJP[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_11$BJP[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_11$BJP[5]<-X$freq[X$truePerson=="Other"]

#Other
Y<- CD_case_Raipur[((CD_case_Raipur$party!="BJP")&(CD_case_Raipur$party!="Congress")),]
X<- count(Y,"truePerson")
Result_11$Other[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_11$Other[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_11$Other[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_11$Other[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_11$Other[5]<-X$freq[X$truePerson=="Other"]


#%Result_11
Result_11_perc<-matrix(NA, nrow = 5, ncol = 10)
colnames(Result_11_perc)<-c("Overall", "Rural", "Urban", "Political_high","Political_middle", "Political_low","No_Politics","Congress","BJP","Other")
rownames(Result_11_perc)<-c("Bhupesh", "Moonat", "Dont_Know","Court_Decision", "Other")
Result_11_perc<- as.data.frame(Result_11_perc)

Result_11_perc$Overall<-round( Result_11$Overall/sum(Result_11$Overall, na.rm = TRUE) ,4)
Result_11_perc$Rural<-round( Result_11$Rural/sum(Result_11$Rural, na.rm = TRUE) ,4)
Result_11_perc$Urban<-round( Result_11$Urban/sum(Result_11$Urban, na.rm = TRUE) ,4)
Result_11_perc$Political_high<-round( Result_11$Political_high/sum(Result_11$Political_high, na.rm = TRUE) ,4)
Result_11_perc$Political_middle<-round( Result_11$Political_middle/sum(Result_11$Political_middle, na.rm = TRUE) ,4)
Result_11_perc$Political_low<-round( Result_11$Political_low/sum(Result_11$Political_low, na.rm = TRUE) ,4)
Result_11_perc$No_Politics<-round( Result_11$No_Politics/sum(Result_11$No_Politics, na.rm = TRUE) ,4)
Result_11_perc$Congress<-round( Result_11$Congress/sum(Result_11$Congress, na.rm = TRUE) ,4)
Result_11_perc$BJP<-round( Result_11$BJP/sum(Result_11$BJP, na.rm = TRUE) ,4)
Result_11_perc$Other<-round( Result_11$Other/sum(Result_11$Other, na.rm = TRUE) ,4)

#Result_21: Image
Result_21<-matrix(NA, nrow = 6, ncol = 10)
colnames(Result_21)<-c("Overall", "Rural", "Urban", "Political_high","Political_middle", "Political_low","No_Politics","Congress","BJP","Other")
rownames(Result_21)<-c("CM_Candidate", "Chg_congress_tallest_leader", "Krantikari_Neta","Worsen_his_image", "Other","Dont_know")

#Overall
Result_21<-as.data.frame(Result_21)
X<- count(CD_case_Raipur,"impactOnImg")
Result_21$Overall[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_21$Overall[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_21$Overall[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_21$Overall[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_21$Overall[5]<-X$freq[X$impactOnImg=="Other"]
Result_21$Overall[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Rural
Y<- CD_case_Raipur[(CD_case_Raipur$iscity=="Rural"),]
X<- count(Y,"impactOnImg")
Result_21$Rural[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_21$Rural[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_21$Rural[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_21$Rural[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_21$Rural[5]<-X$freq[X$impactOnImg=="Other"]
Result_21$Rural[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Urban
Y<- CD_case_Raipur[(CD_case_Raipur$iscity=="Urban"),]
X<- count(Y,"impactOnImg")
Result_21$Urban[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_21$Urban[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_21$Urban[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_21$Urban[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_21$Urban[5]<-X$freq[X$impactOnImg=="Other"]
Result_21$Urban[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Politically_High
Y<- CD_case_Raipur[(CD_case_Raipur$interestP=="Quite_often"),]
X<- count(Y,"impactOnImg")
Result_21$Political_high[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_21$Political_high[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_21$Political_high[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_21$Political_high[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_21$Political_high[5]<-X$freq[X$impactOnImg=="Other"]
Result_21$Political_high[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Politically_middle
Y<- CD_case_Raipur[(CD_case_Raipur$interestP=="Little_bit"),]
X<- count(Y,"impactOnImg")
Result_21$Political_middle[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_21$Political_middle[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_21$Political_middle[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_21$Political_middle[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_21$Political_middle[5]<-X$freq[X$impactOnImg=="Other"]
Result_21$Political_middle[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Politically_low
Y<- CD_case_Raipur[(CD_case_Raipur$interestP=="Sometime"),]
X<- count(Y,"impactOnImg")
Result_21$Political_low[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_21$Political_low[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_21$Political_low[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_21$Political_low[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_21$Political_low[5]<-X$freq[X$impactOnImg=="Other"]
Result_21$Political_low[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Politically_low
Y<- CD_case_Raipur[(CD_case_Raipur$interestP=="Never"),]
X<- count(Y,"impactOnImg")
Result_21$No_Politics[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_21$No_Politics[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_21$No_Politics[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_21$No_Politics[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_21$No_Politics[5]<-X$freq[X$impactOnImg=="Other"]
Result_21$No_Politics[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Congress
Y<- CD_case_Raipur[(CD_case_Raipur$party=="Congress"),]
X<- count(Y,"impactOnImg")
Result_21$Congress[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_21$Congress[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_21$Congress[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_21$Congress[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_21$Congress[5]<-X$freq[X$impactOnImg=="Other"]
Result_21$Congress[6]<-X$freq[X$impactOnImg=="Dont_know"]

#BJP
Y<- CD_case_Raipur[(CD_case_Raipur$party=="BJP"),]
X<- count(Y,"impactOnImg")
Result_21$BJP[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_21$BJP[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_21$BJP[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_21$BJP[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_21$BJP[5]<-X$freq[X$impactOnImg=="Other"]
Result_21$BJP[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Other
Y<- CD_case_Raipur[((CD_case_Raipur$party!="BJP")&(CD_case_Raipur$party!="Congress")),]
X<- count(Y,"impactOnImg")
Result_21$Other[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_21$Other[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_21$Other[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_21$Other[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_21$Other[5]<-X$freq[X$impactOnImg=="Other"]
Result_21$Other[6]<-X$freq[X$impactOnImg=="Dont_know"]


#%Result_21
Result_21_perc<-matrix(NA, nrow = 6, ncol = 10)
colnames(Result_21_perc)<-c("Overall", "Rural", "Urban", "Political_high","Political_middle", "Political_low","No_Politics","Congress","BJP","Other")
rownames(Result_21_perc)<-c("CM_Candidate", "Chg_congress_tallest_leader", "Krantikari_Neta","Worsen_his_image", "Other","Dont_know")
Result_21_perc<- as.data.frame(Result_21_perc)

Result_21_perc$Overall<-round( Result_21$Overall/sum(Result_21$Overall, na.rm = TRUE) ,4)
Result_21_perc$Rural<-round( Result_21$Rural/sum(Result_21$Rural, na.rm = TRUE) ,4)
Result_21_perc$Urban<-round( Result_21$Urban/sum(Result_21$Urban, na.rm = TRUE) ,4)
Result_21_perc$Political_high<-round( Result_21$Political_high/sum(Result_21$Political_high, na.rm = TRUE) ,4)
Result_21_perc$Political_middle<-round( Result_21$Political_middle/sum(Result_21$Political_middle, na.rm = TRUE) ,4)
Result_21_perc$Political_low<-round( Result_21$Political_low/sum(Result_21$Political_low, na.rm = TRUE) ,4)
Result_21_perc$No_Politics<-round( Result_21$No_Politics/sum(Result_21$No_Politics, na.rm = TRUE) ,4)
Result_21_perc$Congress<-round( Result_21$Congress/sum(Result_21$Congress, na.rm = TRUE) ,4)
Result_21_perc$BJP<-round( Result_21$BJP/sum(Result_21$BJP, na.rm = TRUE) ,4)
Result_21_perc$Other<-round( Result_21$Other/sum(Result_21$Other, na.rm = TRUE) ,4)

#Durg_Sambhag
#Result_12: truePerson
Result_12<-matrix(NA, nrow = 5, ncol = 10)
colnames(Result_12)<-c("Overall", "Rural", "Urban", "Political_high","Political_middle", "Political_low","No_Politics","Congress","BJP","Other")
rownames(Result_12)<-c("Bhupesh", "Moonat", "Dont_Know","Court_Decision", "Other")
CD_case_Durg<- CD_case[(CD_case$Division=="Durg"),]

#Overall
Result_12<-as.data.frame(Result_12)
X<- count(CD_case_Durg,"truePerson")
Result_12$Overall[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_12$Overall[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_12$Overall[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_12$Overall[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_12$Overall[5]<-X$freq[X$truePerson=="Other"]

#Rural
Y<- CD_case_Durg[(CD_case_Durg$iscity=="Rural"),]
X<- count(Y,"truePerson")
Result_12$Rural[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_12$Rural[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_12$Rural[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_12$Rural[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_12$Rural[5]<-X$freq[X$truePerson=="Other"]

#Urban
Y<- CD_case_Durg[(CD_case_Durg$iscity=="Urban"),]
X<- count(Y,"truePerson")
Result_12$Urban[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_12$Urban[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_12$Urban[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_12$Urban[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_12$Urban[5]<-X$freq[X$truePerson=="Other"]

#Politically_High
Y<- CD_case_Durg[(CD_case_Durg$interestP=="Quite_often"),]
X<- count(Y,"truePerson")
Result_12$Political_high[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_12$Political_high[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_12$Political_high[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_12$Political_high[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_12$Political_high[5]<-X$freq[X$truePerson=="Other"]

#Politically_middle
Y<- CD_case_Durg[(CD_case_Durg$interestP=="Little_bit"),]
X<- count(Y,"truePerson")
Result_12$Political_middle[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_12$Political_middle[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_12$Political_middle[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_12$Political_middle[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_12$Political_middle[5]<-X$freq[X$truePerson=="Other"]

#Politically_low
Y<- CD_case_Durg[(CD_case_Durg$interestP=="Sometime"),]
X<- count(Y,"truePerson")
Result_12$Political_low[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_12$Political_low[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_12$Political_low[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_12$Political_low[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_12$Political_low[5]<-X$freq[X$truePerson=="Other"]

#Politically_low
Y<- CD_case_Durg[(CD_case_Durg$interestP=="Never"),]
X<- count(Y,"truePerson")
Result_12$No_Politics[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_12$No_Politics[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_12$No_Politics[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_12$No_Politics[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_12$No_Politics[5]<-X$freq[X$truePerson=="Other"]

#Congress
Y<- CD_case_Durg[(CD_case_Durg$party=="Congress"),]
X<- count(Y,"truePerson")
Result_12$Congress[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_12$Congress[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_12$Congress[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_12$Congress[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_12$Congress[5]<-X$freq[X$truePerson=="Other"]

#BJP
Y<- CD_case_Durg[(CD_case_Durg$party=="BJP"),]
X<- count(Y,"truePerson")
Result_12$BJP[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_12$BJP[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_12$BJP[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_12$BJP[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_12$BJP[5]<-X$freq[X$truePerson=="Other"]

#Other
Y<- CD_case_Durg[((CD_case_Durg$party!="BJP")&(CD_case_Durg$party!="Congress")),]
X<- count(Y,"truePerson")
Result_12$Other[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_12$Other[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_12$Other[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_12$Other[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_12$Other[5]<-X$freq[X$truePerson=="Other"]


#%Result_12
Result_12_perc<-matrix(NA, nrow = 5, ncol = 10)
colnames(Result_12_perc)<-c("Overall", "Rural", "Urban", "Political_high","Political_middle", "Political_low","No_Politics","Congress","BJP","Other")
rownames(Result_12_perc)<-c("Bhupesh", "Moonat", "Dont_Know","Court_Decision", "Other")
Result_12_perc<- as.data.frame(Result_12_perc)

Result_12_perc$Overall<-round( Result_12$Overall/sum(Result_12$Overall, na.rm = TRUE) ,4)
Result_12_perc$Rural<-round( Result_12$Rural/sum(Result_12$Rural, na.rm = TRUE) ,4)
Result_12_perc$Urban<-round( Result_12$Urban/sum(Result_12$Urban, na.rm = TRUE) ,4)
Result_12_perc$Political_high<-round( Result_12$Political_high/sum(Result_12$Political_high, na.rm = TRUE) ,4)
Result_12_perc$Political_middle<-round( Result_12$Political_middle/sum(Result_12$Political_middle, na.rm = TRUE) ,4)
Result_12_perc$Political_low<-round( Result_12$Political_low/sum(Result_12$Political_low, na.rm = TRUE) ,4)
Result_12_perc$No_Politics<-round( Result_12$No_Politics/sum(Result_12$No_Politics, na.rm = TRUE) ,4)
Result_12_perc$Congress<-round( Result_12$Congress/sum(Result_12$Congress, na.rm = TRUE) ,4)
Result_12_perc$BJP<-round( Result_12$BJP/sum(Result_12$BJP, na.rm = TRUE) ,4)
Result_12_perc$Other<-round( Result_12$Other/sum(Result_12$Other, na.rm = TRUE) ,4)

#Result_22: Image
Result_22<-matrix(NA, nrow = 6, ncol = 10)
colnames(Result_22)<-c("Overall", "Rural", "Urban", "Political_high","Political_middle", "Political_low","No_Politics","Congress","BJP","Other")
rownames(Result_22)<-c("CM_Candidate", "Chg_congress_tallest_leader", "Krantikari_Neta","Worsen_his_image", "Other","Dont_know")

#Overall
Result_22<-as.data.frame(Result_22)
X<- count(CD_case_Durg,"impactOnImg")
Result_22$Overall[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_22$Overall[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_22$Overall[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_22$Overall[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_22$Overall[5]<-X$freq[X$impactOnImg=="Other"]
Result_22$Overall[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Rural
Y<- CD_case_Durg[(CD_case_Durg$iscity=="Rural"),]
X<- count(Y,"impactOnImg")
Result_22$Rural[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_22$Rural[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_22$Rural[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_22$Rural[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_22$Rural[5]<-X$freq[X$impactOnImg=="Other"]
Result_22$Rural[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Urban
Y<- CD_case_Durg[(CD_case_Durg$iscity=="Urban"),]
X<- count(Y,"impactOnImg")
Result_22$Urban[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_22$Urban[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_22$Urban[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_22$Urban[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_22$Urban[5]<-X$freq[X$impactOnImg=="Other"]
Result_22$Urban[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Politically_High
Y<- CD_case_Durg[(CD_case_Durg$interestP=="Quite_often"),]
X<- count(Y,"impactOnImg")
Result_22$Political_high[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_22$Political_high[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_22$Political_high[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_22$Political_high[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_22$Political_high[5]<-X$freq[X$impactOnImg=="Other"]
Result_22$Political_high[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Politically_middle
Y<- CD_case_Durg[(CD_case_Durg$interestP=="Little_bit"),]
X<- count(Y,"impactOnImg")
Result_22$Political_middle[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_22$Political_middle[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_22$Political_middle[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_22$Political_middle[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_22$Political_middle[5]<-X$freq[X$impactOnImg=="Other"]
Result_22$Political_middle[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Politically_low
Y<- CD_case_Durg[(CD_case_Durg$interestP=="Sometime"),]
X<- count(Y,"impactOnImg")
Result_22$Political_low[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_22$Political_low[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_22$Political_low[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_22$Political_low[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_22$Political_low[5]<-X$freq[X$impactOnImg=="Other"]
Result_22$Political_low[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Politically_low
Y<- CD_case_Durg[(CD_case_Durg$interestP=="Never"),]
X<- count(Y,"impactOnImg")
Result_22$No_Politics[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_22$No_Politics[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_22$No_Politics[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_22$No_Politics[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_22$No_Politics[5]<-X$freq[X$impactOnImg=="Other"]
Result_22$No_Politics[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Congress
Y<- CD_case_Durg[(CD_case_Durg$party=="Congress"),]
X<- count(Y,"impactOnImg")
Result_22$Congress[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_22$Congress[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_22$Congress[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_22$Congress[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_22$Congress[5]<-X$freq[X$impactOnImg=="Other"]
Result_22$Congress[6]<-X$freq[X$impactOnImg=="Dont_know"]

#BJP
Y<- CD_case_Durg[(CD_case_Durg$party=="BJP"),]
X<- count(Y,"impactOnImg")
Result_22$BJP[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_22$BJP[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_22$BJP[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_22$BJP[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_22$BJP[5]<-X$freq[X$impactOnImg=="Other"]
Result_22$BJP[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Other
Y<- CD_case_Durg[((CD_case_Durg$party!="BJP")&(CD_case_Durg$party!="Congress")),]
X<- count(Y,"impactOnImg")
Result_22$Other[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_22$Other[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_22$Other[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_22$Other[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_22$Other[5]<-X$freq[X$impactOnImg=="Other"]
Result_22$Other[6]<-X$freq[X$impactOnImg=="Dont_know"]


#%Result_22
Result_22_perc<-matrix(NA, nrow = 6, ncol = 10)
colnames(Result_22_perc)<-c("Overall", "Rural", "Urban", "Political_high","Political_middle", "Political_low","No_Politics","Congress","BJP","Other")
rownames(Result_22_perc)<-c("CM_Candidate", "Chg_congress_tallest_leader", "Krantikari_Neta","Worsen_his_image", "Other","Dont_know")
Result_22_perc<- as.data.frame(Result_22_perc)

Result_22_perc$Overall<-round( Result_22$Overall/sum(Result_22$Overall, na.rm = TRUE) ,4)
Result_22_perc$Rural<-round( Result_22$Rural/sum(Result_22$Rural, na.rm = TRUE) ,4)
Result_22_perc$Urban<-round( Result_22$Urban/sum(Result_22$Urban, na.rm = TRUE) ,4)
Result_22_perc$Political_high<-round( Result_22$Political_high/sum(Result_22$Political_high, na.rm = TRUE) ,4)
Result_22_perc$Political_middle<-round( Result_22$Political_middle/sum(Result_22$Political_middle, na.rm = TRUE) ,4)
Result_22_perc$Political_low<-round( Result_22$Political_low/sum(Result_22$Political_low, na.rm = TRUE) ,4)
Result_22_perc$No_Politics<-round( Result_22$No_Politics/sum(Result_22$No_Politics, na.rm = TRUE) ,4)
Result_22_perc$Congress<-round( Result_22$Congress/sum(Result_22$Congress, na.rm = TRUE) ,4)
Result_22_perc$BJP<-round( Result_22$BJP/sum(Result_22$BJP, na.rm = TRUE) ,4)
Result_22_perc$Other<-round( Result_22$Other/sum(Result_22$Other, na.rm = TRUE) ,4)

#Bilaspur_Sambhag
#Result_13: truePerson
Result_13<-matrix(NA, nrow = 5, ncol = 10)
colnames(Result_13)<-c("Overall", "Rural", "Urban", "Political_high","Political_middle", "Political_low","No_Politics","Congress","BJP","Other")
rownames(Result_13)<-c("Bhupesh", "Moonat", "Dont_Know","Court_Decision", "Other")
CD_case_Bilaspur<- CD_case[(CD_case$Division=="Bilaspur"),]

#Overall
Result_13<-as.data.frame(Result_13)
X<- count(CD_case_Bilaspur,"truePerson")
Result_13$Overall[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_13$Overall[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_13$Overall[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_13$Overall[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_13$Overall[5]<-X$freq[X$truePerson=="Other"]

#Rural
Y<- CD_case_Bilaspur[(CD_case_Bilaspur$iscity=="Rural"),]
X<- count(Y,"truePerson")
Result_13$Rural[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_13$Rural[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_13$Rural[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_13$Rural[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_13$Rural[5]<-X$freq[X$truePerson=="Other"]

#Urban
Y<- CD_case_Bilaspur[(CD_case_Bilaspur$iscity=="Urban"),]
X<- count(Y,"truePerson")
Result_13$Urban[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_13$Urban[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_13$Urban[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_13$Urban[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_13$Urban[5]<-X$freq[X$truePerson=="Other"]

#Politically_High
Y<- CD_case_Bilaspur[(CD_case_Bilaspur$interestP=="Quite_often"),]
X<- count(Y,"truePerson")
Result_13$Political_high[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_13$Political_high[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_13$Political_high[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_13$Political_high[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_13$Political_high[5]<-X$freq[X$truePerson=="Other"]

#Politically_middle
Y<- CD_case_Bilaspur[(CD_case_Bilaspur$interestP=="Little_bit"),]
X<- count(Y,"truePerson")
Result_13$Political_middle[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_13$Political_middle[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_13$Political_middle[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_13$Political_middle[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_13$Political_middle[5]<-X$freq[X$truePerson=="Other"]

#Politically_low
Y<- CD_case_Bilaspur[(CD_case_Bilaspur$interestP=="Sometime"),]
X<- count(Y,"truePerson")
Result_13$Political_low[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_13$Political_low[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_13$Political_low[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_13$Political_low[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_13$Political_low[5]<-X$freq[X$truePerson=="Other"]

#Politically_low
Y<- CD_case_Bilaspur[(CD_case_Bilaspur$interestP=="Never"),]
X<- count(Y,"truePerson")
Result_13$No_Politics[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_13$No_Politics[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_13$No_Politics[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_13$No_Politics[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_13$No_Politics[5]<-X$freq[X$truePerson=="Other"]

#Congress
Y<- CD_case_Bilaspur[(CD_case_Bilaspur$party=="Congress"),]
X<- count(Y,"truePerson")
Result_13$Congress[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_13$Congress[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_13$Congress[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_13$Congress[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_13$Congress[5]<-X$freq[X$truePerson=="Other"]

#BJP
Y<- CD_case_Bilaspur[(CD_case_Bilaspur$party=="BJP"),]
X<- count(Y,"truePerson")
Result_13$BJP[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_13$BJP[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_13$BJP[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_13$BJP[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_13$BJP[5]<-X$freq[X$truePerson=="Other"]

#Other
Y<- CD_case_Bilaspur[((CD_case_Bilaspur$party!="BJP")&(CD_case_Bilaspur$party!="Congress")),]
X<- count(Y,"truePerson")
Result_13$Other[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_13$Other[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_13$Other[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_13$Other[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_13$Other[5]<-X$freq[X$truePerson=="Other"]


#%Result_13
Result_13_perc<-matrix(NA, nrow = 5, ncol = 10)
colnames(Result_13_perc)<-c("Overall", "Rural", "Urban", "Political_high","Political_middle", "Political_low","No_Politics","Congress","BJP","Other")
rownames(Result_13_perc)<-c("Bhupesh", "Moonat", "Dont_Know","Court_Decision", "Other")
Result_13_perc<- as.data.frame(Result_13_perc)

Result_13_perc$Overall<-round( Result_13$Overall/sum(Result_13$Overall, na.rm = TRUE) ,4)
Result_13_perc$Rural<-round( Result_13$Rural/sum(Result_13$Rural, na.rm = TRUE) ,4)
Result_13_perc$Urban<-round( Result_13$Urban/sum(Result_13$Urban, na.rm = TRUE) ,4)
Result_13_perc$Political_high<-round( Result_13$Political_high/sum(Result_13$Political_high, na.rm = TRUE) ,4)
Result_13_perc$Political_middle<-round( Result_13$Political_middle/sum(Result_13$Political_middle, na.rm = TRUE) ,4)
Result_13_perc$Political_low<-round( Result_13$Political_low/sum(Result_13$Political_low, na.rm = TRUE) ,4)
Result_13_perc$No_Politics<-round( Result_13$No_Politics/sum(Result_13$No_Politics, na.rm = TRUE) ,4)
Result_13_perc$Congress<-round( Result_13$Congress/sum(Result_13$Congress, na.rm = TRUE) ,4)
Result_13_perc$BJP<-round( Result_13$BJP/sum(Result_13$BJP, na.rm = TRUE) ,4)
Result_13_perc$Other<-round( Result_13$Other/sum(Result_13$Other, na.rm = TRUE) ,4)

#Result_4: Image
Result_23<-matrix(NA, nrow = 6, ncol = 10)
colnames(Result_23)<-c("Overall", "Rural", "Urban", "Political_high","Political_middle", "Political_low","No_Politics","Congress","BJP","Other")
rownames(Result_23)<-c("CM_Candidate", "Chg_congress_tallest_leader", "Krantikari_Neta","Worsen_his_image", "Other","Dont_know")

#Overall
Result_23<-as.data.frame(Result_23)
X<- count(CD_case_Bilaspur,"impactOnImg")
Result_23$Overall[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_23$Overall[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_23$Overall[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_23$Overall[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_23$Overall[5]<-X$freq[X$impactOnImg=="Other"]
Result_23$Overall[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Rural
Y<- CD_case_Bilaspur[(CD_case_Bilaspur$iscity=="Rural"),]
X<- count(Y,"impactOnImg")
Result_23$Rural[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_23$Rural[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_23$Rural[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_23$Rural[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_23$Rural[5]<-X$freq[X$impactOnImg=="Other"]
Result_23$Rural[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Urban
Y<- CD_case_Bilaspur[(CD_case_Bilaspur$iscity=="Urban"),]
X<- count(Y,"impactOnImg")
Result_23$Urban[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_23$Urban[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_23$Urban[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_23$Urban[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_23$Urban[5]<-X$freq[X$impactOnImg=="Other"]
Result_23$Urban[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Politically_High
Y<- CD_case_Bilaspur[(CD_case_Bilaspur$interestP=="Quite_often"),]
X<- count(Y,"impactOnImg")
Result_23$Political_high[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_23$Political_high[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_23$Political_high[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_23$Political_high[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_23$Political_high[5]<-X$freq[X$impactOnImg=="Other"]
Result_23$Political_high[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Politically_middle
Y<- CD_case_Bilaspur[(CD_case_Bilaspur$interestP=="Little_bit"),]
X<- count(Y,"impactOnImg")
Result_23$Political_middle[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_23$Political_middle[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_23$Political_middle[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_23$Political_middle[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_23$Political_middle[5]<-X$freq[X$impactOnImg=="Other"]
Result_23$Political_middle[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Politically_low
Y<- CD_case_Bilaspur[(CD_case_Bilaspur$interestP=="Sometime"),]
X<- count(Y,"impactOnImg")
Result_23$Political_low[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_23$Political_low[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_23$Political_low[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_23$Political_low[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_23$Political_low[5]<-X$freq[X$impactOnImg=="Other"]
Result_23$Political_low[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Politically_low
Y<- CD_case_Bilaspur[(CD_case_Bilaspur$interestP=="Never"),]
X<- count(Y,"impactOnImg")
Result_23$No_Politics[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_23$No_Politics[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_23$No_Politics[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_23$No_Politics[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_23$No_Politics[5]<-X$freq[X$impactOnImg=="Other"]
Result_23$No_Politics[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Congress
Y<- CD_case_Bilaspur[(CD_case_Bilaspur$party=="Congress"),]
X<- count(Y,"impactOnImg")
Result_23$Congress[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_23$Congress[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_23$Congress[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_23$Congress[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_23$Congress[5]<-X$freq[X$impactOnImg=="Other"]
Result_23$Congress[6]<-X$freq[X$impactOnImg=="Dont_know"]

#BJP
Y<- CD_case_Bilaspur[(CD_case_Bilaspur$party=="BJP"),]
X<- count(Y,"impactOnImg")
Result_23$BJP[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_23$BJP[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_23$BJP[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_23$BJP[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_23$BJP[5]<-X$freq[X$impactOnImg=="Other"]
Result_23$BJP[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Other
Y<- CD_case_Bilaspur[((CD_case_Bilaspur$party!="BJP")&(CD_case_Bilaspur$party!="Congress")),]
X<- count(Y,"impactOnImg")
Result_23$Other[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_23$Other[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_23$Other[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_23$Other[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_23$Other[5]<-X$freq[X$impactOnImg=="Other"]
Result_23$Other[6]<-X$freq[X$impactOnImg=="Dont_know"]


#%Result_23
Result_23_perc<-matrix(NA, nrow = 6, ncol = 10)
colnames(Result_23_perc)<-c("Overall", "Rural", "Urban", "Political_high","Political_middle", "Political_low","No_Politics","Congress","BJP","Other")
rownames(Result_23_perc)<-c("CM_Candidate", "Chg_congress_tallest_leader", "Krantikari_Neta","Worsen_his_image", "Other","Dont_know")
Result_23_perc<- as.data.frame(Result_23_perc)

Result_23_perc$Overall<-round( Result_23$Overall/sum(Result_23$Overall, na.rm = TRUE) ,4)
Result_23_perc$Rural<-round( Result_23$Rural/sum(Result_23$Rural, na.rm = TRUE) ,4)
Result_23_perc$Urban<-round( Result_23$Urban/sum(Result_23$Urban, na.rm = TRUE) ,4)
Result_23_perc$Political_high<-round( Result_23$Political_high/sum(Result_23$Political_high, na.rm = TRUE) ,4)
Result_23_perc$Political_middle<-round( Result_23$Political_middle/sum(Result_23$Political_middle, na.rm = TRUE) ,4)
Result_23_perc$Political_low<-round( Result_23$Political_low/sum(Result_23$Political_low, na.rm = TRUE) ,4)
Result_23_perc$No_Politics<-round( Result_23$No_Politics/sum(Result_23$No_Politics, na.rm = TRUE) ,4)
Result_23_perc$Congress<-round( Result_23$Congress/sum(Result_23$Congress, na.rm = TRUE) ,4)
Result_23_perc$BJP<-round( Result_23$BJP/sum(Result_23$BJP, na.rm = TRUE) ,4)
Result_23_perc$Other<-round( Result_23$Other/sum(Result_23$Other, na.rm = TRUE) ,4)

#Age and Gender
#Result_41: Truth
Result_41<-matrix(NA, nrow = 5, ncol = 8)
colnames(Result_41)<-c("teen", "adult", "family_man", "fourties","old", "retired","Male","Female")
rownames(Result_41_perc)<-c("Bhupesh", "Moonat", "Dont_Know","Court_Decision", "Other")
Result_41<- as.data.frame(Result_41)

#18-24
Result_41<-as.data.frame(Result_41)
Y<- CD_case[(CD_case$age=="18-24"),]
X<- count(Y,"truePerson")
Result_41$teen[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_41$teen[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_41$teen[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_41$teen[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_41$teen[5]<-X$freq[X$truePerson=="Other"]

#25-29
Y<- CD_case[(CD_case$age=="25-29"),]
X<- count(Y,"truePerson")
Result_41$adult[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_41$adult[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_41$adult[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_41$adult[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_41$adult[5]<-X$freq[X$truePerson=="Other"]

#30-39
Y<- CD_case[(CD_case$age=="30-39"),]
X<- count(Y,"truePerson")
Result_41$family_man[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_41$family_man[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_41$family_man[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_41$family_man[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_41$family_man[5]<-X$freq[X$truePerson=="Other"]

#40-49
Y<- CD_case[(CD_case$age=="40-49"),]
X<- count(Y,"truePerson")
Result_41$fourties[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_41$fourties[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_41$fourties[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_41$fourties[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_41$fourties[5]<-X$freq[X$truePerson=="Other"]

#50-59
Y<- CD_case[(CD_case$age=="50-59"),]
X<- count(Y,"truePerson")
Result_41$old[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_41$old[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_41$old[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_41$old[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_41$old[5]<-X$freq[X$truePerson=="Other"]

#60+
Y<- CD_case[(CD_case$age=="60+"),]
X<- count(Y,"truePerson")
Result_41$retired[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_41$retired[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_41$retired[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_41$retired[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_41$retired[5]<-X$freq[X$truePerson=="Other"]

#Male
Y<- CD_case[(CD_case$gender=="Male"),]
X<- count(Y,"truePerson")
Result_41$Male[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_41$Male[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_41$Male[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_41$Male[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_41$Male[5]<-X$freq[X$truePerson=="Other"]

#Female
Y<- CD_case[(CD_case$gender=="Female"),]
X<- count(Y,"truePerson")
Result_41$Female[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_41$Female[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_41$Female[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_41$Female[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_41$Female[5]<-X$freq[X$truePerson=="Other"]


#Result_41_perc
Result_41_perc<-matrix(NA, nrow = 5, ncol = 8)
colnames(Result_41_perc)<-c("teen", "adult", "family_man", "fourties","old", "retired","Male","Female")
rownames(Result_41_perc)<-c("Bhupesh", "Moonat", "Dont_Know","Court_Decision", "Other")
Result_41_perc<- as.data.frame(Result_41_perc)

Result_41_perc$teen<-round( Result_41$teen/sum(Result_41$teen, na.rm = TRUE) ,4)
Result_41_perc$adult<-round( Result_41$adult/sum(Result_41$adult, na.rm = TRUE) ,4)
Result_41_perc$family_man<-round( Result_41$family_man/sum(Result_41$family_man, na.rm = TRUE) ,4)
Result_41_perc$fourties<-round( Result_41$fourties/sum(Result_41$fourties, na.rm = TRUE) ,4)
Result_41_perc$old<-round( Result_41$old/sum(Result_41$old, na.rm = TRUE) ,4)
Result_41_perc$retired<-round( Result_41$retired/sum(Result_41$retired, na.rm = TRUE) ,4)
Result_41_perc$Male<-round( Result_41$Male/sum(Result_41$Male, na.rm = TRUE) ,4)
Result_41_perc$Female<-round( Result_41$Female/sum(Result_41$Female, na.rm = TRUE) ,4)


# Result_4: Age-wise & Gender & City: Image
#Result_4: Image
Result_4<-matrix(NA, nrow = 6, ncol = 8)
colnames(Result_4)<-c("teen", "adult", "family_man", "fourties","old", "retired","Male","Female")
rownames(Result_4)<-c("CM_Candidate", "Chg_congress_tallest_leader", "Krantikari_Neta","Worsen_his_image", "Other","Dont_know")

#18-24
Result_4<-as.data.frame(Result_4)
Y<- CD_case[(CD_case$age=="18-24"),]
X<- count(Y,"impactOnImg")
Result_4$teen[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_4$teen[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_4$teen[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_4$teen[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_4$teen[5]<-X$freq[X$impactOnImg=="Other"]
Result_4$teen[6]<-X$freq[X$impactOnImg=="Dont_know"]

#25-29
Y<- CD_case[(CD_case$age=="25-29"),]
X<- count(Y,"impactOnImg")
Result_4$adult[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_4$adult[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_4$adult[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_4$adult[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_4$adult[5]<-X$freq[X$impactOnImg=="Other"]
Result_4$adult[6]<-X$freq[X$impactOnImg=="Dont_know"]

#30-39
Y<- CD_case[(CD_case$age=="30-39"),]
X<- count(Y,"impactOnImg")
Result_4$family_man[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_4$family_man[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_4$family_man[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_4$family_man[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_4$family_man[5]<-X$freq[X$impactOnImg=="Other"]
Result_4$family_man[6]<-X$freq[X$impactOnImg=="Dont_know"]

#40-49
Y<- CD_case[(CD_case$age=="40-49"),]
X<- count(Y,"impactOnImg")
Result_4$fourties[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_4$fourties[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_4$fourties[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_4$fourties[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_4$fourties[5]<-X$freq[X$impactOnImg=="Other"]
Result_4$fourties[6]<-X$freq[X$impactOnImg=="Dont_know"]

#50-59
Y<- CD_case[(CD_case$age=="50-59"),]
X<- count(Y,"impactOnImg")
Result_4$old[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_4$old[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_4$old[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_4$old[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_4$old[5]<-X$freq[X$impactOnImg=="Other"]
Result_4$old[6]<-X$freq[X$impactOnImg=="Dont_know"]

#60+
Y<- CD_case[(CD_case$age=="60+"),]
X<- count(Y,"impactOnImg")
Result_4$retired[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_4$retired[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_4$retired[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_4$retired[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_4$retired[5]<-X$freq[X$impactOnImg=="Other"]
Result_4$retired[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Male
Y<- CD_case[(CD_case$gender=="Male"),]
X<- count(Y,"impactOnImg")
Result_4$Male[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_4$Male[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_4$Male[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_4$Male[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_4$Male[5]<-X$freq[X$impactOnImg=="Other"]
Result_4$Male[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Female
Y<- CD_case[(CD_case$gender=="Female"),]
X<- count(Y,"impactOnImg")
Result_4$Female[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_4$Female[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_4$Female[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_4$Female[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_4$Female[5]<-X$freq[X$impactOnImg=="Other"]
Result_4$Female[6]<-X$freq[X$impactOnImg=="Dont_know"]


#Result_4_perc
Result_4_perc<-matrix(NA, nrow = 6, ncol = 8)
colnames(Result_4_perc)<-c("teen", "adult", "family_man", "fourties","old", "retired","Male","Female")
rownames(Result_4_perc)<-c("CM_Candidate", "Chg_congress_tallest_leader", "Krantikari_Neta","Worsen_his_image", "Other","Dont_know")
Result_4_perc<- as.data.frame(Result_4_perc)

Result_4_perc$teen<-round( Result_4$teen/sum(Result_4$teen, na.rm = TRUE) ,4)
Result_4_perc$adult<-round( Result_4$adult/sum(Result_4$adult, na.rm = TRUE) ,4)
Result_4_perc$family_man<-round( Result_4$family_man/sum(Result_4$family_man, na.rm = TRUE) ,4)
Result_4_perc$fourties<-round( Result_4$fourties/sum(Result_4$fourties, na.rm = TRUE) ,4)
Result_4_perc$old<-round( Result_4$old/sum(Result_4$old, na.rm = TRUE) ,4)
Result_4_perc$retired<-round( Result_4$retired/sum(Result_4$retired, na.rm = TRUE) ,4)
Result_4_perc$Male<-round( Result_4$Male/sum(Result_4$Male, na.rm = TRUE) ,4)
Result_4_perc$Female<-round( Result_4$Female/sum(Result_4$Female, na.rm = TRUE) ,4)


#Age and Gender
#Result_51: Truth
Result_51<-matrix(NA, nrow = 5, ncol = 7)
colnames(Result_51)<-c("Gen_OBC", "SC", "ST", "Islam", "Christianity", "Kurmi","NonKurmi")
rownames(Result_51)<-c("Bhupesh", "Moonat", "Dont_Know","Court_Decision", "Other")
Result_51<- as.data.frame(Result_51)

#Gen-OBC
Result_51<-as.data.frame(Result_51)
Y<- CD_case[(CD_case$catid=="General")|(CD_case$catid=="OBC"),]
X<- count(Y,"truePerson")
Result_51$Gen_OBC[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_51$Gen_OBC[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_51$Gen_OBC[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_51$Gen_OBC[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_51$Gen_OBC[5]<-X$freq[X$truePerson=="Other"]

#SC
Y<- CD_case[(CD_case$catid=="SC"),]
X<- count(Y,"truePerson")
Result_51$SC[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_51$SC[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_51$SC[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_51$SC[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_51$SC[5]<-X$freq[X$truePerson=="Other"]

#ST
Y<- CD_case[(CD_case$catid=="ST"),]
X<- count(Y,"truePerson")
Result_51$ST[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_51$ST[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_51$ST[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_51$ST[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_51$ST[5]<-X$freq[X$truePerson=="Other"]

#Islam
Y<- CD_case[(CD_case$catid=="Islam"),]
X<- count(Y,"truePerson")
Result_51$Islam[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_51$Islam[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_51$Islam[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_51$Islam[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_51$Islam[5]<-X$freq[X$truePerson=="Other"]

#Christian
Y<- CD_case[(CD_case$catid=="Christianity"),]
X<- count(Y,"truePerson")
Result_51$Christianity[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_51$Christianity[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_51$Christianity[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_51$Christianity[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_51$Christianity[5]<-X$freq[X$truePerson=="Other"]

#Kurmi
Y<- CD_case[(CD_case$caste=="Kurmi/Gabhel/ Chandra/ Baghel/ Verma"),]
X<- count(Y,"truePerson")
Result_51$Kurmi[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_51$Kurmi[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_51$Kurmi[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_51$Kurmi[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_51$Kurmi[5]<-X$freq[X$truePerson=="Other"]

#Non-Kurmi
Y<- CD_case[(CD_case$caste!="Kurmi/Gabhel/ Chandra/ Baghel/ Verma"),]
X<- count(Y,"truePerson")
Result_51$NonKurmi[1]<-X$freq[X$truePerson=="Bhupesh_Baghel"]
Result_51$NonKurmi[2]<-X$freq[X$truePerson=="Rajesh_Munat"]
Result_51$NonKurmi[3]<-X$freq[X$truePerson=="Dont_Know"]
Result_51$NonKurmi[4]<-X$freq[X$truePerson=="Court_Decision"]
Result_51$NonKurmi[5]<-X$freq[X$truePerson=="Other"]


#Result_51_perc
Result_51_perc<-matrix(NA, nrow = 5, ncol = 7)
colnames(Result_51_perc)<-c("Gen_OBC", "SC", "ST", "Islam", "Christianity", "Kurmi","NonKurmi")
rownames(Result_51_perc)<-c("Bhupesh", "Moonat", "Dont_Know","Court_Decision", "Other")
Result_51_perc<- as.data.frame(Result_51_perc)

Result_51_perc$Gen_OBC<-round( Result_51$Gen_OBC/sum(Result_51$Gen_OBC, na.rm = TRUE) ,4)
Result_51_perc$SC<-round( Result_51$SC/sum(Result_51$SC, na.rm = TRUE) ,4)
Result_51_perc$ST<-round( Result_51$ST/sum(Result_51$ST, na.rm = TRUE) ,4)
Result_51_perc$Islam<-round( Result_51$Islam/sum(Result_51$Islam, na.rm = TRUE) ,4)
Result_51_perc$Christianity<-round( Result_51$Christianity/sum(Result_51$Christianity, na.rm = TRUE) ,4)
Result_51_perc$Kurmi<-round( Result_51$Kurmi/sum(Result_51$Kurmi, na.rm = TRUE) ,4)
Result_51_perc$NonKurmi<-round( Result_51$NonKurmi/sum(Result_51$NonKurmi, na.rm = TRUE) ,4)


# Result_5: Caste_Category and Kurmi Non Kurmi: Image
#Result_5: Image
Result_5<-matrix(NA, nrow = 6, ncol = 7)
colnames(Result_5)<-c("Gen_OBC", "SC", "ST", "Islam", "Christianity", "Kurmi","NonKurmi")
rownames(Result_5)<-c("CM_Candidate", "Chg_congress_tallest_leader", "Krantikari_Neta","Worsen_his_image", "Other","Dont_know")
Result_5<- as.data.frame(Result_5)

#Gen_OBC
Result_5<-as.data.frame(Result_5)
Y<- CD_case[(CD_case$catid=="General")|(CD_case$catid=="OBC"),]
X<- count(Y,"impactOnImg")
Result_5$Gen_OBC[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_5$Gen_OBC[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_5$Gen_OBC[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_5$Gen_OBC[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_5$Gen_OBC[5]<-X$freq[X$impactOnImg=="Other"]
Result_5$Gen_OBC[6]<-X$freq[X$impactOnImg=="Dont_know"]

#SC
Y<- CD_case[(CD_case$catid=="SC"),]
X<- count(Y,"impactOnImg")
Result_5$SC[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_5$SC[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_5$SC[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_5$SC[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_5$SC[5]<-X$freq[X$impactOnImg=="Other"]
Result_5$SC[6]<-X$freq[X$impactOnImg=="Dont_know"]

#ST
Y<- CD_case[(CD_case$catid=="ST"),]
X<- count(Y,"impactOnImg")
Result_5$ST[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_5$ST[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_5$ST[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_5$ST[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_5$ST[5]<-X$freq[X$impactOnImg=="Other"]
Result_5$ST[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Islam
Y<- CD_case[(CD_case$catid=="Islam"),]
X<- count(Y,"impactOnImg")
Result_5$Islam[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_5$Islam[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_5$Islam[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_5$Islam[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_5$Islam[5]<-X$freq[X$impactOnImg=="Other"]
Result_5$Islam[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Christianity
Y<- CD_case[(CD_case$catid=="Christianity"),]
X<- count(Y,"impactOnImg")
Result_5$Christianity[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_5$Christianity[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_5$Christianity[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_5$Christianity[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_5$Christianity[5]<-X$freq[X$impactOnImg=="Other"]
Result_5$Christianity[6]<-X$freq[X$impactOnImg=="Dont_know"]

#Kurmi
Y<- CD_case[(CD_case$caste=="Kurmi/Gabhel/ Chandra/ Baghel/ Verma"),]
X<- count(Y,"impactOnImg")
Result_5$Kurmi[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_5$Kurmi[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_5$Kurmi[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_5$Kurmi[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_5$Kurmi[5]<-X$freq[X$impactOnImg=="Other"]
Result_5$Kurmi[6]<-X$freq[X$impactOnImg=="Dont_know"]

#NonKurmi
Y<- CD_case[(CD_case$caste!="Kurmi/Gabhel/ Chandra/ Baghel/ Verma"),]
X<- count(Y,"impactOnImg")
Result_5$NonKurmi[1]<-X$freq[X$impactOnImg=="CM_Candidate"]
Result_5$NonKurmi[2]<-X$freq[X$impactOnImg=="Chg_congress_tallest_leader"]
Result_5$NonKurmi[3]<-X$freq[X$impactOnImg=="Krantikari_Neta"]
Result_5$NonKurmi[4]<-X$freq[X$impactOnImg=="Worsen_his_image"]
Result_5$NonKurmi[5]<-X$freq[X$impactOnImg=="Other"]
Result_5$NonKurmi[6]<-X$freq[X$impactOnImg=="Dont_know"]


#Result_5_perc
Result_5_perc<-matrix(NA, nrow = 6, ncol = 7)
colnames(Result_5_perc)<-c("Gen_OBC", "SC", "ST", "Islam", "Christianity", "Kurmi","NonKurmi")
rownames(Result_5_perc)<-c("CM_Candidate", "Chg_congress_tallest_leader", "Krantikari_Neta","Worsen_his_image", "Other","Dont_know")
Result_5_perc<- as.data.frame(Result_5_perc)

Result_5_perc$Gen_OBC<-round( Result_5$Gen_OBC/sum(Result_5$Gen_OBC, na.rm = TRUE) ,4)
Result_5_perc$SC<-round( Result_5$SC/sum(Result_5$SC, na.rm = TRUE) ,4)
Result_5_perc$ST<-round( Result_5$ST/sum(Result_5$ST, na.rm = TRUE) ,4)
Result_5_perc$Islam<-round( Result_5$Islam/sum(Result_5$Islam, na.rm = TRUE) ,4)
Result_5_perc$Christianity<-round( Result_5$Christianity/sum(Result_5$Christianity, na.rm = TRUE) ,4)
Result_5_perc$Kurmi<-round( Result_5$Kurmi/sum(Result_5$Kurmi, na.rm = TRUE) ,4)
Result_5_perc$NonKurmi<-round( Result_5$NonKurmi/sum(Result_5$NonKurmi, na.rm = TRUE) ,4)

#Sampling



## Report_Download_Excel
library(openxlsx)

OUT <- createWorkbook()

# Add some sheets to the workbook
addWorksheet(OUT, "Overall_Truth")
addWorksheet(OUT, "Overall_Truth_perc")
addWorksheet(OUT, "Overall_image")
addWorksheet(OUT, "Overall_image_perc")
addWorksheet(OUT, "Raipur_Truth")
addWorksheet(OUT, "Raipur_Truth_perc")
addWorksheet(OUT, "Raipur_image")
addWorksheet(OUT, "Raipur_image_perc")
addWorksheet(OUT, "Durg_Truth")
addWorksheet(OUT, "Durg_Truth_perc")
addWorksheet(OUT, "Durg_image")
addWorksheet(OUT, "Durg_image_perc")
addWorksheet(OUT, "Bilaspur_Truth")
addWorksheet(OUT, "Bilaspur_Truth_perc")
addWorksheet(OUT, "Bilaspur_image_perc")
addWorksheet(OUT, "Age_gender_truth_perc")
addWorksheet(OUT, "Age_gender_image_perc")
addWorksheet(OUT, "Cat_Kurmi_truth_perc")
addWorksheet(OUT, "Cat_Kurmi_image_perc")

# Write the data to the sheets
writeData(OUT, sheet = "Overall_Truth", x = Result_1, rowNames=TRUE)
writeData(OUT, sheet = "Overall_Truth_perc", x = Result_1_perc, rowNames=TRUE)
writeData(OUT, sheet = "Overall_image", x = Result_2, rowNames=TRUE)
writeData(OUT, sheet = "Overall_image_perc", x = Result_2_perc, rowNames=TRUE)
writeData(OUT, sheet = "Raipur_Truth", x = Result_11, rowNames=TRUE)
writeData(OUT, sheet = "Raipur_Truth_perc", x = Result_11_perc, rowNames=TRUE)
writeData(OUT, sheet = "Raipur_image", x = Result_21, rowNames=TRUE)
writeData(OUT, sheet = "Raipur_image_perc", x = Result_21_perc, rowNames=TRUE)
writeData(OUT, sheet = "Durg_Truth", x = Result_12, rowNames=TRUE)
writeData(OUT, sheet = "Durg_Truth_perc", x = Result_12_perc, rowNames=TRUE)
writeData(OUT, sheet = "Durg_image", x = Result_22, rowNames=TRUE)
writeData(OUT, sheet = "Durg_image_perc", x = Result_22_perc, rowNames=TRUE)
writeData(OUT, sheet = "Bilaspur_Truth", x = Result_13, rowNames=TRUE)
writeData(OUT, sheet = "Bilaspur_Truth_perc", x = Result_13_perc, rowNames=TRUE)
writeData(OUT, sheet = "Bilaspur_image", x = Result_23, rowNames=TRUE)
writeData(OUT, sheet = "Bilaspur_image_perc", x = Result_23_perc, rowNames=TRUE)
writeData(OUT, sheet = "Age_gender_truth_perc", x = Result_41_perc, rowNames=TRUE)
writeData(OUT, sheet = "Age_gender_image_perc", x = Result_4_perc, rowNames=TRUE)
writeData(OUT, sheet = "Cat_Kurmi_image_perc", x = Result_5_perc, rowNames=TRUE)
writeData(OUT, sheet = "Cat_Kurmi_truth_perc", x = Result_51_perc, rowNames=TRUE)



# Reorder worksheets
#worksheetOrder(OUT) <- c(2,1)

# Export the file
saveWorkbook(OUT, "CD_Case_Results_weights2.xlsx")
