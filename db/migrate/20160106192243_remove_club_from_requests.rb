class RemoveClubFromRequests < ActiveRecord::Migration
  def change
    remove_column :requests, :club, :integer
  end
end
