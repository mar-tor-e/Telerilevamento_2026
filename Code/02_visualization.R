# R code for visualizing satellite data

install.packages("viridis")
install.packages("devtools")
library(devtools)
install_github("ducciorocchini/imageRy")

library(terra)
library(imageRy)
library(viridis)

im.list()
# Sentinel bands:
# https://custom-scripts.sentinel-hub.com/custom-scripts/sentinel-2/bands/

b2 = im.import("sentinel.dolomites.b2.tif")

#cambiare colori della foto che abbiamo importato 

cl = colorRampPalette(c("lightsalmon", "magenta", "mediumpurple1"))(100)
#100 sono le sfumature, si possono specificare fuori
#mettiamo c per creare un vettore
plot(b2, col=cl)

#small number of nuances
cl = colorRampPalette(c("lightsalmon", "magenta", "mediumpurple1"))(3)
#pacchetto viridis, con scale di colore per daltonici (no turbo)
#tutti i pacchetti installati si mettono in cima

plot(b2,col=inferno(100))
#il numero di sfumature stavolta è dentro alla funzione come parentesi del colore
plot(b2,col=mako(100))

cl = colorRampPalette(c("gray13", "gray49", "gray95"))(100)
plot(b2, col=cl)

par(mfrow=c(2)
plot(b2,col=inferno(100))
plot(b2, col=cl)

im.multiframe(1,2)
plot(b2,col=inferno(100))
plot(b2, col=cl)
