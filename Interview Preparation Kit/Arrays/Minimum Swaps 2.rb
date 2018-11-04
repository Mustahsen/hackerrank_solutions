#!/bin/ruby

require 'json'
require 'stringio'

# Complete the minimumSwaps function below.
def minimumSwaps(arr)
    swapCount = 0
    positionHash = {}
    
    (0...arr.length).each do |i|
        positionHash[arr[i]] = i+1
    end
    
    (0...arr.length).each do |i|
        if positionHash[i+1] != i+1
            puts i
            
            wrongLocation = positionHash[i+1]
            wrongValueAtLocation = arr[i]
            
            positionHash[i+1] = i+1
            arr[i] = i + 1
            positionHash[wrongValueAtLocation] = wrongLocation
            arr[wrongLocation - 1] = wrongValueAtLocation
            
            swapCount += 1
        end
    end
    swapCount
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

res = minimumSwaps arr

fptr.write res
fptr.write "\n"

fptr.close()
