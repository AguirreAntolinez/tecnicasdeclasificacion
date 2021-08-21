#Arbol de Clasificación
library(tidyverse)
library(rpart)
library(rattle)
library(rpart.plot)
arbol<-rpart(formula=factor~Var1+Var2+Var3,data=df,method="class")
#Gráfico de arbol
fancyRpartPlot(arbol)
#Predecir/Clasificar con el árbol
predicarbol<-predict(arbol,type="class")
df$predicarbol<-predicarbol
#Tasa aparente de error
tea <- 1 - sum(df$factor == df$predicarbol)/n   #n es el número de observaciones.
tea
