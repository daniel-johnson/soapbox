class CreateOpinionsSources < ActiveRecord::Migration
  def change
    create_table :opinions_sources do |t|
      t.integer :source_id
      t.integer :opinion_id
    end
  end
end
