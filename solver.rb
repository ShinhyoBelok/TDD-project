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
end
