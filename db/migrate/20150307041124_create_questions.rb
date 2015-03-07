class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :bottom
      t.string :top
      t.timestamps null: false
    end
  end
end
