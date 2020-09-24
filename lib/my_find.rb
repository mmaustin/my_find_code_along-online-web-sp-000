require 'pry'

collection = (1..100).to_a


def my_find(collection)
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i])
    i = i + 1
  end
end

my_find(collection) {|i| if i % 3 == 0 and i % 5 == 0 }
