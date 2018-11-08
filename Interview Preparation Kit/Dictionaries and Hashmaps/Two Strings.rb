#!/bin/ruby

require 'json'
require 'stringio'
require 'set'

# Complete the twoStrings function below.
def twoStrings(s1, s2)
    s1_characters = s1.split('').to_set
    s2_characters = s2.split('').to_set
    common_characters = s1_characters & s2_characters
    if common_characters.empty?
        return "NO"
    end
    
    return "YES"
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

q = gets.to_i

q.times do |q_itr|
    s1 = gets.to_s.rstrip

    s2 = gets.to_s.rstrip

    result = twoStrings s1, s2

    fptr.write result
    fptr.write "\n"
end

fptr.close()
