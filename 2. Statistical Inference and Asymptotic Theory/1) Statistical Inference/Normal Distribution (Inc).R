#_______________________ Normal Distribution MSc (Juan Acevedo) _______________________
install.packages("BSDA")
install.packages("datasets")
install.packages("ggplot2")

#________ (1) Números aleatorios de una normal ________#

# Generar 100 números aleatorios de una distribución normal con media 0 y desviación estándar 1
random_numbers <- _____(n = 100, ____ = 0, __ = 1)
print(random_numbers)

#________ (2) CDF y PDF ________#

# Calcular la CDF de una distribución normal con media 0 y desviación estándar 1 evaluada en x = 1
x <- 1
cdf <- _____(x, mean = 0, sd = 1)
print(cdf)

# Calcular la PDF de una distribución normal con media 0 y desviación estándar 1 evaluada en x = 1
pdf <- _____(x, mean = 0, sd = 1)
print(pdf)

#________ (3) Medidas de tendencia central y dispersión  ________#

# Generar 100 números aleatorios de una distribución normal con media 0 y desviación estándar 1
random_numbers <- _____(n = 100, mean = 0, sd = 1)

# Calcular la media de los números aleatorios
mean_value <- _____(random_numbers)
print(mean_value)

# Calcular la mediana de los números aleatorios
median_value <- _____(random_numbers)
print(median_value)

# Calcular la desviación estándar de los números aleatorios
sd_value <- _____(random_numbers)
print(sd_value)

#________ (4) Pruebas de Hipótesis  ________#

library(_____)

# Generar dos muestras de 200 números aleatorios de una distribución normal con media 0 y desviación estándar 1
sample_1 <- _____(n = 200, mean = 0, sd = 1)
sample_2 <- _____(n = 200, mean = 0.5, sd = 1)

# Realizar una prueba t de dos muestras para comparar las medias de las muestras
t_test_result <- _____(sample_1, sample_2)
print(t_test_result)

# Realizar una prueba Z para comparar la media de una muestra con una media poblacional conocida
sigma_x <- sd(sample_1)
z_test_result <- _____(sample_1, mu = 1, sigma.x = sigma_x, alternative = "two.sided")
print(z_test_result)

#________ (5) Ejercicio Práctico  ________#
#Para este ejemplo, utilizaremos la base de datos "mtcars", 
# que contiene información sobre diversas características de 32 modelos de automóviles.

library(datasets)
data(mtcars)

mpg <- mtcars$mpg

# Calculamos media y desviación estándar
mean_mpg <- mean(mpg)
sd_mpg <- sd(mpg)

cat("Media de mpg:", mean_mpg)
cat("\nDesviación estándar de mpg:", sd_mpg)

# Graficar la distribución
library(ggplot2)

ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(aes(y = ..density..), binwidth = 2, color = "black", fill = "white") +
  stat_function(fun = dnorm, args = list(mean = mean_mpg, sd = sd_mpg), color = "red", linewidth = 1) +
  labs(title = "Distribución de mpg", x = "mpg", y = "Densidad")

# Calcular probabilidad de de obtener un valor de "mpg" mayor a 25 
p_mpg_mayor_25 <- _____(25, mean_mpg, sd_mpg, lower.tail = FALSE)

cat("\nProbabilidad de obtener un valor de mpg mayor a 25:", p_mpg_mayor_25)
