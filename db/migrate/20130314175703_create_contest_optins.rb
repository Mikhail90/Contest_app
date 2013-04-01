class CreateContestOptins < ActiveRecord::Migration
  def change
    create_table :contest_optins do |t|
      t.integer :contest_id
      t.integer :optinpartner_id

      t.timestamps
    end
    add_index :contest_optins, :contest_id
    add_index :contest_optins, :optinpartner_id
    end
end
