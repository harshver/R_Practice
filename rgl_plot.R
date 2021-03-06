rm(list=ls())
library(readxl)
datas <- read_excel("data_frame.xlsx", range = "A1:D1001")
x<-datas$x
y<-datas$y
z<-datas$z
datas$type<-factor(datas$type)
library(rgl)
library(car)
library(scatterplot3d)
open3d()
scatter3d(x = x, y = y, z = z,point.col = "blue",ylab="simple",xlim=c(0,500),ylim=c(0,500),zlim=c(0,500))
rgl.snapshot(filename = "simple.png")

open3d()
scatter3d(x = x, y = y, z = z, groups = datas$type, grid = FALSE,ylab="groups")

open3d()
scatter3d(x = x, y = y, z = z, groups = datas$type, grid = FALSE, fit = "linear",ylab="linear")

open3d()
scatter3d(x = x, y = y, z = z, groups = datas$type, grid = FALSE, fit = "quadratic",ylab="quadratic")

open3d()
scatter3d(x = x, y = y, z = z, groups = datas$type, grid = FALSE, fit = "smooth",ylab="smooth")

open3d()
scatter3d(x = x, y = y, z = z, groups = datas$type, grid = FALSE, fit = "additive",ylab="additive")

open3d()
scatter3d(x = x, y = y, z = z, groups = datas$type, surface = FALSE, ellipsoid = TRUE,ylab="ellipsoid")
rgl.snapshot(filename = "ellipsoid.png")

rm(x,y,z)
