require 'test_helper'

class DeckTest < ActiveSupport::TestCase

    test "creates a valid record" do
        deck = Deck.new
        deck.title = "Awesome Deck"
        deck.description = "A deck full of awesome-ness!"
        deck.creator = "Awe Some"
        deck.back_color = "White"
        deck.text_color = "Black"
    assert deck.save 
    end

    test "should not save unless title is filled in" do
        deck = Deck.new
        assert !deck.save # save should fail because there are errors. assert deck.errors[:title].include?("can't be blank")    
    end

    test "should not save unless description is filled in" do
        deck = Deck.new
        assert !deck.save # save should fail because there are errors. assert deck.errors[:description].include?("can't be blank")
    end

    test "should not save unless creator is filled in" do
        deck = Deck.new
        assert !deck.save # save should fail because there are errors. assert deck.errors[:creator].include?("can't be blank")
    end
    

end
