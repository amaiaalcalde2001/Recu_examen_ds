load("C:/Users/amaia/OneDrive/Escritorio/1 BDATA/DATA SCIENCE/Recu_DS/Recu_examen_ds/muestra04.RData")
#la muestra contiene 332086 instancias (filas) y 3 variables (columnas)
colnames(muestra04)<-c("NifCif", "nombre", "genero")

datos<-muestra04

# ELIMINACION INSTANCIAS DONDE NIF NO INFORMADO ---------------------------
datos[nchar((datos$NifCif))==0,][,1]<-NA
datos <- datos[!is.na(datos$NifCif),]
datos<- datos[!(datos$NifCif==0),]
