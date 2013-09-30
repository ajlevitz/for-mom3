class AddGradYearAndHighSchoolToUser < ActiveRecord::Migration
  def change
    add_column :users, :grad_year, :integer
    add_column :users, :high_school, :string
  end
end
