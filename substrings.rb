def substrings(string,dictionary)
    result = {}

    if string.match?("\s") == false
        dictionary.each do |word|
            if string.include?(word)
                if result.has_key?(word)
                    result[word] += 1
                else
                    result[word] = 1
                end
            end
        end
    else 
        string = string.split.map {|word| word.downcase}
        string.each do |word|
            dictionary.each do |key|
                if word.include?(key)
                    if result.has_key?(key)
                        result[key] += 1
                    else
                        result[key] = 1
                    end
                end
            end
        end
    end
    return result
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)