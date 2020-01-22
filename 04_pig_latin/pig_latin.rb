#write your code here
# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.
#

def translateWord(word)
    res = case word
    when /^[aeiouy]/
        word+"ay"
    when /^(qu+)(.*)/
        $2+$1+"ay"
    when /^([^aeiouy]+)(.*)/
        $2+$1+"ay"
    else
        word
    end
end

def translate(sentence)
    words = sentence.split(' ')

    words = words.map do |word|
        translateWord(word)   
    end
    
    return words.join(" ")
end