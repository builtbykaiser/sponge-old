class CreateSources < ActiveRecord::Migration[5.2]
  def change
    create_table :sources do |t|
      t.belongs_to :medium
      t.integer :kind
      t.string :author
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
