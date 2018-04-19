class RemoveTimeFromSessions < ActiveRecord::Migration[5.1]
  def change
    remove_column :sessions, :time, :time
  end
end
