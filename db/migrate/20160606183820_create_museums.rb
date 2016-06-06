class CreateMuseums < ActiveRecord::Migration
   def change
    create_table :museums do |t|
      t.string :name 
      t.string :image 
      t.string :specialty
      t.string :description
      t.string :url
      t.timestamps
    end
  end
end
