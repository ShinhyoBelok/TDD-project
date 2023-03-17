# Solver provide methods for factorial number, fizzbuzz adn reversed string
class Solver
  def factorial(num)
    if num.zero?
      return 1
    elsif num.negative?
      raise StandardError, 'Please input a positive number'
    else
      num = factorial(num - 1) * num
    end

    num
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    else
      (num % 5).zero? ? 'buzz' : num.to_s
    end
  end

  def reverse(str)
    str.reverse
  end
end
