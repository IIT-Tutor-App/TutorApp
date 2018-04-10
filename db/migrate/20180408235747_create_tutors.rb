class CreateTutors < ActiveRecord::Migration[5.1]
  def change
    create_table :tutors do |t|
      t.string :name
      t.string :email
      t.text :bio
      t.string :subject

      t.timestamps
    end
  end
end
