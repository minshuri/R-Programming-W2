1+1
a <- 1
a
b <- 2
b
a+b
var1 <- c(1,2,5,7) #선의 개념
var1
vec02 <- c(1:5)
vec02
vec02 <- seq(1,5)
vec02
vec04 <- 1:5 # c( )생략될 수 있
vec04
vec05 <- seq(1, 10, by=2)
vec05
class(vec05)
vec06 <- c("안","녕")
vec06
class(vec06)
vec06 <- 1:3
mean(vec06)
class(vec06)
##5+7 더하기 로직을 구하시
x <-5
y <-7
##5+7더하기 로직을 식까지 보이도록 구하시
op <- "+"
eq <- "="
cat(x,"+",y,"=",x+y) #변하지 않으면 식에다 바로 집어넣어라.
##더하기 로직을 구하시오 <- 함수를 만들어라.
##진짜 객체 / 모든 식을 함수로 만들어 써라.
x <- 5
y <- 2
x+y
plus <- function(x,y){return(x+y)}
plus(3,4)
deduct <- function(x,y){return(x-y)}
deduct(5,3)
multiply <- function(x,y){return(x*y)}
multiply(5,3)
divide <- function(x,y){return(x%/%y)}
divide(9,3)
remainder <- function(x,y){return(x%%y)}
remainder(9,2)
cat(x,"+",y,"=",x+y)
##if else 구문
op <- "+"
X <- 6
Y <- 3
#if("+")print("plus") else
#if("-")print("minus") else
#if("*")print("multi") else
#if("/")print("divid") else
#if("%")print("remainder")else
#print("error")
cat(
  x,
  op,
  y,
  "=",
  
switch(
  OP,
  "+"= toString(x+y),
  "-"= toString(x-y),  
  "*"= toString(x*y),
  "/"= toString(x/y),
  "%"= toString(x%y),
#toString 문자열
  
  

op <- "+"
x <- 6
y <- 3
cat(
  x,
  op,
  y,
  "=",
switch(
  op,
  "+"=toString(x+y),
  "-"=toString(x-y),
  "*"=toString(x*y),  
  "/"=toString(x %/% y),
  "%"=toString(x%%y)
))

## if - else 구문
op <- "+"
x <- 6
y <- 3
if(op=="+")print(x+y) else
  if(op=="-")print(x-y) else
    if(op=="*")print(x*y) else
      if(op=="/")print(x%/%y) else
        if(op=="%")print(x%%y) else
          print("error")


## assignment <- : 할당
## branch : 분기문
## loop : 반복문
## if - else 구문:: 함수 만들기 전
x <- 20
op <- "+"
y <- 3
if(op=="+")cat(x,op,y,"=",x+y)else
if(op=="-")cat(x,op,y,"=",x-y)else
if(op=="*")cat(x,op,y,"=",x*y)else
if(op=="/")cat(x,op,y,"=",x%/%y)else
if(op=="%")cat(x,op,y,"=",x%%y)else
  print("error")

##Switch 구문:함수 만들기 전
x <- 20
op <- "*"
y <- 3
switch(
  op,
  "+"=cat(x,op,y,"=",x+y),
  "-"=cat(x,op,y,"=",x-y),
  "*"=cat(x,op,y,"=",x*y),
  "/"=cat(x,op,y,"=",x%/%y),
  "%"=cat(x,op,y,"=",x%%y),
  "error"
)

##if - else 구문::함수
calc <- function(x,op,y){
  res <-
    if(op=="+")cat(x,op,y,"=",x+y)else
    if(op=="-")cat(x,op,y,"=",x-y)else
    if(op=="*")cat(x,op,y,"=",x*y)else
    if(op=="/")cat(x,op,y,"=",x%/%y)else
    if(op=="%")cat(x,op,y,"=",x%%y)else
            print("error")
  return(res)
}
calc(4,"-",2)
##swtich 구문::함수


calc <- function(x,op,y){
  res <-
  op,
  "+"=cat(x,op,y,"=",x+y),
  "-"=cat(x,op,y,"=",x-y),
  "*"=cat(x,op,y,"=",x*y),
  "/"=cat(x,op,y,"=",x%/%y),
  "%"=cat(x,op,y,"=",x%%y),
return(res)
}



## switch 구문
calc1 <- function(x,op,y){
  res <- switch(
  op,
  "+"=x+y,
  "-"=x-y,
  "*"=x*y,
  "/"=x%/%y,
  "error"
  )
  return(cat(x,op,y,"=",res))
}
calc1(3,"-",1)


##if - else 구무
calc <- function(x,op,y){
  res<-
  if(op=="+")x+y else
  if(op=="-")x-y else
  if(op=="*")x*y else
  if(op=="/")x%/%y else
  "error"
  return(cat(x,op,y,"=",res))
}
calc(5,"*",3)









##성적표
# kor, eng, math를 받아서 총점, 평균을 구해야 함
# grade(80,80,80)
# 총점 : 240 평균 : 80

grade <- function(kor,eng,math){
  sum <- kor+eng+math
  avg <- sum/3
  return(cat("총점",":",sum,"평균",":",avg))
}
grade(10,50,35)

##성적표
# kor, eng, math를 받아서 총점, 평균을 구해야 함
# grade(80,80,80)
# 총점 : 240 평균 : 80
# if - else, switcH
# 평균 90 이상 A, 80 B, 70이상 C, 60이상 D, 50이상 E, 그 밖이면 F

grade1 <- function(kor,eng,math){
  avg <- (kor+eng+math)/3
  res <-
  if(avg>=90) "A" else
  if(avg>=80) "B" else
  if(avg>=70) "c" else
  if(avg>=60) "D" else
  if(avg>=50) "E" else
  "F"
  return(res)
}
grade1 (95,92,93)
grade1 (30,35,40)
grade1 (70,69,90)


grade2 <- function(kor,eng,math){
  avg <- (kor+eng+math)/3
  res <-
  switch(
  op,
  ""="A",
  ""="B",
  ""="C",
  ""="D",
  ""="E",
  "F"
  )
  return(res)
}
grade2(30,60,70)
grade2(100,60,90)





