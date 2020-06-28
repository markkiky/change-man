class AddForeignKey < ActiveRecord::Migration[5.2]
  def change
    
    add_column :change_impacts, :change_request_id, :integer
    
    
  end
end
