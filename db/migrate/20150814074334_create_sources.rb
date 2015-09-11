class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.text :content, null: false
      t.text :type, null: false
      t.integer :opinion_id, null: false

      t.timestamps null: false
    end
  end
end
