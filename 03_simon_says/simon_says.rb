#write your code here

def echo(word)
    return word
end

def shout(word)
    return word.upcase
end

def repeat(word, times = 2)
    result = Array.new(times, word)
    return result.join(" ")
end

def start_of_word(word, index)
    return word[0..index-1]
end

def first_word(sentence)
    sentence = sentence.split(" ")
    return sentence[0]
end

def titleize_word(word)
    return word[0].upcase + word[1..word.length-1]
end

def titleize(sentence)
    sentence = sentence.split(' ')

    results = []
    non_titles = ["and", "over", "the"]
    sentence.each do |word|
        if (non_titles.include? word)
            results << word
        else
            results << titleize_word(word)
        end
    end

    results[0] = titleize_word(results[0])

    return results.join(" ")
end