def sum_odd_indexed(array)
  sum = 0
  array.each_with_index do |num, i| 
    i.odd? ? sum += num : 0
    
  end # TODO: computes the sum of elements at odd indexes (1, 3, 5, 7, etc.)
  sum #       You should use Enumerable#each_with_index
end

def even_numbers(array)
  array.select {|num| num.even? } 
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select
end

def short_words(array, max_length)
  array.reject { |word| word.length > max_length }
  # TODO: Take an array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject
end

def first_under(array, limit)
  array.find { |num| num < limit } 
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find
end

def add_bang(array)
  array.map { |word| "#{word}!" } 
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
end

def concatenate(array)
  array.reduce(:+)
  # TODO: Concatenate all strings given in the array.
  #       You should use of Enumerable#reduce
end

def sorted_pairs(array)
  twos = array.each_slice(2) 
  twos.map { |sli| sli.sort }
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  #       You should use of Enumerable#each_slice
end
