combin <- function(n,k)
{
  if (n<k)
   { return("Error, n je menšie ako k")}
  else {
    
  n <- as.numeric(n)
  k <- as.numeric(k)
  a <- factorial(n)
  b <- factorial(k)
  h <- n-k
  c <- factorial(h)
  vysledok <- a / (c * b)
  print(vysledok)}
  
}
combin(5,2)
combin(32,9)
combin(9,3)


# uloha 2
odm <- function(n)
{
  x <- 2
  min <- 1e-10
  repeat
  {
    if (abs((x^2)-n) < min)
      break
    else x <- 0.5*((n/x)+x)
  }
  return(x)
}
odm(16)
odm(144)
odm(255)

# uloha3
integr <- function(f, a, b)
{
  f <- function(x) {cos(x)*x^4}    
  return(integrate(f, a, b)) 
}
integr(cos(x)*x^4,3,8)
integr(cos(x)*x^4,9,17)


stri_trans_list()
#uloha 4

install.packages("stringi")
help("stringi")
stri_trans_list()

library(stringi)
clear.dia <- function(a)
{
  return(stri_trans_general(a, "Latin-ASCII"))
}
clear.dia("èuèoriedka")
clear.dia("riebä")
clear.dia("kôò")
