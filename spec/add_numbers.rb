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

    negative_numbers = array.select { |a| a.to_i < 0}

    raise "negative numbers not allowed <#{negative_numbers.join(',')}>" unless negative_numbers.length.zero?

    return 0 if array.length.zero?

    array.map(&:to_i).sum
  end
end
