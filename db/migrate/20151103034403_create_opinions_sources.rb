class CreateOpinionsSources < ActiveRecord::Migration
  def change
    create_table :opinions_sources do |t|
      t.integer :opinion_id
      t.integer :source_id
    end
  end
end
