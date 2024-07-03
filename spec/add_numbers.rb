class AddNumbers
  def add(numbers)
    array = numbers.split(',')
    return 0 if array.length.zero?

    array.map(&:to_i).sum
  end
end
