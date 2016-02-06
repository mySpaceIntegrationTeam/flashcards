# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
#
first_deck = Deck.new(title: "First Deck")
first_deck.save

card = first_deck.cards.build(card_id: 1, side_a_text: "Side A TEXT of Card 1", side_a_image: "url('http://lorempixel.com/g/400/200/')", side_b_image: "url('http://lorempixel.com/400/200')")
card.save


card = first_deck.cards.build(card_id: 2)
card.save


card = first_deck.cards.build(card_id: 3)
card.save
