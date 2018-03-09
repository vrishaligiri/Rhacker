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
    xtab = table(x)
    modes<-xtab[max(xtab)==xtab]
    mag<-as.numeric(modes[1]) #in case mult. modes, this is safer
    themodes<-names(modes)
    return(themodes[1])
}

meany <- mean(data)
mediany <- median(data)
modey <- fmode(data)

#Output
cat(meany, sep="\n")
cat(mediany, sep="\n")
cat(modey, sep="\n")
