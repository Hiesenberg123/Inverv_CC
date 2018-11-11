
# Calculating surname distribution in each of the sambhag
Surname_Raipur<-Surname_Roll_CHG[((Surname_Roll_CHG$ac_no=="40")|(Surname_Roll_CHG$ac_no=="43")|(Surname_Roll_CHG$ac_no=="42")|(Surname_Roll_CHG$ac_no=="45")|(Surname_Roll_CHG$ac_no=="52")|(Surname_Roll_CHG$ac_no=="53")|(Surname_Roll_CHG$ac_no=="56")|(Surname_Roll_CHG$ac_no=="58")|(Surname_Roll_CHG$ac_no=="46")|(Surname_Roll_CHG$ac_no=="49")|(Surname_Roll_CHG$ac_no=="55")|(Surname_Roll_CHG$ac_no=="57")|(Surname_Roll_CHG$ac_no=="39")|(Surname_Roll_CHG$ac_no=="44")|(Surname_Roll_CHG$ac_no=="51")|(Surname_Roll_CHG$ac_no=="41")),]
Surname_Durg<-Surname_Roll_CHG[((Surname_Roll_CHG$ac_no=="60")|(Surname_Roll_CHG$ac_no=="61")|(Surname_Roll_CHG$ac_no=="62")|(Surname_Roll_CHG$ac_no=="64")|(Surname_Roll_CHG$ac_no=="65")|(Surname_Roll_CHG$ac_no=="66")|(Surname_Roll_CHG$ac_no=="67")|(Surname_Roll_CHG$ac_no=="59")|(Surname_Roll_CHG$ac_no=="68")|(Surname_Roll_CHG$ac_no=="69")|(Surname_Roll_CHG$ac_no=="70")|(Surname_Roll_CHG$ac_no=="75")|(Surname_Roll_CHG$ac_no=="77")),]
Surname_Bilaspur<-Surname_Roll_CHG[((Surname_Roll_CHG$ac_no=="15")|(Surname_Roll_CHG$ac_no=="16")|(Surname_Roll_CHG$ac_no=="17")|(Surname_Roll_CHG$ac_no=="18")|(Surname_Roll_CHG$ac_no=="19")|(Surname_Roll_CHG$ac_no=="20")|(Surname_Roll_CHG$ac_no=="21")|(Surname_Roll_CHG$ac_no=="22")|(Surname_Roll_CHG$ac_no=="23")|(Surname_Roll_CHG$ac_no=="24")|(Surname_Roll_CHG$ac_no=="25")|(Surname_Roll_CHG$ac_no=="26")|(Surname_Roll_CHG$ac_no=="29")|(Surname_Roll_CHG$ac_no=="30")|(Surname_Roll_CHG$ac_no=="31")|(Surname_Roll_CHG$ac_no=="32")|(Surname_Roll_CHG$ac_no=="33")|(Surname_Roll_CHG$ac_no=="34")|(Surname_Roll_CHG$ac_no=="35")|(Surname_Roll_CHG$ac_no=="36")|(Surname_Roll_CHG$ac_no=="38")),]

X<- unique(Surname_Raipur$sur_name)
Y<- unique(Surname_Durg$sur_name)
Z<- unique(Surname_Bilaspur$sur_name)

Unique_Raipur<- matrix(NA, nrow = length(X), ncol = 3)
colnames(Unique_Raipur)<- c("sur_name", "Count", "Perc")

Unique_Durg<- matrix(NA, nrow = length(Y), ncol = 3)
colnames(Unique_Durg)<- c("sur_name", "Count", "Perc")

Unique_Bilaspur<- matrix(NA, nrow = length(Z), ncol = 3)
colnames(Unique_Bilaspur)<- c("sur_name", "Count", "Perc")


Unique_Raipur<- as.data.frame(Unique_Raipur)
Unique_Durg<- as.data.frame(Unique_Durg)
Unique_Bilaspur<- as.data.frame(Unique_Bilaspur)


for (i in 1:length(X)) {
  Unique_Raipur$sur_name[i]<- X[i]
  Unique_Raipur$Count[i]<- sum(Surname_Raipur$count[Surname_Raipur$sur_name==Unique_Raipur$sur_name[i]], na.rm = TRUE)
}
Unique_Raipur$Perc<-round(100*Unique_Raipur$Count/sum(Unique_Raipur$Count, na.rm = TRUE),3)

for (i in 1:length(Y)) {
  Unique_Durg$sur_name[i]<- Y[i]
  Unique_Durg$Count[i]<- sum(Surname_Durg$count[Surname_Durg$sur_name==Unique_Durg$sur_name[i]], na.rm = TRUE)
}
Unique_Durg$Perc<-round(100*Unique_Durg$Count/sum(Unique_Durg$Count, na.rm = TRUE),3)

