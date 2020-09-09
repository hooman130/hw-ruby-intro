# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum
end

def max_2_sum arr
  return arr.max(2).sum
end

def sum_to_n? arr, n
  return !!arr.uniq.combination(2).detect { |a, b| a + b == n }
end

# Part 2

def hello(name)
  return "Hello, " + "#{name}"
end

def starts_with_consonant? s
  return (['A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u'].include? s[0]).! && (('A'..'Z') === s[0] || ('a'..'z') === s[0])
end

def binary_multiple_of_4? s
  return (s.delete('01') == '') && (s.to_i(2) % 4 == 0) && (s != '') 
end

# Part 3

class BookInStock
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(isbn) 
    @isbn = isbn 
  end
  
  def price=(price) 
    @price = price 
  end
  
  def initialize(isbn, price)
      raise ArgumentError, 'isbn is empty' unless isbn != ''
      raise ArgumentError, 'price is not valid' unless price > 0
      @isbn = isbn
      @price = price
  end
  
  def price_as_string()
    ans = "$" + "%0.2f" % [@price]
    return ans
  end
end
