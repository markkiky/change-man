class CreateChangeImpacts < ActiveRecord::Migration[5.2]
  def change
    create_table :change_impacts do |t|
      t.integer :type
      t.integer :priority
      t.integer :impact
      t.string :environment_impacted
      t.integer :resource_requirements
      t.string :test_plan
      t.string :roll_back

      t.timestamps
    end
  end
end
