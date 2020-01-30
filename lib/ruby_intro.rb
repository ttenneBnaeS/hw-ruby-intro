# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  for x in arr
    sum += x
  end
  return sum
end

def max_2_sum arr
  return sum(arr.max(2))
end

def sum_to_n? arr, n
  z = 0
  for x in arr
    z+=1
    arr[z..-1].each do |y|
      if x + y == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return s[0,1] =~ /[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]/
end

def binary_multiple_of_4? s
  if s =~ /^[0-1]{1,}$/
    return s.to_i(2)%4 == 0
  else
    return false
  end
end

# Part 3

class BookInStock attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError.new(
      "Must Provide isbn and price must be greater thatn 0"
    ) if isbn == '' || price <= 0
    
    @isbn = isbn
    @price = price
  end

  def price_as_string
    sprintf('%.2f', price)
    return "$#{sprintf('%.2f', @price)}"
  end
end