for (i in 1:length(Z)) {
  Unique_Bilaspur$sur_name[i]<- Z[i]
  Unique_Bilaspur$Count[i]<- sum(Surname_Bilaspur$count[Surname_Bilaspur$sur_name==Unique_Bilaspur$sur_name[i]], na.rm = TRUE)
}
Unique_Bilaspur$Perc<-round(100*Unique_Bilaspur$Count/sum(Unique_Bilaspur$Count, na.rm = TRUE),3)

# collating phone number database for sambhag-wise
#Raipur_Sambhag
#Voda
dat40<-read.csv("40.csv", header = FALSE)
dat42<-read.csv("42.csv", header = FALSE)
dat43<-read.csv("43.csv", header = FALSE)
dat45<-read.csv("45.csv", header = FALSE)
dat52<-read.csv("52.csv", header = FALSE)
dat53<-read.csv("53.csv", header = FALSE)
dat56<-read.csv("56.csv", header = FALSE)
dat58<-read.csv("58.csv", header = FALSE)
dat46<-read.csv("46.csv", header = FALSE)
dat49<-read.csv("49.csv", header = FALSE)
dat55<-read.csv("55.csv", header = FALSE)
dat57<-read.csv("57.csv", header = FALSE)
dat39<-read.csv("39.csv", header = FALSE)
dat44<-read.csv("44.csv", header = FALSE)
dat51<-read.csv("51.csv", header = FALSE)
dat41<-read.csv("41.csv", header = FALSE)

#Jio
datj40<-read.csv("40.csv", header = FALSE)
datj42<-read.csv("42.csv", header = FALSE)
datj43<-read.csv("43.csv", header = FALSE)
datj45<-read.csv("45.csv", header = FALSE)
datj52<-read.csv("52.csv", header = FALSE)
datj53<-read.csv("53.csv", header = FALSE)
datj56<-read.csv("56.csv", header = FALSE)
datj58<-read.csv("58.csv", header = FALSE)
datj46<-read.csv("46.csv", header = FALSE)
datj49<-read.csv("49.csv", header = FALSE)
datj55<-read.csv("55.csv", header = FALSE)
datj57<-read.csv("57.csv", header = FALSE)
datj39<-read.csv("39.csv", header = FALSE)
datj44<-read.csv("44.csv", header = FALSE)
datj51<-read.csv("51.csv", header = FALSE)
datj41<-read.csv("41.csv", header = FALSE)

#Bilaspur_Sambhag
#Voda
dat15<-read.csv("15.csv", header = FALSE)
dat16<-read.csv("16.csv", header = FALSE)
dat17<-read.csv("17.csv", header = FALSE)
dat18<-read.csv("18.csv", header = FALSE)
dat19<-read.csv("19.csv", header = FALSE)
dat20<-read.csv("20.csv", header = FALSE)
dat21<-read.csv("21.csv", header = FALSE)
dat22<-read.csv("22.csv", header = FALSE)
dat23<-read.csv("23.csv", header = FALSE)
dat24<-read.csv("24.csv", header = FALSE)
dat25<-read.csv("25.csv", header = FALSE)
dat26<-read.csv("26.csv", header = FALSE)
dat29<-read.csv("29.csv", header = FALSE)
dat30<-read.csv("30.csv", header = FALSE)
dat31<-read.csv("31.csv", header = FALSE)
dat32<-read.csv("32.csv", header = FALSE)
dat33<-read.csv("33.csv", header = FALSE)
dat34<-read.csv("34.csv", header = FALSE)
dat35<-read.csv("35.csv", header = FALSE)
dat36<-read.csv("36.csv", header = FALSE)
dat38<-read.csv("38.csv", header = FALSE)

#Jio
datj15<-read.csv("15.csv", header = FALSE)
datj16<-read.csv("16.csv", header = FALSE)
datj17<-read.csv("17.csv", header = FALSE)
datj18<-read.csv("18.csv", header = FALSE)
datj19<-read.csv("19.csv", header = FALSE)
datj20<-read.csv("20.csv", header = FALSE)
datj21<-read.csv("21.csv", header = FALSE)
datj22<-read.csv("22.csv", header = FALSE)
datj23<-read.csv("23.csv", header = FALSE)
datj24<-read.csv("24.csv", header = FALSE)
datj25<-read.csv("25.csv", header = FALSE)
datj26<-read.csv("26.csv", header = FALSE)
datj29<-read.csv("29.csv", header = FALSE)
datj30<-read.csv("30.csv", header = FALSE)
datj31<-read.csv("31.csv", header = FALSE)
datj32<-read.csv("32.csv", header = FALSE)
datj33<-read.csv("33.csv", header = FALSE)
datj34<-read.csv("34.csv", header = FALSE)
datj35<-read.csv("35.csv", header = FALSE)
datj36<-read.csv("36.csv", header = FALSE)
datj38<-read.csv("38.csv", header = FALSE)

