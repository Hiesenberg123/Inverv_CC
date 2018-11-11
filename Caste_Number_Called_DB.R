
Complete_DB<-rbind(Oct_called_DB, Sept_Called_DB)

#Sahu_Called_DB
v<-which(Complete_DB$caste %in% c("Teli/Sahu/Rathore", "Teli/Sahu", "Sahu/Teli"))
Sahu_Called_DB<-matrix(NA, nrow = length(v), ncol = 2)
colnames(Sahu_Called_DB)<- c("Assemblyid", "Phone_number")
Sahu_Called_DB<-as.data.frame(Sahu_Called_DB)

Sahu_Called_DB$Assemblyid<- Complete_DB$assemblyid[v]
Sahu_Called_DB$Phone_number<- Complete_DB$caller[v]

#Satnami_Called_DB
v<-which(Complete_DB$caste %in% c("Satnami", "SATNAMI", "satnami"))
Satnami_Called_DB<-matrix(NA, nrow = length(v), ncol = 2)
colnames(Satnami_Called_DB)<- c("Assemblyid", "Phone_number")
Satnami_Called_DB<-as.data.frame(Satnami_Called_DB)

Satnami_Called_DB$Assemblyid<- Complete_DB$assemblyid[v]
Satnami_Called_DB$Phone_number<- Complete_DB$caller[v]

#Gond_Called_DB
v<-which(Complete_DB$caste %in% c("Gond/Rajgond/Sidar", "Gond/Rajgond", "Gond,Rajgond"))
Gond_Called_DB<-matrix(NA, nrow = length(v), ncol = 2)
colnames(Gond_Called_DB)<- c("Assemblyid", "Phone_number")
Gond_Called_DB<-as.data.frame(Gond_Called_DB)

Gond_Called_DB$Assemblyid<- Complete_DB$assemblyid[v]
Gond_Called_DB$Phone_number<- Complete_DB$caller[v]

#Oraon_christ_Called_DB
Complete_DB_christian<- Complete_DB[(Complete_DB$religion=="4"),]
v<-which(Complete_DB_christian$caste %in% c("Oraon/Uraon/Uraanv", "Oraon (Christian)", "Oraon (Non Specified)"))
Oraon_christ_Called_DB<-matrix(NA, nrow = length(v), ncol = 2)
colnames(Oraon_christ_Called_DB)<- c("Assemblyid", "Phone_number")
Oraon_christ_Called_DB<-as.data.frame(Oraon_christ_Called_DB)

Oraon_christ_Called_DB$Assemblyid<- Complete_DB$assemblyid[v]
Oraon_christ_Called_DB$Phone_number<- Complete_DB$caller[v]

#Oraon_hindu_Called_DB
v<-which(Complete_DB$caste %in% c("Oraon/Uraon/Uraanv", "Oraon (Christian)", "Oraon (Non Specified)", "Oraon (Hindu)"))
Oraon_Called_DB<-matrix(NA, nrow = length(v), ncol = 2)
colnames(Oraon_Called_DB)<- c("Assemblyid", "Phone_number")
Oraon_Called_DB<-as.data.frame(Oraon_Called_DB)

Oraon_Called_DB$Assemblyid<- Complete_DB$assemblyid[v]
Oraon_Called_DB$Phone_number<- Complete_DB$caller[v]

#Halba_Called_DB
v<-which(Complete_DB$caste %in% c("Halbaa"))
Halba_Called_DB<-matrix(NA, nrow = length(v), ncol = 2)
colnames(Halba_Called_DB)<- c("Assemblyid", "Phone_number")
Halba_Called_DB<-as.data.frame(Halba_Called_DB)

Halba_Called_DB$Assemblyid<- Complete_DB$assemblyid[v]
Halba_Called_DB$Phone_number<- Complete_DB$caller[v]

#Kanwar_Called_DB
v<-which(Complete_DB$caste %in% c("Kanwar/Rathia/ Paikra/ Sai", "Kanwar/Rathia"))
Kanwar_Called_DB<-matrix(NA, nrow = length(v), ncol = 2)
colnames(Kanwar_Called_DB)<- c("Assemblyid", "Phone_number")
Kanwar_Called_DB<-as.data.frame(Kanwar_Called_DB)

Kanwar_Called_DB$Assemblyid<- Complete_DB$assemblyid[v]
Kanwar_Called_DB$Phone_number<- Complete_DB$caller[v]

#Rajwade_Called_DB
v<-which(Complete_DB$caste %in% c("Rajwade"))
Rajwade_Called_DB<-matrix(NA, nrow = length(v), ncol = 2)
colnames(Rajwade_Called_DB)<- c("Assemblyid", "Phone_number")
Rajwade_Called_DB<-as.data.frame(Rajwade_Called_DB)

