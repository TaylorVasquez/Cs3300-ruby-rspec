# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # should return the value after completing the sum method
  return arr.sum
end

def max_2_sum arr
  #Sort the array from last (largest) then add two
  sum(arr.sort.last(2))   

end

def sum_to_n? arr, n
  # checking if length is less than 1
  if arr.length<=1
    return false
  # if true determine the length
  else
    for i in 0..(arr.length-1)
        for j in i+1..(arr.length-1)
            #add the data in the array to see if it is equal to n
            if arr[i]+arr[j]==n
              # if equal to n return true
              return true
            end
        end
    end
    return false
  end

  
end

# Part 2

def hello(name)
  # adding Hello before name
  return "Hello, "+name
end

def starts_with_consonant? s
  # determining when the first letter is not AEIOU 
  # but the string at the beginning of the letter is
  if s =~/^[A-Za-z]/ and not s =~/^[AEIOUaeiou]/
    # then return true
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # checking if binary is 0
  if s == "0"
    # if 0 return true
    return true
  end
  #If it is not a binary number
  if not s =~/[01]*/
    # then return false
    return false
  end
  # if it is a multiple of 4 return true
  return s =~/^[01]*00$/
end

# Part 3

class BookInStock
  #If the parameter definition requirements are not met
  def initialize(isbn,price)
    # throw an argument error
    raise ArgumentError if isbn == ""
    raise ArgumentError if price <= 0
    @isbn =isbn
    @price =price
  end
  # variables 
  def isbn
    @isbn
  end
  def price
    @price
  end
  def isbn=(isbn)
    @isbn=isbn
  end
  def price=(price)
    @price=price
  end

  def price_as_string()
    # Add $ sign before price
    newprice ='$'+format('%.2f',@price.round(2)).to_s()
    return  newprice
  end

end
