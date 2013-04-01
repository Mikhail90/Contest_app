class CreateContestants < ActiveRecord::Migration
  def change
    create_table :contestants do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.datetime :firstentered
      t.datetime :lastentered
      t.string :zipcode

      t.timestamps
    end
  end
end
