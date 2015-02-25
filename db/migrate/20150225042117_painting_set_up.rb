class PaintingSetUp < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string :artist
      t.string :year
      t.text :description
      t.string :country


      t.timestamps
    end
  end
end
