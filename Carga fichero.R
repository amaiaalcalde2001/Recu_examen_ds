load("C:/Users/amaia/OneDrive/Escritorio/1 BDATA/DATA SCIENCE/Recu_DS/Recu_examen_ds/muestra04.RData")
#la muestra contiene 332086 instancias (filas) y 3 variables (columnas)
colnames(muestra04)<-c("NifCif", "nombre", "genero")

datos<-muestra04

# ELIMINACION INSTANCIAS DONDE NIF NO INFORMADO ---------------------------
datos[nchar((datos$NifCif))==0,][,1]<-NA
datos <- datos[!is.na(datos$NifCif),]
datos<- datos[!(datos$NifCif==0),]

# PROCESAMIENTO SOCIEDADES LIMITADAS --------------------------------------
library(dplyr)
regexb <- "(^B)"
a <- as.vector(grepl(pattern = regexb, x = datos$NifCif))
datos_lim <- datos %>%
  mutate(nif_imp = a)

datos_lim <- datos_lim %>%
  filter(datos_lim$nif_imp == "TRUE")

datos_lim<-datos_lim[(nchar((datos_lim$NifCif))==9),]

regexa<-"$[:digit:]{8}"
aa <- as.vector(grepl(pattern = regexa, x = datos_lim$NifCif))
datos_lim <- datos %>%
  mutate(nif_imp = aa)

datos_lim <- datos_lim %>%
  filter(datos_lim$nif_imp == "TRUE")

#NO HE CONSEGUIDO SACAR EL NÚMERO EXACTO, PERO SON MENOS DE 195
