class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.string :star
      t.integer :user_id
      t.integer :lesson_id

      t.timestamps
    end
  end
end
