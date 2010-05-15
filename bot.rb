require 'rubygems'
require 'twitter'

def phrase
  male_conectors = %w(
    maracanã
    show
    shopping
    bar
  )

  female_conectors = %w(
    praia
    praça
    boate
    loja
    lanchonete
  )

  male_actions = %w(
    fui\ no
    estava\ no
    fui\ ao
  )

  female_actions = %w(
    fui\ na
    fui\ a
    fui\ à
    estava\ na
  )

  "#{male_actions[rand(3)]} #{male_conectors[rand(4)]}"
end

# puts phrase

results = Twitter::Search.new("\"#{phrase}\"")

# puts results.size

# puts results[0].text

puts results.methods
# 
# results.each do |result|
#   puts"@#{result.from_user}: "
#   puts result.text
#   puts "\n"
# end
