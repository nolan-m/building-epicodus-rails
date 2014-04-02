class AddSlug < ActiveRecord::Migration
  def change

    add_column :lessons, :slug, :string

    add_column :sections, :slug, :string
  end
end
