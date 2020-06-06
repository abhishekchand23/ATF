library(insuranceData)

autobi=data("AutoBi")
autobi
AutoBi
data("dataCar")
d=dataCar
library('xlsx')
d
write.xlsx(d, "~/mydata.xlsx")
write.xlsx(d, '/Users/abhishekchand/R/mydata.xlsx' , sheetName="Sheet1",  col.names=TRUE, row.names=TRUE, append=FALSE, showNA=TRUE)
write.table(d,'datacar.txt')
write.csv(d,'/Users/abhishekchand/R/mydata.csv', row.names = T)
library(astsa)
data(package="astsa")
chick=chicken
write.table(chick,'fff.txt')
write.csv(chick,'/Users/abhishekchand/R/chicken.csv',row.names = T)
