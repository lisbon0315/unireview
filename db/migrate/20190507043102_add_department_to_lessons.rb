class AddDepartmentToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :department, :string
  end
end
