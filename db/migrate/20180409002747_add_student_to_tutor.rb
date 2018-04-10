class AddStudentToTutor < ActiveRecord::Migration[5.1]
  def change
    add_reference :tutors, :student, foreign_key: true
  end
end
