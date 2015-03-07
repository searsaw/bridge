class AddHardcodedPercentages < ActiveRecord::Migration
  def change
    add_column :companies, :percentage, :integer
  end
end
