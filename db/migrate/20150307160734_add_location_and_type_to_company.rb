class AddLocationAndTypeToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :city, :string
    add_column :companies, :state, :string
    add_column :companies, :co_type, :string
  end
end
