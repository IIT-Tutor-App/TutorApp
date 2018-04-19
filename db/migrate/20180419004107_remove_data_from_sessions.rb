class RemoveDataFromSessions < ActiveRecord::Migration[5.1]
  def change
    remove_column :sessions, :data, :date
  end
end