Rajwade_Called_DB$Assemblyid<- Complete_DB$assemblyid[v]
Rajwade_Called_DB$Phone_number<- Complete_DB$caller[v]

#Kurmi_Called_DB
v<-which(Complete_DB$caste %in% c("Kurmi/Gabhel/ Chandra/ Baghel/ Verma", "Kurmi", "Kurmi/Gabhel/ Chandra/ Baghel/", "KURMI"))
Kurmi_Called_DB<-matrix(NA, nrow = length(v), ncol = 2)
colnames(Kurmi_Called_DB)<- c("Assemblyid", "Phone_number")
Kurmi_Called_DB<-as.data.frame(Kurmi_Called_DB)

Kurmi_Called_DB$Assemblyid<- Complete_DB$assemblyid[v]
Kurmi_Called_DB$Phone_number<- Complete_DB$caller[v]

#Yadav_Called_DB
v<-which(Complete_DB$caste %in% c("Yadav/Raut/ Rawat/ Yadu", "Yadav/Raut", "Yadav"))
Yadav_Called_DB<-matrix(NA, nrow = length(v), ncol = 2)
colnames(Yadav_Called_DB)<- c("Assemblyid", "Phone_number")
Yadav_Called_DB<-as.data.frame(Yadav_Called_DB)

Yadav_Called_DB$Assemblyid<- Complete_DB$assemblyid[v]
Yadav_Called_DB$Phone_number<- Complete_DB$caller[v]

#Ganda_Called_DB
v<-which(Complete_DB$caste %in% c("Ganda", "GANDA"))
Ganda_Called_DB<-matrix(NA, nrow = length(v), ncol = 2)
colnames(Ganda_Called_DB)<- c("Assemblyid", "Phone_number")
Ganda_Called_DB<-as.data.frame(Ganda_Called_DB)

Ganda_Called_DB$Assemblyid<- Complete_DB$assemblyid[v]
Ganda_Called_DB$Phone_number<- Complete_DB$caller[v]

#Kalar_Called_DB
v<-which(Complete_DB$caste %in% c("Kalar", "KALAR"))
Kalar_Called_DB<-matrix(NA, nrow = length(v), ncol = 2)
colnames(Kalar_Called_DB)<- c("Assemblyid", "Phone_number")
Kalar_Called_DB<-as.data.frame(Kalar_Called_DB)

Kalar_Called_DB$Assemblyid<- Complete_DB$assemblyid[v]
Kalar_Called_DB$Phone_number<- Complete_DB$caller[v]

#Bhatra_Called_DB
v<-which(Complete_DB$caste %in% c("Bhatra"))
Bhatra_Called_DB<-matrix(NA, nrow = length(v), ncol = 2)
colnames(Bhatra_Called_DB)<- c("Assemblyid", "Phone_number")
Bhatra_Called_DB<-as.data.frame(Bhatra_Called_DB)

Bhatra_Called_DB$Assemblyid<- Complete_DB$assemblyid[v]
Bhatra_Called_DB$Phone_number<- Complete_DB$caller[v]

#Aghariya_Called_DB
v<-which(Complete_DB$caste %in% c("Aghariya/ Nayak/Patel", "Aghariya", "AGHARIYA"))
Aghariya_Called_DB<-matrix(NA, nrow = length(v), ncol = 2)
colnames(Aghariya_Called_DB)<- c("Assemblyid", "Phone_number")
Aghariya_Called_DB<-as.data.frame(Aghariya_Called_DB)

Aghariya_Called_DB$Assemblyid<- Complete_DB$assemblyid[v]
Aghariya_Called_DB$Phone_number<- Complete_DB$caller[v]

write.csv(Aghariya_Called_DB, "Aghariya_Called_DB.csv")
write.csv(Bhatra_Called_DB, "Bhatra_Called_DB.csv")
write.csv(Sahu_Called_DB, "Sahu_Called_DB.csv")
write.csv(Yadav_Called_DB, "Yadav_Called_DB.csv")
write.csv(Kurmi_Called_DB, "Kurmi_Called_DB.csv")
write.csv(Satnami_Called_DB, "Satnami_Called_DB.csv")
write.csv(Gond_Called_DB, "Gond_Called_DB.csv")
write.csv(Oraon_Called_DB, "Oraon_Called_DB.csv")
write.csv(Halba_Called_DB, "Halba_Called_DB.csv")
write.csv(Kanwar_Called_DB, "Kanwar_Called_DB.csv")
write.csv(Rajwade_Called_DB, "Rajwade_Called_DB.csv")
write.csv(Ganda_Called_DB, "Ganda_Called_DB.csv")
write.csv(Kalar_Called_DB, "Kalar_Called_DB.csv")
write.csv(Oraon_christ_Called_DB, "Oraon_christ_Called_DB.csv")

