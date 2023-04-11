class CreateCostumes < ActiveRecord::Migration[7.0]
  def change
    create_table :costumes do |t|
      t.string :head
      t.string :torso
      t.string :arms
      t.string :hands
      t.string :waist
      t.string :legs
      t.string :feet
      t.string :back

      t.timestamps
    end
  end
end
