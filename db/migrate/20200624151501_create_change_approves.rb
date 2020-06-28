class CreateChangeApproves < ActiveRecord::Migration[5.2]
  def change
    create_table :change_approves do |t|
      t.boolean :status
      t.string :comments
      t.date :scheduled_date
      t.string :assigned_to
      t.string :sign_off
      t.timestamps
    end
  end
end
