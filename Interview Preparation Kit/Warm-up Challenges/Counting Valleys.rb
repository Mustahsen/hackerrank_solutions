#!/bin/ruby

require 'json'
require 'stringio'

# Complete the countingValleys function below.
def countingValleys(n, s)
    level = 0
    valleyCount = 0
    
    s.split('').each do |movement|
        if movement.eql? "U"
            newLevel = level + 1
        else
            newLevel = level - 1
        end
        
        if level == 0 && newLevel == -1
            valleyCount += 1
        end
        
        level = newLevel
        
    end
    
    valleyCount
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

s = gets.to_s.rstrip

result = countingValleys n, s

fptr.write result
fptr.write "\n"

fptr.close()
