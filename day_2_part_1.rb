RED_QUANTITY = 12
GREEN_QUANTITY = 13
BLUE_QUANTITY = 14

ids = File.readlines("./day_2_input.txt").map do |line|
  red, green, blue = ["red", "green", "blue"].map do |color|
    line.scan(/(\d+) #{Regexp.quote(color)}/)
        .flatten
        .map(&:to_i)
  end

  next if red.any?{ |qty| qty > RED_QUANTITY } ||
    green.any? { |qty| qty > GREEN_QUANTITY } ||
    blue.any? { |qty| qty > BLUE_QUANTITY }

  id = line[/\d+/].to_i
end

pp ids.compact.reduce(:+)