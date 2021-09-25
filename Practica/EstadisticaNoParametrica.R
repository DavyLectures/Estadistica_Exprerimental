# Instalar el comando (se ejecuta, una sola vez)
install.packages("agricolae", dependencies = T)

# Cargar la libreria (se carga cada vez que se va trabajar)
library(agricolae)

#################################################################
#Prueba de Kruskall-Wallis--------------------------------
#----------------------------------------------------------
#Copiar los datos del excel con, "ctrl + C"
#Luego ejecutar esta linea de comando
dados.KW<-read.table(file="clipboard", sep="\t", dec=".", head=T)

#Prueba de kruskall-Wallis
kruskal(dados.KW$Nota, dados.KW$Grupos, console=T)
##################################################################


#################################################################
#Prueba de Friedman -------------------------------------
#----------------------------------------------------------
#Copiar los datos del excel con, "ctrl + C"
#Luego ejecutar esta linea de comando
dados.Friedman<-read.table(file="clipboard", sep="\t", dec=".", head=T)

friedman(dados.Friedman$Juez, dados.Friedman$Vino,
         dados.Friedman$Nota, console = T)


