def size_splitter(array, size)
  ary_size = []
  ary_rest = []
  array.each do |word|
    if word.length == size
      ary_size << word
    else
      ary_rest << word
    end
  end
  # TODO: Return an array of two arrays, the first containing
  [ary_size.sort, ary_rest.sort] #       words of length `size`, the second containing all the other words
  # In addition to this split, each array should be *sorted*.
end

def block_splitter(array)
  ary_true = []
  ary_false = []
  array.each do |word|
    if yield(word)
      ary_true << word
    else
      ary_false << word
    end
  end
  # TODO: Return an array of two arrays, the first containing
  [ary_true, ary_false]
  # TODO: Return an array of two arrays, the first containing
  #       elements for which the given block yields true,
  #       the second containing all the other elements.
  #       No sort needed this time.
end

# block_splitter(beatles) { |beatle| beatle.start_with?("P") }
