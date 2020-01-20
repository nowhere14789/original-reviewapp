class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :content,null: false
      t.date :date,null: false
      t.date :ydate,null: false
      t.boolean :fdate,null: false
      t.boolean :sdate,null: false
      t.boolean :tdate,null: false
      t.boolean :fodate,null: false
      t.references :material, foreign_key: true

      t.timestamps null: false
    end
  end
end
