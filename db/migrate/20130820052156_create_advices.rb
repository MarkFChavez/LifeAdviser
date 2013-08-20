class CreateAdvices < ActiveRecord::Migration
  def change
    create_table :advices do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
    add_index :advices, :user_id
  end
end
