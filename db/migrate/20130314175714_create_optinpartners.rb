class CreateOptinpartners < ActiveRecord::Migration
  def change
    create_table :optinpartners do |t|
      t.string :name
      t.text :label

      t.timestamps
    end
  end
end
