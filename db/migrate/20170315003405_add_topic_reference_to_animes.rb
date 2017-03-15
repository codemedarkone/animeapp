class AddTopicReferenceToAnimes < ActiveRecord::Migration[5.0]
  def change
    add_reference :animes, :topic, foreign_key: true
  end
end
