rm(list = ls())
library(readxl)
install.packages("plyr")
install.packages("readr")
library(readr)
library(plyr)

file.list <- list.files(pattern="*.csv")
df.list <- lapply(file.list, read_csv)
#New<-matrix(NA, nrow = 90, ncol = 2)
#colnames(New)<-c("AC_Name","Count")
#for (i in 1:587) {
 # New[i,1]<-file.list[i][[1]]
#  New[i,2]<-dim(df.list[i][[1]])[1]
#  file.list[i]<-df.list[i][[1]]
#}

#write.csv(New, "New.csv")


Surname_Roll_CHG <- read_excel("~/Desktop/ABM/Database/Surname_wise data/Surname_Roll_CHG.xlsx")
#View(Surname_Roll_CHG)
Surname_AC<-subset(Surname_Roll_CHG, Surname_Roll_CHG$ac_no=="73")

Surname_AC$sur_name<-toupper(Surname_AC$sur_name)

Phone_AC6<-X73

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
#Surname_list<-subset(Surname_freq, Surname_freq$freq>389)

CG_Call_Center_Master_File <- read_excel("ABM/Database/Call Center/CG Call Center Master File.xlsx", sheet = 4)

#Phone_AC6<-AC_1
Comparision<-Surname_AC
Comparision$`Samples Needed`<-round(100*Comparision$`% count`)
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
Rest_M<-Phone_AC6[1,]
Rest_F<-Phone_AC6[1,]
for (i in 101:nrow(Comparision)) {
  Surname_M<-subset(Phone_AC6, Surname == Comparision$sur_name[i] & Phone_AC6$Gender!="F")
  Surname_F<-subset(Phone_AC6, Surname == Comparision$sur_name[i] & Phone_AC6$Gender=="F")
  
  Rest_M<-rbind(Rest_M,Surname_M)
  Rest_F<-rbind(Rest_M,Surname_F)
}
Rest_M<-Rest_M[-1,]
Rest_F<-Rest_F[-1,]

# Creating Sample for rest of the database after 100th Surname
t<-round(0.5*sum(Comparision$`Samples Needed`[101:nrow(Comparision)]))
Samplen_end_M<-sample(nrow(Rest_M), t, replace = TRUE)
Sample_end_M<-Rest_M[Samplen_end_M,]
Samplen_end_F<-sample(nrow(Rest_F), t, replace = TRUE)
Sample_end_F<-Rest_F[Samplen_end_F,]
Sample_end<-rbind(Sample_end_F,Sample_end_M)
Final<-rbind(Sample_start, Sample_end)

Rally<- rbind(Rally, Final)
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
saveWorkbook(OUT, "AS_Khairagarh.xlsx")

Number<- matrix(NA, nrow = dim(Final)[1], ncol = 1)
Number<- as.data.frame(Number)
Number[,1]<- Final$phone_no
Number<- unique(Number)
Number<- rbind(Number, "750838327", "9872074841", "9144444431", "7806026269")
write.csv(Number, "AS_Khairagarh_Numbers.csv", row.names = FALSE)
#write.xlsx(Final, file = "AC10.xlsx", sheetName="sh1", append=TRUE)
#write.xlsx(Gender_freq, file = "AC10.xlsx", sheetName="sh2", append=TRUE)
#write.xlsx(Pin_freq, file = "AC10.xlsx", sheetName="sh3", append=TRUE)
#write.xlsx(Surname_freq, file = "AC10.xlsx", sheetName="sh4", append=TRUE)
#write.csv(Final, "AC10_Sample.csv")
