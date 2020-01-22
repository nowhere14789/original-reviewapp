class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :content,null: false
      t.date :date
      t.date :ydate
      t.boolean :fdate,default: false
      t.boolean :sdate,default: false
      t.boolean :tdate,default: false
      t.boolean :fodate,default: false
      t.references :material, foreign_key: true

      t.timestamps null: false
    end
  end
end
