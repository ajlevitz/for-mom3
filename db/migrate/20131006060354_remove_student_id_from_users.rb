class RemoveStudentIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :student_id, :integer
  end
end
