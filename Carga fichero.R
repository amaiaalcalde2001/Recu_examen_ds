load("C:/Users/amaia/OneDrive/Escritorio/1 BDATA/DATA SCIENCE/Recu_DS/Recu_examen_ds/muestra04.RData")
#la muestra contiene 332086 instancias (filas) y 3 variables (columnas)
colnames(muestra04)<-c("NifCif", "nombre", "genero")

datos<-muestra04

# ELIMINACION INSTANCIAS DONDE NIF NO INFORMADO ---------------------------
datos[nchar((datos$NifCif))==0,][,1]<-NA
datos <- datos[!is.na(datos$NifCif),]
datos<- datos[!(datos$NifCif==0),]

<<<<<<< HEAD
# PROCESAMIENTO SOCIEDADES ANONIMAS ----------------------------------------------------
library(dplyr)
regexp <- "(^A)"
g <- as.vector(grepl(pattern = regexp, x = datos$NifCif))
datos_ssaa <- datos %>%
  mutate(nif_imp = g)

datos_ssaa <- datos_ssaa %>%
  filter(datos_ssaa$nif_imp == "TRUE")

datos_ssaa<-datos_ssaa[(nchar((datos_ssaa$NifCif))==9),]

regexpp<-"$[:digit:]{8}"
gG <- as.vector(grepl(pattern = regexpP, x = datos_ssaa$NifCif))
datos_ssaa <- datos %>%
  mutate(nif_imp = gg)

datos_ssaa <- datos_ssaa %>%
  filter(datos_ssaa$nif_imp == "TRUE")

#NO HE CONSEGUIDO SACAR EL N�MERO EXACTO, PERO SON MENOS DE 480
=======
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

#NO HE CONSEGUIDO SACAR EL N�MERO EXACTO, PERO SON MENOS DE 195
>>>>>>> rama2
