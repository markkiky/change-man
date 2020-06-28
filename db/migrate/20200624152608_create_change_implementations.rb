class CreateChangeImplementations < ActiveRecord::Migration[5.2]
  def change
    create_table :change_implementations do |t|
      t.string :staging_results
      t.string :implementation_results
      t.date :implementation_date
      t.string :sign_off

      t.timestamps
    end
  end
end
