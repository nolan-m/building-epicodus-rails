class CreateTables < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.text :content
      t.integer :number
    end

    create_table :sections do |t|
      t.belongs_to :lesson
      t.string :name
    end

    create_table :chapters do |t|
      t.belongs_to :section
      t.string :name
    end
  end
end
