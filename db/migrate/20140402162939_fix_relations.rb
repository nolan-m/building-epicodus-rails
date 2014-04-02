class FixRelations < ActiveRecord::Migration
  def change
    add_column :lessons, :section_id, :integer

    add_column :sections, :chapter_id, :integer

    remove_column :sections, :lesson_id
    remove_column :chapters, :section_id
  end
end
