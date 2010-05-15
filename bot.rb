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


def append(twitt, original_user, secound_user)
  "RT @#{original_user}: #{twitt}. O que voce acha, @#{secound_user}?"
end


def run_bot
  p = phrase

  results = Twitter::Search.new("\"#{p}\"").to_a

  if results.length > 0
    original_user = results.first.from_user
    twitt = results[0].text
    secound_user = results[1].from_user
  end

  append(twitt, original_user, secound_user)
end
