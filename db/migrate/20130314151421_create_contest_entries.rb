class CreateContestEntries < ActiveRecord::Migration
  def change
    create_table :contest_entries do |t|
      t.integer :contest_id
      t.integer :contestant_id

      t.timestamps
    end
    add_index :contest_entries, :contest_id
    add_index :contest_entries, :contestant_id
  end
end
