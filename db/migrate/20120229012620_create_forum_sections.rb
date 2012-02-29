class CreateForumSections < ActiveRecord::Migration
  def change
    create_table :forum_sections do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
