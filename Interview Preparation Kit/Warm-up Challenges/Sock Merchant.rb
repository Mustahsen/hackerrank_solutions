#!/bin/ruby

require 'json'
require 'stringio'

# Complete the sockMerchant function below.
def sockMerchant(n, ar)
    numberOfPairs = 0
    colorCountMap = {}
    
    ar.each do |x|
      if colorCountMap.key?(x)
          colorCountMap[x] = colorCountMap[x] + 1
      else
          colorCountMap[x] = 1
      end
    end

    colorCountMap.each do |key, value|
        
      if value > 1
          numberOfPairs += value/2
      end
      
    end
    
    return numberOfPairs
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = sockMerchant n, ar

fptr.write result
fptr.write "\n"

fptr.close()
