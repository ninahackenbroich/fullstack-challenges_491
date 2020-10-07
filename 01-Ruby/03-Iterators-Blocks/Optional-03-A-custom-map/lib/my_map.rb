def my_map(array)
  new_ary = []
  array.each do |ele|
    block_given? ? new_ary << yield(ele) : new_ary << ele
  end
  new_ary # TODO: Re-implement the same behavior as `Enumerable#map` without using it! You can use `#each` though.
end
