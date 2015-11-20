class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :favorite_genre, :string
    add_column :users, :favorite_books, :string
    add_column :users, :about_me, :text
  end
end
