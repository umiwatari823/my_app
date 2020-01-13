class AddColumnToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :address, :string
    add_column :tweets, :latitude, :float
    add_column :tweets, :longitude, :float
  end
end
