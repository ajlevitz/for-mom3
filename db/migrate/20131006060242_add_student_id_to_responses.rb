class AddStudentIdToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :student_id, :integer
  end
end
