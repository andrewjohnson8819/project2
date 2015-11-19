class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.text :body
      t.references :prompt
      t.timestamps
    end
  end
end
