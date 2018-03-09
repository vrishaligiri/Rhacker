# Enter your code here. Read input from STDIN. Print output to STDOUT

#Reading from STDIN
input<-file('stdin', 'r')

#Skip the first line
x <- readLines(input)[[2]]

#Split the data and convert into numeric form 
split_data <- strsplit(x, " ")
data <- as.numeric(unlist(split_data))

#Mode function
fmode = function(x){ 
  ta = table(x)
  tam = max(ta)
  if (all(ta == tam))
    mod = min(x)
  else
    if(is.numeric(x))
      mod = as.numeric(names(ta)[ta == tam])
  else
    mod = names(ta)[ta == tam]
  return(mod)
}

meany <- mean(data)
mediany <- median(data)
modey <- fmode(data)

#Output
cat(meany, sep="\n")
cat(mediany, sep="\n")
cat(modey, sep="\n")