class AddCategoryToClubs < ActiveRecord::Migration
  def change
    add_reference :clubs, :category, index: true, foreign_key: true
  end
end
