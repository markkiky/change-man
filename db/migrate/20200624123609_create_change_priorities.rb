class CreateChangePriorities < ActiveRecord::Migration[5.2]
  def change
    create_table :change_priorities do |t|
      t.string :name

      t.timestamps
    end
  end
end
