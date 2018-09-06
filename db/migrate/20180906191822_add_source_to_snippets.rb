class AddSourceToSnippets < ActiveRecord::Migration[5.2]
  def change
    add_reference :snippets, :source, foreign_key: true
  end
end
