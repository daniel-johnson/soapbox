class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.text :summary, null: false
      t.text :body, null: false

      t.timestamps null: false
    end
  end
end
