#write your code here

def add(number_one, number_two)
    return number_one+number_two
end

def subtract(number_one, number_two)
    return number_one-number_two
end

def sum(array)
    sum = 0
    array.each {|element| sum+=element}
    return sum
end

def multiply(number_one, number_two)
    return number_one*number_two
end

def product(numbers)
    result = 1
    numbers.each {|element| result *= element}
    return result
end

def power(base, exponent)
    return base ** exponent
end

def factorial(n)
    if (n == 0 or n == 1) 
        return 1
    else
        return factorial(n-1)*n
    end
end
