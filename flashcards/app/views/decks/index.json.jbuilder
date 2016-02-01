json.array!(@decks) do |deck|
  json.extract! deck, :id, :title, :description, :creator_id, :published, :category_id, :language_id, :updated, :current_contributer_id, :downloads, :views, :flag_id
  json.url deck_url(deck, format: :json)
end
