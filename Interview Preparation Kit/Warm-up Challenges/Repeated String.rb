#!/bin/ruby

require 'json'
require 'stringio'

# Complete the repeatedString function below.
def repeatedString(s, n)
    charCount = 0
    if s.length >= n
        (0...n).to_a.each do |i|
            if s.split('')[i].eql? "a"
                charCount+= 1
            end
        end
    else
        quotient = n / s.length
        remainder = n % s.length
        
        charCountFromRemainder = 0
        (0...s.length).to_a.each do |i|
            if s.split('')[i].eql? "a"
                charCount+= 1
                if i < remainder
                    charCountFromRemainder += 1
                end
            end
        end
        
        charCount *= quotient
        charCount += charCountFromRemainder
    end
    
    charCount
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.to_s.rstrip

n = gets.to_i

result = repeatedString s, n

fptr.write result
fptr.write "\n"

fptr.close()
