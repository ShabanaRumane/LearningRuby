


# EASY

# Write a method that returns its argument converted to a string.
def my_to_s(arg)
    # your code goes here
    arg.to_s
  end

  puts "1: " + my_to_s(5)
  
  # Write a method that returns its argument rounded to the nearest integer.
  def my_round(num,to)
    # your code goes here
    num.round(to)
  end
  
  puts "2: " + my_round(5.75456,0).to_s
  puts "2a: " + my_round(5.75456,3).to_s
  
  # Write a method that returns the remainder of its two arguments.
  # You may use the modulo operator.
  def my_modulo(dividend, divisor)
    # your code goes here
    dividend%divisor
  end
  
  puts "3: " + my_modulo(45,2).to_s

  # Write a method that returns the least common multiple of its two arguments.
  # You may use the lcm method.
  def my_lcm(int_one, int_two)
    # your code goes here
    int_one.lcm(int_two)
  end
  
  puts "4: " + my_lcm(18,9).to_s

  # Write a method that returns its argument converted to a float then 
  # converted to a string.
  def to_stringified_float(int)
    # your code goes here
    int = int.to_f 
    int.to_s
  end
  
  puts "5: " + to_stringified_float(18)

  # Write a method that returns the sum of the absolute values of its arguments.
  def absolute_sum(num_one, num_two)
    # your code goes here
    num_one.abs + num_two.abs
  end
  
  puts "6: " + absolute_sum(10,-10).to_s

  # Write a method that returns the negative value of its argument.
  # If the argument is negative, the method simply returns the argument.
  # (negative(-1) => -1, negative(1) => -1, negative(0) => 0)
  # HINT: use the abs method
  def negative(num)
    # your code goes here
    -(num.abs)
  end
  
  puts "7: Passed value is negative " + negative(-10).to_s
  puts "7a: Passed value is positive " + negative(99).to_s
  puts "7b: Passed value is 0 " + negative(0).to_s
  
  # MEDIUM
  
  # Write a method that returns the last digit of its argument.
  # Assume the argument is an integer.
  # HINT: What is the return value of 142 % 10? How about 2 % 10?
  def last_digit(int)
    # your code goes here
    int%10
  end

  puts "8: " + last_digit(365).to_s
  
  # Write a method that returns a boolean indicating whether 
  # the last digit of the method's argument is odd.
  # Assume the argument is an integer.
  # Bonus points if you use last_digit as a helper method.
  def last_digit_odd?(int)
    # your code goes here
    last_dig = int%10
    if last_dig%2 == 0
      "Even"
    else
      "odd"
    end
  end

  puts "9: " + last_digit_odd?(365).to_s
  
  # Write a method that returns the greatest common divisor of the last 
  # digit of each of its arguments. Assume the arguments are integers.
  # (gcd_of_last_digits(93, 9) = 3.gcd(9) => 3)
  # Bonus points if you use last_digit as a helper method.
  def gcd_of_last_digits(int_one, int_two)
    # your code goes here
    int_one.gcd(int_two)
  end
  
  puts "10: " + gcd_of_last_digits(18,9).to_s


  # Write a method that returns the last n digits of its first argument,
  # where n is the second argument.
  # Assume both arguments are non-zero integers.
  # (last_n_digits(1234, 2) => 34)
  # HINT: What is the return value of 1234 % 100? How about 4 % 100?
  def last_n_digits(num, n)
    # your code goes here
    div_num = '1';
    n.times do |x|
        div_num = div_num + '0'
    end

    num%div_num.to_i
  end

  puts "11: #{last_n_digits(23456,3)}"
  
  
  #HARD
  
  # Write a method that returns the decimal remainder of dividing two floats.
  # The decimal remainder is the right side of the decimal point 
  # (the "fractional part") of the quotient.
  # (dec_remainder_of_two_floats(8.0, 5.0) => 0.6 because 8.0 / 5.0 => 1.6)
  def dec_remainder_of_two_floats(f_dividend, f_divisor)
    # your code goes here
    res = f_dividend / f_divisor
    puts res
    #res.modulo(1)
    res = res - res.to_i
  end

  puts "12: #{dec_remainder_of_two_floats(8.0, 5.0)}"
  
  # Write a method that returns the decimal remainder of dividing two integers.
  # HINT: Use dec_remainder_of_two_floats as a helper method,
  # but don't forget to pass the proper type of argument
  def dec_remainder_of_two_integers(i_dividend, i_divisor)
    # your code goes here
    dec_remainder_of_two_floats(i_dividend.to_f, i_divisor.to_f)
  end
  puts "13: #{dec_remainder_of_two_integers(9,2)}"

  
def introduction(age, gender, *names)
  puts "14: #{names.join(" ")}, who is a #{gender},  #{age} years old"
end
introduction(40,"female","Lisa","Kudrow","Salaczar")

def add(a_number, another_number, options = {})
  sum = a_number + another_number
  sum = sum.abs if options[:absolute]
  sum = sum.round(options[:precision]) if options[:round]
  sum
end
puts "15:"
puts add(1.0134, -5.568)
puts add(1.0134, -5.568, absolute: true)
puts add(1.0134, -5.568, absolute: true, round: true, precision: 2)



def addition(*numbers)
  numbers.inject(0) {|sum,eachparm| sum + eachparm}
  #initialize sum to 0 and then add the number to it. 
end

def subtraction(*numbers)
  #since this is subtraction, the first number is the one from which the other numbers need to be subtracted. So SHIFT method is used to move the value in the first position to variable current_Total. What remains in the number is the remaining parameters. i.e. all parameters excluding the first parameter
  current_total = numbers.shift
  numbers.inject(current_total) {|current_total, eachparm| current_total - eachparm}
end

def calculate(*arguments)
  #below line, arguments[-1] -> takes the last parameter of the argument. 
  #is_a?(Hash) -> checks if the last argument is a hash set
  # ? arguments.pop : {} -> this is equivalent to the if-condition. arguments[-1].is_a?(Hash) if true then arguments.pop  else {} (empty hash)
  #arguments.pop -> this pops or removes the last parameter
  options = arguments[-1].is_a?(Hash) ? arguments.pop : {}
  #below sets the hash key to be ":add" with value "true" if the hash is empty
  options[:add] = true if options.empty?
  return addition(*arguments) if options[:add]
  return subtraction(*arguments) if options[:subtract]
end
puts calculate(1,2,3,4,5,add:true)
puts calculate(10,1,2,subtract:true)





