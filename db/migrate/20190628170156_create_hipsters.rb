# frozen_string_literal: true

class CreateHipsters < ActiveRecord::Migration[5.2]
  def change
    create_table :hipsters do |t|
      t.string :name
      t.string :beer
      t.string :coffee
      t.string :quote
      t.timestamps
    end
  end
end
