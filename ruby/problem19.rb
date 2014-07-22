months = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ]

days_index = 2
suns = 0
(1901..2000).each do |i|
  months.each do |num_days|
    suns += 1 if days_index == 0

    num_days = 29 if num_days == 28 && i % 4 == 0
    days_index = (num_days + days_index) % 7
  end
end

puts suns
