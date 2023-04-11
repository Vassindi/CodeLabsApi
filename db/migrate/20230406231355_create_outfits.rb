class CreateOutfits < ActiveRecord::Migration[7.0]
  def change
    create_table :outfits do |t|
      t.string :character
      t.string :costume
      t.string :completed

      t.timestamps
    end
  end
end
