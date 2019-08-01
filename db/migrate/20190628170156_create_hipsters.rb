class CreateHipsters < ActiveRecord::Migration[5.2]
  def change
    create_table :hipsters do |t|
      t.string :name
      t.string :beer
      t.string :coffee
      t.string :quote
      t.integer :hipster_id
      t.timestamps
    end
  end
end