#Durg_Sambhag
# Voda
dat59<-read.csv("59.csv", header = FALSE)
dat60<-read.csv("60.csv", header = FALSE)
dat61<-read.csv("61.csv", header = FALSE)
dat62<-read.csv("62.csv", header = FALSE)
dat64<-read.csv("64.csv", header = FALSE)
dat65<-read.csv("65.csv", header = FALSE)
dat66<-read.csv("66.csv", header = FALSE)
dat67<-read.csv("67.csv", header = FALSE)
dat68<-read.csv("68.csv", header = FALSE)
dat69<-read.csv("69.csv", header = FALSE)
dat70<-read.csv("70.csv", header = FALSE)
dat71<-read.csv("71.csv", header = FALSE)
dat75<-read.csv("75.csv", header = FALSE)
dat77<-read.csv("77.csv", header = FALSE)

# Jio
datj59<-read.csv("59.csv", header = FALSE)
datj60<-read.csv("60.csv", header = FALSE)
datj61<-read.csv("61.csv", header = FALSE)
datj62<-read.csv("62.csv", header = FALSE)
datj64<-read.csv("64.csv", header = FALSE)
datj65<-read.csv("65.csv", header = FALSE)
datj66<-read.csv("66.csv", header = FALSE)
datj67<-read.csv("67.csv", header = FALSE)
datj68<-read.csv("68.csv", header = FALSE)
datj69<-read.csv("69.csv", header = FALSE)
datj70<-read.csv("70.csv", header = FALSE)
datj71<-read.csv("71.csv", header = FALSE)
datj75<-read.csv("75.csv", header = FALSE)
datj77<-read.csv("77.csv", header = FALSE)

Raipur_db<- rbind(dat39, dat40, dat42, dat43, dat45, dat52, dat53, dat56, dat58, dat46, dat49, dat55, dat57, dat44, dat41, datj39, datj40, datj42, datj43, datj45, datj52, datj53, datj56, datj58, datj46, datj49, datj55, datj57, datj44, datj41 )
Bilaspur_db<- rbind(dat15,dat16,dat17,dat18,dat19,dat20,dat21,dat22,dat23,dat24,dat25,dat26,dat29,dat31,dat32,dat33,dat34,dat35,dat36,dat38,datj15,datj16,datj17,datj18,datj19,datj20,datj21,datj22,datj23,datj24,datj25,datj26,datj29,datj31,datj32,datj33,datj34,datj35,datj36,datj38)
Durg_db<- rbind(dat59,dat60,dat61,dat62,dat65,dat66,dat67,dat68,dat69,dat70,dat71,dat75,dat77,datj59,datj60,datj61,datj62,datj65,datj66,datj67,datj68,datj69,datj70,datj71,datj75,datj77)

#Sample_required
Unique_Raipur<-Unique_Raipur[order(-Unique_Raipur$Perc),]
Unique_Durg<-Unique_Durg[order(-Unique_Durg$Perc),]
Unique_Bilaspur<-Unique_Bilaspur[order(-Unique_Bilaspur$Perc),]

Unique_Raipur$`Samples Needed`<- 100*Unique_Raipur$Perc
Unique_Durg$`Samples Needed`<- 100*Unique_Durg$Perc
Unique_Bilaspur$`Samples Needed`<- 100*Unique_Bilaspur$Perc

#Sampling
Surname_AC<-Unique_Durg

Surname_AC$sur_name<-toupper(Surname_AC$sur_name)

Phone_AC6<-Durg_db

Col_name<- c("phone_no", "name", "Surname", "local_address", "dob", "Gender", "local_house_no", "local_street", "local_locality", "local_city", "local_pincode")
for (i in 1:11) {
  colnames(Phone_AC6)[i]<-Col_name[i]
}
Phone_AC6$Surname<-toupper(Phone_AC6$Surname)
Phone_AC6$Gender<-toupper(Phone_AC6$Gender)
#Phone_AC6$Gender<-toString(Phone_AC6$Gender)
#x<-dim(Phone_AC6)[1]
#x<-as.numeric(x)

Phone_AC6$Gender[Phone_AC6$Gender=="FEMALE"]<-"F"
Phone_AC6$Gender[Phone_AC6$Gender=="FEMAL"]<-"F"
Phone_AC6$Gender[Phone_AC6$Gender=="MALE"]<-"M"
Phone_AC6$Gender[Phone_AC6$Gender==""]<-"Unspecified"
Phone_AC6$Gender[Phone_AC6$Gender=="NULL"]<-"Unspecified"
Phone_AC6$Gender[Phone_AC6$Gender=="U"]<-"Unspecified"
Phone_AC6$Gender[is.na(Phone_AC6$Gender)]<-"Unspecified"

