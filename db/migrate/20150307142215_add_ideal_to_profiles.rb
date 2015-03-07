class AddIdealToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :ideal, :integer
  end
end
