# "Enumerable" is what we call a method provided by Ruby that:
  # 1. "visits" each element or pair in a collection and then...
  # 2. tests each of those elements or calculates something with them and returns a result and which then...
  # 3. returns a new collection of those returned results or which accumulates those returned results to a single value 
  
# Capturing work (but not doing it) using a thing called a block
# Doing the work and passing it arguments based on visiting each element or pair in the collection. This is called yielding to a block
# Gathering a new collection or combining the individual results into an aggregate result

.map # transform/applies "work" to each element forming a NEW array 

# map examples

array.map {|string|string.upcase} # makes all strings in array all caps
array.map {|n|n*2} # doubles numbers
array.map {|str|str.to_i} # converts strings to integers
array.map {|k;v|[k,v.to_sym]}.to_h # convert hash values to symbols

.each # Always returns the original, unchanged object

.collect # same method as map


.select # accumulates elements that make a truthy expression in the block

.filter # same as .select

.reject # accumulates the elements that don't make a truthy expression in the block

.reduce() # accumulates the results of work to form a new, single value, parameter is starting point

.each_pair{|pair| p pair} # can be used to print out array of hash key/value pairs

.reduce({}) do |memo,(key,value)| # deconstructing assignment
  p memo # first block parameter
  p key # second block parameter
  p value # second block parameter
  memo # Return value for the block and becomes the memo in next loop
end
