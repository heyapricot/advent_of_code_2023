ids = File.readlines("./day_2_input.txt").map do |line|
  red, green, blue = ["red", "green", "blue"].map do |color|
    line.scan(/(\d+) #{Regexp.quote(color)}/)
        .flatten
        .map(&:to_i)
  end

  red.max * green.max * blue.max
end

pp ids.reduce(:+)