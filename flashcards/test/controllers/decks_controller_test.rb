require 'test_helper'

class DecksControllerTest < ActionController::TestCase
  setup do
    @deck = decks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:decks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deck" do
    assert_difference('Deck.count') do
      post :create, deck: { category_id: @deck.category_id, creator_id: @deck.creator_id, current_contributer_id: @deck.current_contributer_id, description: @deck.description, downloads: @deck.downloads, flag_id: @deck.flag_id, language_id: @deck.language_id, published: @deck.published, title: @deck.title, updated: @deck.updated, views: @deck.views }
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
    patch :update, id: @deck, deck: { category_id: @deck.category_id, creator_id: @deck.creator_id, current_contributer_id: @deck.current_contributer_id, description: @deck.description, downloads: @deck.downloads, flag_id: @deck.flag_id, language_id: @deck.language_id, published: @deck.published, title: @deck.title, updated: @deck.updated, views: @deck.views }
    assert_redirected_to deck_path(assigns(:deck))
  end

  test "should destroy deck" do
    assert_difference('Deck.count', -1) do
      delete :destroy, id: @deck
    end

    assert_redirected_to decks_path
  end
end
