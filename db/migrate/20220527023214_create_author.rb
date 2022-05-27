class CreateAuthor < ActiveRecord::Migration[7.0]

  def change
    create_table :authors do |t|
      t.string :name, null: false
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
