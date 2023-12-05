cards = File.readlines("./day_4_input.txt").map do |line|
  line.sub(/^Card\s+\d+:\s+/, '')
      .split("|")
      .map { |str| str.split(" ").map(&:to_i) }
end

scoring = cards.map do |winning_numbers, my_numbers|
  winning_number_quantity = winning_numbers.length - (winning_numbers - my_numbers).length
  score = 0
  score = 2.pow(winning_number_quantity - 1) if winning_number_quantity.positive?
  score
end

pp scoring.reduce(:+)