puts "Reading Fahrenheit temperature value from data file..."
num = File.read("temp.dat")
fahrenheit = num.to_f
celsius = (fahrenheit.to_f - 32) * 5/9
print "Saviing result to output file 'temp.out'"
ce = File.open("temp.out", "a")
ce.puts celsius
ce.close