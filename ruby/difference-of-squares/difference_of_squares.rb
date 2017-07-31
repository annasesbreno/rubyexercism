class Squares

  def initialize(num)
    @num = num
  end

#Find the difference between the square of the sum and the sum of the squares of the first N natural numbers.
  def difference
    square_of_sum - sum_of_squares
  end

#The square of the sum of the first ten natural numbers is (1 + 2 + ... + 10)² = 55² = 3025.
  def square_of_sum
    @square_of_sums ||= @num**2 * (@num + 1)**2 / 4
  end

#The sum of the squares of the first ten natural numbers is 1² + 2² + ... + 10² = 385.
  def sum_of_squares
    @sum_of_squares ||= @num * (@num + 1) * (2*@num + 1) / 6
  end

end