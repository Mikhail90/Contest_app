class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :title
      t.text :description
      t.string :slug
      t.datetime :startdate
      t.datetime :enddate
      t.text :rules
      t.text :css
      t.text :promotion

      t.timestamps
    end
    
  end
end
