class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
    	t.string :keyword
    	t.timestamps
    end
  end
end
