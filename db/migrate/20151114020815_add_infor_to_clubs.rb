class AddInforToClubs < ActiveRecord::Migration
  def change
    add_column :clubs, :email, :string
    add_column :clubs, :website, :string
    add_column :clubs, :aff_year, :integer
    add_column :clubs, :founding_year, :integer
  end
end
