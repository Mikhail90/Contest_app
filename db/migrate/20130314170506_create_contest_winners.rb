class CreateContestWinners < ActiveRecord::Migration
  def change
    create_table :contest_winners do |t|
      t.integer :contestant_id
      t.integer :prize_id

      t.timestamps
    end
    add_index :contest_winners, :contestant_id
    add_index :contest_winners, :prize_id
  end
end
