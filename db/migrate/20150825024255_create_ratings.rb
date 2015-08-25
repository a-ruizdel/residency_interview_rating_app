class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :candidate_id
      t.string :overall_comment
      t.float :q4
      t.float :q3
      t.float :q2
      t.float :q1
      t.integer :user_id

      t.timestamps

    end
  end
end