#library(plyr)
#Surname_freq<-count(Phone_AC6, "Surname")
#Surname_list<-subset(Surname_freq, Surname_freq$freq>50)

#CG_Call_Center_Master_File <- read_excel("ABM/Database/Call Center/CG Call Center Master File.xlsx", sheet = 4)

#Phone_AC6<-AC_1
Comparision<-Surname_AC
for (i in 1:nrow(Unique_Bilaspur)) {
  Phone_AC6$Sur_count[Phone_AC6$Surname==Unique_Bilaspur$sur_name[i]]<- i
}
#Comparision$`Samples Needed`<-round(.005*CG_Call_Center_Master_File$`Min. DB Required (15% connectivity)`[42]*Comparision$`% count`)
Sample_start<-Phone_AC6[1,]
# Getting sampled data for top 100 surnames
for (i in 1:100) {
  
  Sur_M<-subset(Phone_AC6, Surname == Comparision$sur_name[i] & Phone_AC6$Gender!="F")
  Sur_F<-subset(Phone_AC6, Surname == Comparision$sur_name[i] & Phone_AC6$Gender=="F")
  t<-round(0.5*Comparision$`Samples Needed`[i],0)
  if(t<nrow(Sur_M))
  {Samplen_M<-sample(nrow(Sur_M), t)
  Sample_M<-Sur_M[Samplen_M,]} else
  {Sample_M<-Sur_M
  Comparision$`Samples Needed`[101]<-Comparision$`Samples Needed`[101]-(nrow(Sur_M)-t)}
  
  if(t<nrow(Sur_F))
  {Samplen_F<-sample(nrow(Sur_F), t)
  Sample_F<-Sur_F[Samplen_F,]} else
  {Sample_F<-Sur_F
  Comparision$`Samples Needed`[101]<-Comparision$`Samples Needed`[101]-(nrow(Sur_F)-t)}
  
  Sample<-rbind(Sample_F,Sample_M)
  Sample_start<-rbind(Sample_start, Sample)
}

Sample_start<-Sample_start[-1,]

#to get subset of Phone number data for male and female for rest surnames
#Rest_M<-Phone_AC6[1,]
#Rest_F<-Phone_AC6[1,]
#for (i in 101:300) {
Rest_M<- Phone_AC6[((Phone_AC6$Sur_count>100)&(Phone_AC6$Gender!="F")),]
Rest_F<- Phone_AC6[((Phone_AC6$Sur_count>100)&(Phone_AC6$Gender=="F")),]
# Surname_M<-subset(Phone_AC6, Surname == Comparision$sur_name[i] & Phone_AC6$Gender!="F")
# Surname_F<-subset(Phone_AC6, Surname == Comparision$sur_name[i] & Phone_AC6$Gender=="F")
  
 # Rest_M<-rbind(Rest_M,Surname_M)
 # Rest_F<-rbind(Rest_M,Surname_F)
#}
#Rest_M<-Rest_M[-1,]
#Rest_F<-Rest_F[-1,]

# Creating Sample for rest of the database after 100th Surname
t<-round(0.5*sum(Comparision$`Samples Needed`[101:nrow(Comparision)]))
Samplen_end_M<-sample(nrow(Rest_M), t, replace = TRUE)
Sample_end_M<-Rest_M[Samplen_end_M,]
Samplen_end_F<-sample(nrow(Rest_F), t, replace = TRUE)
Sample_end_F<-Rest_F[Samplen_end_F,]
Sample_end<-rbind(Sample_end_F,Sample_end_M)
Final<-rbind(Sample_start, Sample_end)

#install.packages("plyr")
library(plyr)

Gender_freq<-count(Final, "Gender")
Surname_freq<-count(Final, "Surname")
Pin_freq<-count(Final, "local_pincode")

#library(dplyr)
library(openxlsx)

OUT <- createWorkbook()

# Add some sheets to the workbook
addWorksheet(OUT, "Sampled")
addWorksheet(OUT, "Gender_freq")
addWorksheet(OUT, "Surname_freq")
addWorksheet(OUT, "Pincode_freq")
# Write the data to the sheets
writeData(OUT, sheet = "Sampled", x = Final)
writeData(OUT, sheet = "Gender_freq", x = Gender_freq)
writeData(OUT, sheet = "Surname_freq", x = Surname_freq)
writeData(OUT, sheet = "Pincode_freq", x = Pin_freq)

# Reorder worksheets
#worksheetOrder(OUT) <- c(2,1)

# Export the file
saveWorkbook(OUT, "Durg_samples.xlsx")
