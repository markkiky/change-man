class AddForeignKey2 < ActiveRecord::Migration[5.2]
  def change
    add_column :change_approves, :change_request_id, :integer
    add_column :change_implementations, :change_request_id, :integer
  end
end
