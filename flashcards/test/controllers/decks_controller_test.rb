require 'test_helper'

class DecksControllerTest < ActionController::TestCase
  setup do
    @deck = decks(:one)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deck" do
    assert_difference('Deck.count') do
      post :create, deck: { title: "Test Deck", description: "Create a Test deck", back_color: "White", text_color: "Black", downloads: 1, views: 0, flag_id: 0, category: "Misc", creator: "Tester", language: "English" }
    end

    assert_redirected_to deck_path(assigns(:deck))
  end

  test "should show deck" do
    get :show, id: @deck
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deck
    assert_response :success
  end

  test "should update deck" do
    patch :update, id: @deck, deck: { title: @deck.title, description: @deck.description, back_color: @deck.back_color, text_color: @deck.text_color, downloads: @deck.downloads, views: @deck.views, flag_id: @deck.flag_id, category: @deck.category, creator: @deck.creator, language: @deck.language }
    assert_redirected_to deck_path(assigns(:deck))
  end

  test "should destroy deck" do
    assert_difference('Deck.count', -1) do
      delete :destroy, id: @deck
    end

    assert_redirected_to decks_path
  end
end
