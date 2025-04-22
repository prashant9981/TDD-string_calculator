class StringCalculator
  def add(string)
    return 0 if string.empty?
    return string.to_i if string.match?(/^\d+$/)
    numbers = string.gsub(/\\n/, ',').split(',').map(&:to_i)
    sum = 0
    errors = []
    numbers.each do |number|
      if number < 0
        errors << number
        next
      end
      sum += number
    end
    if errors.any?
      raise "Negative numbers not allowed: #{errors.join(', ')}"
    else
      sum
    end
  end
end
