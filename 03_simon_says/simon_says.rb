#write your code here
def echo(x)
	return x
end

def shout(x)
	return x.upcase
end

def repeat(x, y=2)
	return ((x + " ") * (y-1)) + x
end

def start_of_word(x,y=1)
	return x[0..y-1]
end

def first_word(x)
	x = x.split(" ")
	return x.first
end

def titleize(x)

    little_words = ["a", "over", "the", "and"]
    
    x = x.split(" ")
    
    x.first.capitalize!
    x.last.capitalize!
    
    len1 = x.size-2
    len2 = little_words.size-1

    for i in 1..len1    
        for j in 0..len2
            
            if x[i].downcase == little_words[j]
                 x[i].downcase!
                break
            else
                x[i].capitalize! 
            end
            
        end
    end
   

    return x.join(' ')
end
