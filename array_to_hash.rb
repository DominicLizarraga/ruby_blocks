def array_to_hash(array)
  # create empty hash
  hash = Hash.new
  # iterate thru each element of the array
  array.each_with_index do |item, index|
    # set a key by looking if a block was provided
    key = block_give? ? yield(index) : index.to_s
    # assign that outcome to the hash
    hash[key] = item
  end
  # return hash built
  return hash
end
