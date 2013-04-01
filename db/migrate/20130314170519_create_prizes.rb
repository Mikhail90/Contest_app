class CreatePrizes < ActiveRecord::Migration
  def change
    create_table :prizes do |t|
      t.string :prize
      t.text :description

      t.timestamps
    end
  end
end
