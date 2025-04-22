class StringCalculator
  def add(string)
    return 0 if string.empty?
    return string.to_i if string.match?(/^\d+$/)
    numbers = string.gsub(/\\n/, ',').split(',').map(&:to_i)
    sum = 0
    numbers.each do |number|
      sum += number
    end
    sum
  end
end
