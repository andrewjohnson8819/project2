class CreatePrompts < ActiveRecord::Migration
  def change
    create_table :prompts do |t|
      t.string :title
      t.string :location
      t.string :time_period
      t.text :body
      t.timestamps
    end
  end
end
