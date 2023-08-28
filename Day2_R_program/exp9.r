num=as.numeric(readline(prompt = "Enter a number to find factor :"))
print("Factors are :\n")  
for(i in 1:10){
  if(num%%i==0){
    print(i)
  }
}