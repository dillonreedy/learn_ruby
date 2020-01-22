#write your code here
# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.
#

def translate(sentence)
    words = sentence.split(' ')
    words = words.map do |word|
        if word[0].chr == 'q'
            parts = ['qu', word.slice(2, word.length-2)]
        else
            parts = word.split(/([aeiou].*)/)
        end
        parts[1] + parts[0] + "ay"        
    end
    return words.join(" ")
end