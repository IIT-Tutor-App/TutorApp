class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.date :data
      t.time :time
      t.references :tutor, foreign_key: true

      t.timestamps
    end
  end
end
