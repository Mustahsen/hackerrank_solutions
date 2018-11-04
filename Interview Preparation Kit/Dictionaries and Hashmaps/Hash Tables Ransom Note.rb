#!/bin/ruby

require 'json'
require 'stringio'

# Complete the checkMagazine function below.
def checkMagazine(magazine, note)
    magazineWordCount = {}
    noteWordCount = {}
    
    magazine.each do |value|
        magazineWordCount.key?(value) ? magazineWordCount[value] = magazineWordCount[value] + 1 : magazineWordCount[value] = 1
    end
    
    note.each do |value|
        noteWordCount.key?(value) ? noteWordCount[value] = noteWordCount[value] + 1 : noteWordCount[value] = 1
    end
    
    noteWordCount.each_key do |key|
        if magazineWordCount.key?(key) == false
            puts "No"
            return
        elsif magazineWordCount[key] < noteWordCount[key]
            puts "No" 
            return
        end
    end
        
    puts "Yes"
end

mn = gets.rstrip.split

m = mn[0].to_i

n = mn[1].to_i

magazine = gets.rstrip.split(' ').map(&:to_s)

note = gets.rstrip.split(' ').map(&:to_s)

checkMagazine magazine, note
