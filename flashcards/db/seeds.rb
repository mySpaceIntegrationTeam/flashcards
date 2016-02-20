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

decks = Deck.create(title: 'Ridiculous', description: 'Full of silliness', back_color: 'White', text_color: 'Black', creator: 'I M Idiot', category: 'Misc', language: 'English')
Card.create(card_title: 'Joke', card_back_color: 'Yellow', card_text_color: 'White', side_a_text: 'Why is Wisconsin windy?', side_b_text: 'Because Minnesota sucks!', deck_id: @decks)
Card.create(card_title: 'Not a Joke', card_back_color: 'White', card_text_color: 'Brown', side_a_text: 'Why do the Vikings suck?', side_b_text: 'They are not the Packers!', deck_id: @decks)