Gond_Bastar<- Gond_Called_DB[((Gond_Called_DB$Assemblyid=="79")|(Gond_Called_DB$Assemblyid=="80")|(Gond_Called_DB$Assemblyid=="81")|(Gond_Called_DB$Assemblyid=="82")|(Gond_Called_DB$Assemblyid=="83")|(Gond_Called_DB$Assemblyid=="84")|(Gond_Called_DB$Assemblyid=="85")|(Gond_Called_DB$Assemblyid=="86")|(Gond_Called_DB$Assemblyid=="87")|(Gond_Called_DB$Assemblyid=="88")|(Gond_Called_DB$Assemblyid=="89")|(Gond_Called_DB$Assemblyid=="90")),]
write.csv(Gond_Bastar, "Gond_Bastar.csv")

Oraon_Sarguja<- Oraon_Called_DB[((Oraon_Called_DB$Assemblyid=="1")|(Oraon_Called_DB$Assemblyid=="2")|(Oraon_Called_DB$Assemblyid=="3")|(Oraon_Called_DB$Assemblyid=="4")|(Oraon_Called_DB$Assemblyid=="5")|(Oraon_Called_DB$Assemblyid=="6")|(Oraon_Called_DB$Assemblyid=="7")|(Oraon_Called_DB$Assemblyid=="8")|(Oraon_Called_DB$Assemblyid=="9")|(Oraon_Called_DB$Assemblyid=="10")|(Oraon_Called_DB$Assemblyid=="11")|(Oraon_Called_DB$Assemblyid=="12")|(Oraon_Called_DB$Assemblyid=="13")|(Oraon_Called_DB$Assemblyid=="14")),]
write.csv(Oraon_Sarguja, "Oraon_Sarguja.csv")

Bastar_DB<- rbind(X90, X89, X88, X87, X86, X85, X84, X83, X82, X81, X80, X79)

Bhatra_Bastar_DB<- subset(Bastar_DB, (X3 =="Kashyap"))
Gond_Bastar_DB<- subset(Bastar_DB, (X3 =="Usendi")|(X3 =="Mandavi")|(X3 =="Dugga")|(X3 =="Karma")|(X3 =="Markam")|(X3 =="Netam"))
Kalar_Bastar_DB<- subset(Bastar_DB, (X3 =="Mehhtob")|(X3 =="Jaiswal")|(X3 =="Sinha"))
Halba_Bastar_DB<- subset(Bastar_DB, (X3 =="Gagda")|(X3 =="Rawte")|(X3 =="Nayak")|(X3 =="Naik")|(X3 =="Barla"))

Sarguja_DB<- rbind(X10, X9, X8, X7, X6, X5, X4, X3, X2, X1, X11, X12, X13, X14)
Sahu_Sarguja_DB<- subset(Sarguja_DB, (X3 =="SAHU")| (X3 =="SAHOO")|(X3 =="HARWANI"))
Yadav_Sarguja_DB<- subset(Sarguja_DB, (X3 =="YADAV")| (X3 =="YADV")|(X3 =="YADU")|(X3 =="YADUVANSHI")|(X3 =="AHIR")|(X3 =="RAUT")|(X3 =="RAWAT"))
Kanwar_Sarguja_DB<- subset(Sarguja_DB, (X3 =="PAINKRA")| (X3 =="PAIKRA")|(X3 =="SAI")|(X3 =="SAY")|(X3 =="PAIKARA")|(X3 =="PAINKARA")|(X3 =="RATHIYA")|(X3 =="RATHIA")|(X3 =="KANVAR")|(X3 =="KUNVAR"))

write.csv(Sahu_Sarguja_DB, "Sahu_Sarguja_DB.csv")
write.csv(Yadav_Sarguja_DB, "Yadav_Sarguja_DB.csv")
Final<- Kanwar_Sarguja_DB

Phone_AC6<- Gond_Bastar_DB

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

Final<-Phone_AC6
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
saveWorkbook(OUT, "Gond_Bastar.xlsx")

Number<- matrix(NA, nrow = dim(Final)[1], ncol = 1)
Number<- as.data.frame(Number)
Number[,1]<- Final$phone_no
Number<- unique(Number)
Number<- rbind(Number, "750838327", "9872074841", "9144444431", "7806026269")
write.csv(Number, "Gond_Bastar_Numbers.csv", row.names = FALSE)
