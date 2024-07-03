class AddNumbers
  def add(numbers)
    # seperation with comma(,)
    array = numbers.split(',')

    # seperation with \n
    new_array = []
    array.each do |a|
      new_array << a.split("\n")
    end
    array = new_array.flatten
    return 0 if array.length.zero?

    array.map(&:to_i).sum
  end
end
