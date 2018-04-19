class AddDatetimeToSessions < ActiveRecord::Migration[5.1]
  def change
    add_column :sessions, :date_time, :datetime
  end
end
