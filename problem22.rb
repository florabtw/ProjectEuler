names = open('extras/names.txt', 'r').read
names = names.split(',').map { |name| name.tr('"', '') }.sort

total = 0
names.each_with_index do |name, i|
  total += name.split('').reduce(0) { |sum, c| sum + (c.ord % 64) } * (i + 1)
end

puts total
