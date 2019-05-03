class AddDepartment < ActiveRecord::Migration[5.2]
  def change
    add_department :Lesson,department
  end
end
