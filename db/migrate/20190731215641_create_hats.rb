class CreateHats < ActiveRecord::Migration[5.2]
  def change
    create_table :hats do |t|
      t.string :title
      t.string :category
      t.string :color
      t.integer :hipster_id
      t.timestamps
    end
  end
end
