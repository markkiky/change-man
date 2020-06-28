class ChangeTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :change_types, :id => false do |t|
      t.integer :type_id
      t.integer :change_impact_id
    end
  end
end
