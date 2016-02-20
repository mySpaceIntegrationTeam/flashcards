# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
#
# ruby encoding: utf-8

deck1 = Deck.create(title: 'Ridiculous', description: 'Full of silliness', back_color: 'White', text_color: 'Black', creator: 'I M Idiot', category: 'Misc', language: 'English').
cards.create(card_title: 'A Joke', card_back_color: 'White', card_text_color: 'Brown', side_a_text: 'Why is Wisconsin windy?', side_b_text: 'Because Minnesota sucks!')


deck2 = Deck.create(title: 'Sublime', description: 'Full of seriousness', back_color: 'White', text_color: 'Black', creator: 'I M Genius', category: 'Misc', language: 'English').
cards.create(card_title: 'Not a Joke', card_back_color: 'White', card_text_color: 'Brown', side_a_text: 'What is the top speed of a tornado?', side_b_text: 'Category F5 tornados exceed 261 mph!')




p "Created #{Deck.count} deck(s)"
p "Created #{Card.count} cards(s)"