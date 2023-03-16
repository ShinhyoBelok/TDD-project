class Solver
  def factorial(num)
    if num == 0
      return 1
    elsif num < 0
      raise StandardError.new "Please input a positive number"
    else
      num = factorial(num-1) * num
    end
    return num
  end

  def fizzbuzz(n)
    (n % 3 == 0  && n % 5 == 0) ? 'fizzbuzz' : (n % 3 == 0) ? 'fizz' : (n % 5 == 0) ? 'buzz' : n.to_s
  end
end
