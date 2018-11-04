#!/bin/ruby

require 'json'
require 'stringio'

# Complete the jumpingOnClouds function below.
def jumpingOnClouds(c)
    finalPosition = c.length - 1
    position = 0
    peekPosition = 0
    jumpCount = 0
    
    while position < finalPosition
    
        peekPosition = position + 2
        
        if c[position] == 0
            position += 2
        else
            position += 1
        end
        
        jumpCount += 1
        
    end
    
    jumpCount
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

c = gets.rstrip.split(' ').map(&:to_i)

result = jumpingOnClouds c

fptr.write result
fptr.write "\n"

fptr.close()
