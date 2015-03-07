class UpdateCompaniesTable < ActiveRecord::Migration
  def change
    add_column :companies, :name, :string
    add_column :companies, :zip, :string
  end
end
