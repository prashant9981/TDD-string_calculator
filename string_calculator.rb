class StringCalculator
  def add(string)
    return 0 if string.empty?
    return string.to_i if string.match?(/^\d+$/)
    numbers = string.split(',')
    sum = 0
    numbers.each do |number|
      if number.match?(/^\d+$/)
        sum += number.to_i
      end
    end
    sum
  end
end