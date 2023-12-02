digit_map = {
  "one" => "1",
  "two" => "2",
  "three" => "3",
  "four" => "4",
  "five" => "5",
  "six" => "6",
  "seven" => "7",
  "eight" => "8",
  "nine" => "9"
}

digits = File.readlines("./day_1_input.txt").map do |line|
  line.scan(/(?=(one|two|three|four|five|six|seven|eight|nine|\d))/).flatten.map do |result|
    digit_map[result] ? digit_map[result] : result
  end
end

transform = digits.map do |entry|
  output = "#{entry.first}#{entry.last}"

  Integer(output)
end

p digits
p transform
p transform.reduce(:+)