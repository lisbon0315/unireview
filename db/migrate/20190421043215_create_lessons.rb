class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :professor_name
      t.integer :university_id

      t.timestamps
    end
  end
end
