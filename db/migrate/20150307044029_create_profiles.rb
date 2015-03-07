class CreateProfiles < ActiveRecord::Migration
  def change
    create_join_table :users, :questions, table_name: :profiles do |t|
      t.integer :rank
      t.integer :importance
      t.timestamps null: false
    end
  end
end
