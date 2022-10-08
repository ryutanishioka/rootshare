class CreateRoots < ActiveRecord::Migration[6.0]
  def change
    create_table :roots do |t|

      t.timestamps
    end
  end
end
