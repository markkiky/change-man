class CreateChangeRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :change_requests do |t|
      t.integer :request_no
      t.string :project
      t.integer :requested_by
      t.string :department
      t.string :telephone
      t.string :description
      t.date :required_date
      t.string :reason
      t.string :sign_off
      t.string :approval

      t.timestamps
    end
  end
end
