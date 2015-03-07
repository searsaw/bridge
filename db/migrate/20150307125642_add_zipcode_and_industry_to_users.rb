class AddZipcodeAndIndustryToUsers < ActiveRecord::Migration
  def change
    add_column :users, :industry, :string
    add_column :users, :zip, :string
  end
end
