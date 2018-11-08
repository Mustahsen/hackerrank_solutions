#!/bin/ruby

require 'json'
require 'stringio'
require 'set'

# Complete the sherlockAndAnagrams function below.
def sherlockAndAnagrams(s)
    substrings = createSubStrings s
    substring_char_map = {}
    substrings.each do |word|
        temp_map = {}
        word.split('').each do |char|
            if temp_map.has_key? char
                temp_map[char] += 1
            else
                temp_map[char] = 1
            end
        end
        substring_char_map[word] = temp_map
    end
    puts substring_char_map
end

def createSubStrings(s)
    puts s
    substrings = Array.new
    previous_characters = Array.new
    s.split('').each do |character|
        new_substrings = Array.new
        new_substrings.push character
        previous_characters.each do |p_character|
            new_substrings.push(p_character + character)
        end
        substrings += previous_characters
        previous_characters.clear
        previous_characters += new_substrings 
    end
    substrings += previous_characters
    substrings
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

q = gets.to_i

q.times do |q_itr|
    s = gets.to_s.rstrip

    result = sherlockAndAnagrams s

    fptr.write result
    fptr.write "\n"
end

fptr.close()
