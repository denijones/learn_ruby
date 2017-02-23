#write your code here
def add(x,y)

	return x + y

end

def subtract(x,y)
	return x-y
end

def sum(x)
	sum = 0
	x.each {|y| sum += y}
	return sum
end

def multiply(x,y,*z)
	sum = 0
	sum = x * y
	z.each {|num| sum *= num}
	return sum
end

def power(x,y)
	return x**y
end

def factorial(x)
	sum = 1
	if x > 0
		for i in (x).downto(1)
			sum *= i
		end
	end


	return sum
end


	
