# frozen_string_literal: true

class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.string :name, null: false
      t.string :category, null: false
      t.text :description, null: false
      t.date :date, null: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
