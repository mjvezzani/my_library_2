class CreateUsersFriendsBooks < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :password_digest

      t.timestamps
    end

    create_table :friends do |t|
      t.string :first_name, :last_name, :address, :phone
      t.integer :user_id

      t.timestamps
    end

    create_table :books do |t|
      t.string :title, :author, :isbn
      t.integer :user_id, :friend_id
      t.boolean :checked_out

      t.timestamps
    end
  end
end
