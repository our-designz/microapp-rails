class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.text :text
      t.boolean :is_private

      t.timestamps null: false
    end
  end
end
