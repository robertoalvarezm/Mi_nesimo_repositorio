###Ciclo while

### while (condición) expresión

edad <- 21

while (edad >18){
  edad <- edad-1
  print(edad)
}

###Esribir un msj 10 veces 
num_mensaje <-1

while(num_mensaje<= 10) {
  print(paste("Hoy es un día nublado", num_mensaje))
  num_mensaje <- num_mensaje + 1
}

##Ciclo para hacer más robustos sus programas 

###Ejercicios de while 
##La suma de los primeros números naturales consecutivos pero tienen que parar hasta que la suma supere al 100

###Toman el primero núm y la suman el siguiente núm

sumatoria_num <- 0
numero <- 1


while(sumatoria_num < 100){
  sumatoria_num <- sumatoria_num + numero
  print(paste("Número:", numero, "sumatoria numeros:", sumatoria_num))
  numero <- numero +1
}

###Ejercicio ahora que de un conteo regresivo de una fiesta y que print un mensaje "Faltan tantos días para la fiesta"

dia_actual <- 21
fiesta_fecha <- 25

while(dia_actual <= fiesta_fecha){
  dias_restantes <- fiesta_fecha - dia_actual
  print(paste("Fatan", dias_restantes, "días para tu fiesta"))
  dia_actual <- dia_actual +1
  
}

###Ejercicio robert con sample
cuenta <- 10
inicio_libro <- c("En", "un", "lugar", "de")

while(cuenta >=1){
  print(sample(inicio_libro, 1))
  cuenta <- cuenta-1
}

##Ahora lee el de excusas 
excusas_ale <- read.csv("raw_Data/Lista de excusas 2024 - Hoja 1.csv")
cuentas <- 10

while(cuentas>=1) {
  intro <-excusas_ale[sample(1:dim(excusas_ale)[1],1),1] ##Ir seleccionando cada excusa dependiendo cualquiero cambio el valor de la columna
  persona <- excusas_ale[sample(1:dim(excusas_ale)[1],1),2] 
  mentira <-excusas_ale[sample(1:dim(excusas_ale)[1],1),3]
  
  print(paste(intro, persona, mentira))
  cuentas <- cuentas-1
}

###Del archivo fasta hay que contar las A

library (Biostrings)
arch_fasta <- readDNAStringSet("raw_Data/sequence (4).fasta")
arch_fasta
letterFrequency(arch_fasta, "A")

num_a <- 0

contador <- 1

while(num_a <100){
  if(arch_fasta[[1]][contador]==DNAString("A")){ ###tuvimos que modificarlo aquín
    num_a <- num_a +1
  }
  contador <- contador +1
}

###Que tengo que poner en el print???
###Crear uno con el de ahí 





