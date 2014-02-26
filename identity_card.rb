identity = '220104197902072099'

identities = identity.to_s.split('')

if identities.length !=18
  puts 'Error'
end

wis = [7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2]

s = identities[0, 17].zip(wis).inject(0) { |sum, n| sum + n[0].to_i * n[1] }

y = s % 11

checks = ['1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2']

puts checks[y]
puts checks[y] == identities[17]