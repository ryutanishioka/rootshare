class CreateWays < ActiveRecord::Migration[6.0]
  def change
    create_table :ways do |t|
      t.string :title,        null: false
      t.text :content,        null: false
      t.text :share
      t.references :user,     null: false, foreign_key: true
      t.timestamps
    end
  end
end
