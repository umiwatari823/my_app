class AddLikesCountToStories < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :likes_count, :integer
  end
end
