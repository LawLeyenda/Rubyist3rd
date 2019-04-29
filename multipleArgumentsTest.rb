def two_or_more(a,b,*c)
  puts "I require two or more arguments!"
  puts "And sure enough, I got: "
  p a, b, c
end

def default_args(a,b,c=1)
  puts "Values of variables: " ,a,b,c
end

def mixed_args(a,b,*c,d)
  puts "Arugments: "
  p a,b,c,d
end

def args_unleashed(a,b=1,*c,d,e)
  p a,b,c,d,e
end

two_or_more(5,4,3,2,1)
default_args(3,2, 5)
mixed_args(1,2,3,4,5,6,6,)
args_unleashed(1,2,3)