def substrings(string, dictionary)
    result
    for word in 0...dictionary.length

    end 
end



dictionary = []

puts "Enter your words for the dictionary (enter 0 to finish): "
dictionary_inputs = gets.chomp.strip.downcase

while true 
    
    dictionary.push(dictionary_inputs)
    dictionary_inputs = gets.chomp.strip.downcase
    
    break if dictionary_inputs == "0"
    
end

puts "Enter the word to calculate the substrings from: "
string_input = gets.chomp.strip.downcase

result = substrings(string_input, dictionary)
puts "The possible substrings of #{string_input} from #{dictionary} are #{result}"
