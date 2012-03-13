class AddCollumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string

    add_column :users, :last_name, :string

    add_column :users, :bio, :text

    add_column :users, :been_lucid, :boolean

    add_column :users, :location, :string

  end
end
