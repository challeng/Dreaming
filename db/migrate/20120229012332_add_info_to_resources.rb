class AddInfoToResources < ActiveRecord::Migration
  def change
    add_column :resources, :title, :string
    add_column :resources, :info, :text
    add_column :resources, :link, :string
  end
end
