class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.references :user, index: true
      t.references :friend, index: true

      t.timestamps null: false
    end
    add_index :friendships :user
    add_index :friendships :friend
    add_index :friendships, [:user, :friend]
  end
end
