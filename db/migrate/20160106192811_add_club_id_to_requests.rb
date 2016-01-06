class AddClubIdToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :club_id, :integer
  end
end
