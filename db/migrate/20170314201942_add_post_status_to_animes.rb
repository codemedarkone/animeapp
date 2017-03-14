class AddPostStatusToAnimes < ActiveRecord::Migration[5.0]
  def change
    add_column :animes, :status, :integer, default: 0
  end
end
