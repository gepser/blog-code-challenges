# Input: "aaaabbbcca"
# Output: [("a", 4), ("b", 3), ("c", 2), ("a", 1)]

# Write a function that converts the input to the output

def count_in_a_row(word)
    counter = 1
    result = Hash.new.compare_by_identity
    
    for i in (1..word.length)
        if word[i] == word[i-1]
            counter += 1
        else
            result[word[i-1]] = counter
            counter = 1
        end
    end
    
    result
end

def format_output(raw_output)
    formatted_output = "["
    raw_output.each do |key, value|
        formatted_output += "(\"" + key + "\", " + value.to_s + "), "
    end
    formatted_output.delete_suffix!(", ")
    formatted_output += "]"
end

puts format_output(count_in_a_row("aaaabbbcca"))

# Output:   [("a", 4), ("b", 3), ("c", 2), ("a", 1)]
# Expected: [("a", 4), ("b", 3), ("c", 2), ("a", 1)]
