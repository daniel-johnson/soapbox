class ChangeSourceType < ActiveRecord::Migration
  def change
    remove_column :sources, :type
    add_column :sources, :uri, :boolean, null: false
  end
end
