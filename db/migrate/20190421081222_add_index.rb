class AddIndex < ActiveRecord::Migration[5.2]
  def change
    add_index Lesson,[:name, :professor_name]
    add_index :University,name
  end
end
