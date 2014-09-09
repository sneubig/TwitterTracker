class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
    	t.string :name
    	t.string :attitude
    	t.timestamps
    	t.references :tweet
    end
  end
end
