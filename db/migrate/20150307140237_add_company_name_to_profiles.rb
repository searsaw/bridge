class AddCompanyNameToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :company_name, :string
  end
end
