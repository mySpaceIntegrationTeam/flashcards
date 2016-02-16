require 'test_helper'

class DeckTest < ActiveSupport::TestCase

    test "creates a valid record" do
        deck = Deck.new
        deck.title = "Awesome Deck"
        deck.description = "A deck full of awesome-ness!"
        deck.creator = "Awe Some"
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
    
    test "should only have one deck with the same name" do 
        @deck = Recipe.new(:title =>"My Deck")
        @deck.valid?
        assert @deck.errors[:title].include?("must be unique")
    end

end
