class CreateContestPrizes < ActiveRecord::Migration
  def change
    create_table :contest_prizes do |t|
      t.integer :contest_id
      t.integer :prize_id

      t.timestamps
    end
        add_index :contest_prizes, :contest_id
    add_index :contest_prizes, :prize_id
  end
end
