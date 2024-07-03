class AddNumbers
  def add(numbers)
    if numbers =~ %r{\A//}
      delimeter = numbers[2]
      numbers = numbers[3..-1]
    else
      delimeter = ','
    end

    # seperation with delemeter
    array = numbers.split(delimeter)

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
