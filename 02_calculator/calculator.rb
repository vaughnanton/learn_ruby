def add(num0, num1)
  num0+num1
end

def subtract(num0,num1)
  num0-num1
end

def multiply(num0,num1)
  num0*num1
end

def sum(num)
  if num == []
    0
  else
    num.inject(0){|sum,x| sum + x}
end
end
