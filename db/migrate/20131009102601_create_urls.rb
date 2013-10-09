class CreateUrls < ActiveRecord::Migration
  def change 
    create_table :urls do |t|
      t.string :link
      t.string :short_link
      t.integer :count

      t.timestamps
      end
  end
end
