class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :material
      t.string :title
      t.text :content
      t.date :date
      t.references :material, foreign_key: true

      t.timestamps null: false
    end
  end
end
