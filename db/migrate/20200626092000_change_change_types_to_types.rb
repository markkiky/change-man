class ChangeChangeTypesToTypes < ActiveRecord::Migration[5.2]
  def change
    rename_table :change_types, :types
  end
end
