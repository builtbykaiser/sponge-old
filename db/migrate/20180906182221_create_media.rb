class CreateMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :media do |t|
      t.string :name, null: false
      t.string :description
      t.integer :order

      t.timestamps
    end
  end
end
