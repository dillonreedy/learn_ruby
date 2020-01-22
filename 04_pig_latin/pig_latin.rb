#write your code here
# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.
#

def add_ay(word)
    return word + "ay"
end

def translateWord(word)
    res = case word
            when /^[aeiouy]/
                word
            when /^(qu+)(.*)/
                $2+$1
            when /^([a-z]qu+)(.*)/
                $2+$1
            when /^([^aeiouy]+)(.*)/
                $2+$1
            else
                word
            end

    add_ay(res)
end

def translate(sentence)
    words = sentence.split(' ')

    words = words.map do |word|
        translateWord(word)   
    end
    
    return words.join(" ")
end