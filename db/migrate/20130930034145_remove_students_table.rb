class RemoveStudentsTable < ActiveRecord::Migration
  def self.up
    drop_table :students
  end
end
