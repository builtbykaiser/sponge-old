class CreateSnippets < ActiveRecord::Migration[5.2]
  def change
    create_table :snippets do |t|
      t.string :source
      t.string :data

      t.timestamps
    end
  end
end
