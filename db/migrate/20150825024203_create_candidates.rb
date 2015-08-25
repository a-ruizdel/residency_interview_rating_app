class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.boolean :aoa
      t.string :candidate_lastname
      t.string :block
      t.date :interview_on
      t.integer :candidate_id
      t.string :candidate_firstname
      t.string :add_degree
      t.integer :usmle_2
      t.integer :usmle_1
      t.string :hometown
      t.string :school
      t.string :photo

      t.timestamps

    end
  end
end
