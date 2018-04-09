class CreateJoinTableSessionStudent < ActiveRecord::Migration[5.1]
  def change
    create_join_table :sessions, :students do |t|
      # t.index [:session_id, :student_id]
      # t.index [:student_id, :session_id]
    end
  end
end
