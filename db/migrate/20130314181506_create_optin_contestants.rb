class CreateOptinContestants < ActiveRecord::Migration
  def change
    create_table :optin_contestants do |t|
      t.integer :contest_id
      t.integer :optinpartner_id
      t.integer :contestant_id

      t.timestamps
    end
        add_index :optin_contestants, :contest_id
        add_index :optin_contestants, :contestant_id
        add_index :optin_contestants, :optinpartner_id


  end
end
