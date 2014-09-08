class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
    	t.string :name
    	t.string :position
    	t.string :team
    	t.string :twitter_username
    	t.string :photo_url
    end
  end
end
