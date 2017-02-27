def translate(x)
    
    #split words into array
    x = x.split(" ")
    
    #translate each word and save into array
    x.collect! do |i|
        
        #store letters
        first_letter = i[0]
        second_letter = i[1]
        third_letter = i[2]
        
              
        #if first letter is a consonate, move to end + add "ay"
        if vowel?(first_letter) == false
            i.slice!(0)
            i = "#{i}#{first_letter}"
                       
            #if second letter is a consonate, move to end + add "ay"; also check for "qu"
            if (vowel?(second_letter) == false) || (first_letter == "q"  && second_letter == "u")
                i.slice!(0)
                i = "#{i}#{second_letter}"
                
                #if second letter is a consonate, move to end + add "ay"; also check for "qu"
                if vowel?(third_letter) == false || (second_letter == "q"  && third_letter == "u")
                    i.slice!(0)
                    i = "#{i}#{third_letter}"
                
                end
            end
        end

        #add "ay" 
        i = "#{i}ay"
        
    end
    
    #combine each word back together with spacing
    return x.join(" ")
    
end

#check if letter is a vowel
def vowel?(letter)
    
    vowel = ["a","e","i","o","u"]
    
    #compare letter to each vowel
    vowel.each do |i|
        #loop through all vowels to return true
        if letter == i
            return true
    
        end
    end
    
    #if looping did not return true, return false
    return false
    
end 
