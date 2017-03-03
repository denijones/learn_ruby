class Book
    #get and set title
    attr_accessor :title

    #structure the titles
    def title=(new_title)
        #split title to capitalize each word
        title = new_title.split(" ")

        #hold conjunctions
        conjunctions = ["and", "in", "the", "an", "of", "a"]

        #always capitalize first word regardless
        title[0].capitalize!

        #for every other word, capitalize unless it is a conjunction or number
        title[1..-1].collect! do |i|

          unless (conjunctions.include? i) or (i =~ /\d/)
            i.capitalize!
          else
            i
          end


        end

        @title = title.join(" ")

    end
end
